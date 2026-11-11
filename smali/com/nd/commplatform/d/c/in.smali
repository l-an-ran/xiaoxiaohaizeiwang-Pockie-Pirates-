.class public Lcom/nd/commplatform/d/c/in;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/in$1;,
        Lcom/nd/commplatform/d/c/in$a;
    }
.end annotation


# static fields
.field private static final c:I = 0x1


# instance fields
.field protected a:Landroid/widget/EditText;

.field protected b:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->aE:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/in;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/in;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/in;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->eK:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/in;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/in;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/in;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->eF:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/in;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/in$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/in$a;-><init>(Lcom/nd/commplatform/d/c/in;Lcom/nd/commplatform/d/c/in$1;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/in;->u:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/in;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/in;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eB:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/in;->a:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eA:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/in;->b:Landroid/widget/EditText;

    return-void
.end method

.method protected a(ZI)V
    .locals 0

    return-void
.end method
