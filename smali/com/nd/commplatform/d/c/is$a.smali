.class Lcom/nd/commplatform/d/c/is$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/is;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/is;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/is;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/is$a;->a:Lcom/nd/commplatform/d/c/is;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/is;Lcom/nd/commplatform/d/c/is$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/is$a;-><init>(Lcom/nd/commplatform/d/c/is;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/is$a;->a:Lcom/nd/commplatform/d/c/is;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/is$a;->a:Lcom/nd/commplatform/d/c/is;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/is;->a(Lcom/nd/commplatform/d/c/is;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/is;->a(Lcom/nd/commplatform/d/c/is;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/is$a;->a:Lcom/nd/commplatform/d/c/is;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/is;->c(Lcom/nd/commplatform/d/c/is;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/is$a;->a:Lcom/nd/commplatform/d/c/is;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/is;->d(Lcom/nd/commplatform/d/c/is;)V

    goto :goto_0
.end method
