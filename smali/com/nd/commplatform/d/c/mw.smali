.class public Lcom/nd/commplatform/d/c/mw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/lang/String; = "NdActivityUserViewHolder"


# instance fields
.field private b:Lcom/nd/commplatform/uap/widget/NdActivityUserView;

.field private c:Lcom/nd/commplatform/d/c/nb;

.field private d:Lcom/nd/commplatform/entry/NdUserInfo;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/uap/widget/NdActivityUserView;Lcom/nd/commplatform/d/c/nb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/mw;->b:Lcom/nd/commplatform/uap/widget/NdActivityUserView;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/mw;->c:Lcom/nd/commplatform/d/c/nb;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/mw;Lcom/nd/commplatform/entry/NdUserInfo;)Lcom/nd/commplatform/entry/NdUserInfo;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/mw;->d:Lcom/nd/commplatform/entry/NdUserInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/mw;)Lcom/nd/commplatform/uap/widget/NdActivityUserView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mw;->b:Lcom/nd/commplatform/uap/widget/NdActivityUserView;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mw;->c:Lcom/nd/commplatform/d/c/nb;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nb;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mw;->b:Lcom/nd/commplatform/uap/widget/NdActivityUserView;

    iget-object v1, v1, Lcom/nd/commplatform/uap/widget/NdActivityUserView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/mw;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/mw;->e()V

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mw;->c:Lcom/nd/commplatform/d/c/nb;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ed;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/mw;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/mw;->d()V

    return-void
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/mw;)Lcom/nd/commplatform/entry/NdUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mw;->d:Lcom/nd/commplatform/entry/NdUserInfo;

    return-object v0
.end method

.method private d()V
    .locals 6

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v5, Lcom/nd/commplatform/d/c/mw$2;

    invoke-direct {v5, p0}, Lcom/nd/commplatform/d/c/mw$2;-><init>(Lcom/nd/commplatform/d/c/mw;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mw;->c:Lcom/nd/commplatform/d/c/nb;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/nb;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/mw;->d:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdUserInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/mw;->b:Lcom/nd/commplatform/uap/widget/NdActivityUserView;

    invoke-virtual {v3}, Lcom/nd/commplatform/uap/widget/NdActivityUserView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nd/commplatform/d/c/oh;->g(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/nd/commplatform/d/c/mw;->b:Lcom/nd/commplatform/uap/widget/NdActivityUserView;

    invoke-virtual {v4}, Lcom/nd/commplatform/uap/widget/NdActivityUserView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    return-void
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/mw;)Lcom/nd/commplatform/d/c/nb;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mw;->c:Lcom/nd/commplatform/d/c/nb;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mw;->c:Lcom/nd/commplatform/d/c/nb;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nb;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mw;->b:Lcom/nd/commplatform/uap/widget/NdActivityUserView;

    iget-object v0, v0, Lcom/nd/commplatform/uap/widget/NdActivityUserView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mw;->d:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/mw;->b:Lcom/nd/commplatform/uap/widget/NdActivityUserView;

    iget-object v0, v0, Lcom/nd/commplatform/uap/widget/NdActivityUserView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mw;->d:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getEmotion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/mw;->b()V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/mw$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/mw$1;-><init>(Lcom/nd/commplatform/d/c/mw;)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/mw;->c:Lcom/nd/commplatform/d/c/nb;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/nb;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/nd/commplatform/d/c/mw;->b:Lcom/nd/commplatform/uap/widget/NdActivityUserView;

    invoke-virtual {v4}, Lcom/nd/commplatform/uap/widget/NdActivityUserView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/mw;->c()V

    return-void
.end method
