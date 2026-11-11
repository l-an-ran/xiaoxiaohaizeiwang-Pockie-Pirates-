.class public Lcom/nd/commplatform/d/c/jm;
.super Lcom/nd/commplatform/d/c/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/d/c/v",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/v;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a(Lcom/nd/commplatform/d/c/fr;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/jm;->b(Lcom/nd/commplatform/d/c/fr;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nd/commplatform/d/c/v;->a(I)V

    return-void
.end method

.method protected a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/nd/commplatform/d/c/v;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method protected b(Lcom/nd/commplatform/d/c/fr;)Ljava/lang/Boolean;
    .locals 2

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method

.method public b(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x3ec

    iput-short v0, p0, Lcom/nd/commplatform/d/c/jm;->g:S

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/nd/commplatform/d/c/jm;->h:B

    sget-object v0, Lcom/nd/commplatform/d/c/bp;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jm;->f:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/jm;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method
