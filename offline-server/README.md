# 本地服务端原型

这个目录提供离线启动链的首个本地端点：`GET /serverlist.js` 返回单机服列表；`POST /messagebroker/amf` 保存 AMF 请求包，并尝试解码成 JSON 到 `captures/`，用于还原游戏协议。

## 启动

在 Windows 上双击 `启动本地服务.bat`。服务监听 `0.0.0.0:8080`。Android 模拟器通过 `10.0.2.2:8080` 访问宿主机。

## 当前边界

列表结构按原生 `OPDataManager::onGetServerList` 读取的字段构造。AMF POST 目前只保存请求并返回 501；登录后首屏数据和游戏操作尚未实现。因此这个服务加配套 APK 目前用于验证列表链路、收集真实请求，不是已完成的可玩离线版。
