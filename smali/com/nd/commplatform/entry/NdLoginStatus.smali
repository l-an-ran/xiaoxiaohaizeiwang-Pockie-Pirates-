.class public final enum Lcom/nd/commplatform/entry/NdLoginStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nd/commplatform/entry/NdLoginStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AccountLogin:Lcom/nd/commplatform/entry/NdLoginStatus;

.field private static final synthetic ENUM$VALUES:[Lcom/nd/commplatform/entry/NdLoginStatus;

.field public static final enum GuestLogin:Lcom/nd/commplatform/entry/NdLoginStatus;

.field public static final enum NotLogin:Lcom/nd/commplatform/entry/NdLoginStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nd/commplatform/entry/NdLoginStatus;

    const-string v1, "NotLogin"

    invoke-direct {v0, v1, v2}, Lcom/nd/commplatform/entry/NdLoginStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/commplatform/entry/NdLoginStatus;->NotLogin:Lcom/nd/commplatform/entry/NdLoginStatus;

    new-instance v0, Lcom/nd/commplatform/entry/NdLoginStatus;

    const-string v1, "AccountLogin"

    invoke-direct {v0, v1, v3}, Lcom/nd/commplatform/entry/NdLoginStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/commplatform/entry/NdLoginStatus;->AccountLogin:Lcom/nd/commplatform/entry/NdLoginStatus;

    new-instance v0, Lcom/nd/commplatform/entry/NdLoginStatus;

    const-string v1, "GuestLogin"

    invoke-direct {v0, v1, v4}, Lcom/nd/commplatform/entry/NdLoginStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/commplatform/entry/NdLoginStatus;->GuestLogin:Lcom/nd/commplatform/entry/NdLoginStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nd/commplatform/entry/NdLoginStatus;

    sget-object v1, Lcom/nd/commplatform/entry/NdLoginStatus;->NotLogin:Lcom/nd/commplatform/entry/NdLoginStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nd/commplatform/entry/NdLoginStatus;->AccountLogin:Lcom/nd/commplatform/entry/NdLoginStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nd/commplatform/entry/NdLoginStatus;->GuestLogin:Lcom/nd/commplatform/entry/NdLoginStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nd/commplatform/entry/NdLoginStatus;->ENUM$VALUES:[Lcom/nd/commplatform/entry/NdLoginStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/commplatform/entry/NdLoginStatus;
    .locals 1

    const-class v0, Lcom/nd/commplatform/entry/NdLoginStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdLoginStatus;

    return-object v0
.end method

.method public static values()[Lcom/nd/commplatform/entry/NdLoginStatus;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nd/commplatform/entry/NdLoginStatus;->ENUM$VALUES:[Lcom/nd/commplatform/entry/NdLoginStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/nd/commplatform/entry/NdLoginStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
