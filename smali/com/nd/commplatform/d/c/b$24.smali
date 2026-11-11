.class final Lcom/nd/commplatform/d/c/b$24;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b;->a(Lcom/nd/commplatform/entry/NdNewAppVersionInfo;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/NdCallbackListener;

.field final synthetic b:Lcom/nd/commplatform/d/c/b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$24;->b:Lcom/nd/commplatform/d/c/b;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/b$24;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$24;->a:Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    return-void
.end method
