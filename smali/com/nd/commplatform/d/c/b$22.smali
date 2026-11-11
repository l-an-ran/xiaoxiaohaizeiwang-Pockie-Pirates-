.class final Lcom/nd/commplatform/d/c/b$22;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b;->a(Lcom/nd/commplatform/entry/NdNewAppVersionInfo;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/entry/NdNewAppVersionInfo;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/nd/commplatform/NdCallbackListener;

.field final synthetic d:Lcom/nd/commplatform/d/c/b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/entry/NdNewAppVersionInfo;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$22;->d:Lcom/nd/commplatform/d/c/b;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/b$22;->a:Lcom/nd/commplatform/entry/NdNewAppVersionInfo;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/b$22;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/nd/commplatform/d/c/b$22;->c:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$22;->a:Lcom/nd/commplatform/entry/NdNewAppVersionInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getNewVersionUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$22;->a:Lcom/nd/commplatform/entry/NdNewAppVersionInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/b$22;->a:Lcom/nd/commplatform/entry/NdNewAppVersionInfo;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getNewVersion()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/b$22;->a:Lcom/nd/commplatform/entry/NdNewAppVersionInfo;

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getSoftSize()I

    move-result v3

    iget-object v4, p0, Lcom/nd/commplatform/d/c/b$22;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nd/commplatform/d/c/pf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$22;->c:Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    return-void
.end method
