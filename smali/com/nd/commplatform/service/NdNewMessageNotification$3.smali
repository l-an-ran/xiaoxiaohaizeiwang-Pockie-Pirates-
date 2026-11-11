.class final Lcom/nd/commplatform/service/NdNewMessageNotification$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/np$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/service/NdNewMessageNotification;->e()V
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

    iput-object p1, p0, Lcom/nd/commplatform/service/NdNewMessageNotification$3;->a:Lcom/nd/commplatform/service/NdNewMessageNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/service/NdNewMessageNotification;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification$3;->a:Lcom/nd/commplatform/service/NdNewMessageNotification;

    invoke-static {v0}, Lcom/nd/commplatform/service/NdNewMessageNotification;->c(Lcom/nd/commplatform/service/NdNewMessageNotification;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
