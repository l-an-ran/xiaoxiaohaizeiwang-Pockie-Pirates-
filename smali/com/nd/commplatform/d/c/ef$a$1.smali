.class Lcom/nd/commplatform/d/c/ef$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/en$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ef$a;-><init>(Lcom/nd/commplatform/d/c/ef;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ef$a;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ef$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ef$a$1;->a:Lcom/nd/commplatform/d/c/ef$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/ek;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef$a$1;->a:Lcom/nd/commplatform/d/c/ef$a;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ef$a;->a(Lcom/nd/commplatform/d/c/ef$a;)Lcom/nd/commplatform/d/c/ef;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ef;->a(Lcom/nd/commplatform/d/c/ef;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef$a$1;->a:Lcom/nd/commplatform/d/c/ef$a;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ef$a;->a(Lcom/nd/commplatform/d/c/ef$a;)Lcom/nd/commplatform/d/c/ef;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/ef;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
