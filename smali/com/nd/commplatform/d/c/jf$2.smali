.class final Lcom/nd/commplatform/d/c/jf$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/jf;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/jf;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/jf;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/jf$2;->a:Lcom/nd/commplatform/d/c/jf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/jf$2;->a:Lcom/nd/commplatform/d/c/jf;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jf;->a(Lcom/nd/commplatform/d/c/jf;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jg;->a(Ljava/lang/String;)V

    return-void
.end method
