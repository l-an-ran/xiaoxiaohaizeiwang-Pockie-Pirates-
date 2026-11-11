.class public Lcom/nd/commplatform/d/c/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/nd/commplatform/d/c/b;


# instance fields
.field private b:Lcom/nd/commplatform/d/c/np;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/d/c/b;->a:Lcom/nd/commplatform/d/c/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/nd/commplatform/d/c/b;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/b;->a:Lcom/nd/commplatform/d/c/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/b;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/b;-><init>()V

    sput-object v0, Lcom/nd/commplatform/d/c/b;->a:Lcom/nd/commplatform/d/c/b;

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/b;->a:Lcom/nd/commplatform/d/c/b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/nd/commplatform/d/c/b;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ILandroid/content/Context;Z)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/b$16;

    invoke-direct {v0, p0, p2, p3}, Lcom/nd/commplatform/d/c/b$16;-><init>(Lcom/nd/commplatform/d/c/b;Landroid/content/Context;Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/nd/commplatform/d/c/a;->f(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;ILcom/nd/commplatform/entry/NdVirtualPayResult;IZ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/nd/commplatform/d/c/b;->b(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;ILcom/nd/commplatform/entry/NdVirtualPayResult;IZ)V

    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 2

    invoke-static {}, Lcom/nd/commplatform/d/c/ol;->a()V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->k()V

    const/4 v0, 0x1

    const/16 v1, -0xc

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    new-instance v0, Lcom/nd/commplatform/d/c/b$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/nd/commplatform/d/c/b$18;-><init>(Lcom/nd/commplatform/d/c/b;Landroid/content/Context;Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/nd/commplatform/d/c/a;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/b;ILandroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->a(ILandroid/content/Context;Z)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/b;ILcom/nd/commplatform/entry/NdBaseProductInfo;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/nd/commplatform/d/c/b;->b(ILcom/nd/commplatform/entry/NdBaseProductInfo;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/entry/NdNewAppVersionInfo;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->a(Lcom/nd/commplatform/entry/NdNewAppVersionInfo;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method private a(Lcom/nd/commplatform/entry/NdNewAppVersionInfo;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdNewAppVersionInfo;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getNewVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getSoftSize()I

    move-result v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/oh;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getUpdateType()I

    move-result v0

    if-ne v0, v6, :cond_4

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->cC:I

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-static {p2}, Lcom/nd/commplatform/d/c/oh;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getSoftSize()I

    move-result v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/oh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getSoftSize()I

    move-result v0

    if-gez v0, :cond_0

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->kp:I

    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getSoftSize()I

    move-result v4

    if-gez v4, :cond_3

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ki:I

    new-instance v1, Lcom/nd/commplatform/d/c/b$20;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b$20;-><init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/entry/NdNewAppVersionInfo;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/nd/commplatform/d/c/b$21;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/b$21;-><init>(Lcom/nd/commplatform/d/c/b;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_3
    return-void

    :cond_0
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ko:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getSoftSize()I

    move-result v0

    if-gez v0, :cond_2

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->kr:I

    :goto_4
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->kq:I

    goto :goto_4

    :cond_3
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getUpdateType()I

    move-result v0

    if-ne v0, v7, :cond_9

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->kj:I

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-static {p2}, Lcom/nd/commplatform/d/c/oh;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getSoftSize()I

    move-result v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/oh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getSoftSize()I

    move-result v0

    if-gez v0, :cond_5

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->kt:I

    :goto_5
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getSoftSize()I

    move-result v4

    if-gez v4, :cond_8

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ki:I

    new-instance v1, Lcom/nd/commplatform/d/c/b$22;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b$22;-><init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/entry/NdNewAppVersionInfo;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->bG:I

    new-instance v1, Lcom/nd/commplatform/d/c/b$23;

    invoke-direct {v1, p0, p3}, Lcom/nd/commplatform/d/c/b$23;-><init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/NdCallbackListener;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/nd/commplatform/d/c/b$24;

    invoke-direct {v0, p0, p3}, Lcom/nd/commplatform/d/c/b$24;-><init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/NdCallbackListener;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    :cond_5
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ks:I

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getSoftSize()I

    move-result v0

    if-gez v0, :cond_7

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->kv:I

    :goto_8
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ku:I

    goto :goto_8

    :cond_8
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v5, v0}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto/16 :goto_3
.end method

.method private a(Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;Lcom/nd/commplatform/entry/NdBuyInfo;Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;Z)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, -0x1

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/of;->a(Z)V

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/of;->a(Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;)V

    invoke-static {p4}, Lcom/nd/commplatform/NdMiscCallbackListener;->a(Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/nd/commplatform/activity/SNSControlCenterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "productInfo"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "nd_cooOrderSerial"

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdBuyInfo;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdBuyInfo;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/d/c/a;->c(Ljava/lang/String;)V

    sget-object v1, Lcom/nd/commplatform/d/c/bs;->v:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductPrice()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdBuyInfo;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/nd/commplatform/d/c/bs;->v:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductPrice()D

    move-result-wide v3

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdBuyInfo;->getCount()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    if-eqz p5, :cond_0

    const-string v1, "SNSBalanceNoEnoughView_payAfterRecharge"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    const/4 v1, -0x3

    invoke-static {v1}, Lcom/nd/commplatform/d/c/bz;->a(I)V

    const/16 v1, 0x45a

    invoke-static {p3, v0, v7, v1}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;Landroid/content/Intent;II)V

    :goto_1
    return-void

    :cond_0
    const/16 v1, -0x4653

    invoke-static {v8, v1}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    const-string v1, "SNSBalanceNoEnoughView_payAfterRecharge"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v1, -0x4654

    invoke-static {v8, v1}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    const-string v1, "SNSBalanceNoEnoughView_payAfterRecharge"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const/16 v1, 0x4b2

    invoke-static {p3, v0, v7, v1}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;Landroid/content/Intent;II)V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x5f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(ILcom/nd/commplatform/entry/NdBaseProductInfo;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nd/commplatform/entry/NdBaseProductInfo;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdVirtualPayResult;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Lcom/nd/commplatform/d/c/b$10;

    invoke-direct {v5, p0, p4, p5, p1}, Lcom/nd/commplatform/d/c/b$10;-><init>(Lcom/nd/commplatform/d/c/b;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;I)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdBaseProductInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdBaseProductInfo;->getDesc()Ljava/lang/String;

    move-result-object v3

    move v2, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->b(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;ILcom/nd/commplatform/entry/NdVirtualPayResult;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdVirtualPayResult;",
            ">;I",
            "Lcom/nd/commplatform/entry/NdVirtualPayResult;",
            "IZ)V"
        }
    .end annotation

    if-lez p4, :cond_0

    if-eqz p5, :cond_2

    invoke-static {p1, p0, p4}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/nd/commplatform/NdCallbackListener;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2, p3}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {p0, p4}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/b;ILcom/nd/commplatform/entry/NdBaseProductInfo;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/nd/commplatform/d/c/b;->c(ILcom/nd/commplatform/entry/NdBaseProductInfo;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method private b(Landroid/content/Context;ZLcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)Z
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/b$17;

    invoke-direct {v0, p0, p1, p2}, Lcom/nd/commplatform/d/c/b$17;-><init>(Lcom/nd/commplatform/d/c/b;Landroid/content/Context;Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p3}, Lcom/nd/commplatform/d/c/a;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->m()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    if-gt p1, v6, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->p()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/nd/commplatform/d/c/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-gt p1, v6, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$d;->S:I

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$d;->T:I

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    const-string v2, "ndcommplatform/icon/portrait"

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, "/sdcard"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ndcommplatform/icon/portrait"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/nd/commplatform/d/c/b;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(ILcom/nd/commplatform/entry/NdBaseProductInfo;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nd/commplatform/entry/NdBaseProductInfo;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdVirtualPayResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/nd/commplatform/d/c/b;->d(ILcom/nd/commplatform/entry/NdBaseProductInfo;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method private d(ILcom/nd/commplatform/entry/NdBaseProductInfo;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nd/commplatform/entry/NdBaseProductInfo;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdVirtualPayResult;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/b$11;

    move-object v1, p0

    move-object v2, p5

    move v3, p3

    move-object v4, p2

    move v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/nd/commplatform/d/c/b$11;-><init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/NdCallbackListener;ILcom/nd/commplatform/entry/NdBaseProductInfo;ILandroid/content/Context;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdBaseProductInfo;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p4, v2, v0}, Lcom/nd/commplatform/d/c/a;->b(Landroid/content/Context;Ljava/lang/String;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/nd/commplatform/d/c/ng;->a()Lcom/nd/commplatform/d/c/ng;

    invoke-static {p1}, Lcom/nd/commplatform/d/c/ng;->a(Landroid/content/Context;)V

    sget-boolean v0, Lcom/nd/commplatform/d/c/bs;->K:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v0, "/sdcard"

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "debugUrl.xml"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_9

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-eq v4, v6, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    check-cast v0, Lorg/w3c/dom/Element;

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ActAppCenterUrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    sput-object v0, Lcom/nd/commplatform/d/c/oe;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    const-string v5, "ActBBSUrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    sput-object v0, Lcom/nd/commplatform/d/c/oe;->h:Ljava/lang/String;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    :try_start_2
    const-string v5, "ActSecretSetUrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    sput-object v0, Lcom/nd/commplatform/d/c/oe;->i:Ljava/lang/String;
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    :try_start_3
    const-string v5, "ActSecretFindUrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    sput-object v0, Lcom/nd/commplatform/d/c/oe;->j:Ljava/lang/String;

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/nd/commplatform/d/c/ng;->a()Lcom/nd/commplatform/d/c/ng;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ng;->a(Z)V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method

.method public static m()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static p()Ljava/lang/String;
    .locals 1

    const-string v0, "eeeeeeee_1_ffffffffffffffffffffffffffffffff"

    return-object v0
.end method

.method private static q()Ljava/lang/String;
    .locals 1

    const-string v0, "eeeeeeee_2_ffffffffffffffffffffffffffffffff"

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/content/Context;I)I
    .locals 1

    invoke-static {p2, p3}, Lcom/nd/commplatform/d/c/es;->a(Landroid/content/Context;I)V

    const/4 v0, 0x0

    return v0
.end method

.method public a(ILcom/nd/commplatform/entry/NdAppInfo;)I
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/nd/commplatform/entry/NdAppInfo;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/nd/commplatform/entry/NdAppInfo;->ctx:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/b;->d(Landroid/content/Context;)V

    iget-object v0, p2, Lcom/nd/commplatform/entry/NdAppInfo;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jo;->a(Landroid/content/Context;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/nd/commplatform/entry/NdAppInfo;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/nd/commplatform/entry/NdAppInfo;->appId:I

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/nd/commplatform/entry/NdAppInfo;->appKey:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, -0x5

    :goto_0
    return v0

    :cond_2
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget v1, p2, Lcom/nd/commplatform/entry/NdAppInfo;->appId:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/a;->a(I)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p2, Lcom/nd/commplatform/entry/NdAppInfo;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p2, Lcom/nd/commplatform/entry/NdAppInfo;->ctx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/a;->a(Landroid/content/Context;)V

    iget-object v0, p2, Lcom/nd/commplatform/entry/NdAppInfo;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/b;->c:Landroid/content/Context;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xb

    :goto_0
    return v0

    :cond_0
    invoke-static {p3}, Lcom/nd/commplatform/d/c/id;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILjava/util/HashMap;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener;",
            ")I"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/a;->a(ILjava/util/HashMap;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xb

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;I)I
    .locals 2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xb

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->b()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/nd/commplatform/d/c/fd;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)I
    .locals 3

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/nd/commplatform/NdMiscCallbackListener;->a(Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    :cond_0
    const/4 v0, 0x1

    const/16 v1, -0xc

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    const/4 v0, -0x1

    const/16 v1, 0x3f7

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, -0xb

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, -0x5

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/nd/commplatform/d/c/b;->b(ILandroid/content/Context;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/nd/commplatform/d/c/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2, p1}, Lcom/nd/commplatform/d/c/ea;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-static {p2, p1}, Lcom/nd/commplatform/d/c/dr;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xb

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/nd/commplatform/d/c/fi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->n()Lcom/nd/commplatform/entry/NdLoginStatus;

    move-result-object v1

    sget-object v2, Lcom/nd/commplatform/entry/NdLoginStatus;->GuestLogin:Lcom/nd/commplatform/entry/NdLoginStatus;

    if-eq v1, v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/nd/commplatform/NdMiscCallbackListener;->a(Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    :cond_1
    const/4 v1, 0x1

    const/16 v2, -0xc

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    invoke-static {p1, p2, v0}, Lcom/nd/commplatform/d/c/n;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/nd/commplatform/entry/NdPagination;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdAppAchieveInfo;",
            ">;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xb

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->b()I

    move-result v2

    move-object v1, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Lcom/nd/commplatform/entry/NdPagination;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/nd/commplatform/entry/NdPagination;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdRankPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdUserRankInfo;",
            ">;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xb

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    move-object v1, p6

    move-object v2, p3

    move-object v3, p2

    move v4, p5

    move v5, p4

    move-object v6, p1

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/nd/commplatform/d/c/a;->a(Lcom/nd/commplatform/entry/NdPagination;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/nd/commplatform/entry/NdBuyInfo;Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/nd/commplatform/d/c/b;->a(Lcom/nd/commplatform/entry/NdBuyInfo;Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;Z)I

    move-result v0

    return v0
.end method

.method public a(Lcom/nd/commplatform/entry/NdBuyInfo;Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nd/commplatform/d/c/b;->a(Lcom/nd/commplatform/entry/NdBuyInfo;Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;Z)I

    move-result v0

    return v0
.end method

.method public a(Lcom/nd/commplatform/entry/NdBuyInfo;Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;Z)I
    .locals 9

    const-wide v7, 0x3f847ae140000000L    # 0.009999999776482582

    const/4 v0, -0x5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductPrice()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductOrginalPrice()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    invoke-virtual {p1, v1, v2}, Lcom/nd/commplatform/entry/NdBuyInfo;->setProductOrginalPrice(D)V

    :cond_2
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductOrginalPrice()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdBuyInfo;->getCount()I

    move-result v5

    cmpg-double v6, v1, v7

    if-ltz v6, :cond_0

    cmpg-double v3, v3, v7

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    if-lt v5, v3, :cond_0

    int-to-double v3, v5

    mul-double/2addr v1, v3

    const-wide v3, 0x412e848000000000L    # 1000000.0

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/b$2;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nd/commplatform/d/c/b$2;-><init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;Landroid/content/Context;Lcom/nd/commplatform/entry/NdBuyInfo;Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/nd/commplatform/d/c/a;->i(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/nd/commplatform/entry/NdSetEnum;Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xb

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/nd/commplatform/entry/NdSetEnum;->MORE:Lcom/nd/commplatform/entry/NdSetEnum;

    if-ne p1, v0, :cond_3

    :cond_1
    invoke-static {p2}, Lcom/nd/commplatform/d/c/hz;->a(Landroid/content/Context;)V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/nd/commplatform/entry/NdSetEnum;->PASS_MANAGE:Lcom/nd/commplatform/entry/NdSetEnum;

    if-ne p1, v0, :cond_4

    invoke-static {p2}, Lcom/nd/commplatform/d/c/ic;->a(Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/nd/commplatform/entry/NdSetEnum;->RECHARGE:Lcom/nd/commplatform/entry/NdSetEnum;

    if-ne p1, v0, :cond_5

    invoke-static {p2}, Lcom/nd/commplatform/d/c/id;->a(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/nd/commplatform/entry/NdSetEnum;->RECORDS:Lcom/nd/commplatform/entry/NdSetEnum;

    if-ne p1, v0, :cond_6

    invoke-static {p2}, Lcom/nd/commplatform/d/c/ir;->a(Landroid/content/Context;)V

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/nd/commplatform/entry/NdSetEnum;->SET_PERMISSIONS:Lcom/nd/commplatform/entry/NdSetEnum;

    if-ne p1, v0, :cond_7

    invoke-static {p2}, Lcom/nd/commplatform/d/c/io;->a(Landroid/content/Context;)V

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/nd/commplatform/entry/NdSetEnum;->SET_PERSON_INFO:Lcom/nd/commplatform/entry/NdSetEnum;

    if-ne p1, v0, :cond_8

    invoke-static {p2}, Lcom/nd/commplatform/d/c/ik;->a(Landroid/content/Context;)V

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/nd/commplatform/entry/NdSetEnum;->RECHARGE_RECORDS:Lcom/nd/commplatform/entry/NdSetEnum;

    if-ne p1, v0, :cond_9

    invoke-static {p2}, Lcom/nd/commplatform/d/c/iq;->a(Landroid/content/Context;)V

    goto :goto_1

    :cond_9
    sget-object v0, Lcom/nd/commplatform/entry/NdSetEnum;->CONSUME_RECORDS:Lcom/nd/commplatform/entry/NdSetEnum;

    if-ne p1, v0, :cond_2

    invoke-static {p2}, Lcom/nd/commplatform/d/c/ih;->a(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, -0xb

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p4, :cond_2

    :cond_1
    const/4 v0, -0x5

    goto :goto_0

    :cond_2
    if-gez p2, :cond_3

    move p2, v0

    :cond_3
    invoke-static {p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/ii;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xb

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->b()I

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/nd/commplatform/d/c/fe;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/a;->a(I)V

    return-void
.end method

.method public a(ILandroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/nd/commplatform/d/c/ol;->a()V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/nd/commplatform/d/c/a;->a(Landroid/content/Context;Z)V

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/of;->c()V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/b$25;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/b$25;-><init>(Lcom/nd/commplatform/d/c/b;)V

    invoke-virtual {v0, p2, v1}, Lcom/nd/commplatform/d/c/a;->c(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    :goto_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->k()V

    return-void

    :cond_1
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->l()V

    goto :goto_0
.end method

.method public a(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdCateInfo;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/a;->d(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public a(ILcom/nd/commplatform/entry/NdBaseProductInfo;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nd/commplatform/entry/NdBaseProductInfo;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdVirtualPayResult;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/b$9;

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/nd/commplatform/d/c/b$9;-><init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/NdCallbackListener;ILcom/nd/commplatform/entry/NdBaseProductInfo;ILandroid/content/Context;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Lcom/nd/commplatform/d/c/a;->h(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public a(ILcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdPurchasedProductInfo;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/a;->c(ILcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public a(ILjava/lang/String;IILandroid/content/Context;)V
    .locals 0

    invoke-static {p5, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/ew;->a(Landroid/content/Context;ILjava/lang/String;II)V

    return-void
.end method

.method public a(ILjava/lang/String;IILcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdProductInfo;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/nd/commplatform/d/c/a;->a(ILjava/lang/String;IILcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public a(ILjava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdProductUseResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/a;->b(ILjava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public a(ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdProductOwnershipInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/a;->b(ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public a(Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdAppPromotion;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/a;->a(Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Lcom/nd/commplatform/d/c/b$12;

    invoke-direct {p2, p0}, Lcom/nd/commplatform/d/c/b$12;-><init>(Lcom/nd/commplatform/d/c/b;)V

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/nd/commplatform/d/c/b$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/nd/commplatform/d/c/b$19;-><init>(Lcom/nd/commplatform/d/c/b;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/nd/commplatform/d/c/a;->k(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p3, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :cond_0
    invoke-static {p2, v0, p1}, Lcom/nd/commplatform/d/c/fp;->a(Ljava/lang/String;[BLandroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;ZLcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/nd/commplatform/NdMiscCallbackListener;->a(Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/of;->c()V

    invoke-static {p1}, Lcom/nd/commplatform/d/c/nr;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/nd/commplatform/d/c/b$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/nd/commplatform/d/c/b$15;-><init>(Lcom/nd/commplatform/d/c/b;Landroid/content/Context;Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/nd/commplatform/d/c/a;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/a;->e(Landroid/content/Context;)Lcom/nd/commplatform/entry/NdLoginConfig;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdLoginConfig;->isAutoLogin()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->b(Landroid/content/Context;ZLcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;ZLjava/lang/String;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V
    .locals 4

    const/4 v3, 0x1

    const/16 v2, -0xc

    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/nd/commplatform/NdMiscCallbackListener;->a(Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/of;->c()V

    invoke-static {}, Lcom/nd/commplatform/d/c/ol;->a()V

    invoke-static {v3, v2}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    invoke-static {p1, p2, p3}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;ZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/nd/commplatform/d/c/b$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b$1;-><init>(Lcom/nd/commplatform/d/c/b;Landroid/content/Context;ZLjava/lang/String;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/of;->c()V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nd/commplatform/d/c/a;->e(Landroid/content/Context;)Lcom/nd/commplatform/entry/NdLoginConfig;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdLoginConfig;->isAutoLogin()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p4}, Lcom/nd/commplatform/d/c/a;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    invoke-static {}, Lcom/nd/commplatform/d/c/ol;->a()V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->k()V

    invoke-static {v3, v2}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    invoke-static {p1, p2, p3}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/nd/commplatform/NdMiscCallbackListener$OnPlatformBackground;)V
    .locals 0

    sput-object p1, Lcom/nd/commplatform/d/c/oe;->d:Lcom/nd/commplatform/NdMiscCallbackListener$OnPlatformBackground;

    return-void
.end method

.method public a(Lcom/nd/commplatform/NdMiscCallbackListener$OnSessionInvalidListener;)V
    .locals 0

    sput-object p1, Lcom/nd/commplatform/NdMiscCallbackListener;->a:Lcom/nd/commplatform/NdMiscCallbackListener$OnSessionInvalidListener;

    return-void
.end method

.method public a(Lcom/nd/commplatform/NdMiscCallbackListener$OnSwitchAccountListener;)V
    .locals 0

    invoke-static {p1}, Lcom/nd/commplatform/NdMiscCallbackListener;->a(Lcom/nd/commplatform/NdMiscCallbackListener$OnSwitchAccountListener;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdAchieveUnlockInfo;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Lcom/nd/commplatform/d/c/a;->a(Ljava/util/List;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdStrangerUserInfo;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->b()I

    move-result v0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/a;->a(ILcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdUserInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/b$6;

    invoke-direct {v0, p0, p3}, Lcom/nd/commplatform/d/c/b$6;-><init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/NdCallbackListener;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/nd/commplatform/d/c/a;->e(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/entry/NdMsgContent;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdMsgContent;-><init>()V

    invoke-virtual {v0, p2}, Lcom/nd/commplatform/entry/NdMsgContent;->setContent(Ljava/lang/String;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p3, p4}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Lcom/nd/commplatform/entry/NdMsgContent;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/a;->c(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/16 v3, -0x7d4

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->m()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p5, v3, v4}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_3

    const-string v1, "ffffffffffffffffffffffffffffffff"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-static {p4, p2}, Lcom/nd/commplatform/d/c/b;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p5, v3, v4}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p5, v2, v1}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v5, Lcom/nd/commplatform/d/c/b$3;

    invoke-direct {v5, p0, p5, p4, p2}, Lcom/nd/commplatform/d/c/b$3;-><init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    move-object v1, p1

    move-object v2, p3

    move v3, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/b;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const-string v0, "ffffffffffffffffffffffffffffffff"

    const-string v0, "ffffffffffffffffffffffffffffffff"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p5, :cond_0

    new-instance v2, Lcom/nd/commplatform/entry/NdIcon;

    invoke-direct {v2}, Lcom/nd/commplatform/entry/NdIcon;-><init>()V

    invoke-virtual {v2, v1}, Lcom/nd/commplatform/entry/NdIcon;->setCached(Z)V

    invoke-virtual {v2, p2}, Lcom/nd/commplatform/entry/NdIcon;->setCheckSum(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Lcom/nd/commplatform/entry/NdIcon;->setDimension(I)V

    invoke-virtual {v2, p1}, Lcom/nd/commplatform/entry/NdIcon;->setId(Ljava/lang/String;)V

    if-gt p3, v1, :cond_1

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/nd/commplatform/d/c/jo$d;->S:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nd/commplatform/entry/NdIcon;->setImg(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {p5, v0, v2}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :cond_0
    move v0, v1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/nd/commplatform/d/c/jo$d;->T:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    goto :goto_1
.end method

.method public b()I
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->b()I

    move-result v0

    return v0
.end method

.method public b(ILandroid/content/Context;)I
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/nd/commplatform/d/c/es;->a(Landroid/content/Context;)V

    :goto_0
    return v2

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2, v2, v0, v1}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0
.end method

.method public b(ILjava/lang/String;Landroid/content/Context;)I
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/jb;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {p3, p2}, Lcom/nd/commplatform/d/c/jg;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/nd/commplatform/d/c/jb;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3, p2}, Lcom/nd/commplatform/d/c/je;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {p3, p2}, Lcom/nd/commplatform/d/c/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xb

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/nd/commplatform/d/c/ia;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;I)I
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xb

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nd/commplatform/d/c/eq;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x2

    :pswitch_0
    sput p1, Lcom/nd/commplatform/d/c/oe;->e:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public b(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/a;->e(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public b(Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/a;->b(Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/nd/commplatform/d/c/b;->a(ILandroid/content/Context;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/a;->g(Landroid/content/Context;)V

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;ZLjava/lang/String;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    return-void
.end method

.method public b(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->b()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/nd/commplatform/d/c/a;->b(ILcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public b(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/oz;

    invoke-direct {v0, p4, p2, p1, p3}, Lcom/nd/commplatform/d/c/oz;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/oz;->b()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/nd/commplatform/d/c/b$5;

    invoke-direct {v2, p0, v0, p4, p5}, Lcom/nd/commplatform/d/c/b$5;-><init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/d/c/oz;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, v1, p4, v2}, Lcom/nd/commplatform/d/c/a;->b(Ljava/util/List;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public b(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPayResultInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/b$7;

    invoke-direct {v0, p0, p1, p3}, Lcom/nd/commplatform/d/c/b$7;-><init>(Lcom/nd/commplatform/d/c/b;Ljava/lang/String;Lcom/nd/commplatform/NdCallbackListener;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/nd/commplatform/d/c/a;->f(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    invoke-static {p1}, Lcom/nd/commplatform/d/c/jb;->a(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->c(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/a;->e(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    return v0
.end method

.method public c(ILandroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xb

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/nd/commplatform/d/c/ds;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/a;->b(I)V

    return-void
.end method

.method public c(Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdAppPromotionAward;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/nd/commplatform/d/c/a;->u(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public c(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdNewAppVersionInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/a;->k(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public c(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/a;->b(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public c(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/a;->n(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/b$14;

    invoke-direct {v0, p0, p4}, Lcom/nd/commplatform/d/c/b$14;-><init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/NdCallbackListener;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/nd/commplatform/d/c/a;->i(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/a;->e(Landroid/content/Context;)Lcom/nd/commplatform/entry/NdLoginConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdLoginConfig;->isAutoLogin()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->d(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    return v0
.end method

.method public d(ILandroid/content/Context;)I
    .locals 1

    invoke-static {p2}, Lcom/nd/commplatform/d/c/es;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/content/Context;I)I
    .locals 3

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xb

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x76

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "appId"

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/a;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    const/16 v2, 0x69

    invoke-static {p1, v1, v2, v0}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<[I>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, -0xb

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/b;->b:Lcom/nd/commplatform/d/c/np;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b;->b:Lcom/nd/commplatform/d/c/np;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/np;->a()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nd/commplatform/d/c/b;->b:Lcom/nd/commplatform/d/c/np;

    :cond_2
    if-eqz p2, :cond_0

    new-instance v1, Lcom/nd/commplatform/d/c/np;

    invoke-direct {v1, p1, p2}, Lcom/nd/commplatform/d/c/np;-><init>(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/b;->b:Lcom/nd/commplatform/d/c/np;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b;->b:Lcom/nd/commplatform/d/c/np;

    const v2, 0xea60

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/d/c/np;->a(I)V

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/nd/commplatform/d/c/a;->v(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->e(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    return v0
.end method

.method public e(ILandroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xb

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/nd/commplatform/d/c/hz;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdMyUserInfoDetail;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xb

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/b$4;

    invoke-direct {v0, p0, p2}, Lcom/nd/commplatform/d/c/b$4;-><init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/NdCallbackListener;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->b(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    return v0
.end method

.method public f(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdRankInfo;",
            ">;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xb

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->b()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/nd/commplatform/d/c/a;->b(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aa:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->i:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->p()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/b$8;

    invoke-direct {v0, p0, p2}, Lcom/nd/commplatform/d/c/b$8;-><init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/NdCallbackListener;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/nd/commplatform/d/c/a;->h(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public g()Z
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/of;->c()V

    invoke-static {}, Lcom/nd/commplatform/d/c/ol;->a()V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->k()V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->k()V

    return-void
.end method

.method public h(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/a;->q(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public i()V
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/e;->a()V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/b;->c:Landroid/content/Context;

    return-void
.end method

.method public i(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/b$13;

    invoke-direct {v0, p0, p2}, Lcom/nd/commplatform/d/c/b$13;-><init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/NdCallbackListener;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/nd/commplatform/d/c/a;->r(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b;->c:Landroid/content/Context;

    const-class v2, Lcom/nd/commplatform/service/NdNewMessageNotification;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public k()V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b;->c:Landroid/content/Context;

    const-class v2, Lcom/nd/commplatform/service/NdNewMessageNotification;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public l()Lcom/nd/commplatform/entry/NdMyUserInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->u()Lcom/nd/commplatform/entry/NdMyUserInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public n()Lcom/nd/commplatform/entry/NdLoginStatus;
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->F()Lcom/nd/commplatform/entry/NdLoginStatus;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->E()Z

    move-result v0

    return v0
.end method
