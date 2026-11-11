.class public Lcom/nd/commplatform/entry/NdFeedBackTypeInfo;
.super Ljava/lang/Object;


# instance fields
.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdFeedBackTypeInfo;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdFeedBackTypeInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdFeedBackTypeInfo;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdFeedBackTypeInfo;->name:Ljava/lang/String;

    return-void
.end method
