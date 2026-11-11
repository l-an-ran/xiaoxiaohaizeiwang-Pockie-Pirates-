.class public abstract Lcom/nd/commplatform/d/c/gx;
.super Lcom/nd/commplatform/d/c/hg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nd/commplatform/d/c/hg",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hg;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()Z
.end method

.method public abstract g()Z
.end method

.method public abstract h()V
.end method

.method public final i()Z
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gx;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gx;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public final j()Z
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gx;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gx;->g()Z

    move-result v0

    goto :goto_0
.end method

.method public final k()V
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gx;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gx;->h()V

    goto :goto_0
.end method
