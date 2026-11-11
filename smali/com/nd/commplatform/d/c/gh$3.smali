.class final Lcom/nd/commplatform/d/c/gh$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/gh;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/gh;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/gh;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gh$3;->a:Lcom/nd/commplatform/d/c/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh$3;->a:Lcom/nd/commplatform/d/c/gh;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gh;->c(Lcom/nd/commplatform/d/c/gh;)Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh$3;->a:Lcom/nd/commplatform/d/c/gh;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gh;->c(Lcom/nd/commplatform/d/c/gh;)Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getUin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ed;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
