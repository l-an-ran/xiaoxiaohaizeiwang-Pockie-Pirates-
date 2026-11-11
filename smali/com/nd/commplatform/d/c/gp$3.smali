.class final Lcom/nd/commplatform/d/c/gp$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/gp;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/gp;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/gp;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gp$3;->a:Lcom/nd/commplatform/d/c/gp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x66

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gp$3;->a:Lcom/nd/commplatform/d/c/gp;

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/d/c/gp;->f(I)Lcom/nd/commplatform/NdCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gp$3;->a:Lcom/nd/commplatform/d/c/gp;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gp;->b(Lcom/nd/commplatform/d/c/gp;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gp$3;->a:Lcom/nd/commplatform/d/c/gp;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/gp;->c(Lcom/nd/commplatform/d/c/gp;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gp$3;->a:Lcom/nd/commplatform/d/c/gp;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gp;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->hq:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/gp$3;->a:Lcom/nd/commplatform/d/c/gp;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/oh;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/nd/commplatform/d/c/gp$3$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/gp$3$1;-><init>(Lcom/nd/commplatform/d/c/gp$3;)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/gp$3;->a:Lcom/nd/commplatform/d/c/gp;

    invoke-virtual {v2, v3, v1}, Lcom/nd/commplatform/d/c/gp;->a(ILcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/gp$3;->a:Lcom/nd/commplatform/d/c/gp;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/d/c/gp;->b(Z)V

    new-instance v2, Lcom/nd/commplatform/entry/NdMsgContent;

    invoke-direct {v2}, Lcom/nd/commplatform/entry/NdMsgContent;-><init>()V

    invoke-virtual {v2, v0}, Lcom/nd/commplatform/entry/NdMsgContent;->setContent(Ljava/lang/String;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v3, p0, Lcom/nd/commplatform/d/c/gp$3;->a:Lcom/nd/commplatform/d/c/gp;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/gp;->c(Lcom/nd/commplatform/d/c/gp;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nd/commplatform/d/c/gp$3;->a:Lcom/nd/commplatform/d/c/gp;

    invoke-virtual {v4}, Lcom/nd/commplatform/d/c/gp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Lcom/nd/commplatform/entry/NdMsgContent;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method
