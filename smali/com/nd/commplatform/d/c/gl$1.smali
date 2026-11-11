.class final Lcom/nd/commplatform/d/c/gl$1;
.super Lcom/nd/commplatform/d/c/hn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/gl;->b(Landroid/view/View;)Lcom/nd/commplatform/d/c/hh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/d/c/hn",
        "<",
        "Lcom/nd/commplatform/d/c/gf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/gl;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/gl;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gl$1;->a:Lcom/nd/commplatform/d/c/gl;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hn;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gl$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gf;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gl$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/gf;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gl$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gf;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gl$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gf;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gl$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gf;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gl$1;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gl$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gf;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gl$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gf;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
