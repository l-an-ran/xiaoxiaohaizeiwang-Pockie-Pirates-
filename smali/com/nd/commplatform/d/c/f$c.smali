.class Lcom/nd/commplatform/d/c/f$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/f;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/f;Lcom/nd/commplatform/d/c/f$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/f$c;-><init>(Lcom/nd/commplatform/d/c/f;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/f;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/f;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/f;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    invoke-static {v1, v0, v2, v3}, Lcom/nd/commplatform/d/c/f;->a(Lcom/nd/commplatform/d/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->p()Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-instance v7, Lcom/nd/commplatform/d/c/f$c$1;

    invoke-direct {v7, p0, v1}, Lcom/nd/commplatform/d/c/f$c$1;-><init>(Lcom/nd/commplatform/d/c/f$c;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    invoke-virtual {v0, v5}, Lcom/nd/commplatform/d/c/f;->b(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v7, v4}, Lcom/nd/commplatform/d/c/f;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    invoke-virtual {v0, v4}, Lcom/nd/commplatform/d/c/f;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/f;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/nd/commplatform/d/c/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v5, p0, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    invoke-virtual {v5}, Lcom/nd/commplatform/d/c/f;->getContext()Landroid/content/Context;

    move-result-object v6

    move v5, v4

    invoke-virtual/range {v0 .. v7}, Lcom/nd/commplatform/d/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v6, p0, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    invoke-virtual {v6}, Lcom/nd/commplatform/d/c/f;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v0 .. v7}, Lcom/nd/commplatform/d/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method
