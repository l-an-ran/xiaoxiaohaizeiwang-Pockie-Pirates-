.class final Lcom/nd/commplatform/d/c/ic$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/jb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ic;->a(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ic;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ic;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ic$1;->a:Lcom/nd/commplatform/d/c/ic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$1;->a:Lcom/nd/commplatform/d/c/ic;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ic;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/jb;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/jb;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$1;->a:Lcom/nd/commplatform/d/c/ic;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ic;->a(Lcom/nd/commplatform/d/c/ic;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->de:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$1;->a:Lcom/nd/commplatform/d/c/ic;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ic;->g:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->dd:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$1;->a:Lcom/nd/commplatform/d/c/ic;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ic;->a(Lcom/nd/commplatform/d/c/ic;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->df:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/nd/commplatform/d/c/jb;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$1;->a:Lcom/nd/commplatform/d/c/ic;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ic;->g:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->dj:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$1;->a:Lcom/nd/commplatform/d/c/ic;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ic;->g:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->dl:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
