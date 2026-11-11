.class final Lcom/nd/commplatform/d/c/cc$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/og$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/cc;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/cc;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/cc;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/cc$2;->a:Lcom/nd/commplatform/d/c/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    const/16 v0, 0xc8

    if-lt p2, v0, :cond_0

    const/16 v0, 0x12b

    if-le p2, v0, :cond_1

    :cond_0
    const/16 v0, 0x12d

    if-eq p2, v0, :cond_1

    const/16 v0, 0x12e

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc$2;->a:Lcom/nd/commplatform/d/c/cc;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cc;->b(Lcom/nd/commplatform/d/c/cc;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ce:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc$2;->a:Lcom/nd/commplatform/d/c/cc;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cc;->e(Lcom/nd/commplatform/d/c/cc;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc$2;->a:Lcom/nd/commplatform/d/c/cc;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cc;->e(Lcom/nd/commplatform/d/c/cc;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    :cond_1
    return-void
.end method

.method public a(IJJ)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p4

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/32 v1, 0x100000

    const-wide/16 v3, 0x400

    const/4 v0, 0x0

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "##.##"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    cmp-long v6, p2, v1

    if-gez v6, :cond_3

    cmp-long v6, p4, v1

    if-gez v6, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc$2;->a:Lcom/nd/commplatform/d/c/cc;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cc;->b(Lcom/nd/commplatform/d/c/cc;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->aZ:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    long-to-double v6, p2

    long-to-double v8, v3

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x1

    long-to-double v6, p4

    long-to-double v3, v3

    div-double v3, v6, v3

    invoke-virtual {v5, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/cc$2;->a:Lcom/nd/commplatform/d/c/cc;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/cc;->c(Lcom/nd/commplatform/d/c/cc;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc$2;->a:Lcom/nd/commplatform/d/c/cc;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cc;->d(Lcom/nd/commplatform/d/c/cc;)Landroid/widget/ProgressBar;

    move-result-object v0

    const-wide/16 v1, 0x64

    mul-long/2addr v1, p2

    div-long/2addr v1, p4

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_3
    cmp-long v6, p2, v1

    if-gez v6, :cond_4

    cmp-long v6, p4, v1

    if-ltz v6, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc$2;->a:Lcom/nd/commplatform/d/c/cc;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cc;->b(Lcom/nd/commplatform/d/c/cc;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/nd/commplatform/d/c/jo$h;->ba:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    long-to-double v8, p2

    long-to-double v3, v3

    div-double v3, v8, v3

    invoke-virtual {v5, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x1

    long-to-double v7, p4

    long-to-double v1, v1

    div-double v1, v7, v1

    invoke-virtual {v5, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    cmp-long v3, p2, v1

    if-ltz v3, :cond_1

    cmp-long v3, p4, v1

    if-ltz v3, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc$2;->a:Lcom/nd/commplatform/d/c/cc;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cc;->b(Lcom/nd/commplatform/d/c/cc;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/nd/commplatform/d/c/jo$h;->bb:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    long-to-double v6, p2

    long-to-double v8, v1

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    long-to-double v6, p4

    long-to-double v1, v1

    div-double v1, v6, v1

    invoke-virtual {v5, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public b(II)V
    .locals 3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/cc$2;->a:Lcom/nd/commplatform/d/c/cc;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/cc;->b(Lcom/nd/commplatform/d/c/cc;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/nd/commplatform/d/c/cc$2$1;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/cc$2$1;-><init>(Lcom/nd/commplatform/d/c/cc$2;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/nd/commplatform/d/c/a;->a(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    :cond_0
    return-void
.end method
