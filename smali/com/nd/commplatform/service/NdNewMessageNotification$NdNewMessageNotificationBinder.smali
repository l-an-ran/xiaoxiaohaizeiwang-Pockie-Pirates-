.class public Lcom/nd/commplatform/service/NdNewMessageNotification$NdNewMessageNotificationBinder;
.super Landroid/os/Binder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/service/NdNewMessageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NdNewMessageNotificationBinder"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/service/NdNewMessageNotification;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/service/NdNewMessageNotification;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/service/NdNewMessageNotification$NdNewMessageNotificationBinder;->a:Lcom/nd/commplatform/service/NdNewMessageNotification;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/nd/commplatform/service/NdNewMessageNotification;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification$NdNewMessageNotificationBinder;->a:Lcom/nd/commplatform/service/NdNewMessageNotification;

    return-object v0
.end method
