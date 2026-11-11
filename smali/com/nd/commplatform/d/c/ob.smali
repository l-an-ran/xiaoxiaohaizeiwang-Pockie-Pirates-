.class public Lcom/nd/commplatform/d/c/ob;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final f:I = 0x3

.field private static final g:I = 0x2


# instance fields
.field private a:Lcom/nd/commplatform/NdCallbackListener;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/nd/commplatform/d/c/ob;->a:Lcom/nd/commplatform/NdCallbackListener;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/ob;->c:Landroid/content/Context;

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ob;->d:Ljava/lang/String;

    const-wide/16 v0, 0x7530

    invoke-direct {p0, v0, v1}, Lcom/nd/commplatform/d/c/ob;->a(J)V

    return-void
.end method

.method private a()V
    .locals 3

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ob;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ob;->c()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ob;->c()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(J)V
    .locals 2

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ob;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ob;->c()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 5

    const/4 v3, 0x0

    const-string v0, ""

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    new-array v4, v1, [Landroid/telephony/gsm/SmsMessage;

    move v2, v3

    :goto_0
    array-length v1, v0

    if-lt v2, v1, :cond_2

    aget-object v0, v4, v3

    invoke-virtual {v0}, Landroid/telephony/gsm/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    aget-object v1, v4, v3

    invoke-virtual {v1}, Landroid/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ob;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ob;->a()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ob;->b()V

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/ob;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    aget-object v1, v0, v2

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v1

    aput-object v1, v4, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ob;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ob;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/az;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/az;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ob;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ob;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0, p1, v1, v2}, Lcom/nd/commplatform/d/c/az;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/ba;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ba;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ob;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ob;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0, p1, v1, v2}, Lcom/nd/commplatform/d/c/ba;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/ob;)Lcom/nd/commplatform/NdCallbackListener;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ob;->a:Lcom/nd/commplatform/NdCallbackListener;

    return-object v0
.end method

.method private b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ob;->c:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "ND2BindPhoneBroadReceiver"

    const-string v1, "unregister sms Receiver fail"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ob;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private c()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ob;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ob;->e:Landroid/os/Handler;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/ob$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/ob$1;-><init>(Lcom/nd/commplatform/d/c/ob;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ob;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ob;->e:Landroid/os/Handler;

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/nd/commplatform/d/c/ob;->a(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
