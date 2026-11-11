.class Lcom/nd/commplatform/d/c/ai$4;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ai;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ai;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ai$4;->a:Lcom/nd/commplatform/d/c/ai;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 1
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ai$4;->a:Lcom/nd/commplatform/d/c/ai;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ai;->c(Lcom/nd/commplatform/d/c/ai;)V

    return-void
.end method
