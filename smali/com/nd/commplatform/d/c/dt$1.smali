.class final Lcom/nd/commplatform/d/c/dt$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/dt;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/nd/commplatform/d/c/dt;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/dt;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dt$1;->b:Lcom/nd/commplatform/d/c/dt;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/dt$1;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt$1;->b:Lcom/nd/commplatform/d/c/dt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/dt;->b(Lcom/nd/commplatform/d/c/dt;Lcom/nd/commplatform/entry/NdSex;)Lcom/nd/commplatform/entry/NdSex;

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt$1;->b:Lcom/nd/commplatform/d/c/dt;

    sget-object v1, Lcom/nd/commplatform/entry/NdSex;->Male:Lcom/nd/commplatform/entry/NdSex;

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/dt;->b(Lcom/nd/commplatform/d/c/dt;Lcom/nd/commplatform/entry/NdSex;)Lcom/nd/commplatform/entry/NdSex;

    :cond_0
    :goto_0
    if-gt p2, v2, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt$1;->b:Lcom/nd/commplatform/d/c/dt;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/dt;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dt$1;->a:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt$1;->b:Lcom/nd/commplatform/d/c/dt;

    sget-object v1, Lcom/nd/commplatform/entry/NdSex;->Female:Lcom/nd/commplatform/entry/NdSex;

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/dt;->b(Lcom/nd/commplatform/d/c/dt;Lcom/nd/commplatform/entry/NdSex;)Lcom/nd/commplatform/entry/NdSex;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt$1;->b:Lcom/nd/commplatform/d/c/dt;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/dt;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
