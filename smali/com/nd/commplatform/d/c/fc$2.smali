.class final Lcom/nd/commplatform/d/c/fc$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fc;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/fc;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fc;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fc$2;->a:Lcom/nd/commplatform/d/c/fc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fc$2;->a:Lcom/nd/commplatform/d/c/fc;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fc;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->hn:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fc$2;->a:Lcom/nd/commplatform/d/c/fc;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/fc;->a(Lcom/nd/commplatform/d/c/fc;)Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->getAchievementId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/fp;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
