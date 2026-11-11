.class final Lcom/nd/commplatform/d/c/nc$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/nc;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/nb;

.field final synthetic b:Lcom/nd/commplatform/d/c/nc;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/nc;Lcom/nd/commplatform/d/c/nb;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/nc$3;->b:Lcom/nd/commplatform/d/c/nc;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/nc$3;->a:Lcom/nd/commplatform/d/c/nb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/nc$3;->a:Lcom/nd/commplatform/d/c/nb;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ed;->a(Ljava/lang/String;)V

    return-void
.end method
