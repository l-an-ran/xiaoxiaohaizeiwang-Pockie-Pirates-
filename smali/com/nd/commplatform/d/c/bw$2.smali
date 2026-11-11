.class final Lcom/nd/commplatform/d/c/bw$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/widget/NdFrameInnerContentWrapper$IContentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/bw;->c(Landroid/app/Activity;I)Lcom/nd/commplatform/widget/NdFrameInnerContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/bw$2;->a:Landroid/app/Activity;

    iput p2, p0, Lcom/nd/commplatform/d/c/bw$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/bw$2;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/nd/commplatform/d/c/bw$2;->b:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/bw;->b(Landroid/app/Activity;I)Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/bw$2;->b:I

    invoke-static {v0}, Lcom/nd/commplatform/d/c/bw;->a(I)Z

    move-result v0

    return v0
.end method
