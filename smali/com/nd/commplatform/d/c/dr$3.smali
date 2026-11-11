.class final Lcom/nd/commplatform/d/c/dr$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/dr;->a()V
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

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dr$3;->a:Lcom/nd/commplatform/d/c/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr$3;->a:Lcom/nd/commplatform/d/c/dr;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/dr;->a(Lcom/nd/commplatform/d/c/dr;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ee;->a(Ljava/lang/String;)V

    return-void
.end method
