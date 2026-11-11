.class final Lcom/nd/commplatform/d/c/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/widget/NdFrameInnerContent$OnInvisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/i;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/i;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/i$1;->a:Lcom/nd/commplatform/d/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a_(I)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/i$1;->a:Lcom/nd/commplatform/d/c/i;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/i;->a(Lcom/nd/commplatform/d/c/i;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    return-void
.end method
