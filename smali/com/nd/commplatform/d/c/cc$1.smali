.class final Lcom/nd/commplatform/d/c/cc$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/cc;-><init>(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/cc;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/cc;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/cc$1;->a:Lcom/nd/commplatform/d/c/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc$1;->a:Lcom/nd/commplatform/d/c/cc;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cc;->a(Lcom/nd/commplatform/d/c/cc;)Lcom/nd/commplatform/d/c/cc$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc$1;->a:Lcom/nd/commplatform/d/c/cc;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cc;->a(Lcom/nd/commplatform/d/c/cc;)Lcom/nd/commplatform/d/c/cc$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/nd/commplatform/d/c/cc$a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc$1;->a:Lcom/nd/commplatform/d/c/cc;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/cc;->cancel()V

    return-void
.end method
