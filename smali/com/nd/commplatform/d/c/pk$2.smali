.class Lcom/nd/commplatform/d/c/pk$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/qe$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/pk;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/pk;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/pk;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/pk$2;->a:Lcom/nd/commplatform/d/c/pk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pk$2;->a:Lcom/nd/commplatform/d/c/pk;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pk;->a(Lcom/nd/commplatform/d/c/pk;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pk$2;->a:Lcom/nd/commplatform/d/c/pk;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pk$2;->a:Lcom/nd/commplatform/d/c/pk;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pk;->b(Lcom/nd/commplatform/d/c/pk;)Lcom/nd/commplatform/d/c/fr;

    move-result-object v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/pk;->a(Lcom/nd/commplatform/d/c/pk;Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
