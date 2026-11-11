.class Lcom/nd/commplatform/d/c/mb$4;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/mb;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/mb;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/mb;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/mb$4;->a:Lcom/nd/commplatform/d/c/mb;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 1
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/mb$4;->a:Lcom/nd/commplatform/d/c/mb;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/mb;->d(Lcom/nd/commplatform/d/c/mb;)V

    return-void
.end method
