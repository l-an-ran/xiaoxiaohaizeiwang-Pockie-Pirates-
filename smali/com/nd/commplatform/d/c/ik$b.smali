.class Lcom/nd/commplatform/d/c/ik$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/ik;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ik;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/ik;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ik$b;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/ik;Lcom/nd/commplatform/d/c/ik$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ik$b;-><init>(Lcom/nd/commplatform/d/c/ik;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v2, 0x32

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$b;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ik;->a(Lcom/nd/commplatform/d/c/ik;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$b;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ik;->j(Lcom/nd/commplatform/d/c/ik;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->dc:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$b;->a:Lcom/nd/commplatform/d/c/ik;

    new-instance v1, Lcom/nd/commplatform/d/c/ik$b$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ik$b$1;-><init>(Lcom/nd/commplatform/d/c/ik$b;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/ik;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$b;->a:Lcom/nd/commplatform/d/c/ik;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ik;->e:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$b;->a:Lcom/nd/commplatform/d/c/ik;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$b;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/ik;->g(Lcom/nd/commplatform/d/c/ik;)Lcom/nd/commplatform/entry/NdSex;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/ik;->b(Lcom/nd/commplatform/d/c/ik;Lcom/nd/commplatform/entry/NdSex;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$b;->a:Lcom/nd/commplatform/d/c/ik;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ik;->f:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$b;->a:Lcom/nd/commplatform/d/c/ik;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$b;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/ik;->d(Lcom/nd/commplatform/d/c/ik;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/ik;->f(Lcom/nd/commplatform/d/c/ik;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$b;->a:Lcom/nd/commplatform/d/c/ik;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ik;->g:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$b;->a:Lcom/nd/commplatform/d/c/ik;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$b;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/ik;->h(Lcom/nd/commplatform/d/c/ik;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/ik;->g(Lcom/nd/commplatform/d/c/ik;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget v1, Lcom/nd/commplatform/d/c/jo$e;->fG:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$b;->a:Lcom/nd/commplatform/d/c/ik;

    new-instance v1, Lcom/nd/commplatform/d/c/ik$b$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ik$b$2;-><init>(Lcom/nd/commplatform/d/c/ik$b;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/ik;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
