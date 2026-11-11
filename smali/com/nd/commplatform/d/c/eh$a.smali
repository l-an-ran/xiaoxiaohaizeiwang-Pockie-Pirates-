.class Lcom/nd/commplatform/d/c/eh$a;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/eh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdUserInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x2


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/eh;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/d/c/eh;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/nd/commplatform/d/c/eh$a;->a:Lcom/nd/commplatform/d/c/eh;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/d/c/eh$a;->g:I

    iput-object p2, p0, Lcom/nd/commplatform/d/c/eh$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/eh$a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eh$a;->destroy()V

    return-void
.end method

.method public a(ILcom/nd/commplatform/entry/NdUserInfo;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iput v0, p0, Lcom/nd/commplatform/d/c/eh$a;->g:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh$a;->a:Lcom/nd/commplatform/d/c/eh;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/eh;->a(Lcom/nd/commplatform/d/c/eh;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    iput v0, p0, Lcom/nd/commplatform/d/c/eh$a;->g:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh$a;->a:Lcom/nd/commplatform/d/c/eh;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/eh;->a(Lcom/nd/commplatform/d/c/eh;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh$a;->a:Lcom/nd/commplatform/d/c/eh;

    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/eh;->a(Lcom/nd/commplatform/d/c/eh;Lcom/nd/commplatform/entry/NdUserInfo;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/nd/commplatform/d/c/eh$a;->g:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh$a;->a:Lcom/nd/commplatform/d/c/eh;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/eh;->b(Lcom/nd/commplatform/d/c/eh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh$a;->a:Lcom/nd/commplatform/d/c/eh;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/eh;->a(Lcom/nd/commplatform/d/c/eh;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh$a;->a:Lcom/nd/commplatform/d/c/eh;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/eh;->c(Lcom/nd/commplatform/d/c/eh;)Lcom/nd/commplatform/d/c/en;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/en;->a(I)V

    goto :goto_0
.end method

.method public b()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v0, 0x2

    iget v1, p0, Lcom/nd/commplatform/d/c/eh$a;->g:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nd/commplatform/d/c/eh$a;->g:I

    if-ne v7, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/nd/commplatform/d/c/eh$a;->g:I

    if-nez v0, :cond_2

    iput v7, p0, Lcom/nd/commplatform/d/c/eh$a;->g:I

    :cond_2
    new-instance v0, Lcom/nd/commplatform/d/c/jz;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/jz;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/eh$a;->b:Ljava/lang/String;

    const-string v2, "1"

    const-string v3, "1"

    const-string v4, "1"

    iget-object v5, p0, Lcom/nd/commplatform/d/c/eh$a;->c:Landroid/content/Context;

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/jz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    move v0, v7

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/eh$a;->a(ILcom/nd/commplatform/entry/NdUserInfo;)V

    return-void
.end method
