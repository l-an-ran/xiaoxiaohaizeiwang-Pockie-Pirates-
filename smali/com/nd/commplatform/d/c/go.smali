.class public Lcom/nd/commplatform/d/c/go;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/nd/commplatform/d/c/gf;)V
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gf;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/nd/commplatform/d/c/gm;->a(Lcom/nd/commplatform/d/c/gf;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/nd/commplatform/d/c/gn;->a(Lcom/nd/commplatform/d/c/gf;)V

    goto :goto_0
.end method
