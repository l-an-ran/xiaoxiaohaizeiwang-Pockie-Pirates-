.class public Lcom/nd/commplatform/d/c/dn;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/dn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private b:[C

.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private e:[C

.field private f:[Lcom/nd/commplatform/d/c/dn$a;

.field private g:Lcom/nd/commplatform/d/c/dk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/dk",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;Lcom/nd/commplatform/d/c/dk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Lcom/nd/commplatform/d/c/dk",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dn;->a:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/dn;->g:Lcom/nd/commplatform/d/c/dk;

    return-void
.end method

.method private static a(CII)Lcom/nd/commplatform/d/c/dn$a;
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/dn$a;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/dn$a;-><init>()V

    iput-char p0, v0, Lcom/nd/commplatform/d/c/dn$a;->a:C

    iput p1, v0, Lcom/nd/commplatform/d/c/dn$a;->b:I

    iput p2, v0, Lcom/nd/commplatform/d/c/dn$a;->c:I

    return-object v0
.end method


# virtual methods
.method public a()Lcom/nd/commplatform/d/c/dk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nd/commplatform/d/c/dk",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dn;->g:Lcom/nd/commplatform/d/c/dk;

    return-object v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dn;->e()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dn;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public a([Ljava/lang/Object;[I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[I)V"
        }
    .end annotation

    const/16 v10, 0x5a

    const/16 v9, 0x41

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v3, p1

    new-array v4, v3, [C

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dn;->b:[C

    aget v5, p2, v0

    aget-char v2, v2, v5

    aput-char v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x1b

    new-array v5, v0, [I

    move v0, v1

    :goto_1
    array-length v2, v5

    if-ge v0, v2, :cond_3

    aput v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_2
    array-length v2, v4

    if-ge v0, v2, :cond_5

    aget-char v2, v4, v0

    if-lt v2, v9, :cond_4

    if-gt v2, v10, :cond_4

    add-int/lit8 v2, v2, -0x41

    aget v6, v5, v2

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    array-length v2, v5

    add-int/lit8 v2, v2, -0x1

    aget v6, v5, v2

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v2

    goto :goto_3

    :cond_5
    aget v2, v5, v1

    const/4 v0, 0x1

    :goto_4
    array-length v6, v5

    if-ge v0, v6, :cond_6

    aget v6, v5, v0

    aput v2, v5, v0

    add-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    aput v1, v5, v1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dn;->a:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dn;->d:[Ljava/lang/Object;

    new-array v0, v3, [C

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dn;->e:[C

    :goto_5
    if-ge v1, v3, :cond_0

    aget-char v0, v4, v1

    if-lt v0, v9, :cond_7

    if-gt v0, v10, :cond_7

    add-int/lit8 v2, v0, -0x41

    iget-object v6, p0, Lcom/nd/commplatform/d/c/dn;->d:[Ljava/lang/Object;

    aget v7, v5, v2

    aget-object v8, p1, v1

    aput-object v8, v6, v7

    iget-object v6, p0, Lcom/nd/commplatform/d/c/dn;->e:[C

    aget v7, v5, v2

    aput-char v0, v6, v7

    aget v0, v5, v2

    add-int/lit8 v0, v0, 0x1

    aput v0, v5, v2

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    iget-object v2, p0, Lcom/nd/commplatform/d/c/dn;->d:[Ljava/lang/Object;

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget v6, v5, v6

    aget-object v7, p1, v1

    aput-object v7, v2, v6

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dn;->e:[C

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget v6, v5, v6

    aput-char v0, v2, v6

    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    aget v2, v5, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v5, v0

    goto :goto_6
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dn;->e()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dn;->e:[C

    aget-char v0, v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 8

    const/16 v1, 0x23

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dn;->g()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dn;->a:[Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dn;->a:[Ljava/lang/Object;

    array-length v4, v0

    new-array v0, v4, [C

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dn;->b:[C

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dn;->c:[Ljava/lang/String;

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dn;->g:Lcom/nd/commplatform/d/c/dk;

    iget-object v5, p0, Lcom/nd/commplatform/d/c/dn;->a:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-interface {v0, v5}, Lcom/nd/commplatform/d/c/dk;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/nd/commplatform/d/c/no;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x41

    if-lt v0, v6, :cond_2

    const/16 v6, 0x5a

    if-gt v0, v6, :cond_2

    :goto_1
    iget-object v6, p0, Lcom/nd/commplatform/d/c/dn;->c:[Ljava/lang/String;

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->b()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/nd/commplatform/d/c/no;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v2

    iget-object v5, p0, Lcom/nd/commplatform/d/c/dn;->b:[C

    aput-char v0, v5, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    const/16 v6, 0x61

    if-lt v0, v6, :cond_3

    const/16 v6, 0x7a

    if-gt v0, v6, :cond_3

    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public c()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dn;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method public d()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dn;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dn;->d:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dn;->d:[Ljava/lang/Object;

    array-length v0, v0

    goto :goto_0
.end method

.method public f()[Lcom/nd/commplatform/d/c/dn$a;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dn;->f:[Lcom/nd/commplatform/d/c/dn$a;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dn;->e:[C

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dn;->e:[C

    array-length v2, v2

    if-lez v2, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dn;->e:[C

    aget-char v2, v2, v0

    move v3, v0

    move v4, v2

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v6, p0, Lcom/nd/commplatform/d/c/dn;->e:[C

    array-length v6, v6

    if-ge v0, v6, :cond_1

    iget-object v6, p0, Lcom/nd/commplatform/d/c/dn;->e:[C

    aget-char v6, v6, v0

    if-eq v4, v6, :cond_0

    invoke-static {v4, v3, v2}, Lcom/nd/commplatform/d/c/dn;->a(CII)Lcom/nd/commplatform/d/c/dn$a;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dn;->e:[C

    aget-char v4, v2, v0

    move v2, v1

    move v3, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v4, v3, v2}, Lcom/nd/commplatform/d/c/dn;->a(CII)Lcom/nd/commplatform/d/c/dn$a;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-array v0, v0, [Lcom/nd/commplatform/d/c/dn$a;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dn;->f:[Lcom/nd/commplatform/d/c/dn$a;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dn;->f:[Lcom/nd/commplatform/d/c/dn$a;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dn;->f:[Lcom/nd/commplatform/d/c/dn$a;

    return-object v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dn;->d:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dn;->e:[C

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dn;->f:[Lcom/nd/commplatform/d/c/dn$a;

    return-void
.end method

.method public h()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dn;->a:[Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dn;->a:[Ljava/lang/Object;

    array-length v1, v1

    :goto_0
    if-lez v1, :cond_1

    new-array v2, v1, [I

    :goto_1
    if-ge v0, v1, :cond_0

    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dn;->a:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/nd/commplatform/d/c/dn;->a([Ljava/lang/Object;[I)V

    :cond_1
    return-void

    :cond_2
    move v1, v0

    goto :goto_0
.end method
