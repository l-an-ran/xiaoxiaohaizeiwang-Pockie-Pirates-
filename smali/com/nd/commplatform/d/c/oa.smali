.class public abstract Lcom/nd/commplatform/d/c/oa;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/oa$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/nd/commplatform/d/c/oa$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/nd/commplatform/d/c/oa$a;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/oa;->a()V

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private a()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/oa;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/oa;->b:Ljava/util/HashMap;

    return-void
.end method

.method private b(Lcom/nd/commplatform/entry/NdIcon;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/oa;->a(Lcom/nd/commplatform/entry/NdIcon;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/oc;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/oa;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/nd/commplatform/d/c/oc;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdIcon;->getDimension()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/nd/commplatform/d/c/oc;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/entry/NdIcon;->setImg(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/oc;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/oa;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/oc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/oc;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private d()V
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/oc;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/oa;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/oc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/oc;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdIcon;

    new-instance v2, Lcom/nd/commplatform/d/c/oa$a;

    invoke-direct {v2}, Lcom/nd/commplatform/d/c/oa$a;-><init>()V

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdIcon;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/d/c/oa$a;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdIcon;->getDimension()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/d/c/oa$a;->a(I)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/oa;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdIcon;->getCheckSum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/nd/commplatform/d/c/oa$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/oa;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected a(Lcom/nd/commplatform/d/c/oa$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x5f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/oa$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/oa$a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/nd/commplatform/entry/NdIcon;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x5f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdIcon;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdIcon;->getDimension()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdIcon;->getCheckSum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract a(ILcom/nd/commplatform/entry/NdIcon;Lcom/nd/commplatform/NdCallbackListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nd/commplatform/entry/NdIcon;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract a(Lcom/nd/commplatform/d/c/oa$a;ILcom/nd/commplatform/entry/NdIcon;)V
.end method

.method a(Lcom/nd/commplatform/d/c/oa$a;Lcom/nd/commplatform/entry/NdIcon;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/oa;->a(Lcom/nd/commplatform/d/c/oa$a;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/nd/commplatform/d/c/oa;->a(Lcom/nd/commplatform/entry/NdIcon;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getImg()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nd/commplatform/d/c/oa;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/oa;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getCheckSum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/nd/commplatform/d/c/oa;->a(Lcom/nd/commplatform/d/c/oa$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/nd/commplatform/d/c/oa;->a(Lcom/nd/commplatform/entry/NdIcon;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/oa;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getImg()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/nd/commplatform/d/c/oa;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/oa;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/oa;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/oa;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/oa;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/oa;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/oa;->d()V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/nd/commplatform/d/c/oa;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/oa;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/oa;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/oa;->d()V

    goto :goto_0
.end method

.method abstract a(Ljava/lang/String;ILandroid/content/Context;)V
.end method

.method protected a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/oc;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/oa;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/oc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/oc;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p3, :cond_2

    const-string p3, ""

    :cond_2
    const-string v2, "ffffffffffffffffffffffffffffffff"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/nd/commplatform/d/c/oa$a;

    invoke-direct {v3}, Lcom/nd/commplatform/d/c/oa$a;-><init>()V

    invoke-virtual {v3, p1}, Lcom/nd/commplatform/d/c/oa$a;->a(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Lcom/nd/commplatform/d/c/oa$a;->a(I)V

    invoke-virtual {p0, v3}, Lcom/nd/commplatform/d/c/oa;->b(Lcom/nd/commplatform/d/c/oa$a;)V

    if-eqz p5, :cond_0

    new-instance v3, Lcom/nd/commplatform/entry/NdIcon;

    invoke-direct {v3}, Lcom/nd/commplatform/entry/NdIcon;-><init>()V

    invoke-virtual {v3, v0}, Lcom/nd/commplatform/entry/NdIcon;->setCached(Z)V

    invoke-virtual {v3, p1}, Lcom/nd/commplatform/entry/NdIcon;->setId(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Lcom/nd/commplatform/entry/NdIcon;->setDimension(I)V

    invoke-virtual {v3, v2}, Lcom/nd/commplatform/entry/NdIcon;->setCheckSum(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/nd/commplatform/d/c/oa;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/nd/commplatform/entry/NdIcon;->setImg(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1, v3, p5}, Lcom/nd/commplatform/d/c/oa;->a(ILcom/nd/commplatform/entry/NdIcon;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/nd/commplatform/d/c/oa$a;

    invoke-direct {v2}, Lcom/nd/commplatform/d/c/oa$a;-><init>()V

    invoke-virtual {v2, p1}, Lcom/nd/commplatform/d/c/oa$a;->a(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/nd/commplatform/d/c/oa$a;->a(I)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/oa;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/oa;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/nd/commplatform/d/c/oa;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/oa;->a(Lcom/nd/commplatform/d/c/oa$a;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {p0, p1, p2, p4}, Lcom/nd/commplatform/d/c/oa;->a(Ljava/lang/String;ILandroid/content/Context;)V

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, ""

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    new-instance v4, Lcom/nd/commplatform/entry/NdIcon;

    invoke-direct {v4}, Lcom/nd/commplatform/entry/NdIcon;-><init>()V

    invoke-virtual {v4, p1}, Lcom/nd/commplatform/entry/NdIcon;->setId(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Lcom/nd/commplatform/entry/NdIcon;->setDimension(I)V

    invoke-virtual {v4, v3}, Lcom/nd/commplatform/entry/NdIcon;->setCheckSum(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/nd/commplatform/d/c/oa;->b(Lcom/nd/commplatform/entry/NdIcon;)V

    invoke-virtual {v4}, Lcom/nd/commplatform/entry/NdIcon;->getImg()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v4, v0}, Lcom/nd/commplatform/entry/NdIcon;->setCached(Z)V

    const-string v3, "ffffffffffffffffffffffffffffffff"

    invoke-virtual {v4}, Lcom/nd/commplatform/entry/NdIcon;->getCheckSum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/nd/commplatform/entry/NdIcon;->setImg(Landroid/graphics/Bitmap;)V

    :cond_7
    invoke-virtual {p0, v2, v1, v4}, Lcom/nd/commplatform/d/c/oa;->a(Lcom/nd/commplatform/d/c/oa$a;ILcom/nd/commplatform/entry/NdIcon;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, p1, p2, p4}, Lcom/nd/commplatform/d/c/oa;->a(Ljava/lang/String;ILandroid/content/Context;)V

    move v0, v1

    goto/16 :goto_0
.end method

.method abstract b()Ljava/lang/String;
.end method

.method b(Lcom/nd/commplatform/d/c/oa$a;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/oa;->a(Lcom/nd/commplatform/d/c/oa$a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/nd/commplatform/d/c/oa;->a(Lcom/nd/commplatform/d/c/oa$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/oa;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method b(Lcom/nd/commplatform/d/c/oa$a;ILcom/nd/commplatform/entry/NdIcon;)V
    .locals 5

    iget-object v0, p0, Lcom/nd/commplatform/d/c/oa;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-lt v2, v3, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/oa;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v1}, Lcom/nd/commplatform/NdCallbackListener;->isDestroy()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, p2, p3}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/oa;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/oa;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/oa;->a:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/oa;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/oa;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/oa;->b:Ljava/util/HashMap;

    :cond_1
    return-void
.end method
