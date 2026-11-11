.class public abstract Lcom/nd/commplatform/d/c/fw;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/nd/commplatform/d/c/gf;

.field protected b:Lcom/nd/commplatform/entry/NdTag;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/d/c/gf;Lcom/nd/commplatform/entry/NdTag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fw;->a:Lcom/nd/commplatform/d/c/gf;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/fw;->b:Lcom/nd/commplatform/entry/NdTag;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fw;->b:Lcom/nd/commplatform/entry/NdTag;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fw;->b:Lcom/nd/commplatform/entry/NdTag;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getCmdId()I

    move-result v0

    return v0
.end method
