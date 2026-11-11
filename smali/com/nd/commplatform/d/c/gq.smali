.class public Lcom/nd/commplatform/d/c/gq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/nd/commplatform/message/widget/NdSysMessageAppView;

.field private b:Lcom/nd/commplatform/d/c/gf;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/message/widget/NdSysMessageAppView;Lcom/nd/commplatform/d/c/gf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gq;->a:Lcom/nd/commplatform/message/widget/NdSysMessageAppView;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/gq;->b:Lcom/nd/commplatform/d/c/gf;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/gq;)Lcom/nd/commplatform/d/c/gf;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gq;->b:Lcom/nd/commplatform/d/c/gf;

    return-object v0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/gq;)Lcom/nd/commplatform/message/widget/NdSysMessageAppView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gq;->a:Lcom/nd/commplatform/message/widget/NdSysMessageAppView;

    return-object v0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gq;->b:Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gf;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/et;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 6

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gq;->a:Lcom/nd/commplatform/message/widget/NdSysMessageAppView;

    iget-object v0, v0, Lcom/nd/commplatform/message/widget/NdSysMessageAppView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gq;->b:Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gf;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "110000"

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gq;->b:Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gf;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gq;->a:Lcom/nd/commplatform/message/widget/NdSysMessageAppView;

    iget-object v0, v0, Lcom/nd/commplatform/message/widget/NdSysMessageAppView;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gq;->a:Lcom/nd/commplatform/message/widget/NdSysMessageAppView;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/message/widget/NdSysMessageAppView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v5, Lcom/nd/commplatform/d/c/gq$1;

    invoke-direct {v5, p0}, Lcom/nd/commplatform/d/c/gq$1;-><init>(Lcom/nd/commplatform/d/c/gq;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gq;->b:Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gf;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/gq;->b:Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/gf;->g()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nd/commplatform/d/c/gq;->a:Lcom/nd/commplatform/message/widget/NdSysMessageAppView;

    invoke-virtual {v4}, Lcom/nd/commplatform/message/widget/NdSysMessageAppView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->b(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gq;->a:Lcom/nd/commplatform/message/widget/NdSysMessageAppView;

    iget-object v0, v0, Lcom/nd/commplatform/message/widget/NdSysMessageAppView;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gq;->c()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gq;->b()V

    return-void
.end method
