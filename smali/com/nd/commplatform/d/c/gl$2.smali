.class final Lcom/nd/commplatform/d/c/gl$2;
.super Lcom/nd/commplatform/d/c/ho;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/gl;->b(Landroid/view/View;)Lcom/nd/commplatform/d/c/hh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/d/c/ho",
        "<",
        "Lcom/nd/commplatform/d/c/gf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/gl;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/gl;Lcom/nd/commplatform/widget/NdMessageListItem;Lcom/nd/commplatform/d/c/hn;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gl$2;->a:Lcom/nd/commplatform/d/c/gl;

    invoke-direct {p0, p2, p3}, Lcom/nd/commplatform/d/c/ho;-><init>(Lcom/nd/commplatform/widget/NdMessageListItem;Lcom/nd/commplatform/d/c/hn;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/gl$2;)Lcom/nd/commplatform/d/c/hn;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gl$2;->c:Lcom/nd/commplatform/d/c/hn;

    return-object v0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/gl$2;)Lcom/nd/commplatform/widget/NdMessageListItem;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gl$2;->b:Lcom/nd/commplatform/widget/NdMessageListItem;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gl$2;->b:Lcom/nd/commplatform/widget/NdMessageListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdMessageListItem;->d:Landroid/widget/ImageView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gl$2;->a()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v2, ""

    :goto_1
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/gl$2$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/gl$2$1;-><init>(Lcom/nd/commplatform/d/c/gl$2;)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/gl$2;->d:Lcom/nd/commplatform/NdCallbackListener;

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gl$2;->b:Lcom/nd/commplatform/widget/NdMessageListItem;

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdMessageListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/gl$2;->d:Lcom/nd/commplatform/NdCallbackListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->b(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    goto :goto_0

    :cond_1
    move-object v2, p2

    goto :goto_1
.end method
