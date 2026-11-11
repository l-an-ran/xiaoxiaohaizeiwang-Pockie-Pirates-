.class Lcom/nd/commplatform/d/c/ab$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/qe$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ab;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ab;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ab$1;->a:Lcom/nd/commplatform/d/c/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ab$1;->a:Lcom/nd/commplatform/d/c/ab;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ab;->a(Lcom/nd/commplatform/d/c/ab;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ab$1;->a:Lcom/nd/commplatform/d/c/ab;

    invoke-static {v0, p1}, Lcom/nd/commplatform/d/c/ab;->a(Lcom/nd/commplatform/d/c/ab;I)V

    :cond_0
    return-void
.end method
