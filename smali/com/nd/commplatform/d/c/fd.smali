.class public Lcom/nd/commplatform/d/c/fd;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;

# interfaces
.implements Lcom/nd/commplatform/d/c/hm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/widget/NdFrameInnerContent;",
        "Lcom/nd/commplatform/d/c/hm",
        "<",
        "Lcom/nd/commplatform/entry/NdAppAchieveInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "Uin"

.field private static final d:Ljava/lang/String; = "App"


# instance fields
.field private a:Lcom/nd/commplatform/d/c/hf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hf",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdAppAchieveInfo;",
            ">;",
            "Lcom/nd/commplatform/entry/NdAppAchieveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/nd/commplatform/d/c/hi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hi",
            "<",
            "Lcom/nd/commplatform/entry/NdAppAchieveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/nd/commplatform/d/c/hf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hf;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fd;->a:Lcom/nd/commplatform/d/c/hf;

    new-instance v0, Lcom/nd/commplatform/d/c/hi;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hi;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fd;->b:Lcom/nd/commplatform/d/c/hi;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->b()I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/fd;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/nd/commplatform/d/c/hf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hf;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fd;->a:Lcom/nd/commplatform/d/c/hf;

    new-instance v0, Lcom/nd/commplatform/d/c/hi;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hi;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fd;->b:Lcom/nd/commplatform/d/c/hi;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->b()I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/fd;->f:I

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fd;)Lcom/nd/commplatform/d/c/hf;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fd;->a:Lcom/nd/commplatform/d/c/hf;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbbf

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "Uin"

    invoke-virtual {v0, v1, p1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "App"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    const/16 v2, 0x6a

    invoke-static {p0, v1, v2, v0}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbbf

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "Uin"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "App"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6a

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private b()V
    .locals 3

    const/16 v2, 0xbbf

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "Uin"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fd;->e:Ljava/lang/String;

    const-string v0, "App"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/fd;->f:I

    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void

    :cond_1
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->b()I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/fd;->f:I

    goto :goto_0
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

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fd;->g:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fd;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method protected a()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fd;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fd;->q:Z

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->aG:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fd;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/fd;->s:Z

    iput-object v4, p0, Lcom/nd/commplatform/d/c/fd;->t:Ljava/lang/String;

    iput-object v4, p0, Lcom/nd/commplatform/d/c/fd;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fd;->v:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/fd;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    check-cast p1, Lcom/nd/commplatform/widget/NdListBlankView;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->fy:I

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

    check-cast p1, Lcom/nd/commplatform/d/c/gr;

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/gr;->f()V

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/gr;->c()V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/entry/NdAppAchieveInfo;)V
    .locals 1

    check-cast p1, Lcom/nd/commplatform/d/c/gr;

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/gr;->f()V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/nd/commplatform/d/c/gr;->a(Ljava/lang/Object;Z)V

    return-void
.end method

.method public bridge synthetic a(Lcom/nd/commplatform/d/c/hh;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/fd;->a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/entry/NdAppAchieveInfo;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdAppAchieveInfo;Lcom/nd/commplatform/d/c/hh;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fd;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/nd/commplatform/d/c/fc;->a(Lcom/nd/commplatform/entry/NdAppAchieveInfo;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/fd;->a(Lcom/nd/commplatform/entry/NdAppAchieveInfo;Lcom/nd/commplatform/d/c/hh;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fd;->b()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fd;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fd;->g:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fd;->b:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/nd/commplatform/d/c/hf;->a(Landroid/content/Context;Landroid/widget/ListView;Lcom/nd/commplatform/d/c/hm;Lcom/nd/commplatform/d/c/hj;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fd;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hf;->c()V

    :cond_0
    return-void
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

    new-instance v0, Lcom/nd/commplatform/d/c/gr;

    check-cast p1, Lcom/nd/commplatform/widget/NdUserListItem;

    new-instance v1, Lcom/nd/commplatform/d/c/fd$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/fd$1;-><init>(Lcom/nd/commplatform/d/c/fd;)V

    invoke-direct {v0, p1, v1}, Lcom/nd/commplatform/d/c/gr;-><init>(Lcom/nd/commplatform/widget/NdUserListItem;Lcom/nd/commplatform/d/c/hg;)V

    return-object v0
.end method

.method public b(I)V
    .locals 6

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v5, Lcom/nd/commplatform/d/c/fd$2;

    invoke-direct {v5, p0}, Lcom/nd/commplatform/d/c/fd$2;-><init>(Lcom/nd/commplatform/d/c/fd;)V

    invoke-virtual {p0, v5}, Lcom/nd/commplatform/d/c/fd;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    new-instance v1, Lcom/nd/commplatform/entry/NdPagination;

    invoke-direct {v1}, Lcom/nd/commplatform/entry/NdPagination;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdPagination;->setPageIndex(I)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fd;->b:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/hi;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdPagination;->setPageSize(I)V

    iget v2, p0, Lcom/nd/commplatform/d/c/fd;->f:I

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fd;->e:Ljava/lang/String;

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Lcom/nd/commplatform/entry/NdPagination;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
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

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bk:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdUserListItem;

    return-object v0
.end method
