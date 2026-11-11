.class public abstract Lcom/nd/commplatform/d/c/gt;
.super Lcom/nd/commplatform/d/c/hg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/gt$a;
    }
.end annotation

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
.method public abstract a(Lcom/nd/commplatform/d/c/gt$a;)V
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public final b(Lcom/nd/commplatform/d/c/gt$a;)V
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gt;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/gt;->a(Lcom/nd/commplatform/d/c/gt$a;)V

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gt;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gt;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract g()[Lcom/nd/commplatform/d/c/gt$a;
.end method

.method public final h()[Lcom/nd/commplatform/d/c/gt$a;
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gt;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gt;->g()[Lcom/nd/commplatform/d/c/gt$a;

    move-result-object v0

    goto :goto_0
.end method
