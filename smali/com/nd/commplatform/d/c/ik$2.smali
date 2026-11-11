.class final Lcom/nd/commplatform/d/c/ik$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ik;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lcom/nd/commplatform/d/c/ik;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ik;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ik$2;->d:Lcom/nd/commplatform/d/c/ik;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/ik$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/ik$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/nd/commplatform/d/c/ik$2;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$2;->d:Lcom/nd/commplatform/d/c/ik;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/ik;->a(Lcom/nd/commplatform/d/c/ik;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$2;->d:Lcom/nd/commplatform/d/c/ik;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/ik;->b(Lcom/nd/commplatform/d/c/ik;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$2;->d:Lcom/nd/commplatform/d/c/ik;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$2;->c:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/ik;->c(Lcom/nd/commplatform/d/c/ik;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$2;->d:Lcom/nd/commplatform/d/c/ik;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ik;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ik$2;->d:Lcom/nd/commplatform/d/c/ik;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/ik;->d(Lcom/nd/commplatform/d/c/ik;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ik$2;->d:Lcom/nd/commplatform/d/c/ik;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/ik;->e(Lcom/nd/commplatform/d/c/ik;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ik$2;->d:Lcom/nd/commplatform/d/c/ik;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/ik;->f(Lcom/nd/commplatform/d/c/ik;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
