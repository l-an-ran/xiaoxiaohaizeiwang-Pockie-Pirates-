.class public abstract Lcom/nd/commplatform/d/c/hj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/hj$c;,
        Lcom/nd/commplatform/d/c/hj$b;,
        Lcom/nd/commplatform/d/c/hj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:I = -0x1

.field private static final b:Ljava/lang/String; = "NdListDataWrapper<K, V>"

.field private static final d:I = 0xa

.field private static final h:I = 0xa

.field private static final i:I = 0x2


# instance fields
.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nd/commplatform/d/c/hj$c",
            "<TK;>;>;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:I

.field private j:Lcom/nd/commplatform/d/c/hj$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hj;->c:Landroid/util/SparseArray;

    const/16 v0, 0xa

    iput v0, p0, Lcom/nd/commplatform/d/c/hj;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/nd/commplatform/d/c/hj;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/d/c/hj;->g:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hj;->c:Landroid/util/SparseArray;

    const/16 v0, 0xa

    iput v0, p0, Lcom/nd/commplatform/d/c/hj;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/nd/commplatform/d/c/hj;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/d/c/hj;->g:I

    iput p1, p0, Lcom/nd/commplatform/d/c/hj;->e:I

    return-void
.end method

.method private a(ILcom/nd/commplatform/d/c/hj$b;Ljava/lang/Object;)Lcom/nd/commplatform/d/c/hj$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nd/commplatform/d/c/hj$b;",
            "TK;)",
            "Lcom/nd/commplatform/d/c/hj$c",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/hj$c;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hj$c;-><init>()V

    iput-object p2, v0, Lcom/nd/commplatform/d/c/hj$c;->a:Lcom/nd/commplatform/d/c/hj$b;

    iput-object p3, v0, Lcom/nd/commplatform/d/c/hj$c;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hj;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method private a(ILcom/nd/commplatform/d/c/hj$b;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hj;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/hj$c;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/nd/commplatform/d/c/hj$c;->a:Lcom/nd/commplatform/d/c/hj$b;

    sget-object v3, Lcom/nd/commplatform/d/c/hj$b;->d:Lcom/nd/commplatform/d/c/hj$b;

    if-ne p2, v3, :cond_1

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/nd/commplatform/d/c/hj$c;->b:Ljava/lang/Object;

    iput-object p2, v0, Lcom/nd/commplatform/d/c/hj$c;->a:Lcom/nd/commplatform/d/c/hj$b;

    :cond_0
    :goto_0
    sget-object v0, Lcom/nd/commplatform/d/c/hj$b;->c:Lcom/nd/commplatform/d/c/hj$b;

    if-ne v2, v0, :cond_2

    iget v0, p0, Lcom/nd/commplatform/d/c/hj;->g:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/nd/commplatform/d/c/hj;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nd/commplatform/d/c/hj;->g:I

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    sget-object v0, Lcom/nd/commplatform/d/c/hj$b;->a:Lcom/nd/commplatform/d/c/hj$b;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hj;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private b(ILcom/nd/commplatform/d/c/hj$b;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nd/commplatform/d/c/hj$b;",
            "TK;)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/hj;->a(ILcom/nd/commplatform/d/c/hj$b;Ljava/lang/Object;)Lcom/nd/commplatform/d/c/hj$c;

    move-result-object v0

    sget-object v1, Lcom/nd/commplatform/d/c/hj$b;->c:Lcom/nd/commplatform/d/c/hj$b;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/hj$c;->a:Lcom/nd/commplatform/d/c/hj$b;

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/nd/commplatform/d/c/hj;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nd/commplatform/d/c/hj;->g:I

    :cond_0
    iget v0, p0, Lcom/nd/commplatform/d/c/hj;->g:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/hj;->f:I

    return v0
.end method

.method public final a(ILjava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)I"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    if-nez p2, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/nd/commplatform/d/c/hj;->b(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/nd/commplatform/d/c/hj;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nd/commplatform/d/c/hj$b;->a:Lcom/nd/commplatform/d/c/hj$b;

    invoke-direct {p0, v4, v0}, Lcom/nd/commplatform/d/c/hj;->a(ILcom/nd/commplatform/d/c/hj$b;)Z

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/nd/commplatform/d/c/hj;->c(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3

    move v0, v1

    :cond_3
    iget v5, p0, Lcom/nd/commplatform/d/c/hj;->f:I

    if-eq v0, v5, :cond_8

    iget v5, p0, Lcom/nd/commplatform/d/c/hj;->f:I

    if-ne v5, v3, :cond_6

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/hj;->a(Z)V

    :goto_1
    iput v0, p0, Lcom/nd/commplatform/d/c/hj;->f:I

    sget-object v0, Lcom/nd/commplatform/d/c/hj$b;->c:Lcom/nd/commplatform/d/c/hj$b;

    invoke-direct {p0, v4, v0, p2}, Lcom/nd/commplatform/d/c/hj;->b(ILcom/nd/commplatform/d/c/hj$b;Ljava/lang/Object;)Z

    move-result v0

    move v1, v2

    :goto_2
    iget-object v2, p0, Lcom/nd/commplatform/d/c/hj;->j:Lcom/nd/commplatform/d/c/hj$a;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hj;->j:Lcom/nd/commplatform/d/c/hj$a;

    invoke-interface {v0, v4}, Lcom/nd/commplatform/d/c/hj$a;->a(I)V

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hj;->j:Lcom/nd/commplatform/d/c/hj$a;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hj;->b()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/nd/commplatform/d/c/hj$a;->a(IZ)V

    :cond_5
    iget v0, p0, Lcom/nd/commplatform/d/c/hj;->f:I

    goto :goto_0

    :cond_6
    iget v3, p0, Lcom/nd/commplatform/d/c/hj;->f:I

    if-le v0, v3, :cond_7

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/hj;->a(Z)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/hj;->a(Z)V

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/nd/commplatform/d/c/hj$b;->c:Lcom/nd/commplatform/d/c/hj$b;

    invoke-direct {p0, v4, v0, p2}, Lcom/nd/commplatform/d/c/hj;->b(ILcom/nd/commplatform/d/c/hj$b;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2
.end method

.method public abstract a(Ljava/lang/Object;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TV;"
        }
    .end annotation
.end method

.method public final a(I)V
    .locals 2

    sget-object v0, Lcom/nd/commplatform/d/c/hj$b;->b:Lcom/nd/commplatform/d/c/hj$b;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/nd/commplatform/d/c/hj;->a(ILcom/nd/commplatform/d/c/hj$b;Ljava/lang/Object;)Lcom/nd/commplatform/d/c/hj$c;

    return-void
.end method

.method public final a(ILandroid/widget/ListView;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/nd/commplatform/d/c/hj$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/hj;->j:Lcom/nd/commplatform/d/c/hj$a;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hj;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/d/c/hj;->g:I

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/nd/commplatform/d/c/hj;->f:I

    return-void
.end method

.method protected abstract a(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Lcom/nd/commplatform/d/c/hj;->g:I

    iget v1, p0, Lcom/nd/commplatform/d/c/hj;->e:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/nd/commplatform/d/c/hj;->f:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/nd/commplatform/d/c/hj;->f:I

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method protected abstract b(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/hj;->d(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/hj;->e(I)I

    move-result v2

    if-ltz v0, :cond_0

    if-gez v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/nd/commplatform/d/c/hj;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/hj$c;

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/nd/commplatform/d/c/hj$c;->a:Lcom/nd/commplatform/d/c/hj$b;

    sget-object v4, Lcom/nd/commplatform/d/c/hj$b;->c:Lcom/nd/commplatform/d/c/hj$b;

    if-eq v3, v4, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcom/nd/commplatform/d/c/hj$c;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/nd/commplatform/d/c/hj;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract c(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation
.end method

.method public final c(I)Lcom/nd/commplatform/d/c/hj$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/nd/commplatform/d/c/hj$c",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hj;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/hj$c;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hj;->b()I

    move-result v0

    iget v1, p0, Lcom/nd/commplatform/d/c/hj;->f:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hj;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hj;->b()I

    move-result v0

    iget v1, p0, Lcom/nd/commplatform/d/c/hj;->e:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method public final d(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nd/commplatform/d/c/hj;->e:I

    div-int v0, p1, v0

    goto :goto_0
.end method

.method public final e(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nd/commplatform/d/c/hj;->e:I

    rem-int v0, p1, v0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hj;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hj;->c:Landroid/util/SparseArray;

    return-void
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/hj;->e:I

    return v0
.end method
