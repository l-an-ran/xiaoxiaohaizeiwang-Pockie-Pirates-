.class public Lcom/nd/commplatform/d/c/u;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/nd/commplatform/NdCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/NdCallbackListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/u;->d:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/u;->c:Ljava/lang/String;

    return-void
.end method

.method private b(I)V
    .locals 6

    const/16 v5, 0x13

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v0, v2

    if-ge v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_1
    if-ge v0, p1, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/u;->d:Z

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/d/c/fr;",
            "ITT;)V"
        }
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/fr;->c()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "Result"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/u;->b:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nd/commplatform/d/c/u;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v1}, Lcom/nd/commplatform/NdCallbackListener;->isDestroy()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nd/commplatform/d/c/u;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/NdCallbackListener;->setResult(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/nd/commplatform/d/c/nn;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/u;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v1, v0, p3}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    invoke-static {}, Lcom/nd/commplatform/NdMiscCallbackListener;->a()V

    :cond_1
    return-void
.end method

.method protected a(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/u;->b(I)V

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/u;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/u;->c:Ljava/lang/String;

    const-string v1, "Access Denied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/u;->d:Z

    return v0
.end method
