.class final Lcom/nd/commplatform/d/c/gm$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/gm;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/gm;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/gm;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gm$1;->a:Lcom/nd/commplatform/d/c/gm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/fw;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gm$1;->a:Lcom/nd/commplatform/d/c/gm;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fw;->a(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V

    return-void
.end method
