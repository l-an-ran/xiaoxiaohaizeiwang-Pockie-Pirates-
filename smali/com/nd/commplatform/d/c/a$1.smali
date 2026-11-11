.class Lcom/nd/commplatform/d/c/a$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/a;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/a;

.field private final synthetic b:Lcom/nd/commplatform/entry/NdLoginConfig;

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Lcom/nd/commplatform/NdCallbackListener;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/a;Lcom/nd/commplatform/entry/NdLoginConfig;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/a$1;->a:Lcom/nd/commplatform/d/c/a;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/a$1;->b:Lcom/nd/commplatform/entry/NdLoginConfig;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/a$1;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/nd/commplatform/d/c/a$1;->d:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 4
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/a$1;->a:Lcom/nd/commplatform/d/c/a;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/a$1;->b:Lcom/nd/commplatform/entry/NdLoginConfig;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/a$1;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/a$1;->d:Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/a;->a(Lcom/nd/commplatform/d/c/a;Lcom/nd/commplatform/entry/NdLoginConfig;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/a$1;->d:Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0
.end method
