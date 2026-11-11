.class final Lcom/nd/commplatform/d/c/b$17$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/jb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b$17;->callback(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nd/commplatform/d/c/b$17;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b$17;I)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$17$1;->b:Lcom/nd/commplatform/d/c/b$17;

    iput p2, p0, Lcom/nd/commplatform/d/c/b$17$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$17$1;->b:Lcom/nd/commplatform/d/c/b$17;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/b$17;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$17$1;->b:Lcom/nd/commplatform/d/c/b$17;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/b$17;->c:Lcom/nd/commplatform/d/c/b;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/b;->j()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ol;->b(I)V

    iget v0, p0, Lcom/nd/commplatform/d/c/b$17$1;->a:I

    invoke-static {v0}, Lcom/nd/commplatform/NdMiscCallbackListener;->b(I)V

    return-void
.end method
