.class public Lcom/nd/commplatform/d/c/oi;
.super Lcom/nd/commplatform/d/c/oa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/oi$a;
    }
.end annotation


# static fields
.field private static a:Lcom/nd/commplatform/d/c/oi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/d/c/oi;->a:Lcom/nd/commplatform/d/c/oi;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/oa;-><init>()V

    return-void
.end method

.method public static a()Lcom/nd/commplatform/d/c/oi;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/oi;->a:Lcom/nd/commplatform/d/c/oi;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/oi;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/oi;-><init>()V

    sput-object v0, Lcom/nd/commplatform/d/c/oi;->a:Lcom/nd/commplatform/d/c/oi;

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/oi;->a:Lcom/nd/commplatform/d/c/oi;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x4

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    move v2, v3

    :goto_0
    if-lt v2, v8, :cond_0

    return-object p2

    :cond_0
    aget v1, v6, v2

    aget v0, v6, v2

    if-le v4, v5, :cond_1

    mul-int v0, v1, v5

    div-int/2addr v0, v4

    :goto_1
    invoke-static {p3, v1, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/oa$a;

    invoke-direct {v1}, Lcom/nd/commplatform/d/c/oa$a;-><init>()V

    invoke-virtual {v1, p1}, Lcom/nd/commplatform/d/c/oa$a;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/d/c/oa$a;->a(I)V

    new-instance v7, Lcom/nd/commplatform/entry/NdIcon;

    invoke-direct {v7}, Lcom/nd/commplatform/entry/NdIcon;-><init>()V

    invoke-virtual {v7, p1}, Lcom/nd/commplatform/entry/NdIcon;->setId(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lcom/nd/commplatform/entry/NdIcon;->setDimension(I)V

    invoke-virtual {v7, v0}, Lcom/nd/commplatform/entry/NdIcon;->setImg(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, p2}, Lcom/nd/commplatform/entry/NdIcon;->setCheckSum(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v7}, Lcom/nd/commplatform/d/c/oi;->a(Lcom/nd/commplatform/d/c/oa$a;Lcom/nd/commplatform/entry/NdIcon;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    mul-int v1, v0, v4

    div-int/2addr v1, v5

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x10
        0x30
        0x78
        0xa0
    .end array-data
.end method

.method a(ILcom/nd/commplatform/entry/NdIcon;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
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

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/nd/commplatform/NdCallbackListener;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3, p1, p2}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method a(Lcom/nd/commplatform/d/c/oa$a;ILcom/nd/commplatform/entry/NdIcon;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/oi;->b(Lcom/nd/commplatform/d/c/oa$a;ILcom/nd/commplatform/entry/NdIcon;)V

    return-void
.end method

.method protected a(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 6

    new-instance v0, Lcom/nd/commplatform/d/c/jt;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/jt;-><init>()V

    new-instance v5, Lcom/nd/commplatform/d/c/oi$a;

    invoke-direct {v5, p0, p1, p2}, Lcom/nd/commplatform/d/c/oi$a;-><init>(Lcom/nd/commplatform/d/c/oi;Ljava/lang/String;I)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/jt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    const-string v0, "nd2_head.png"

    return-object v0
.end method
