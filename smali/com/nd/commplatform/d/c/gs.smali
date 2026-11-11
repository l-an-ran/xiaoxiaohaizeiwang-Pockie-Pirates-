.class public Lcom/nd/commplatform/d/c/gs;
.super Lcom/nd/commplatform/d/c/hh;


# static fields
.field private static final a:Ljava/lang/String; = "NdAppListItemHolder"


# instance fields
.field private b:Lcom/nd/commplatform/entry/NdFriendAppInfo;

.field private c:Lcom/nd/commplatform/widget/NdAppListItem;

.field private d:Lcom/nd/commplatform/NdCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/widget/NdAppListItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hh;-><init>()V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gs;->c:Lcom/nd/commplatform/widget/NdAppListItem;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/gs;)Lcom/nd/commplatform/entry/NdFriendAppInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gs;->b:Lcom/nd/commplatform/entry/NdFriendAppInfo;

    return-object v0
.end method

.method private static a(ILcom/nd/commplatform/widget/NdAppListItem;)V
    .locals 1

    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_0

    sget v0, Lcom/nd/commplatform/d/c/jo$d;->aS:I

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/widget/NdAppListItem;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/nd/commplatform/d/c/jo$d;->aT:I

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/widget/NdAppListItem;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private a(ILjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/gs$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/gs$1;-><init>(Lcom/nd/commplatform/d/c/gs;)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/gs;->d:Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nd/commplatform/d/c/gs;->c:Lcom/nd/commplatform/widget/NdAppListItem;

    invoke-virtual {v4}, Lcom/nd/commplatform/widget/NdAppListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/gs;->d:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->b(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    return-void

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/gs;)Lcom/nd/commplatform/widget/NdAppListItem;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gs;->c:Lcom/nd/commplatform/widget/NdAppListItem;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gs;->c:Lcom/nd/commplatform/widget/NdAppListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdAppListItem;->a:Landroid/widget/ImageView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gs;->d:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gs;->d:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->destroy()V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/gs;->d:Lcom/nd/commplatform/NdCallbackListener;

    :cond_0
    iput-object v1, p0, Lcom/nd/commplatform/d/c/gs;->b:Lcom/nd/commplatform/entry/NdFriendAppInfo;

    return-void
.end method

.method private f()V
    .locals 2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gs;->d()I

    move-result v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gs;->c:Lcom/nd/commplatform/widget/NdAppListItem;

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/gs;->a(ILcom/nd/commplatform/widget/NdAppListItem;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x4

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gs;->c()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gs;->b()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gs;->f()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gs;->c:Lcom/nd/commplatform/widget/NdAppListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdAppListItem;->b:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gs;->c:Lcom/nd/commplatform/widget/NdAppListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdAppListItem;->c:Landroid/widget/RatingBar;

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gs;->c:Lcom/nd/commplatform/widget/NdAppListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdAppListItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdFriendAppInfo;)V
    .locals 4

    const/4 v0, 0x5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gs;->c()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gs;->b()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gs;->f()V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gs;->b:Lcom/nd/commplatform/entry/NdFriendAppInfo;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gs;->c:Lcom/nd/commplatform/widget/NdAppListItem;

    iget-object v1, v1, Lcom/nd/commplatform/widget/NdAppListItem;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/gs;->b:Lcom/nd/commplatform/entry/NdFriendAppInfo;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdFriendAppInfo;->getAppInfo()Lcom/nd/commplatform/entry/NdBaseAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdBaseAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gs;->c:Lcom/nd/commplatform/widget/NdAppListItem;

    iget-object v1, v1, Lcom/nd/commplatform/widget/NdAppListItem;->c:Landroid/widget/RatingBar;

    invoke-virtual {v1, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gs;->c:Lcom/nd/commplatform/widget/NdAppListItem;

    iget-object v1, v1, Lcom/nd/commplatform/widget/NdAppListItem;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gs;->b:Lcom/nd/commplatform/entry/NdFriendAppInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdFriendAppInfo;->getGrade()I

    move-result v1

    if-le v1, v0, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/gs;->c:Lcom/nd/commplatform/widget/NdAppListItem;

    iget-object v1, v1, Lcom/nd/commplatform/widget/NdAppListItem;->c:Landroid/widget/RatingBar;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/RatingBar;->setRating(F)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gs;->b:Lcom/nd/commplatform/entry/NdFriendAppInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdFriendAppInfo;->getOpinion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/gs;->c:Lcom/nd/commplatform/widget/NdAppListItem;

    iget-object v1, v1, Lcom/nd/commplatform/widget/NdAppListItem;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gs;->b:Lcom/nd/commplatform/entry/NdFriendAppInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdFriendAppInfo;->getAppInfo()Lcom/nd/commplatform/entry/NdBaseAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBaseAppInfo;->getAppId()I

    move-result v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gs;->b:Lcom/nd/commplatform/entry/NdFriendAppInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdFriendAppInfo;->getAppInfo()Lcom/nd/commplatform/entry/NdBaseAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdBaseAppInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nd/commplatform/d/c/gs;->a(ILjava/lang/String;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
