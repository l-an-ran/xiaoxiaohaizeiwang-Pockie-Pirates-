"""Small AMF3 reader for inspecting the legacy client's HTTP request bodies."""

from __future__ import annotations

import struct
from dataclasses import dataclass
from typing import Any


class AMFError(ValueError):
    pass


@dataclass
class AMFObject:
    class_name: str = ""
    sealed: dict[str, Any] | None = None
    dynamic: dict[str, Any] | None = None


class Reader:
    def __init__(self, data: bytes):
        self.data = memoryview(data)
        self.pos = 0
        self.strings: list[str] = []
        self.objects: list[Any] = []
        self.traits: list[tuple[str, bool, tuple[str, ...], bool]] = []
        self.amf0_objects: list[Any] = []

    def take(self, size: int) -> bytes:
        if size < 0 or self.pos + size > len(self.data):
            raise AMFError(f"truncated packet at {self.pos}, need {size} bytes")
        out = self.data[self.pos : self.pos + size].tobytes()
        self.pos += size
        return out

    def u8(self) -> int:
        return self.take(1)[0]

    def u16(self) -> int:
        return struct.unpack(">H", self.take(2))[0]

    def u32(self) -> int:
        return struct.unpack(">I", self.take(4))[0]

    def u29(self) -> int:
        value = 0
        for _ in range(3):
            byte = self.u8()
            if byte & 0x80:
                value = (value << 7) | (byte & 0x7F)
            else:
                return (value << 7) | byte
        return ((value << 8) | self.u8()) & 0x1FFFFFFF

    def utf8(self) -> str:
        header = self.u29()
        if not header & 1:
            index = header >> 1
            if index >= len(self.strings):
                raise AMFError(f"bad string reference {index}")
            return self.strings[index]
        size = header >> 1
        if size == 0:
            return ""
        value = self.take(size).decode("utf-8", "replace")
        self.strings.append(value)
        return value

    def value(self) -> Any:
        marker = self.u8()
        if marker == 0x00:
            return None
        if marker == 0x01:
            return None
        if marker == 0x02:
            return False
        if marker == 0x03:
            return True
        if marker == 0x04:
            n = self.u29()
            return n - 0x20000000 if n & 0x10000000 else n
        if marker == 0x05:
            return struct.unpack(">d", self.take(8))[0]
        if marker == 0x06:
            return self.utf8()
        if marker == 0x08:
            header = self.u29()
            if not header & 1:
                index = header >> 1
                if index >= len(self.objects):
                    raise AMFError(f"bad date reference {index}")
                return self.objects[index]
            millis = struct.unpack(">d", self.take(8))[0]
            value = {"$date_ms": millis}
            self.objects.append(value)
            return value
        if marker == 0x09:
            return self.array()
        if marker == 0x0A:
            return self.object()
        if marker in (0x0B, 0x07):
            header = self.u29()
            if not header & 1:
                index = header >> 1
                if index >= len(self.objects):
                    raise AMFError(f"bad XML reference {index}")
                return self.objects[index]
            raw = self.take(header >> 1).decode("utf-8", "replace")
            self.objects.append(raw)
            return raw
        if marker == 0x0C:
            header = self.u29()
            if not header & 1:
                index = header >> 1
                if index >= len(self.objects):
                    raise AMFError(f"bad bytearray reference {index}")
                return self.objects[index]
            raw = self.take(header >> 1)
            self.objects.append(raw)
            return {"$bytearray_hex": raw.hex()}
        if marker in (0x0D, 0x0E, 0x0F, 0x10):
            return self.vector(marker)
        if marker == 0x11:
            return self.dictionary()
        raise AMFError(f"unsupported AMF3 marker 0x{marker:02x} at {self.pos - 1}")

    def amf0_value(self) -> Any:
        marker = self.u8()
        if marker == 0x00:
            return struct.unpack(">d", self.take(8))[0]
        if marker == 0x01:
            return bool(self.u8())
        if marker == 0x02:
            return _amf0_string(self)
        if marker == 0x03:
            return self.amf0_object()
        if marker in (0x05, 0x06):
            return None
        if marker == 0x07:
            index = self.u16()
            if index >= len(self.amf0_objects):
                raise AMFError(f"bad AMF0 reference {index}")
            return self.amf0_objects[index]
        if marker == 0x08:
            self.u32()  # ECMA array's advisory count
            return self.amf0_object()
        if marker == 0x0A:
            count = self.u32()
            result: list[Any] = []
            self.amf0_objects.append(result)
            result.extend(self.amf0_value() for _ in range(count))
            return result
        if marker == 0x0B:
            millis = struct.unpack(">d", self.take(8))[0]
            timezone_minutes = struct.unpack(">h", self.take(2))[0]
            result = {"$date_ms": millis, "$timezone_minutes": timezone_minutes}
            self.amf0_objects.append(result)
            return result
        if marker == 0x0C:
            size = self.u32()
            return self.take(size).decode("utf-8", "replace")
        if marker == 0x0F:
            size = self.u32()
            result = {"$xml": self.take(size).decode("utf-8", "replace")}
            self.amf0_objects.append(result)
            return result
        if marker == 0x10:
            class_name = _amf0_string(self)
            result = self.amf0_object(class_name)
            return result
        if marker == 0x11:
            return self.value()
        raise AMFError(f"unsupported AMF0 marker 0x{marker:02x} at {self.pos - 1}")

    def amf0_object(self, class_name: str = "") -> dict[str, Any]:
        result: dict[str, Any] = {}
        if class_name:
            result["$class"] = class_name
        self.amf0_objects.append(result)
        while True:
            key_size = self.u16()
            if key_size == 0:
                if self.u8() == 0x09:
                    break
                self.pos -= 1
                result[""] = self.amf0_value()
                continue
            key = self.take(key_size).decode("utf-8", "replace")
            result[key] = self.amf0_value()
        return result

    def array(self) -> Any:
        header = self.u29()
        if not header & 1:
            index = header >> 1
            if index >= len(self.objects):
                raise AMFError(f"bad array reference {index}")
            return self.objects[index]
        count = header >> 1
        assoc: dict[str, Any] = {}
        dense: list[Any] = []
        self.objects.append(dense)
        while True:
            name = self.utf8()
            if not name:
                break
            assoc[name] = self.value()
        dense.extend(self.value() for _ in range(count))
        if not assoc:
            return dense
        return {"$associative": assoc, "$dense": dense}

    def object(self) -> Any:
        header = self.u29()
        if not header & 1:
            index = header >> 1
            if index >= len(self.objects):
                raise AMFError(f"bad object reference {index}")
            return self.objects[index]
        if not header & 2:
            index = header >> 2
            if index >= len(self.traits):
                raise AMFError(f"bad trait reference {index}")
            class_name, dynamic, names, externalizable = self.traits[index]
        else:
            externalizable = bool(header & 4)
            dynamic = bool(header & 8)
            count = header >> 4
            class_name = self.utf8()
            names = tuple(self.utf8() for _ in range(count))
            self.traits.append((class_name, dynamic, names, externalizable))
        obj = AMFObject(class_name, {}, {})
        self.objects.append(obj)
        if externalizable:
            if class_name not in (
                "flex.messaging.io.ArrayCollection",
                "flex.messaging.io.ObjectProxy",
            ):
                raise AMFError(f"externalizable class not handled: {class_name}")
            wrapped = {"$class": class_name, "$value": plain(self.value())}
            self.objects[-1] = wrapped
            return wrapped
        for name in names:
            obj.sealed[name] = self.value()
        if dynamic:
            while True:
                name = self.utf8()
                if not name:
                    break
                obj.dynamic[name] = self.value()
        return obj

    def vector(self, marker: int) -> Any:
        header = self.u29()
        if not header & 1:
            index = header >> 1
            if index >= len(self.objects):
                raise AMFError(f"bad vector reference {index}")
            return self.objects[index]
        count = header >> 1
        fixed = bool(self.u8())
        if marker == 0x0D:
            raw = [self.u32() for _ in range(count)]
        elif marker == 0x0E:
            raw = [struct.unpack(">i", self.take(4))[0] for _ in range(count)]
        elif marker == 0x0F:
            raw = [struct.unpack(">d", self.take(8))[0] for _ in range(count)]
        else:
            type_name = self.utf8()
            raw = [self.value() for _ in range(count)]
            raw = {"type": type_name, "values": raw}
        self.objects.append(raw)
        return {"$vector": raw, "$fixed": fixed}

    def dictionary(self) -> Any:
        header = self.u29()
        if not header & 1:
            index = header >> 1
            if index >= len(self.objects):
                raise AMFError(f"bad dictionary reference {index}")
            return self.objects[index]
        count = header >> 1
        weak_keys = bool(self.u8())
        pairs = []
        self.objects.append(pairs)
        for _ in range(count):
            pairs.append([self.value(), self.value()])
        return {"$dictionary": pairs, "$weak_keys": weak_keys}


