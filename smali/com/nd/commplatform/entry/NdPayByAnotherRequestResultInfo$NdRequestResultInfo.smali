.class public Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo$NdRequestResultInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NdRequestResultInfo"
.end annotation


# instance fields
.field private mCooOrderSerial:Ljava/lang/String;

.field private mOrderSerial:Ljava/lang/String;

.field private mRequestUin:Ljava/lang/String;

.field private mSucceed:Z

.field final synthetic this$0:Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "cooOrderSerial"    # Ljava/lang/String;
    .param p3, "requestUin"    # Ljava/lang/String;
    .param p4, "orderSerial"    # Ljava/lang/String;
    .param p5, "succeed"    # Z

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo$NdRequestResultInfo;->this$0:Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo$NdRequestResultInfo;->mCooOrderSerial:Ljava/lang/String;

    iput-object p3, p0, Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo$NdRequestResultInfo;->mRequestUin:Ljava/lang/String;

    iput-object p4, p0, Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo$NdRequestResultInfo;->mOrderSerial:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo$NdRequestResultInfo;->mSucceed:Z

    return-void
.end method


# virtual methods
.method public getCooOrderSerial()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo$NdRequestResultInfo;->mCooOrderSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderSerial()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo$NdRequestResultInfo;->mOrderSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo$NdRequestResultInfo;->mRequestUin:Ljava/lang/String;

    return-object v0
.end method

.method public isSucceed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo$NdRequestResultInfo;->mSucceed:Z

    return v0
.end method
