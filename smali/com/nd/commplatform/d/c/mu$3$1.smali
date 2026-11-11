.class final Lcom/nd/commplatform/d/c/mu$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/mu$3;->a(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/mu$3;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/mu$3;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/mu$3$1;->a:Lcom/nd/commplatform/d/c/mu$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu$3$1;->a:Lcom/nd/commplatform/d/c/mu$3;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/mu$3;->a:Lcom/nd/commplatform/d/c/mu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/mu;->a(Lcom/nd/commplatform/d/c/mu;Z)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu$3$1;->a:Lcom/nd/commplatform/d/c/mu$3;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/mu$3;->a:Lcom/nd/commplatform/d/c/mu;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/mu;->c(Lcom/nd/commplatform/d/c/mu;)V

    return-void
.end method
