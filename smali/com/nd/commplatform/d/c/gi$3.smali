.class final Lcom/nd/commplatform/d/c/gi$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/friend/NdFriendSectionPanel$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/gi;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/gi;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/gi;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gi$3;->a:Lcom/nd/commplatform/d/c/gi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nd/commplatform/d/c/ek;)V
    .locals 4

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/ek;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/ek;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/ek;->getUin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/gp;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
