.class Lcom/nd/commplatform/d/c/io$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/io;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/io;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/io;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/io$b;->a:Lcom/nd/commplatform/d/c/io;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/io;Lcom/nd/commplatform/d/c/io$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/io$b;-><init>(Lcom/nd/commplatform/d/c/io;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$b;->a:Lcom/nd/commplatform/d/c/io;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/io;->a(Lcom/nd/commplatform/d/c/io;)Landroid/widget/CompoundButton;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$b;->a:Lcom/nd/commplatform/d/c/io;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/io;->a(Lcom/nd/commplatform/d/c/io;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$b;->a:Lcom/nd/commplatform/d/c/io;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/io;->a(Lcom/nd/commplatform/d/c/io;)Landroid/widget/CompoundButton;

    move-result-object v1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$b;->a:Lcom/nd/commplatform/d/c/io;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/io;->a(Lcom/nd/commplatform/d/c/io;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$b;->a:Lcom/nd/commplatform/d/c/io;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/io$b;->a:Lcom/nd/commplatform/d/c/io;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/io;->a(Lcom/nd/commplatform/d/c/io;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/io;->a(Lcom/nd/commplatform/d/c/io;Z)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->r()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$b;->a:Lcom/nd/commplatform/d/c/io;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/io;->b(Lcom/nd/commplatform/d/c/io;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$b;->a:Lcom/nd/commplatform/d/c/io;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/io;->c(Lcom/nd/commplatform/d/c/io;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$b;->a:Lcom/nd/commplatform/d/c/io;

    invoke-static {v0, p1}, Lcom/nd/commplatform/d/c/io;->b(Lcom/nd/commplatform/d/c/io;Landroid/view/View;)V

    goto :goto_1
.end method
