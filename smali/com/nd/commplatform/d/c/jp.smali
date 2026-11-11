.class public final Lcom/nd/commplatform/d/c/jp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/service/NdNewMessageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/service/NdNewMessageNotification;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/service/NdNewMessageNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/jp;->a:Lcom/nd/commplatform/service/NdNewMessageNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jp;->a:Lcom/nd/commplatform/service/NdNewMessageNotification;

    invoke-static {v0}, Lcom/nd/commplatform/service/NdNewMessageNotification;->g(Lcom/nd/commplatform/service/NdNewMessageNotification;)V

    return-void
.end method
