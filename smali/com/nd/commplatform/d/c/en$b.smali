.class Lcom/nd/commplatform/d/c/en$b;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/en;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/nd/commplatform/entry/NdUserInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final f:I = 0x5


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/en;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/d/c/en;ILjava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/en$b;->a:Lcom/nd/commplatform/d/c/en;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    iput v0, p0, Lcom/nd/commplatform/d/c/en$b;->b:I

    iput v0, p0, Lcom/nd/commplatform/d/c/en$b;->e:I

    iput p2, p0, Lcom/nd/commplatform/d/c/en$b;->b:I

    iput-object p3, p0, Lcom/nd/commplatform/d/c/en$b;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/nd/commplatform/d/c/en$b;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/en$b;->destroy()V

    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdUserInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x5

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/en$b;->a:Lcom/nd/commplatform/d/c/en;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/en;->a(Lcom/nd/commplatform/d/c/en;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/nd/commplatform/d/c/en$b;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nd/commplatform/d/c/en$b;->e:I

    iget v1, p0, Lcom/nd/commplatform/d/c/en$b;->e:I

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/en$b;->a:Lcom/nd/commplatform/d/c/en;

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/en;->a(Lcom/nd/commplatform/d/c/en;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/en$b;->a:Lcom/nd/commplatform/d/c/en;

    iget v1, p0, Lcom/nd/commplatform/d/c/en$b;->b:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/en;->a(Lcom/nd/commplatform/d/c/en;I)Z

    goto :goto_0

    :cond_3
    if-nez p2, :cond_5

    iget v1, p0, Lcom/nd/commplatform/d/c/en$b;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nd/commplatform/d/c/en$b;->e:I

    iget v1, p0, Lcom/nd/commplatform/d/c/en$b;->e:I

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lcom/nd/commplatform/d/c/en$b;->a:Lcom/nd/commplatform/d/c/en;

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/en;->a(Lcom/nd/commplatform/d/c/en;Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/en$b;->a:Lcom/nd/commplatform/d/c/en;

    iget v1, p0, Lcom/nd/commplatform/d/c/en$b;->b:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/en;->a(Lcom/nd/commplatform/d/c/en;I)Z

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/nd/commplatform/d/c/en$b;->a:Lcom/nd/commplatform/d/c/en;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/en;->b(Lcom/nd/commplatform/d/c/en;)Lcom/nd/commplatform/d/c/eh;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/nd/commplatform/d/c/eh;->b(Ljava/util/List;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/en$b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_6

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en$b;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en$b;->a:Lcom/nd/commplatform/d/c/en;

    iget v1, p0, Lcom/nd/commplatform/d/c/en$b;->b:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/en;->a(Lcom/nd/commplatform/d/c/en;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en$b;->a:Lcom/nd/commplatform/d/c/en;

    invoke-static {v0, v4}, Lcom/nd/commplatform/d/c/en;->a(Lcom/nd/commplatform/d/c/en;Z)V

    goto :goto_0

    :cond_6
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserInfo;->getUin()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/nd/commplatform/d/c/en$b;->a:Lcom/nd/commplatform/d/c/en;

    iget v1, p0, Lcom/nd/commplatform/d/c/en$b;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/en;->a(Lcom/nd/commplatform/d/c/en;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en$b;->a:Lcom/nd/commplatform/d/c/en;

    invoke-static {v0, v4}, Lcom/nd/commplatform/d/c/en;->a(Lcom/nd/commplatform/d/c/en;Z)V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 7

    const/4 v2, 0x1

    new-instance v0, Lcom/nd/commplatform/d/c/w;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/w;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/en$b;->c:Ljava/util/List;

    iget-object v5, p0, Lcom/nd/commplatform/d/c/en$b;->d:Landroid/content/Context;

    move v3, v2

    move v4, v2

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/w;->a(Ljava/util/List;ZZZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/en$b;->a(ILjava/util/List;)V

    return-void
.end method
