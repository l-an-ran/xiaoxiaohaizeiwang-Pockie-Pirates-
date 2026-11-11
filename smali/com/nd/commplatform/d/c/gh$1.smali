.class final Lcom/nd/commplatform/d/c/gh$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/gh;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/gh;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/gh;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gh$1;->a:Lcom/nd/commplatform/d/c/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh$1;->a:Lcom/nd/commplatform/d/c/gh;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gh;->a(Lcom/nd/commplatform/d/c/gh;)V

    :cond_0
    return-void
.end method
