.class Lcom/nd/commplatform/d/c/mf$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/qe$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/mf;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/mf;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/mf;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/mf$3;->a:Lcom/nd/commplatform/d/c/mf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mf$3;->a:Lcom/nd/commplatform/d/c/mf;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/mf;->b(Lcom/nd/commplatform/d/c/mf;)I

    move-result v0

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mf$3;->a:Lcom/nd/commplatform/d/c/mf;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mf$3;->a:Lcom/nd/commplatform/d/c/mf;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/mf;->c(Lcom/nd/commplatform/d/c/mf;)Lcom/nd/commplatform/d/c/fr;

    move-result-object v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/mf;->a(Lcom/nd/commplatform/d/c/mf;Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
