.class final Lcom/nd/commplatform/friend/NdFriendSectionPanel$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/dk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a([Lcom/nd/commplatform/d/c/ek;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nd/commplatform/d/c/dk",
        "<",
        "Lcom/nd/commplatform/d/c/ek;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$3;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nd/commplatform/d/c/ek;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/ek;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/ek;->getNickName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lcom/nd/commplatform/d/c/ek;

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/friend/NdFriendSectionPanel$3;->a(Lcom/nd/commplatform/d/c/ek;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
