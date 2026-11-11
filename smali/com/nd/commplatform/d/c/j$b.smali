.class Lcom/nd/commplatform/d/c/j$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/j;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/j;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/j$b;->a:Lcom/nd/commplatform/d/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/j;Lcom/nd/commplatform/d/c/j$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/j$b;-><init>(Lcom/nd/commplatform/d/c/j;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    new-instance v1, Lcom/nd/commplatform/d/c/bx;

    const/16 v0, 0xfa2

    invoke-direct {v1, v0}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v0, "platform"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getLoginType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/16 v0, 0x3f0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x3f4

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0
.end method
