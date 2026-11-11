.class public abstract Lcom/nd/commplatform/d/c/hn;
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
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract f()Z
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hn;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hn;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hn;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hn;->f()Z

    move-result v0

    goto :goto_0
.end method
