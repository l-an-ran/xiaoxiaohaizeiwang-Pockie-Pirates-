.class public Lcom/nd/commplatform/NdMiscCallbackListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;,
        Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;,
        Lcom/nd/commplatform/NdMiscCallbackListener$OnPlatformBackground;,
        Lcom/nd/commplatform/NdMiscCallbackListener$OnSessionInvalidListener;,
        Lcom/nd/commplatform/NdMiscCallbackListener$OnSwitchAccountListener;
    }
.end annotation


# static fields
.field public static a:Lcom/nd/commplatform/NdMiscCallbackListener$OnSessionInvalidListener;

.field public static b:Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;

.field private static c:Lcom/nd/commplatform/NdMiscCallbackListener$OnSwitchAccountListener;

.field private static d:Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/nd/commplatform/NdMiscCallbackListener;->a:Lcom/nd/commplatform/NdMiscCallbackListener$OnSessionInvalidListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nd/commplatform/NdMiscCallbackListener;->a:Lcom/nd/commplatform/NdMiscCallbackListener$OnSessionInvalidListener;

    invoke-interface {v0}, Lcom/nd/commplatform/NdMiscCallbackListener$OnSessionInvalidListener;->onSessionInvalid()V

    :cond_0
    return-void
.end method

.method public static a(I)V
    .locals 1

    sget-object v0, Lcom/nd/commplatform/NdMiscCallbackListener;->c:Lcom/nd/commplatform/NdMiscCallbackListener$OnSwitchAccountListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nd/commplatform/NdMiscCallbackListener;->c:Lcom/nd/commplatform/NdMiscCallbackListener$OnSwitchAccountListener;

    invoke-interface {v0, p0}, Lcom/nd/commplatform/NdMiscCallbackListener$OnSwitchAccountListener;->onSwitchAccount(I)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V
    .locals 0

    sput-object p0, Lcom/nd/commplatform/NdMiscCallbackListener;->b:Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;

    return-void
.end method

.method public static a(Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;)V
    .locals 0

    sput-object p0, Lcom/nd/commplatform/NdMiscCallbackListener;->d:Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;

    return-void
.end method

.method public static a(Lcom/nd/commplatform/NdMiscCallbackListener$OnSessionInvalidListener;)V
    .locals 0

    sput-object p0, Lcom/nd/commplatform/NdMiscCallbackListener;->a:Lcom/nd/commplatform/NdMiscCallbackListener$OnSessionInvalidListener;

    return-void
.end method

.method public static a(Lcom/nd/commplatform/NdMiscCallbackListener$OnSwitchAccountListener;)V
    .locals 0

    sput-object p0, Lcom/nd/commplatform/NdMiscCallbackListener;->c:Lcom/nd/commplatform/NdMiscCallbackListener$OnSwitchAccountListener;

    return-void
.end method

.method public static b(I)V
    .locals 2

    sget-object v0, Lcom/nd/commplatform/NdMiscCallbackListener;->b:Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nd/commplatform/NdMiscCallbackListener;->b:Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;

    invoke-static {p0}, Lcom/nd/commplatform/d/c/nn;->a(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;->finishLoginProcess(I)V

    :cond_0
    return-void
.end method

.method public static c(I)V
    .locals 1

    sget-object v0, Lcom/nd/commplatform/NdMiscCallbackListener;->d:Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nd/commplatform/NdMiscCallbackListener;->d:Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;

    invoke-interface {v0, p0}, Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;->finishPayProcess(I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/NdMiscCallbackListener;->d:Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;

    :cond_0
    return-void
.end method
