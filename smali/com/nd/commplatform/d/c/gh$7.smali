.class final Lcom/nd/commplatform/d/c/gh$7;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/gh;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdPageList",
        "<",
        "Lcom/nd/commplatform/entry/NdTinyMsgInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/gh;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/gh;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gh$7;->a:Lcom/nd/commplatform/d/c/gh;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdPageList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdTinyMsgInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh$7;->a:Lcom/nd/commplatform/d/c/gh;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gh;->f(Lcom/nd/commplatform/d/c/gh;)Lcom/nd/commplatform/d/c/hf;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/nd/commplatform/d/c/hf;->a(Lcom/nd/commplatform/NdCallbackListener;ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdPageList;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/gh$7;->a(ILcom/nd/commplatform/entry/NdPageList;)V

    return-void
.end method
