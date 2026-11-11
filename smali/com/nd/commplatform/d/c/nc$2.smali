.class final Lcom/nd/commplatform/d/c/nc$2;
.super Lcom/nd/commplatform/d/c/mo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/nc;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/d/c/mo",
        "<",
        "Lcom/nd/commplatform/d/c/na;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/nd/commplatform/d/c/nc;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/nc;Lcom/nd/commplatform/d/c/na;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/nc$2;->b:Lcom/nd/commplatform/d/c/nc;

    invoke-direct {p0, p2}, Lcom/nd/commplatform/d/c/mo;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private e()Lcom/nd/commplatform/d/c/mz;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/nc$2;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/nc$2;->a:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/na;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/na;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/mz;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/nc$2;->e()Lcom/nd/commplatform/d/c/mz;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/mz;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/nc$2;->e()Lcom/nd/commplatform/d/c/mz;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/mz;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/nc$2;->e()Lcom/nd/commplatform/d/c/mz;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/mz;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/nc$2;->a:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/na;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/na;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/nc$2;->a:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/na;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/na;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
