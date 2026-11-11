.class final Lcom/nd/commplatform/d/c/b$19$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b$19;->a(ILcom/nd/commplatform/entry/NdNewAppVersionInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/entry/NdNewAppVersionInfo;

.field final synthetic b:Lcom/nd/commplatform/d/c/b$19;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b$19;Lcom/nd/commplatform/entry/NdNewAppVersionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$19$2;->b:Lcom/nd/commplatform/d/c/b$19;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/b$19$2;->a:Lcom/nd/commplatform/entry/NdNewAppVersionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$19$2;->b:Lcom/nd/commplatform/d/c/b$19;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/b$19;->c:Lcom/nd/commplatform/d/c/b;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$19$2;->a:Lcom/nd/commplatform/entry/NdNewAppVersionInfo;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/b$19$2;->b:Lcom/nd/commplatform/d/c/b$19;

    iget-object v2, v2, Lcom/nd/commplatform/d/c/b$19;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/b$19$2;->b:Lcom/nd/commplatform/d/c/b$19;

    iget-object v3, v3, Lcom/nd/commplatform/d/c/b$19;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/b;->a(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/entry/NdNewAppVersionInfo;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method
