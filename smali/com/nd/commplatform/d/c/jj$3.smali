.class final Lcom/nd/commplatform/d/c/jj$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/jb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/jj;->a(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/jj;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/jj;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/jj$3;->a:Lcom/nd/commplatform/d/c/jj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj$3;->a:Lcom/nd/commplatform/d/c/jj;

    invoke-virtual {v0, v5}, Lcom/nd/commplatform/d/c/jj;->b(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj$3;->a:Lcom/nd/commplatform/d/c/jj;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jj;->c(Lcom/nd/commplatform/d/c/jj;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj$3;->a:Lcom/nd/commplatform/d/c/jj;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jj;->c(Lcom/nd/commplatform/d/c/jj;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/jj$3;->a:Lcom/nd/commplatform/d/c/jj;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/jj;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->nF:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nd/commplatform/d/c/a;->m()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {}, Lcom/nd/commplatform/d/c/jb;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
