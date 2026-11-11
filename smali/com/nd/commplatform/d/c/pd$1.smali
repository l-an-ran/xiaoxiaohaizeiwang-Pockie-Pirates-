.class final Lcom/nd/commplatform/d/c/pd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/qe$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/pd;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/pd;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/pd;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/pd$1;->a:Lcom/nd/commplatform/d/c/pd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pd$1;->a:Lcom/nd/commplatform/d/c/pd;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pd;->a(Lcom/nd/commplatform/d/c/pd;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pd$1;->a:Lcom/nd/commplatform/d/c/pd;

    invoke-static {v0, p1}, Lcom/nd/commplatform/d/c/pd;->a(Lcom/nd/commplatform/d/c/pd;I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pd$1;->a:Lcom/nd/commplatform/d/c/pd;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pd;->b(Lcom/nd/commplatform/d/c/pd;)Lcom/nd/commplatform/d/c/og$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pd$1;->a:Lcom/nd/commplatform/d/c/pd;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pd;->b(Lcom/nd/commplatform/d/c/pd;)Lcom/nd/commplatform/d/c/og$a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pd$1;->a:Lcom/nd/commplatform/d/c/pd;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pd;->c(Lcom/nd/commplatform/d/c/pd;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/nd/commplatform/d/c/og$a;->b(II)V

    :cond_0
    return-void
.end method
