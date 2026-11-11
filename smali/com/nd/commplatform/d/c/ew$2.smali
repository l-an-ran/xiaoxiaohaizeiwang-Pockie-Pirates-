.class final Lcom/nd/commplatform/d/c/ew$2;
.super Lcom/nd/commplatform/d/c/hg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ew;->a(Lcom/nd/commplatform/widget/NdUserListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/d/c/hg",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ew;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ew;)V
    .locals 1

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ew$2;->a:Lcom/nd/commplatform/d/c/ew;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hg;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ew$2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ew$2;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ew$2;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 6

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ew$2;->a:Lcom/nd/commplatform/d/c/ew;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/ew;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->kG:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ew$2;->a:Lcom/nd/commplatform/d/c/ew;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/ew;->d(Lcom/nd/commplatform/d/c/ew;)Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->getBalance()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ew$2;->a:Lcom/nd/commplatform/d/c/ew;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/ew;->d(Lcom/nd/commplatform/d/c/ew;)Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->getCurrency()Lcom/nd/commplatform/entry/NdVirtualCurrency;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdVirtualCurrency;->getUnit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ew$2;->a:Lcom/nd/commplatform/d/c/ew;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/ew;->d(Lcom/nd/commplatform/d/c/ew;)Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->getCurrency()Lcom/nd/commplatform/entry/NdVirtualCurrency;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdVirtualCurrency;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/nd/commplatform/d/c/ew$2;->a:Lcom/nd/commplatform/d/c/ew;

    invoke-virtual {v4}, Lcom/nd/commplatform/d/c/ew;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nd/commplatform/d/c/jo$b;->c:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method
