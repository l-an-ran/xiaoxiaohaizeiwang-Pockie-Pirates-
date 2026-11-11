.class final Lcom/nd/commplatform/d/c/hz$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/hz;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/hz;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/hz;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/hz$1;->a:Lcom/nd/commplatform/d/c/hz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v0, -0x32

    invoke-static {v0}, Lcom/nd/commplatform/NdMiscCallbackListener;->a(I)V

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/b;->h()V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hz$1;->a:Lcom/nd/commplatform/d/c/hz;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hz;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/a;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz$1;->a:Lcom/nd/commplatform/d/c/hz;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->c(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V

    return-void
.end method
