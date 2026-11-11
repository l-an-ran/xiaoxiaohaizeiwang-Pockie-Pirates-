.class public Lcom/nd/commplatform/d/c/jn;
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


# instance fields
.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/v;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/d/c/jn;->i:I

    return-void
.end method


# virtual methods
.method protected synthetic a(Lcom/nd/commplatform/d/c/fr;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/jn;->b(Lcom/nd/commplatform/d/c/fr;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nd/commplatform/d/c/v;->a(I)V

    return-void
.end method

.method public a(Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput p2, p0, Lcom/nd/commplatform/d/c/jn;->i:I

    const/16 v0, 0x3ea

    iput-short v0, p0, Lcom/nd/commplatform/d/c/jn;->g:S

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/nd/commplatform/d/c/jn;->h:B

    sget-object v0, Lcom/nd/commplatform/d/c/bp;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jn;->f:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Lcom/nd/commplatform/d/c/jn;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method protected a(Ljava/util/HashMap;)V
    .locals 2
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

    const-string v0, "TargetAppId"

    iget v1, p0, Lcom/nd/commplatform/d/c/jn;->i:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected b(Lcom/nd/commplatform/d/c/fr;)Ljava/lang/Boolean;
    .locals 2

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method
