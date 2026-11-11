.class Lcom/nd/commplatform/d/c/iz$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/iz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/iz;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/iz;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/iz$a;->a:Lcom/nd/commplatform/d/c/iz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/iz;Lcom/nd/commplatform/d/c/iz$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/iz$a;-><init>(Lcom/nd/commplatform/d/c/iz;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iz$a;->a:Lcom/nd/commplatform/d/c/iz;

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/d/c/iz;->f(I)Lcom/nd/commplatform/NdCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/iz$a$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/iz$a$1;-><init>(Lcom/nd/commplatform/d/c/iz$a;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/iz$a;->a:Lcom/nd/commplatform/d/c/iz;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/d/c/iz;->b(Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/iz$a;->a:Lcom/nd/commplatform/d/c/iz;

    invoke-virtual {v1, v3, v0, v3}, Lcom/nd/commplatform/d/c/iz;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/iz$a;->a:Lcom/nd/commplatform/d/c/iz;

    invoke-virtual {v1, v3}, Lcom/nd/commplatform/d/c/iz;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/iz$a;->a:Lcom/nd/commplatform/d/c/iz;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/iz$a;->a:Lcom/nd/commplatform/d/c/iz;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/iz;->a(Lcom/nd/commplatform/d/c/iz;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nd/commplatform/d/c/iz;->a(Lcom/nd/commplatform/d/c/iz;Ljava/lang/String;)Lcom/nd/commplatform/entry/NdPayForAnotherRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/iz$a;->a:Lcom/nd/commplatform/d/c/iz;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/iz;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/nd/commplatform/d/c/a;->a(Lcom/nd/commplatform/entry/NdPayForAnotherRequest;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method
