.class public Lcom/nd/commplatform/d/c/hv;
.super Lcom/nd/commplatform/d/c/hh;


# instance fields
.field public a:Lcom/nd/commplatform/widget/NdRechargeListItem;

.field public b:Lcom/nd/commplatform/d/c/hu;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/widget/NdRechargeListItem;Lcom/nd/commplatform/d/c/hu;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hh;-><init>()V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/hv;->a:Lcom/nd/commplatform/widget/NdRechargeListItem;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/hv;->b:Lcom/nd/commplatform/d/c/hu;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hv;->b:Lcom/nd/commplatform/d/c/hu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/hu;->a(Lcom/nd/commplatform/entry/NdReChargingRecord;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hv;->a:Lcom/nd/commplatform/widget/NdRechargeListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdRechargeListItem;->a:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hv;->a:Lcom/nd/commplatform/widget/NdRechargeListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdRechargeListItem;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hv;->a:Lcom/nd/commplatform/widget/NdRechargeListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdRechargeListItem;->d:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hv;->a:Lcom/nd/commplatform/widget/NdRechargeListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdRechargeListItem;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdReChargingRecord;)V
    .locals 5

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hv;->b:Lcom/nd/commplatform/d/c/hu;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/hu;->a(Lcom/nd/commplatform/entry/NdReChargingRecord;)V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hv;->a:Lcom/nd/commplatform/widget/NdRechargeListItem;

    iget-object v1, v1, Lcom/nd/commplatform/widget/NdRechargeListItem;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/hv;->a:Lcom/nd/commplatform/widget/NdRechargeListItem;

    invoke-virtual {v2}, Lcom/nd/commplatform/widget/NdRechargeListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$h;->fb:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hv;->a:Lcom/nd/commplatform/widget/NdRechargeListItem;

    iget-object v1, v1, Lcom/nd/commplatform/widget/NdRechargeListItem;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/hv;->b:Lcom/nd/commplatform/d/c/hu;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/hu;->a()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/hv;->a:Lcom/nd/commplatform/widget/NdRechargeListItem;

    invoke-virtual {v2}, Lcom/nd/commplatform/widget/NdRechargeListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$h;->fc:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hv;->a:Lcom/nd/commplatform/widget/NdRechargeListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdRechargeListItem;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hv;->b:Lcom/nd/commplatform/d/c/hu;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hv;->b:Lcom/nd/commplatform/d/c/hu;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hu;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "<br/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hv;->a:Lcom/nd/commplatform/widget/NdRechargeListItem;

    iget-object v1, v1, Lcom/nd/commplatform/widget/NdRechargeListItem;->d:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
