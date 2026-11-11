.class public Lcom/nd/commplatform/entry/NdMsgTagResp;
.super Ljava/lang/Object;


# static fields
.field public static final RET_CODE_SUCCESS:Ljava/lang/String; = "0"


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdMsgTagResp;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdMsgTagResp;->errorText:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdMsgTagResp;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setErrorText(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorText"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdMsgTagResp;->errorText:Ljava/lang/String;

    return-void
.end method
