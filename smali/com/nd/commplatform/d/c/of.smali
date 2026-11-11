.class public Lcom/nd/commplatform/d/c/of;
.super Ljava/lang/Object;


# static fields
.field private static h:Lcom/nd/commplatform/d/c/of;


# instance fields
.field a:Z

.field private b:Lcom/nd/commplatform/entry/NdUserInfo;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdModuleSwitchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

.field private f:Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

.field private g:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/d/c/of;->h:Lcom/nd/commplatform/d/c/of;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/of;->b:Lcom/nd/commplatform/entry/NdUserInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/of;->a:Z

    return-void
.end method

.method public static a()Lcom/nd/commplatform/d/c/of;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/of;->h:Lcom/nd/commplatform/d/c/of;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/of;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/of;-><init>()V

    sput-object v0, Lcom/nd/commplatform/d/c/of;->h:Lcom/nd/commplatform/d/c/of;

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/of;->h:Lcom/nd/commplatform/d/c/of;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/of;Lcom/nd/commplatform/entry/NdUserInfo;)Lcom/nd/commplatform/entry/NdUserInfo;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/of;->b:Lcom/nd/commplatform/entry/NdUserInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/of;Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;)Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/of;->f:Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    return-object p1
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/of;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/of;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/of;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/of;->d:Ljava/util/List;

    return-object p1
.end method

.method private a(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nd/commplatform/d/c/of;->b:Lcom/nd/commplatform/entry/NdUserInfo;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/of;->b:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdUserInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v2

    :cond_0
    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    return-void
.end method

.method private b(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdModuleSwitchInfo;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->b()I

    move-result v0

    new-instance v1, Lcom/nd/commplatform/d/c/of$1;

    invoke-direct {v1, p0, p2}, Lcom/nd/commplatform/d/c/of$1;-><init>(Lcom/nd/commplatform/d/c/of;Lcom/nd/commplatform/NdCallbackListener;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v1}, Lcom/nd/commplatform/d/c/a;->c(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/of;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/of;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/of;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdUserInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/of;->b:Lcom/nd/commplatform/entry/NdUserInfo;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/of$3;

    invoke-direct {v1, p0, p2}, Lcom/nd/commplatform/d/c/of$3;-><init>(Lcom/nd/commplatform/d/c/of;Lcom/nd/commplatform/NdCallbackListener;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v0, v3, p1, v1}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/of;->b:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {p2, v0, v1}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private d(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/nd/commplatform/d/c/oh;->g(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/nd/commplatform/d/c/of;->a(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->bu:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/of;->f:Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/of;->f:Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->getCurrency()Lcom/nd/commplatform/entry/NdVirtualCurrency;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdVirtualCurrency;->getUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdVirtualCurrency;->getUnit()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdModuleSwitchInfo;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/of;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/of;->d:Ljava/util/List;

    invoke-virtual {p2, v0, v1}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/d/c/of;->b(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/of;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/of;->f:Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/of$2;

    invoke-direct {v1, p0, p2}, Lcom/nd/commplatform/d/c/of$2;-><init>(Lcom/nd/commplatform/d/c/of;Lcom/nd/commplatform/NdCallbackListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/nd/commplatform/d/c/a;->h(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdUserInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p1}, Lcom/nd/commplatform/d/c/of;->c(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/of;->e:Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdUserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/of;->b:Lcom/nd/commplatform/entry/NdUserInfo;

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/of;->f:Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    return-void
.end method

.method public a(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/of;->g:Ljava/lang/Double;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nd/commplatform/d/c/of;->a:Z

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/of;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/of;->c:Ljava/lang/String;

    :cond_0
    return v0
.end method

.method public b()Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/of;->e:Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->bt:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/of;->f:Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/of;->f:Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->getCurrency()Lcom/nd/commplatform/entry/NdVirtualCurrency;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdVirtualCurrency;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdVirtualCurrency;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p1}, Lcom/nd/commplatform/d/c/of;->d(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nd/commplatform/d/c/of;->b:Lcom/nd/commplatform/entry/NdUserInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/of;->a:Z

    iput-object v1, p0, Lcom/nd/commplatform/d/c/of;->f:Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/of;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/of;->d:Ljava/util/List;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/of;->e:Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    return-void
.end method

.method public d()Lcom/nd/commplatform/entry/NdUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/of;->b:Lcom/nd/commplatform/entry/NdUserInfo;

    return-object v0
.end method

.method public e()Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/of;->f:Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    return-object v0
.end method

.method public f()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/of;->g:Ljava/lang/Double;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/of;->a:Z

    return v0
.end method
