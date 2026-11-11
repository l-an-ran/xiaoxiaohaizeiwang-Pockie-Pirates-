.class public Lcom/nd/commplatform/entry/NdModuleSwitchInfo;
.super Ljava/lang/Object;


# static fields
.field public static final MODULE_ID_ACHIEVEMENT:I = 0x2

.field public static final MODULE_ID_LEADERBOARD:I = 0x1

.field public static final MODULE_ID_UNKNOWN:I


# instance fields
.field private enable:Z

.field private moudleId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMoudleId()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdModuleSwitchInfo;->moudleId:I

    return v0
.end method

.method public isEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/entry/NdModuleSwitchInfo;->enable:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/nd/commplatform/entry/NdModuleSwitchInfo;->enable:Z

    return-void
.end method

.method public setMoudleId(I)V
    .locals 0
    .param p1, "moudleId"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    :pswitch_0
    iput p1, p0, Lcom/nd/commplatform/entry/NdModuleSwitchInfo;->moudleId:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
