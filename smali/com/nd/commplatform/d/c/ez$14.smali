.class final Lcom/nd/commplatform/d/c/ez$14;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ez;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ez;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ez;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ez$14;->a:Lcom/nd/commplatform/d/c/ez;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdUserInfo;)V
    .locals 6

    if-nez p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez$14;->a:Lcom/nd/commplatform/d/c/ez;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ez;->b(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez$14;->a:Lcom/nd/commplatform/d/c/ez;

    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/ez;->a(Lcom/nd/commplatform/d/c/ez;Lcom/nd/commplatform/entry/NdUserInfo;)Lcom/nd/commplatform/entry/NdUserInfo;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez$14;->a:Lcom/nd/commplatform/d/c/ez;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ez;->g(Lcom/nd/commplatform/d/c/ez;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nd/commplatform/d/c/of;->a(Lcom/nd/commplatform/entry/NdUserInfo;)V

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdUserInfo;->getEmotion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdUserInfo;->getEmotion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez$14;->a:Lcom/nd/commplatform/d/c/ez;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ez;->h(Lcom/nd/commplatform/d/c/ez;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdUserInfo;->getEmotion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez$14;->a:Lcom/nd/commplatform/d/c/ez;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ez;->i(Lcom/nd/commplatform/d/c/ez;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdUserInfo;->getEmotion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdUserInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ez$14;->a:Lcom/nd/commplatform/d/c/ez;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/ez;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nd/commplatform/d/c/oh;->g(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/nd/commplatform/d/c/ez$14;->a:Lcom/nd/commplatform/d/c/ez;

    invoke-virtual {v4}, Lcom/nd/commplatform/d/c/ez;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/ez$14;->a:Lcom/nd/commplatform/d/c/ez;

    invoke-static {v5}, Lcom/nd/commplatform/d/c/ez;->j(Lcom/nd/commplatform/d/c/ez;)Lcom/nd/commplatform/NdCallbackListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez$14;->a:Lcom/nd/commplatform/d/c/ez;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ez;->h(Lcom/nd/commplatform/d/c/ez;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez$14;->a:Lcom/nd/commplatform/d/c/ez;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ez;->i(Lcom/nd/commplatform/d/c/ez;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdUserInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/ez$14;->a(ILcom/nd/commplatform/entry/NdUserInfo;)V

    return-void
.end method
