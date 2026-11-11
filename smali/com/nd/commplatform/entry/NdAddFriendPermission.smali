.class public Lcom/nd/commplatform/entry/NdAddFriendPermission;
.super Ljava/lang/Object;


# static fields
.field public static final FRIEND_PERMISSION_ADD_DISABLE:I = 0x2

.field public static final FRIEND_PERMISSION_ADD_ENABLE:I = 0x1

.field public static final FRIEND_PERMISSION_ADD_VALIDATION:I


# instance fields
.field private canAddFriend:I

.field private uin:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/entry/NdAddFriendPermission;->canAddFriend:I

    return-void
.end method


# virtual methods
.method public getCanAddFriend()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdAddFriendPermission;->canAddFriend:I

    return v0
.end method

.method public getUin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAddFriendPermission;->uin:Ljava/lang/String;

    return-object v0
.end method

.method public setCanAddFriend(I)V
    .locals 0
    .param p1, "canAddFriend"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput p1, p0, Lcom/nd/commplatform/entry/NdAddFriendPermission;->canAddFriend:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setUin(Ljava/lang/String;)V
    .locals 0
    .param p1, "uin"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAddFriendPermission;->uin:Ljava/lang/String;

    return-void
.end method
