.class public Lcom/nd/commplatform/d/c/iw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/iw$d;,
        Lcom/nd/commplatform/d/c/iw$c;,
        Lcom/nd/commplatform/d/c/iw$b;,
        Lcom/nd/commplatform/d/c/iw$a;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String; = "GetUnionPayAuthPackets"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Lcom/nd/commplatform/d/c/iw$a;

.field private j:Lcom/nd/commplatform/d/c/iw$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/d/c/iw;->g:I

    new-instance v0, Lcom/nd/commplatform/d/c/iw$a;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/iw$a;-><init>(Lcom/nd/commplatform/d/c/iw;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/iw;->h:Lcom/nd/commplatform/d/c/iw$a;

    iput-object p1, p0, Lcom/nd/commplatform/d/c/iw;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/iw;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "xml"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.action.hj.unionpay.result"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/iw;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/iw;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Lcom/nd/commplatform/d/c/iw$c;
    .locals 1

    invoke-static {p0}, Lcom/nd/commplatform/d/c/iw;->d(Ljava/lang/String;)Lcom/nd/commplatform/d/c/iw$c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/iw;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iw;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/iw;)Lcom/nd/commplatform/d/c/iw$b;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iw;->j:Lcom/nd/commplatform/d/c/iw$b;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iw;->f:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iw;->f:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/iw$d;

    iget v1, p0, Lcom/nd/commplatform/d/c/iw;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nd/commplatform/d/c/iw;->g:I

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/iw$d;-><init>(Lcom/nd/commplatform/d/c/iw;I)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/iw;->f:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iw;->f:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/iw;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.unionpay.upomp.lthj.plugin.ui.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "action_cmd"

    const-string v3, "cmd_pay_plugin"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "xml"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "merchantPackageName"

    const-string v3, "android.intent.huajian.unionpay.backview"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iw;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Lcom/nd/commplatform/d/c/iw$c;
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/iw$c;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/iw$c;-><init>()V

    if-nez p0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v3, "UTF-8"

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    :pswitch_1
    const-string v1, "respCode"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nd/commplatform/d/c/iw$c;->a:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v1, "respDesc"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nd/commplatform/d/c/iw$c;->b:Ljava/lang/String;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/iw;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iw;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/iw;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/iw;->g:I

    return v0
.end method

.method static synthetic f(Lcom/nd/commplatform/d/c/iw;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iw;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/iw$b;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/iw;->j:Lcom/nd/commplatform/d/c/iw$b;

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nd/commplatform/d/c/oe;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GetUnionPayAuthPackets"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_0

    :goto_0
    return v0

    :cond_0
    iput v6, p0, Lcom/nd/commplatform/d/c/iw;->a:I

    iput-object v4, p0, Lcom/nd/commplatform/d/c/iw;->b:Ljava/lang/String;

    iput-object v4, p0, Lcom/nd/commplatform/d/c/iw;->d:Ljava/lang/String;

    iput-object v4, p0, Lcom/nd/commplatform/d/c/iw;->e:Ljava/lang/String;

    const-string v2, "&"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    iget v5, p0, Lcom/nd/commplatform/d/c/iw;->a:I

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/nd/commplatform/d/c/iw;->b:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/nd/commplatform/d/c/iw;->d:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/nd/commplatform/d/c/iw;->e:Ljava/lang/String;

    if-eqz v5, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/iw;->c()V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v5, "OrderType="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_4

    const-string v5, "OrderType="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/nd/commplatform/d/c/iw;->a:I

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const-string v5, "Url="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "Url="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nd/commplatform/d/c/iw;->b:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string v5, "ReturnUrl="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "ReturnUrl="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nd/commplatform/d/c/iw;->d:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v5, "FReturnUrl="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "FReturnUrl="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nd/commplatform/d/c/iw;->e:Ljava/lang/String;

    goto :goto_2
.end method

.method public b()V
    .locals 0

    return-void
.end method
