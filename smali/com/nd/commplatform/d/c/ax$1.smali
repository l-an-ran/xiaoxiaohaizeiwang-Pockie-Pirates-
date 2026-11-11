.class Lcom/nd/commplatform/d/c/ax$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/qe$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ax;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ax;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ax$1;->a:Lcom/nd/commplatform/d/c/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ax$1;->a:Lcom/nd/commplatform/d/c/ax;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ax;->a(Lcom/nd/commplatform/d/c/ax;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ax$1;->a:Lcom/nd/commplatform/d/c/ax;

    invoke-static {v0, p1}, Lcom/nd/commplatform/d/c/ax;->a(Lcom/nd/commplatform/d/c/ax;I)V

    :cond_0
    return-void
.end method
