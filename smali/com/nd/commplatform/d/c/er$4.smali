.class final Lcom/nd/commplatform/d/c/er$4;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/er;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/er;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/er;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/er$4;->a:Lcom/nd/commplatform/d/c/er;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Integer;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/er$4;->a:Lcom/nd/commplatform/d/c/er;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/er;->b(Lcom/nd/commplatform/d/c/er;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ce:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/er$4;->a(ILjava/lang/Integer;)V

    return-void
.end method
