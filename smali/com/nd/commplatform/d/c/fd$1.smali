.class final Lcom/nd/commplatform/d/c/fd$1;
.super Lcom/nd/commplatform/d/c/hg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fd;->b(Landroid/view/View;)Lcom/nd/commplatform/d/c/hh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/d/c/hg",
        "<",
        "Lcom/nd/commplatform/entry/NdAppAchieveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/fd;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fd;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fd$1;->a:Lcom/nd/commplatform/d/c/fd;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hg;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fd$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fd$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->setCheckSum(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fd$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fd$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->getAchievementName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fd$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->getAchievementId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fd$1;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
