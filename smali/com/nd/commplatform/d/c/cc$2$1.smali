.class final Lcom/nd/commplatform/d/c/cc$2$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/cc$2;->b(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/cc$2;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/cc$2;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/cc$2$1;->a:Lcom/nd/commplatform/d/c/cc$2;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    return-void
.end method
