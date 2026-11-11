.class final Lcom/nd/commplatform/d/c/ik$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ik;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/nd/commplatform/d/c/ik;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ik;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ik$4;->b:Lcom/nd/commplatform/d/c/ik;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/ik$4;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$4;->b:Lcom/nd/commplatform/d/c/ik;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$4;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/nd/commplatform/d/c/ik;->a(Lcom/nd/commplatform/d/c/ik;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
