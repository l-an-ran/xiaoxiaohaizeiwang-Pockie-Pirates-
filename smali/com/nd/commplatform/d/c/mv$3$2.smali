.class final Lcom/nd/commplatform/d/c/mv$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/mv$3;->a(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/mv$3;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/mv$3;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/mv$3$2;->a:Lcom/nd/commplatform/d/c/mv$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv$3$2;->a:Lcom/nd/commplatform/d/c/mv$3;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/mv$3;->a:Lcom/nd/commplatform/d/c/mv;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/mv;->a(Lcom/nd/commplatform/d/c/mv;)V

    return-void
.end method
