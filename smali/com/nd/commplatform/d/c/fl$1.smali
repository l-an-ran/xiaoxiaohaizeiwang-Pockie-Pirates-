.class final Lcom/nd/commplatform/d/c/fl$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fl;->a(ZI)V
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
.field final synthetic a:Lcom/nd/commplatform/d/c/fl;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fl;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fl$1;->a:Lcom/nd/commplatform/d/c/fl;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdUserInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fl$1;->a:Lcom/nd/commplatform/d/c/fl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fl;->b(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fl$1;->a:Lcom/nd/commplatform/d/c/fl;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    :cond_0
    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fl$1;->a:Lcom/nd/commplatform/d/c/fl;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fl;->a(Lcom/nd/commplatform/d/c/fl;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fl$1;->a:Lcom/nd/commplatform/d/c/fl;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fl;->b(Lcom/nd/commplatform/d/c/fl;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdUserInfo;->getTrueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdUserInfo;->getSex()Lcom/nd/commplatform/entry/NdSex;

    move-result-object v0

    sget-object v1, Lcom/nd/commplatform/entry/NdSex;->Male:Lcom/nd/commplatform/entry/NdSex;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fl$1;->a:Lcom/nd/commplatform/d/c/fl;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fl;->c(Lcom/nd/commplatform/d/c/fl;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fl$1;->a:Lcom/nd/commplatform/d/c/fl;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/fl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->ek:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fl$1;->a:Lcom/nd/commplatform/d/c/fl;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fl;->d(Lcom/nd/commplatform/d/c/fl;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Lcom/nd/commplatform/d/c/oh;->a(Lcom/nd/commplatform/entry/NdUserInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fl$1;->a:Lcom/nd/commplatform/d/c/fl;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fl;->e(Lcom/nd/commplatform/d/c/fl;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fl$1;->a:Lcom/nd/commplatform/d/c/fl;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/fl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/nd/commplatform/d/c/oh;->b(Landroid/content/Context;Lcom/nd/commplatform/entry/NdUserInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdUserInfo;->getSex()Lcom/nd/commplatform/entry/NdSex;

    move-result-object v0

    sget-object v1, Lcom/nd/commplatform/entry/NdSex;->Female:Lcom/nd/commplatform/entry/NdSex;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fl$1;->a:Lcom/nd/commplatform/d/c/fl;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fl;->c(Lcom/nd/commplatform/d/c/fl;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fl$1;->a:Lcom/nd/commplatform/d/c/fl;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/fl;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->ej:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

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
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/fl$1;->a(ILcom/nd/commplatform/entry/NdUserInfo;)V

    return-void
.end method
