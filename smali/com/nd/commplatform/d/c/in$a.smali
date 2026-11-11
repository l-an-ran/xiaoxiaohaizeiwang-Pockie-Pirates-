.class Lcom/nd/commplatform/d/c/in$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/in;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/in;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/in;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/in$a;->a:Lcom/nd/commplatform/d/c/in;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/in;Lcom/nd/commplatform/d/c/in$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/in$a;-><init>(Lcom/nd/commplatform/d/c/in;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/in$a;->a:Lcom/nd/commplatform/d/c/in;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/in;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/in$a;->a:Lcom/nd/commplatform/d/c/in;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/in;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/in$a;->a:Lcom/nd/commplatform/d/c/in;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/in;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cr:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/in$a;->a:Lcom/nd/commplatform/d/c/in;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/in;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cm:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/nd/commplatform/d/c/oh;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/in$a;->a:Lcom/nd/commplatform/d/c/in;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/in;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cn:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/nd/commplatform/d/c/in$a$1;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/in$a$1;-><init>(Lcom/nd/commplatform/d/c/in$a;)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/in$a;->a:Lcom/nd/commplatform/d/c/in;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nd/commplatform/d/c/in;->b(Z)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/in$a;->a:Lcom/nd/commplatform/d/c/in;

    invoke-virtual {v3, v5, v2, v5}, Lcom/nd/commplatform/d/c/in;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/in$a;->a:Lcom/nd/commplatform/d/c/in;

    invoke-virtual {v3, v5}, Lcom/nd/commplatform/d/c/in;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v3

    iget-object v4, p0, Lcom/nd/commplatform/d/c/in$a;->a:Lcom/nd/commplatform/d/c/in;

    invoke-virtual {v4}, Lcom/nd/commplatform/d/c/in;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4, v2}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method
