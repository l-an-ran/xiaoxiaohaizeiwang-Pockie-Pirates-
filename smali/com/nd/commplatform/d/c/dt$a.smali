.class Lcom/nd/commplatform/d/c/dt$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/dt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/dt;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/dt;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dt$a;->a:Lcom/nd/commplatform/d/c/dt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/dt;Lcom/nd/commplatform/d/c/dt$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/dt$a;-><init>(Lcom/nd/commplatform/d/c/dt;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt$a;->a:Lcom/nd/commplatform/d/c/dt;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/dt;->a:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt$a;->a:Lcom/nd/commplatform/d/c/dt;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dt$a;->a:Lcom/nd/commplatform/d/c/dt;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/dt;->a(Lcom/nd/commplatform/d/c/dt;)Lcom/nd/commplatform/entry/NdSex;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/dt;->a(Lcom/nd/commplatform/d/c/dt;Lcom/nd/commplatform/entry/NdSex;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt$a;->a:Lcom/nd/commplatform/d/c/dt;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/dt;->b:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt$a;->a:Lcom/nd/commplatform/d/c/dt;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dt$a;->a:Lcom/nd/commplatform/d/c/dt;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/dt;->b(Lcom/nd/commplatform/d/c/dt;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/dt;->a(Lcom/nd/commplatform/d/c/dt;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt$a;->a:Lcom/nd/commplatform/d/c/dt;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/dt;->c:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt$a;->a:Lcom/nd/commplatform/d/c/dt;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dt$a;->a:Lcom/nd/commplatform/d/c/dt;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/dt;->c(Lcom/nd/commplatform/d/c/dt;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/dt;->b(Lcom/nd/commplatform/d/c/dt;Ljava/lang/String;)V

    goto :goto_0
.end method
