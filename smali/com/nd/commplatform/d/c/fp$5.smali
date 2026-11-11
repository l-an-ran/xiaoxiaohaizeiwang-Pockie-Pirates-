.class final Lcom/nd/commplatform/d/c/fp$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fp;->a(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

.field final synthetic b:Lcom/nd/commplatform/d/c/fp;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fp;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fp$5;->b:Lcom/nd/commplatform/d/c/fp;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/fp$5;->a:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$5;->b:Lcom/nd/commplatform/d/c/fp;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp$5;->a:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/fp;->a(Lcom/nd/commplatform/d/c/fp;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    return-void
.end method
