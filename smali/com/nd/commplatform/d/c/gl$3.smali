.class final Lcom/nd/commplatform/d/c/gl$3;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/gl;->b(I)V
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
        "Lcom/nd/commplatform/entry/NdSysMsgInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/gl;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/gl;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gl$3;->a:Lcom/nd/commplatform/d/c/gl;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdPageList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdSysMsgInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gl$3;->a:Lcom/nd/commplatform/d/c/gl;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/gl;->a:Lcom/nd/commplatform/d/c/hf;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gl$3;->a:Lcom/nd/commplatform/d/c/gl;

    invoke-static {v1, p2}, Lcom/nd/commplatform/d/c/gl;->a(Lcom/nd/commplatform/d/c/gl;Lcom/nd/commplatform/entry/NdPageList;)Lcom/nd/commplatform/entry/NdPageList;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/nd/commplatform/d/c/hf;->a(Lcom/nd/commplatform/NdCallbackListener;ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdPageList;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/gl$3;->a(ILcom/nd/commplatform/entry/NdPageList;)V

    return-void
.end method
