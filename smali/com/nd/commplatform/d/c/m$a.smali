.class Lcom/nd/commplatform/d/c/m$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/m;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/m;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/m$a;->a:Lcom/nd/commplatform/d/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/m;Lcom/nd/commplatform/d/c/m$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/m$a;-><init>(Lcom/nd/commplatform/d/c/m;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/m$a;->a:Lcom/nd/commplatform/d/c/m;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/m;->a(Lcom/nd/commplatform/d/c/m;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/m$a;->a:Lcom/nd/commplatform/d/c/m;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/m;->b(Lcom/nd/commplatform/d/c/m;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/nd/commplatform/d/c/m$a$1;

    invoke-direct {v6, p0, v2}, Lcom/nd/commplatform/d/c/m$a$1;-><init>(Lcom/nd/commplatform/d/c/m$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/m$a;->a:Lcom/nd/commplatform/d/c/m;

    invoke-virtual {v0, v4}, Lcom/nd/commplatform/d/c/m;->b(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/m$a;->a:Lcom/nd/commplatform/d/c/m;

    invoke-virtual {v0, v1, v6, v1}, Lcom/nd/commplatform/d/c/m;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/m$a;->a:Lcom/nd/commplatform/d/c/m;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/m;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/m$a;->a:Lcom/nd/commplatform/d/c/m;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/m;->c(Lcom/nd/commplatform/d/c/m;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v5, p0, Lcom/nd/commplatform/d/c/m$a;->a:Lcom/nd/commplatform/d/c/m;

    invoke-virtual {v5}, Lcom/nd/commplatform/d/c/m;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/a;->a(ILjava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method
