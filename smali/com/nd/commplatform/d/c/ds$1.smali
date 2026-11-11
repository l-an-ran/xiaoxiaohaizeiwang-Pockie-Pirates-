.class final Lcom/nd/commplatform/d/c/ds$1;
.super Lcom/nd/commplatform/d/c/ej;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ds;->a(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ds;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ds;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ds$1;->a:Lcom/nd/commplatform/d/c/ds;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ej;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/ek;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/nd/commplatform/d/c/ek;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ds$1;->a:Lcom/nd/commplatform/d/c/ds;

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/ds;->a(Lcom/nd/commplatform/d/c/ds;[Lcom/nd/commplatform/d/c/ek;)V

    return-void
.end method
