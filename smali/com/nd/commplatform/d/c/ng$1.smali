.class Lcom/nd/commplatform/d/c/ng$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ng;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ng$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/bf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/bf;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ng$1;->a:Landroid/content/Context;

    new-instance v2, Lcom/nd/commplatform/d/c/ng$1$1;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ng$1;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/nd/commplatform/d/c/ng$1$1;-><init>(Lcom/nd/commplatform/d/c/ng$1;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bf;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method
