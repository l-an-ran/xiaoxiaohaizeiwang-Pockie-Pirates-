.class public Lcom/nd/commplatform/d/c/ht;
.super Lcom/nd/commplatform/d/c/hh;


# instance fields
.field public a:Lcom/nd/commplatform/widget/NdPayRecordListItem;

.field public b:Lcom/nd/commplatform/d/c/hs;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/widget/NdPayRecordListItem;Lcom/nd/commplatform/d/c/hs;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hh;-><init>()V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ht;->a:Lcom/nd/commplatform/widget/NdPayRecordListItem;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/ht;->b:Lcom/nd/commplatform/d/c/hs;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ht;->b:Lcom/nd/commplatform/d/c/hs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/hs;->a(Lcom/nd/commplatform/entry/NdPayRecord;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ht;->a:Lcom/nd/commplatform/widget/NdPayRecordListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdPayRecordListItem;->a:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ht;->a:Lcom/nd/commplatform/widget/NdPayRecordListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdPayRecordListItem;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ht;->a:Lcom/nd/commplatform/widget/NdPayRecordListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdPayRecordListItem;->d:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ht;->a:Lcom/nd/commplatform/widget/NdPayRecordListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdPayRecordListItem;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdPayRecord;)V
    .locals 8

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ht;->b:Lcom/nd/commplatform/d/c/hs;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/hs;->a(Lcom/nd/commplatform/entry/NdPayRecord;)V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ht;->a:Lcom/nd/commplatform/widget/NdPayRecordListItem;

    iget-object v1, v1, Lcom/nd/commplatform/widget/NdPayRecordListItem;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ht;->a:Lcom/nd/commplatform/widget/NdPayRecordListItem;

    invoke-virtual {v2}, Lcom/nd/commplatform/widget/NdPayRecordListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$h;->dL:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ht;->a:Lcom/nd/commplatform/widget/NdPayRecordListItem;

    iget-object v1, v1, Lcom/nd/commplatform/widget/NdPayRecordListItem;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ht;->a:Lcom/nd/commplatform/widget/NdPayRecordListItem;

    invoke-virtual {v2}, Lcom/nd/commplatform/widget/NdPayRecordListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$h;->dK:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nd/commplatform/d/c/ht;->b:Lcom/nd/commplatform/d/c/hs;

    invoke-virtual {v6}, Lcom/nd/commplatform/d/c/hs;->a()D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ht;->a:Lcom/nd/commplatform/widget/NdPayRecordListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdPayRecordListItem;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ht;->b:Lcom/nd/commplatform/d/c/hs;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hs;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ht;->b:Lcom/nd/commplatform/d/c/hs;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hs;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "<br/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ht;->a:Lcom/nd/commplatform/widget/NdPayRecordListItem;

    iget-object v1, v1, Lcom/nd/commplatform/widget/NdPayRecordListItem;->d:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
