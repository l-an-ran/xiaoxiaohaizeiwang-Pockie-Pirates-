.class public Lcom/nd/commplatform/widget/NdPayRecordListItem;
.super Landroid/widget/LinearLayout;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->aJ:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/nd/commplatform/widget/NdPayRecordListItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/nd/commplatform/widget/NdPayRecordListItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ha:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdPayRecordListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdPayRecordListItem;->a:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->bL:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdPayRecordListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdPayRecordListItem;->b:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dx:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdPayRecordListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdPayRecordListItem;->c:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gO:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdPayRecordListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdPayRecordListItem;->d:Landroid/widget/TextView;

    return-void
.end method
