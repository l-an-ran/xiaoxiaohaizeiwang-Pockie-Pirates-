.class final Lcom/nd/commplatform/d/c/dz$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/dz;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/dz;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/dz;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dz$3;->a:Lcom/nd/commplatform/d/c/dz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dz$3;->a:Lcom/nd/commplatform/d/c/dz;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/dz;->b(Lcom/nd/commplatform/d/c/dz;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dz$3;->a:Lcom/nd/commplatform/d/c/dz;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/dz;->c(Lcom/nd/commplatform/d/c/dz;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dz$3;->a:Lcom/nd/commplatform/d/c/dz;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/dz;->a(Lcom/nd/commplatform/d/c/dz;)Lcom/nd/commplatform/d/c/hf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hf;->a()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dz$3;->a:Lcom/nd/commplatform/d/c/dz;

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/dz;->a(Lcom/nd/commplatform/d/c/dz;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dz$3;->a:Lcom/nd/commplatform/d/c/dz;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/dz;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ju:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
