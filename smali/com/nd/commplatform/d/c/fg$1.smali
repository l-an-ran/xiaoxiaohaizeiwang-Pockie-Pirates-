.class final Lcom/nd/commplatform/d/c/fg$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/gz$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fg;->b(Landroid/view/View;)Lcom/nd/commplatform/d/c/hh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nd/commplatform/d/c/gz$b",
        "<",
        "Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/fg;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fg;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fg$1;->a:Lcom/nd/commplatform/d/c/fg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fg$1;->a:Lcom/nd/commplatform/d/c/fg;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fg$1;->a:Lcom/nd/commplatform/d/c/fg;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/fg;->a(Lcom/nd/commplatform/d/c/fg;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/nd/commplatform/d/c/fg;->a(Lcom/nd/commplatform/d/c/fg;Ljava/util/List;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/fg$1;->a(Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;)V

    return-void
.end method
