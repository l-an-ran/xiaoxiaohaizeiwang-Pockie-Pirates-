.class final Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService$1;->g:Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;

    iput-object p3, p0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService$1;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService$1;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService$1;->c:Ljava/lang/String;

    iput p6, p0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService$1;->d:I

    iput p7, p0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService$1;->e:I

    iput p8, p0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService$1;->f:I

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    new-instance v0, Lcom/nd/commplatform/d/c/pe;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/pe;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService$1;->c:Ljava/lang/String;

    iget v4, p0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService$1;->d:I

    iget v5, p0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService$1;->e:I

    iget v6, p0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService$1;->f:I

    iget-object v7, p0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService$1;->g:Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;

    invoke-virtual/range {v0 .. v7}, Lcom/nd/commplatform/d/c/pe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/app/Service;)I

    move-result v0

    sget-object v1, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;->b:Ljava/util/HashMap;

    iget v2, p0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService$1;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
