.class public abstract Lcom/nd/commplatform/d/c/or;
.super Lcom/nd/commplatform/d/c/oa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/or$a;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/oa;-><init>()V

    return-void
.end method


# virtual methods
.method a(ILcom/nd/commplatform/entry/NdIcon;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nd/commplatform/entry/NdIcon;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/nd/commplatform/NdCallbackListener;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3, p1, p2}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method a(Lcom/nd/commplatform/d/c/oa$a;ILcom/nd/commplatform/entry/NdIcon;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/or;->b(Lcom/nd/commplatform/d/c/oa$a;ILcom/nd/commplatform/entry/NdIcon;)V

    return-void
.end method

.method protected a(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 7

    new-instance v0, Lcom/nd/commplatform/d/c/ac;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ac;-><init>()V

    new-instance v6, Lcom/nd/commplatform/d/c/or$a;

    invoke-direct {v6, p0, p1, p2}, Lcom/nd/commplatform/d/c/or$a;-><init>(Lcom/nd/commplatform/d/c/or;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/or;->d()I

    move-result v1

    const/4 v3, 0x0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/ac;->a(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    const-string v0, "nd2_app_icon_default.png"

    return-object v0
.end method

.method abstract d()I
.end method
