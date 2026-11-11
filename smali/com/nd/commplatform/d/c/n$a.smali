.class Lcom/nd/commplatform/d/c/n$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/n;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/n;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/n$a;->a:Lcom/nd/commplatform/d/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/n;Lcom/nd/commplatform/d/c/n$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/n$a;-><init>(Lcom/nd/commplatform/d/c/n;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/n$a;->a:Lcom/nd/commplatform/d/c/n;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/n;->b(Lcom/nd/commplatform/d/c/n;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n$a;->a:Lcom/nd/commplatform/d/c/n;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/n;->e(Lcom/nd/commplatform/d/c/n;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n$a;->a:Lcom/nd/commplatform/d/c/n;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/n;->b(Lcom/nd/commplatform/d/c/n;)Landroid/widget/Button;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
