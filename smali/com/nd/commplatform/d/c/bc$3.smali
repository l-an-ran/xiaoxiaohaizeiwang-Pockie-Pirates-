.class Lcom/nd/commplatform/d/c/bc$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/qe$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/bc;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/bc;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/bc;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/bc$3;->a:Lcom/nd/commplatform/d/c/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/bc$3;->a:Lcom/nd/commplatform/d/c/bc;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/bc;->a(Lcom/nd/commplatform/d/c/bc;)I

    move-result v0

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/bc$3;->a:Lcom/nd/commplatform/d/c/bc;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/bc$3;->a:Lcom/nd/commplatform/d/c/bc;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/bc;->b(Lcom/nd/commplatform/d/c/bc;)Lcom/nd/commplatform/d/c/fr;

    move-result-object v1

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/bc$3;->a:Lcom/nd/commplatform/d/c/bc;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/bc;->c(Lcom/nd/commplatform/d/c/bc;)Lcom/nd/commplatform/entry/NdPageList;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/bc;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
