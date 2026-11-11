.class final Lcom/nd/commplatform/d/c/b$10$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b$10;->a(ILcom/nd/commplatform/entry/NdVirtualPayResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/entry/NdVirtualPayResult;

.field final synthetic b:Lcom/nd/commplatform/d/c/b$10;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b$10;Lcom/nd/commplatform/entry/NdVirtualPayResult;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$10$3;->b:Lcom/nd/commplatform/d/c/b$10;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/b$10$3;->a:Lcom/nd/commplatform/entry/NdVirtualPayResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$10$3;->b:Lcom/nd/commplatform/d/c/b$10;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/b$10;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$10$3;->b:Lcom/nd/commplatform/d/c/b$10;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/b$10;->b:Lcom/nd/commplatform/NdCallbackListener;

    const/16 v2, -0x4654

    iget-object v3, p0, Lcom/nd/commplatform/d/c/b$10$3;->a:Lcom/nd/commplatform/entry/NdVirtualPayResult;

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;ILcom/nd/commplatform/entry/NdVirtualPayResult;IZ)V

    return-void
.end method
