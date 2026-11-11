.class final Lcom/nd/commplatform/d/c/if$2;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/if;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdNewAppVersionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/if;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/if;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/if$2;->a:Lcom/nd/commplatform/d/c/if;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdNewAppVersionInfo;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$2;->a:Lcom/nd/commplatform/d/c/if;

    invoke-virtual {v0, v5}, Lcom/nd/commplatform/d/c/if;->b(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$2;->a:Lcom/nd/commplatform/d/c/if;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/if;->b(Lcom/nd/commplatform/d/c/if;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$2;->a:Lcom/nd/commplatform/d/c/if;

    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/if;->b(Lcom/nd/commplatform/d/c/if;Lcom/nd/commplatform/entry/NdNewAppVersionInfo;)Lcom/nd/commplatform/entry/NdNewAppVersionInfo;

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getNewVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$2;->a:Lcom/nd/commplatform/d/c/if;

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getNewVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/if;->a(Lcom/nd/commplatform/d/c/if;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$2;->a:Lcom/nd/commplatform/d/c/if;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/if;->c(Lcom/nd/commplatform/d/c/if;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$2;->a:Lcom/nd/commplatform/d/c/if;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/if;->d(Lcom/nd/commplatform/d/c/if;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$2;->a:Lcom/nd/commplatform/d/c/if;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/if;->b(Lcom/nd/commplatform/d/c/if;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/if$2;->a:Lcom/nd/commplatform/d/c/if;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/if;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->mH:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$2;->a:Lcom/nd/commplatform/d/c/if;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/if;->e(Lcom/nd/commplatform/d/c/if;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/if$2;->a:Lcom/nd/commplatform/d/c/if;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/if;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->mo:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getNewVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getSoftSize()I

    move-result v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/oh;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/if$2;->a:Lcom/nd/commplatform/d/c/if;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/if;->f(Lcom/nd/commplatform/d/c/if;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/if$2;->a:Lcom/nd/commplatform/d/c/if;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/if;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$h;->nI:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$2;->a:Lcom/nd/commplatform/d/c/if;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/if;->f(Lcom/nd/commplatform/d/c/if;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$2;->a:Lcom/nd/commplatform/d/c/if;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/if;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/oh;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getSoftSize()I

    move-result v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/oh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$2;->a:Lcom/nd/commplatform/d/c/if;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/if;->g(Lcom/nd/commplatform/d/c/if;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->aX:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$2;->a:Lcom/nd/commplatform/d/c/if;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/if;->g(Lcom/nd/commplatform/d/c/if;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$2;->a:Lcom/nd/commplatform/d/c/if;

    invoke-static {v0, v6}, Lcom/nd/commplatform/d/c/if;->a(Lcom/nd/commplatform/d/c/if;Z)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$2;->a:Lcom/nd/commplatform/d/c/if;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/if;->h(Lcom/nd/commplatform/d/c/if;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$2;->a:Lcom/nd/commplatform/d/c/if;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/if;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/if$2;->a(ILcom/nd/commplatform/entry/NdNewAppVersionInfo;)V

    return-void
.end method
