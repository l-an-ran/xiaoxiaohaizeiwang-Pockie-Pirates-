.class final Lcom/nd/commplatform/d/c/io$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/io;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdPermission;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/nd/commplatform/d/c/io;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/io;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/io$1;->b:Lcom/nd/commplatform/d/c/io;

    iput-boolean p2, p0, Lcom/nd/commplatform/d/c/io$1;->a:Z

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdPermission;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/io$1;->b:Lcom/nd/commplatform/d/c/io;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/io;->b(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$1;->b:Lcom/nd/commplatform/d/c/io;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/io;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ck:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/io$1;->b:Lcom/nd/commplatform/d/c/io;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/io;->a(Lcom/nd/commplatform/d/c/io;)Landroid/widget/CompoundButton;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nd/commplatform/d/c/io$1;->a:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$1;->b:Lcom/nd/commplatform/d/c/io;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/io;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdPermission;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/io$1;->a(ILcom/nd/commplatform/entry/NdPermission;)V

    return-void
.end method
