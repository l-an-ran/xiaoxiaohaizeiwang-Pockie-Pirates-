.class final Lcom/nd/commplatform/d/c/ea$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ea;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ea;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ea;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ea$4;->a:Lcom/nd/commplatform/d/c/ea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea$4;->a:Lcom/nd/commplatform/d/c/ea;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ea;->c(Lcom/nd/commplatform/d/c/ea;)Lcom/nd/commplatform/entry/NdUserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea$4;->a:Lcom/nd/commplatform/d/c/ea;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ea;->c(Lcom/nd/commplatform/d/c/ea;)Lcom/nd/commplatform/entry/NdUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserInfo;->getUin()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ea$4;->a:Lcom/nd/commplatform/d/c/ea;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/ea;->c(Lcom/nd/commplatform/d/c/ea;)Lcom/nd/commplatform/entry/NdUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/eb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
