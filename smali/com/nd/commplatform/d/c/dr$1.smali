.class final Lcom/nd/commplatform/d/c/dr$1;
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

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dr$1;->a:Lcom/nd/commplatform/d/c/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr$1;->a:Lcom/nd/commplatform/d/c/dr;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/dr;->a(Lcom/nd/commplatform/d/c/dr;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr$1;->a:Lcom/nd/commplatform/d/c/dr;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/dr;->a(Lcom/nd/commplatform/d/c/dr;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/dp;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
