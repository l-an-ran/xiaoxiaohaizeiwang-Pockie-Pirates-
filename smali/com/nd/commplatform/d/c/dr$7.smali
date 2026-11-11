.class final Lcom/nd/commplatform/d/c/dr$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/dr;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/dr;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/dr;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dr$7;->a:Lcom/nd/commplatform/d/c/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr$7;->a:Lcom/nd/commplatform/d/c/dr;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/dr;->a(Lcom/nd/commplatform/d/c/dr;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dr$7;->a:Lcom/nd/commplatform/d/c/dr;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/dr;->d(Lcom/nd/commplatform/d/c/dr;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dr$7;->a:Lcom/nd/commplatform/d/c/dr;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/dr;->e(Lcom/nd/commplatform/d/c/dr;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/dy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
