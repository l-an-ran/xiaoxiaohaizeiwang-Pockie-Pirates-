.class public Lcom/nd/commplatform/d/c/hr;
.super Lcom/nd/commplatform/d/c/hh;


# instance fields
.field protected a:Lcom/nd/commplatform/NdCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/nd/commplatform/widget/NdPayFriendListItem;

.field private c:Lcom/nd/commplatform/d/c/hq;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/widget/NdPayFriendListItem;Lcom/nd/commplatform/d/c/hq;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hh;-><init>()V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/hr;->b:Lcom/nd/commplatform/widget/NdPayFriendListItem;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/hr;->c:Lcom/nd/commplatform/d/c/hq;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/hr;)Lcom/nd/commplatform/d/c/hq;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hr;->c:Lcom/nd/commplatform/d/c/hq;

    return-object v0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/hr;)Lcom/nd/commplatform/widget/NdPayFriendListItem;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hr;->b:Lcom/nd/commplatform/widget/NdPayFriendListItem;

    return-object v0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hr;->a:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hr;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hr;->a:Lcom/nd/commplatform/NdCallbackListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hr;->c()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hr;->c:Lcom/nd/commplatform/d/c/hq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/hq;->a(Lcom/nd/commplatform/d/c/ek;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hr;->b:Lcom/nd/commplatform/widget/NdPayFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdPayFriendListItem;->b:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hr;->b:Lcom/nd/commplatform/widget/NdPayFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdPayFriendListItem;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hr;->b()V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/ek;)V
    .locals 2

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hr;->c()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hr;->c:Lcom/nd/commplatform/d/c/hq;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/hq;->a(Lcom/nd/commplatform/d/c/ek;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hr;->b:Lcom/nd/commplatform/widget/NdPayFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdPayFriendListItem;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hr;->c:Lcom/nd/commplatform/d/c/hq;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hr;->b:Lcom/nd/commplatform/widget/NdPayFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdPayFriendListItem;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hr;->c:Lcom/nd/commplatform/d/c/hq;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hq;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hr;->c:Lcom/nd/commplatform/d/c/hq;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hq;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hr;->c:Lcom/nd/commplatform/d/c/hq;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nd/commplatform/d/c/hr;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hr;->b()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v2, ""

    :goto_1
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/hr$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/hr$1;-><init>(Lcom/nd/commplatform/d/c/hr;)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/hr;->a:Lcom/nd/commplatform/NdCallbackListener;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hr;->b:Lcom/nd/commplatform/widget/NdPayFriendListItem;

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdPayFriendListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nd/commplatform/d/c/oh;->g(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hr;->b:Lcom/nd/commplatform/widget/NdPayFriendListItem;

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdPayFriendListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/hr;->a:Lcom/nd/commplatform/NdCallbackListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    goto :goto_0

    :cond_1
    move-object v2, p2

    goto :goto_1
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hr;->b:Lcom/nd/commplatform/widget/NdPayFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdPayFriendListItem;->a:Landroid/widget/ImageView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aa:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
