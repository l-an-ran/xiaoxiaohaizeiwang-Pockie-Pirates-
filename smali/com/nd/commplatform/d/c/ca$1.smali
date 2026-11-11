.class final Lcom/nd/commplatform/d/c/ca$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ca;->a(Lcom/nd/commplatform/d/c/by;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/by;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Lcom/nd/commplatform/d/c/ca;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ca;Lcom/nd/commplatform/d/c/by;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ca$1;->d:Lcom/nd/commplatform/d/c/ca;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/ca$1;->a:Lcom/nd/commplatform/d/c/by;

    iput-boolean p3, p0, Lcom/nd/commplatform/d/c/ca$1;->b:Z

    iput p4, p0, Lcom/nd/commplatform/d/c/ca$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->b()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca$1;->d:Lcom/nd/commplatform/d/c/ca;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ca;->b:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ca$1;->a:Lcom/nd/commplatform/d/c/by;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/by;->b()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nd/commplatform/d/c/ca$1;->b:Z

    iget v3, p0, Lcom/nd/commplatform/d/c/ca$1;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->a(Lcom/nd/commplatform/widget/NdFrameInnerContent;ZI)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca$1;->d:Lcom/nd/commplatform/d/c/ca;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ca$1;->d:Lcom/nd/commplatform/d/c/ca;

    iget v1, v1, Lcom/nd/commplatform/d/c/ca;->e:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ca;->h(I)Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca$1;->d:Lcom/nd/commplatform/d/c/ca;

    iget v0, v0, Lcom/nd/commplatform/d/c/ca;->e:I

    if-gez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca$1;->d:Lcom/nd/commplatform/d/c/ca;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ca;->b:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->i()Lcom/nd/commplatform/widget/NdBottomBar;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca$1;->d:Lcom/nd/commplatform/d/c/ca;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ca;->b:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->i()Lcom/nd/commplatform/widget/NdBottomBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdBottomBar;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca$1;->d:Lcom/nd/commplatform/d/c/ca;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ca;->b:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ca$1;->d:Lcom/nd/commplatform/d/c/ca;

    iget v1, v1, Lcom/nd/commplatform/d/c/ca;->e:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->b(I)V

    goto :goto_0
.end method
