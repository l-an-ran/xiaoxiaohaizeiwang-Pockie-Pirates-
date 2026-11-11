.class Lcom/nd/commplatform/d/c/g$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/g;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/g;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/g;Lcom/nd/commplatform/d/c/g$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/g$e;-><init>(Lcom/nd/commplatform/d/c/g;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x4

    const/4 v7, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    invoke-virtual {v0, v4}, Lcom/nd/commplatform/d/c/g;->f(I)Lcom/nd/commplatform/NdCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v5, Lcom/nd/commplatform/d/c/g$e$1;

    invoke-direct {v5, p0}, Lcom/nd/commplatform/d/c/g$e$1;-><init>(Lcom/nd/commplatform/d/c/g$e;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->a(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->f(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/g;->h(Lcom/nd/commplatform/d/c/g;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    iget-object v3, p0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v3, v1, v0}, Lcom/nd/commplatform/d/c/g;->a(Lcom/nd/commplatform/d/c/g;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    invoke-virtual {v3, v7}, Lcom/nd/commplatform/d/c/g;->b(Z)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    invoke-virtual {v3, v4, v5, v2}, Lcom/nd/commplatform/d/c/g;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    invoke-virtual {v3, v2}, Lcom/nd/commplatform/d/c/g;->b(Z)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/g;->e(Lcom/nd/commplatform/d/c/g;)Lcom/nd/commplatform/entry/NdLoginConfig;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/g;->e(Lcom/nd/commplatform/d/c/g;)Lcom/nd/commplatform/entry/NdLoginConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdLoginConfig;->getPassword()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/g;->e(Lcom/nd/commplatform/d/c/g;)Lcom/nd/commplatform/entry/NdLoginConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdLoginConfig;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/g;->e(Lcom/nd/commplatform/d/c/g;)Lcom/nd/commplatform/entry/NdLoginConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdLoginConfig;->getUserName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/g;->e(Lcom/nd/commplatform/d/c/g;)Lcom/nd/commplatform/entry/NdLoginConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdLoginConfig;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v3, p0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;ZZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)Z

    :goto_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->g(Lcom/nd/commplatform/d/c/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_2
    new-instance v3, Lcom/nd/commplatform/entry/NdLoginConfig;

    invoke-direct {v3}, Lcom/nd/commplatform/entry/NdLoginConfig;-><init>()V

    invoke-virtual {v3, v7}, Lcom/nd/commplatform/entry/NdLoginConfig;->setAutoLogin(Z)V

    invoke-virtual {v3, v2}, Lcom/nd/commplatform/entry/NdLoginConfig;->setSavePassword(Z)V

    invoke-virtual {v3, v0}, Lcom/nd/commplatform/entry/NdLoginConfig;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/nd/commplatform/entry/NdLoginConfig;->setUserName(Ljava/lang/String;)V

    const-string v4, "********"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/e;->a(Landroid/content/Context;)Lcom/nd/commplatform/d/c/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/d;->a(Ljava/lang/String;)Lcom/nd/commplatform/d/c/c;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v3, v2}, Lcom/nd/commplatform/entry/NdLoginConfig;->setAutoLogin(Z)V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/nd/commplatform/entry/NdLoginConfig;->setPassword(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v5, v6}, Lcom/nd/commplatform/d/c/a;->a(Lcom/nd/commplatform/entry/NdLoginConfig;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)Z

    goto :goto_1
.end method
