.class public final Lcom/nd/commplatform/d/c/ol;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nd/commplatform/d/c/ox;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/nd/commplatform/NdCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdVirtualPayResult;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lcom/nd/commplatform/entry/NdVirtualPayResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/ol;->b()V

    sget-object v0, Lcom/nd/commplatform/d/c/ol;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/ol;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/d/c/ol;->d:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public static a(I)V
    .locals 2

    sget-object v0, Lcom/nd/commplatform/d/c/ol;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/ol;->d:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(II)V
    .locals 3

    sget-object v0, Lcom/nd/commplatform/d/c/ol;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nd/commplatform/d/c/ol;->d:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/ol;->d:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nd/commplatform/d/c/ol;->d:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nd/commplatform/d/c/ox;

    invoke-direct {v2, p0, p1}, Lcom/nd/commplatform/d/c/ox;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdVirtualPayResult;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/nd/commplatform/d/c/ol;->e:Lcom/nd/commplatform/NdCallbackListener;

    return-void
.end method

.method public static a(Lcom/nd/commplatform/entry/NdVirtualPayResult;)V
    .locals 0

    sput-object p0, Lcom/nd/commplatform/d/c/ol;->f:Lcom/nd/commplatform/entry/NdVirtualPayResult;

    return-void
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/d/c/ol;->e:Lcom/nd/commplatform/NdCallbackListener;

    sput-object v0, Lcom/nd/commplatform/d/c/ol;->f:Lcom/nd/commplatform/entry/NdVirtualPayResult;

    return-void
.end method

.method public static b(I)V
    .locals 2

    sget-object v0, Lcom/nd/commplatform/d/c/ol;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/ol;->d:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static c()V
    .locals 4

    const/4 v3, 0x2

    sget-object v0, Lcom/nd/commplatform/d/c/ol;->e:Lcom/nd/commplatform/NdCallbackListener;

    sget-object v1, Lcom/nd/commplatform/d/c/ol;->f:Lcom/nd/commplatform/entry/NdVirtualPayResult;

    invoke-static {}, Lcom/nd/commplatform/d/c/ol;->b()V

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/nd/commplatform/d/c/ol;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3}, Lcom/nd/commplatform/d/c/ol;->d(I)I

    move-result v2

    invoke-static {v3}, Lcom/nd/commplatform/d/c/ol;->a(I)V

    invoke-virtual {v0, v2, v1}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static c(I)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/nd/commplatform/d/c/ol;->d:Ljava/util/HashMap;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/nd/commplatform/d/c/ol;->d:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d(I)I
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcom/nd/commplatform/d/c/ol;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/ol;->d:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/ox;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, v0, Lcom/nd/commplatform/d/c/ox;->b:I

    goto :goto_0
.end method