def plain(value: Any) -> Any:
    if isinstance(value, AMFObject):
        data = dict(value.sealed or {})
        data.update(value.dynamic or {})
        if value.class_name:
            data["$class"] = value.class_name
        return {key: plain(item) for key, item in data.items()}
    if isinstance(value, list):
        return [plain(item) for item in value]
    if isinstance(value, dict):
        return {key: plain(item) for key, item in value.items()}
    return value


def _amf0_string(reader: Reader) -> str:
    size = reader.u16()
    return reader.take(size).decode("utf-8", "replace")


def decode_envelope(packet: bytes) -> dict[str, Any]:
    reader = Reader(packet)
    version = reader.u16()
    if version != 3:
        raise AMFError(f"expected AMF envelope version 3, got {version}")
    headers = []
    for _ in range(reader.u16()):
        name = _amf0_string(reader)
        must_understand = bool(reader.u8())
        length = reader.u32()
        start = reader.pos
        val = reader.amf0_value()
        if length != 0xFFFFFFFF:
            reader.pos = start + length
        headers.append({"name": name, "must_understand": must_understand, "value": plain(val)})
    bodies = []
    for _ in range(reader.u16()):
        target = _amf0_string(reader)
        response = _amf0_string(reader)
        length = reader.u32()
        start = reader.pos
        val = reader.amf0_value()
        if length != 0xFFFFFFFF:
            reader.pos = start + length
        bodies.append({"target": target, "response": response, "value": plain(val)})
    return {"version": version, "headers": headers, "bodies": bodies, "trailing_bytes": len(reader.data) - reader.pos}
