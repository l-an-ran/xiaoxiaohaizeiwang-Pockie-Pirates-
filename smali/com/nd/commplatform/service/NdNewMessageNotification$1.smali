.class final Lcom/nd/commplatform/service/NdNewMessageNotification$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/service/NdNewMessageNotification;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/service/NdNewMessageNotification;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/service/NdNewMessageNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/service/NdNewMessageNotification$1;->a:Lcom/nd/commplatform/service/NdNewMessageNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification$1;->a:Lcom/nd/commplatform/service/NdNewMessageNotification;

    invoke-static {v0}, Lcom/nd/commplatform/service/NdNewMessageNotification;->a(Lcom/nd/commplatform/service/NdNewMessageNotification;)V

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification$1;->a:Lcom/nd/commplatform/service/NdNewMessageNotification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/service/NdNewMessageNotification;->a(Lcom/nd/commplatform/service/NdNewMessageNotification;I)I

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/service/NdNewMessageNotification$1;->a:Lcom/nd/commplatform/service/NdNewMessageNotification;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;)I

    return-void
.end method
