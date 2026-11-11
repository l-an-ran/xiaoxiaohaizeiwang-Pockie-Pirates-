.class public abstract Lcom/nd/commplatform/widget/NdFrameInnerContent;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/widget/NdFrameInnerContent$OnInvisibleListener;,
        Lcom/nd/commplatform/widget/NdFrameInnerContent$OnUpdateContentOuterFrameListener;
    }
.end annotation


# static fields
.field public static final A:I = 0x1

.field public static final B:I = 0x2

.field public static final C:I = 0x3

.field public static final D:I = 0x4

.field public static final E:I = 0x5

.field public static final F:I = 0x0

.field public static final G:I = 0x1

.field public static final y:I

.field public static final z:I


# instance fields
.field private a:Lcom/nd/commplatform/widget/NdFrameInnerContent$OnUpdateContentOuterFrameListener;

.field private b:Lcom/nd/commplatform/widget/NdFrameInnerContent$OnInvisibleListener;

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/nd/commplatform/d/c/pt;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Z

.field protected o:I

.field protected p:Z

.field protected q:Z

.field protected r:Ljava/lang/String;

.field protected s:Z

.field protected t:Ljava/lang/String;

.field protected u:Landroid/view/View$OnClickListener;

.field protected v:Z

.field protected w:Z

.field protected x:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->o:I

    iput-boolean v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->p:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->q:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->s:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->v:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->w:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->e:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->o:I

    iput-boolean v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->p:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->q:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->s:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->v:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->w:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->e:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->f:Z

    return-void
.end method

.method private final c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a:Lcom/nd/commplatform/widget/NdFrameInnerContent$OnUpdateContentOuterFrameListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a:Lcom/nd/commplatform/widget/NdFrameInnerContent$OnUpdateContentOuterFrameListener;

    invoke-interface {v0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent$OnUpdateContentOuterFrameListener;->b(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public final a(ILcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<*>;)",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<*>;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    :goto_0
    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    new-instance v1, Lcom/nd/commplatform/d/c/pt;

    invoke-direct {v1, p1, p2}, Lcom/nd/commplatform/d/c/pt;-><init>(ILcom/nd/commplatform/NdCallbackListener;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<*>;Z)",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<*>;"
        }
    .end annotation

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(ILcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    move-result-object p2

    :goto_0
    return-object p2

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/pt;

    iget v3, v0, Lcom/nd/commplatform/d/c/pt;->a:I

    if-ne v3, p1, :cond_4

    iget-object v0, v0, Lcom/nd/commplatform/d/c/pt;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->destroy()V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    new-instance v1, Lcom/nd/commplatform/d/c/pt;

    invoke-direct {v1, p1, p2}, Lcom/nd/commplatform/d/c/pt;-><init>(ILcom/nd/commplatform/NdCallbackListener;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public final a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<*>;)",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<*>;"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(ILcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    return-object p1
.end method

.method public a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 0

    return-object p0
.end method

.method protected abstract a()V
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected abstract a(Landroid/view/View;)V
.end method

.method public final a(Lcom/nd/commplatform/widget/NdFrameInnerContent$OnInvisibleListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->b:Lcom/nd/commplatform/widget/NdFrameInnerContent$OnInvisibleListener;

    return-void
.end method

.method public a(Lcom/nd/commplatform/widget/NdFrameInnerContent$OnUpdateContentOuterFrameListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a:Lcom/nd/commplatform/widget/NdFrameInnerContent$OnUpdateContentOuterFrameListener;

    return-void
.end method

.method protected a(Lcom/nd/commplatform/widget/NdPlatformPanelHelper;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->d:Z

    return-void
.end method

.method protected abstract a(ZI)V
.end method

.method public b(Lcom/nd/commplatform/widget/NdPlatformPanelHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->x:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    return-void
.end method

.method public final b(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->o:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->o:I

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c(Z)V

    return-void

    :cond_2
    iget v1, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->o:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->o:I

    iget v1, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->o:I

    if-gez v1, :cond_0

    iput v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->o:I

    goto :goto_0
.end method

.method public b(ZI)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->f:Z

    if-nez v1, :cond_0

    move p1, v0

    :cond_0
    iput-boolean v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->f:Z

    iget v1, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->o:I

    if-lez v1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c(Z)V

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->d()V

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(ZI)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final d()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->x:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->x:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(Lcom/nd/commplatform/widget/NdPlatformPanelHelper;)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->k()V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->b:Lcom/nd/commplatform/widget/NdFrameInnerContent$OnInvisibleListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->b:Lcom/nd/commplatform/widget/NdFrameInnerContent$OnInvisibleListener;

    invoke-interface {v0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent$OnInvisibleListener;->a_(I)V

    :cond_1
    return-void
.end method

.method public final e(I)Lcom/nd/commplatform/NdCallbackListener;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    if-nez v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/pt;

    iget v0, v0, Lcom/nd/commplatform/d/c/pt;->a:I

    if-ne v0, p1, :cond_3

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/pt;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/pt;->b:Lcom/nd/commplatform/NdCallbackListener;

    move-object v1, v0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/pt;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/pt;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->destroy()V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->d:Z

    return v0
.end method

.method public final f(I)Lcom/nd/commplatform/NdCallbackListener;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/pt;

    iget v0, v0, Lcom/nd/commplatform/d/c/pt;->a:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/pt;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/pt;->b:Lcom/nd/commplatform/NdCallbackListener;

    :goto_2
    move-object v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(ZI)V

    return-void
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final i()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a:Lcom/nd/commplatform/widget/NdFrameInnerContent$OnUpdateContentOuterFrameListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a:Lcom/nd/commplatform/widget/NdFrameInnerContent$OnUpdateContentOuterFrameListener;

    invoke-interface {v0}, Lcom/nd/commplatform/widget/NdFrameInnerContent$OnUpdateContentOuterFrameListener;->a()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    iget-boolean v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v5, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->e:Z

    invoke-super {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "layout_inflater"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a()V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v3, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->w:Z

    if-nez v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->addView(Landroid/view/View;)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/pt;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/pt;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->destroy()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdFrameInnerContent;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto :goto_0
.end method

.method public l()Landroid/view/View;
    .locals 0

    return-object p0
.end method
