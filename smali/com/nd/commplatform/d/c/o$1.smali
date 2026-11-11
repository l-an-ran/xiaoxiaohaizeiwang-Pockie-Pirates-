.class final Lcom/nd/commplatform/d/c/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/o;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/o;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/o;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/o$1;->a:Lcom/nd/commplatform/d/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/o$1;->a:Lcom/nd/commplatform/d/c/o;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/o;->a(Lcom/nd/commplatform/d/c/o;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/o$1;->a:Lcom/nd/commplatform/d/c/o;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/o;->b(Lcom/nd/commplatform/d/c/o;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/o$1;->a:Lcom/nd/commplatform/d/c/o;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/o;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fW:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/o$1;->a:Lcom/nd/commplatform/d/c/o;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/o;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fY:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/nd/commplatform/d/c/o$1$1;

    invoke-direct {v5, p0, v2}, Lcom/nd/commplatform/d/c/o$1$1;-><init>(Lcom/nd/commplatform/d/c/o$1;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/o$1;->a:Lcom/nd/commplatform/d/c/o;

    invoke-virtual {v0, v5}, Lcom/nd/commplatform/d/c/o;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/o$1;->a:Lcom/nd/commplatform/d/c/o;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/o;->c(Lcom/nd/commplatform/d/c/o;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/nd/commplatform/d/c/o$1;->a:Lcom/nd/commplatform/d/c/o;

    invoke-virtual {v4}, Lcom/nd/commplatform/d/c/o;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method
