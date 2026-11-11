.class final Lcom/nd/commplatform/d/c/nd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/nd;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/nd;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/nd;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/nd$1;->a:Lcom/nd/commplatform/d/c/nd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/nd$1;->a:Lcom/nd/commplatform/d/c/nd;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/nd;->a(Lcom/nd/commplatform/d/c/nd;)Lcom/nd/commplatform/d/c/mu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/mu;->a()V

    return-void
.end method
