.class final Lcom/nd/commplatform/d/c/fm$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fm;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/fm;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fm;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fm$2;->a:Lcom/nd/commplatform/d/c/fm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fm$2;->a:Lcom/nd/commplatform/d/c/fm;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fm;->a(Lcom/nd/commplatform/d/c/fm;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fm$2;->a:Lcom/nd/commplatform/d/c/fm;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fm;->a(Lcom/nd/commplatform/d/c/fm;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fm$2;->a:Lcom/nd/commplatform/d/c/fm;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fm;->b(Lcom/nd/commplatform/d/c/fm;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/eb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fm$2;->a:Lcom/nd/commplatform/d/c/fm;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fm;->b(Lcom/nd/commplatform/d/c/fm;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
