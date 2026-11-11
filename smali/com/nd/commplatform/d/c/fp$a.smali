.class Lcom/nd/commplatform/d/c/fp$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/fp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/fp;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/fp;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fp$a;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/fp;Lcom/nd/commplatform/d/c/fp$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/fp$a;-><init>(Lcom/nd/commplatform/d/c/fp;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v3, 0x32

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$a;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fp;->a(Lcom/nd/commplatform/d/c/fp;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$a;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fp;->b(Lcom/nd/commplatform/d/c/fp;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->dc:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$a;->a:Lcom/nd/commplatform/d/c/fp;

    new-instance v1, Lcom/nd/commplatform/d/c/fp$a$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/fp$a$1;-><init>(Lcom/nd/commplatform/d/c/fp$a;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/nd/commplatform/d/c/fp;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v1, Lcom/nd/commplatform/d/c/jo$e;->fG:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$a;->a:Lcom/nd/commplatform/d/c/fp;

    new-instance v1, Lcom/nd/commplatform/d/c/fp$a$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/fp$a$2;-><init>(Lcom/nd/commplatform/d/c/fp$a;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/nd/commplatform/d/c/fp;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    sget v1, Lcom/nd/commplatform/d/c/jo$e;->bB:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$a;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fp;->a(Lcom/nd/commplatform/d/c/fp;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$a;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0, v2}, Lcom/nd/commplatform/d/c/fp;->a(Lcom/nd/commplatform/d/c/fp;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$a;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0, v2}, Lcom/nd/commplatform/d/c/fp;->a(Lcom/nd/commplatform/d/c/fp;[B)[B

    goto :goto_0
.end method
