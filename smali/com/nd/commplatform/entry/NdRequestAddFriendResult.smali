.class public Lcom/nd/commplatform/entry/NdRequestAddFriendResult;
.super Ljava/lang/Object;


# static fields
.field public static final RESULT_ADDED:I = 0x1

.field public static final RESULT_REFUSE:I = 0x3

.field public static final RESULT_VALIDATION:I = 0x2


# instance fields
.field private resultCode:I

.field private uin:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdRequestAddFriendResult;->resultCode:I

    return v0
.end method

.method public getUin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdRequestAddFriendResult;->uin:Ljava/lang/String;

    return-object v0
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdRequestAddFriendResult;->resultCode:I

    return-void
.end method

.method public setUin(Ljava/lang/String;)V
    .locals 0
    .param p1, "uin"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdRequestAddFriendResult;->uin:Ljava/lang/String;

    return-void
.end method
