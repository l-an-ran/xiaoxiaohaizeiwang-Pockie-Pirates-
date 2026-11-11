.class final Lcom/nd/commplatform/d/c/jj$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/jb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/jj$6;->callback(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/jj$6;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/jj$6;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/jj$6$1;->a:Lcom/nd/commplatform/d/c/jj$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj$6$1;->a:Lcom/nd/commplatform/d/c/jj$6;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/jj$6;->a:Lcom/nd/commplatform/d/c/jj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/jj;->b(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj$6$1;->a:Lcom/nd/commplatform/d/c/jj$6;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/jj$6;->a:Lcom/nd/commplatform/d/c/jj;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/jj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jb;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj$6$1;->a:Lcom/nd/commplatform/d/c/jj$6;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/jj$6;->a:Lcom/nd/commplatform/d/c/jj;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/jj;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->nE:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    return-void
.end method
