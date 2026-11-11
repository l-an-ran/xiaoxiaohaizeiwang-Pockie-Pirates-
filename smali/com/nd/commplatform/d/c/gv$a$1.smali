.class final Lcom/nd/commplatform/d/c/gv$a$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/gv$a;->a(ILcom/nd/commplatform/d/c/gt$a;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
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
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:I

.field final synthetic c:Lcom/nd/commplatform/d/c/gv$a;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/gv$a;Landroid/widget/ImageView;I)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gv$a$1;->c:Lcom/nd/commplatform/d/c/gv$a;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/gv$a$1;->a:Landroid/widget/ImageView;

    iput p3, p0, Lcom/nd/commplatform/d/c/gv$a$1;->b:I

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdIcon;)V
    .locals 3

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getImg()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gv$a$1;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getCheckSum()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gv$a$1;->c:Lcom/nd/commplatform/d/c/gv$a;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/gv$a;->a(Lcom/nd/commplatform/d/c/gv$a;)[Lcom/nd/commplatform/d/c/gt$a;

    move-result-object v1

    iget v2, p0, Lcom/nd/commplatform/d/c/gv$a$1;->b:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/nd/commplatform/d/c/gt$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gv$a$1;->c:Lcom/nd/commplatform/d/c/gv$a;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gv$a;->a(Lcom/nd/commplatform/d/c/gv$a;)[Lcom/nd/commplatform/d/c/gt$a;

    move-result-object v0

    iget v1, p0, Lcom/nd/commplatform/d/c/gv$a$1;->b:I

    aget-object v0, v0, v1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getCheckSum()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nd/commplatform/d/c/gt$a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gv$a$1;->c:Lcom/nd/commplatform/d/c/gv$a;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gv$a;->b(Lcom/nd/commplatform/d/c/gv$a;)Lcom/nd/commplatform/d/c/gt;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gv$a$1;->c:Lcom/nd/commplatform/d/c/gv$a;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/gv$a;->a(Lcom/nd/commplatform/d/c/gv$a;)[Lcom/nd/commplatform/d/c/gt$a;

    move-result-object v1

    iget v2, p0, Lcom/nd/commplatform/d/c/gv$a$1;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/gt;->a(Lcom/nd/commplatform/d/c/gt$a;)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/gv$a$1;, "Lcom/nd/commplatform/d/c/gv$a.1;"
    check-cast p2, Lcom/nd/commplatform/entry/NdIcon;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/gv$a$1;->a(ILcom/nd/commplatform/entry/NdIcon;)V

    return-void
.end method
