.class public Lcom/nd/commplatform/d/c/hp;
.super Lcom/nd/commplatform/d/c/hh;


# instance fields
.field private a:Lcom/nd/commplatform/widget/NdMessageRecordListItem;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/widget/NdMessageRecordListItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hh;-><init>()V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/hp;->a:Lcom/nd/commplatform/widget/NdMessageRecordListItem;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hp;->a:Lcom/nd/commplatform/widget/NdMessageRecordListItem;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/widget/NdMessageRecordListItem;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hp;->a:Lcom/nd/commplatform/widget/NdMessageRecordListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdMessageRecordListItem;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hp;->a:Lcom/nd/commplatform/widget/NdMessageRecordListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdMessageRecordListItem;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hp;->a:Lcom/nd/commplatform/widget/NdMessageRecordListItem;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/widget/NdMessageRecordListItem;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hp;->a:Lcom/nd/commplatform/widget/NdMessageRecordListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdMessageRecordListItem;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hp;->a:Lcom/nd/commplatform/widget/NdMessageRecordListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdMessageRecordListItem;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hp;->a:Lcom/nd/commplatform/widget/NdMessageRecordListItem;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/widget/NdMessageRecordListItem;->c(Ljava/lang/String;)V

    return-void
.end method
