.class Lcom/nd/commplatform/d/c/ik$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/ik;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ik;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/ik;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ik$a;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/ik;Lcom/nd/commplatform/d/c/ik$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ik$a;-><init>(Lcom/nd/commplatform/d/c/ik;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$a;->a:Lcom/nd/commplatform/d/c/ik;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ik;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$a;->a:Lcom/nd/commplatform/d/c/ik;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/ik;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ik$a;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/ik;->g(Lcom/nd/commplatform/d/c/ik;)Lcom/nd/commplatform/entry/NdSex;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ik$a;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/ik;->d(Lcom/nd/commplatform/d/c/ik;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nd/commplatform/d/c/ik$a;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-static {v4}, Lcom/nd/commplatform/d/c/ik;->e(Lcom/nd/commplatform/d/c/ik;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/ik$a;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-static {v5}, Lcom/nd/commplatform/d/c/ik;->f(Lcom/nd/commplatform/d/c/ik;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/nd/commplatform/d/c/ik$a;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-static {v6}, Lcom/nd/commplatform/d/c/ik;->h(Lcom/nd/commplatform/d/c/ik;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/nd/commplatform/d/c/ik$a;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-static {v7}, Lcom/nd/commplatform/d/c/ik;->i(Lcom/nd/commplatform/d/c/ik;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$a;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->dV:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v8, Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-direct {v8}, Lcom/nd/commplatform/entry/NdUserInfo;-><init>()V

    invoke-virtual {v8, v1}, Lcom/nd/commplatform/entry/NdUserInfo;->setNickName(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lcom/nd/commplatform/entry/NdUserInfo;->setBornYear(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Lcom/nd/commplatform/entry/NdUserInfo;->setBornMonth(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lcom/nd/commplatform/entry/NdUserInfo;->setBornDay(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/nd/commplatform/entry/NdUserInfo;->setSex(Lcom/nd/commplatform/entry/NdSex;)V

    invoke-virtual {v8, v6}, Lcom/nd/commplatform/entry/NdUserInfo;->setProvince(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Lcom/nd/commplatform/entry/NdUserInfo;->setCity(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/nd/commplatform/entry/NdUserInfo;->setTrueName(Ljava/lang/String;)V

    new-instance v0, Lcom/nd/commplatform/d/c/ik$a$1;

    invoke-direct {v0, p0, v8}, Lcom/nd/commplatform/d/c/ik$a$1;-><init>(Lcom/nd/commplatform/d/c/ik$a;Lcom/nd/commplatform/entry/NdUserInfo;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$a;->a:Lcom/nd/commplatform/d/c/ik;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/d/c/ik;->b(Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$a;->a:Lcom/nd/commplatform/d/c/ik;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0, v9}, Lcom/nd/commplatform/d/c/ik;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$a;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-virtual {v1, v9}, Lcom/nd/commplatform/d/c/ik;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ik$a;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v8, v2, v0}, Lcom/nd/commplatform/d/c/a;->a(Lcom/nd/commplatform/entry/NdUserInfo;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method
