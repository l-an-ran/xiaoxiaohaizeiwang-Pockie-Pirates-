.class Lcom/nd/commplatform/d/c/il$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/il;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/il;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/il;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/il$a;->a:Lcom/nd/commplatform/d/c/il;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/il;Lcom/nd/commplatform/d/c/il$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/il$a;-><init>(Lcom/nd/commplatform/d/c/il;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/il$a;->a:Lcom/nd/commplatform/d/c/il;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/il;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/il$a;->a:Lcom/nd/commplatform/d/c/il;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/il;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/il$a;->a:Lcom/nd/commplatform/d/c/il;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/il;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cq:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, Lcom/nd/commplatform/d/c/oh;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/il$a;->a:Lcom/nd/commplatform/d/c/il;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/il;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cp:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/nd/commplatform/d/c/il$a$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/il$a$1;-><init>(Lcom/nd/commplatform/d/c/il$a;)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/il$a;->a:Lcom/nd/commplatform/d/c/il;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/d/c/il;->b(Z)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/il$a;->a:Lcom/nd/commplatform/d/c/il;

    invoke-virtual {v2, v4, v0, v4}, Lcom/nd/commplatform/d/c/il;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/il$a;->a:Lcom/nd/commplatform/d/c/il;

    invoke-virtual {v2, v4}, Lcom/nd/commplatform/d/c/il;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nd/commplatform/d/c/il$a;->a:Lcom/nd/commplatform/d/c/il;

    invoke-virtual {v4}, Lcom/nd/commplatform/d/c/il;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method
