.class public Lcom/nd/commplatform/d/c/ny;
.super Lcom/nd/commplatform/d/c/oa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/ny$a;
    }
.end annotation


# static fields
.field private static a:Lcom/nd/commplatform/d/c/ny;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/d/c/ny;->a:Lcom/nd/commplatform/d/c/ny;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/oa;-><init>()V

    return-void
.end method

.method public static a()Lcom/nd/commplatform/d/c/ny;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/ny;->a:Lcom/nd/commplatform/d/c/ny;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/ny;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ny;-><init>()V

    sput-object v0, Lcom/nd/commplatform/d/c/ny;->a:Lcom/nd/commplatform/d/c/ny;

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/ny;->a:Lcom/nd/commplatform/d/c/ny;

    return-object v0
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/ny;->b(Lcom/nd/commplatform/d/c/oa$a;ILcom/nd/commplatform/entry/NdIcon;)V

    return-void
.end method

.method protected a(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/js;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/js;-><init>()V

    new-instance v1, Lcom/nd/commplatform/d/c/ny$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/nd/commplatform/d/c/ny$a;-><init>(Lcom/nd/commplatform/d/c/ny;Ljava/lang/String;I)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p3, v1}, Lcom/nd/commplatform/d/c/js;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    const-string v0, "nd2_app_icon_default.png"

    return-object v0
.end method
