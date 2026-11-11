.class Lcom/nd/commplatform/d/c/oi$a;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/oi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdIcon;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/oi;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/d/c/oi;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/oi$a;->a:Lcom/nd/commplatform/d/c/oi;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    iput-object p2, p0, Lcom/nd/commplatform/d/c/oi$a;->b:Ljava/lang/String;

    iput p3, p0, Lcom/nd/commplatform/d/c/oi$a;->c:I

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdIcon;)V
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/oa$a;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/oa$a;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/oi$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/oa$a;->a(Ljava/lang/String;)V

    iget v1, p0, Lcom/nd/commplatform/d/c/oi$a;->c:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/oa$a;->a(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/oi$a;->a:Lcom/nd/commplatform/d/c/oi;

    invoke-virtual {v1, v0, p1, p2}, Lcom/nd/commplatform/d/c/oi;->a(Lcom/nd/commplatform/d/c/oa$a;ILcom/nd/commplatform/entry/NdIcon;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/nd/commplatform/entry/NdIcon;->setCached(Z)V

    new-instance v0, Lcom/nd/commplatform/d/c/oa$a;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/oa$a;-><init>()V

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/oa$a;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getDimension()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/oa$a;->a(I)V

    const-string v1, "ffffffffffffffffffffffffffffffff"

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getCheckSum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nd/commplatform/d/c/oi$a;->a:Lcom/nd/commplatform/d/c/oi;

    invoke-virtual {v1, v0, p2}, Lcom/nd/commplatform/d/c/oi;->a(Lcom/nd/commplatform/d/c/oa$a;Lcom/nd/commplatform/entry/NdIcon;)V

    :goto_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/oi$a;->a:Lcom/nd/commplatform/d/c/oi;

    invoke-virtual {v1, v0, p1, p2}, Lcom/nd/commplatform/d/c/oi;->a(Lcom/nd/commplatform/d/c/oa$a;ILcom/nd/commplatform/entry/NdIcon;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/oi$a;->a:Lcom/nd/commplatform/d/c/oi;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/oi;->b(Lcom/nd/commplatform/d/c/oa$a;)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/nd/commplatform/entry/NdIcon;->setImg(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/nd/commplatform/entry/NdIcon;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/oi$a;->a(ILcom/nd/commplatform/entry/NdIcon;)V

    return-void
.end method
