.class public Lcom/nd/commplatform/d/c/bz;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = -0x1

.field public static final c:I = -0x2

.field public static final d:I = -0x3

.field private static e:Lcom/nd/commplatform/entry/NdBuyInfo;

.field private static f:I

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/d/c/bz;->e:Lcom/nd/commplatform/entry/NdBuyInfo;

    sput v1, Lcom/nd/commplatform/d/c/bz;->f:I

    sput v1, Lcom/nd/commplatform/d/c/bz;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/nd/commplatform/entry/NdBuyInfo;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/bz;->e:Lcom/nd/commplatform/entry/NdBuyInfo;

    return-object v0
.end method

.method public static a(Lcom/nd/commplatform/entry/NdBuyInfo;)Lcom/nd/commplatform/entry/NdBuyInfo;
    .locals 1

    sput-object p0, Lcom/nd/commplatform/d/c/bz;->e:Lcom/nd/commplatform/entry/NdBuyInfo;

    sget-object v0, Lcom/nd/commplatform/d/c/bz;->e:Lcom/nd/commplatform/entry/NdBuyInfo;

    return-object v0
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/nd/commplatform/d/c/bz;->g:I

    return-void
.end method

.method public static a(ILcom/nd/commplatform/entry/NdBuyInfo;)V
    .locals 3

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SNSBalanceNoEnoughView_payAfterRecharge"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sput p0, Lcom/nd/commplatform/d/c/bz;->f:I

    sput-object p1, Lcom/nd/commplatform/d/c/bz;->e:Lcom/nd/commplatform/entry/NdBuyInfo;

    const/4 v0, -0x1

    sput v0, Lcom/nd/commplatform/d/c/bz;->g:I

    return-void
.end method

.method public static b()Z
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/bz;->f:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()V
    .locals 2

    invoke-static {}, Lcom/nd/commplatform/d/c/bz;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/nd/commplatform/d/c/bz;->f:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->d(ILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0
.end method

.method public static d()I
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/bz;->g:I

    return v0
.end method

.method public static e()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/d/c/bz;->e:Lcom/nd/commplatform/entry/NdBuyInfo;

    sput v1, Lcom/nd/commplatform/d/c/bz;->f:I

    sput v1, Lcom/nd/commplatform/d/c/bz;->g:I

    return-void
.end method
