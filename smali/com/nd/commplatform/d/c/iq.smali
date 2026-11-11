.class public Lcom/nd/commplatform/d/c/iq;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;

# interfaces
.implements Lcom/nd/commplatform/d/c/hm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/iq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/widget/NdFrameInnerContent;",
        "Lcom/nd/commplatform/d/c/hm",
        "<",
        "Lcom/nd/commplatform/entry/NdReChargingRecord;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:I = 0x1

.field private static final g:Ljava/lang/String; = "NDMoreRechargesView"


# instance fields
.field protected a:Ljava/text/DecimalFormat;

.field protected b:I

.field protected c:I

.field private e:Lcom/nd/commplatform/d/c/hf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hf",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdReChargingRecord;",
            ">;",
            "Lcom/nd/commplatform/entry/NdReChargingRecord;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/nd/commplatform/d/c/hi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hi",
            "<",
            "Lcom/nd/commplatform/entry/NdReChargingRecord;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/nd/commplatform/d/c/hf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hf;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/iq;->e:Lcom/nd/commplatform/d/c/hf;

    new-instance v0, Lcom/nd/commplatform/d/c/hi;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hi;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/iq;->f:Lcom/nd/commplatform/d/c/hi;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/iq;->a:Ljava/text/DecimalFormat;

    iput v2, p0, Lcom/nd/commplatform/d/c/iq;->b:I

    iput v2, p0, Lcom/nd/commplatform/d/c/iq;->c:I

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/iq;)Lcom/nd/commplatform/d/c/hf;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iq;->e:Lcom/nd/commplatform/d/c/hf;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x458

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->am:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/iq;->h:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iq;->h:Landroid/widget/ListView;

    return-object v0
.end method

.method protected a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/iq;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/iq;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/iq;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fi:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/iq;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/iq;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/iq;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->eZ:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/iq;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/iq$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/iq$a;-><init>(Lcom/nd/commplatform/d/c/iq;Lcom/nd/commplatform/d/c/iq$1;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/iq;->u:Landroid/view/View$OnClickListener;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/iq;->v:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/iq;->w:Z

    return-void
.end method

.method public a(II)V
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/iq;->b:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/nd/commplatform/d/c/iq;->c:I

    if-ne p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/nd/commplatform/d/c/iq;->b:I

    iput p2, p0, Lcom/nd/commplatform/d/c/iq;->c:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iq;->e:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hf;->a()V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    check-cast p1, Lcom/nd/commplatform/widget/NdListBlankView;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->fh:I

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/widget/NdListBlankView;->a(I)V

    return-void
.end method

.method public a(Landroid/view/View;IIZ)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/widget/NdListViewFooter;

    invoke-virtual {p1, p4}, Lcom/nd/commplatform/widget/NdListViewFooter;->a(Z)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/d/c/hv;

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/hv;->a()V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/entry/NdReChargingRecord;)V
    .locals 3

    check-cast p1, Lcom/nd/commplatform/d/c/hv;

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/hv;->d()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/nd/commplatform/d/c/hv;->a:Lcom/nd/commplatform/widget/NdRechargeListItem;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/iq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$b;->t:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdRechargeListItem;->setBackgroundColor(I)V

    :goto_0
    invoke-virtual {p1, p2}, Lcom/nd/commplatform/d/c/hv;->a(Lcom/nd/commplatform/entry/NdReChargingRecord;)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/nd/commplatform/d/c/hv;->a:Lcom/nd/commplatform/widget/NdRechargeListItem;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/iq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$b;->u:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdRechargeListItem;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/nd/commplatform/d/c/hh;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/nd/commplatform/entry/NdReChargingRecord;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/iq;->a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/entry/NdReChargingRecord;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdReChargingRecord;Lcom/nd/commplatform/d/c/hh;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x3ea

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "record"

    invoke-virtual {v0, v1, p1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x457

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/entry/NdReChargingRecord;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/iq;->a(Lcom/nd/commplatform/entry/NdReChargingRecord;Lcom/nd/commplatform/d/c/hh;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iq;->e:Lcom/nd/commplatform/d/c/hf;

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/iq;->h:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/iq;->f:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/nd/commplatform/d/c/hf;->a(Landroid/content/Context;Landroid/widget/ListView;Lcom/nd/commplatform/d/c/hm;Lcom/nd/commplatform/d/c/hj;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iq;->e:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hf;->c()V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/iq;->b:I

    return v0
.end method

.method public b(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->M:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdListBlankView;

    return-object v0
.end method

.method public b(Landroid/view/View;)Lcom/nd/commplatform/d/c/hh;
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/hv;

    check-cast p1, Lcom/nd/commplatform/widget/NdRechargeListItem;

    new-instance v1, Lcom/nd/commplatform/d/c/hu;

    invoke-direct {v1}, Lcom/nd/commplatform/d/c/hu;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/nd/commplatform/d/c/hv;-><init>(Lcom/nd/commplatform/widget/NdRechargeListItem;Lcom/nd/commplatform/d/c/hu;)V

    return-object v0
.end method

.method public b(I)V
    .locals 6

    const/4 v0, 0x1

    new-instance v5, Lcom/nd/commplatform/d/c/iq$1;

    invoke-direct {v5, p0}, Lcom/nd/commplatform/d/c/iq$1;-><init>(Lcom/nd/commplatform/d/c/iq;)V

    invoke-virtual {p0, v0, v5, v0}, Lcom/nd/commplatform/d/c/iq;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    new-instance v1, Lcom/nd/commplatform/entry/NdPagination;

    invoke-direct {v1}, Lcom/nd/commplatform/entry/NdPagination;-><init>()V

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/entry/NdPagination;->setPageIndex(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iq;->f:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hi;->f()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/entry/NdPagination;->setPageSize(I)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget v2, p0, Lcom/nd/commplatform/d/c/iq;->b:I

    iget v3, p0, Lcom/nd/commplatform/d/c/iq;->c:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/nd/commplatform/d/c/iq;->c:I

    add-int/lit8 v3, v3, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/iq;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Lcom/nd/commplatform/entry/NdPagination;IILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void

    :cond_0
    iget v3, p0, Lcom/nd/commplatform/d/c/iq;->c:I

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/iq;->c:I

    return v0
.end method

.method public c(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->al:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdListViewFooter;

    return-object v0
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    check-cast p1, Lcom/nd/commplatform/widget/NdListBlankView;

    sget v0, Lcom/nd/commplatform/d/c/jo$b;->m:I

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/widget/NdListBlankView;->b(I)V

    return-void
.end method

.method public d(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/nd/commplatform/widget/NdRechargeListItem;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/iq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nd/commplatform/widget/NdRechargeListItem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
