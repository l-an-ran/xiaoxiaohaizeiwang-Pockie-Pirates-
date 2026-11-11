.class final Lcom/nd/commplatform/d/c/fa$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fa;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/fa;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fa;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fa$1;->a:Lcom/nd/commplatform/d/c/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fa$1;->a:Lcom/nd/commplatform/d/c/fa;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fa;->a(Lcom/nd/commplatform/d/c/fa;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fa$1;->a:Lcom/nd/commplatform/d/c/fa;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/fa;->b(Lcom/nd/commplatform/d/c/fa;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/fe;->a(Ljava/lang/String;I)V

    return-void
.end method
