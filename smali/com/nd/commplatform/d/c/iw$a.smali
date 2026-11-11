.class final Lcom/nd/commplatform/d/c/iw$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "android.intent.action.hj.unionpay.result"


# instance fields
.field final synthetic b:Lcom/nd/commplatform/d/c/iw;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/iw$a;->b:Lcom/nd/commplatform/d/c/iw;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Lcom/nd/commplatform/d/c/iw$c;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x3f

    const/16 v4, 0x3d

    const/16 v3, 0x26

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/iw$a;->b:Lcom/nd/commplatform/d/c/iw;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/iw;->b(Lcom/nd/commplatform/d/c/iw;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/iw$a;->b:Lcom/nd/commplatform/d/c/iw;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/iw;->b(Lcom/nd/commplatform/d/c/iw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "ErrorCode"

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/nd/commplatform/d/c/iw$c;->a:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "ErrorDesc"

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/nd/commplatform/d/c/iw$c;->b:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "android.intent.action.hj.unionpay.result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/nd/commplatform/d/c/iw;->b(Ljava/lang/String;)Lcom/nd/commplatform/d/c/iw$c;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/iw$c;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iw$a;->b:Lcom/nd/commplatform/d/c/iw;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/iw;->a(Lcom/nd/commplatform/d/c/iw;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/iw$a;->b:Lcom/nd/commplatform/d/c/iw;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/iw;->c(Lcom/nd/commplatform/d/c/iw;)Lcom/nd/commplatform/d/c/iw$b;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nd/commplatform/d/c/iw$a;->b:Lcom/nd/commplatform/d/c/iw;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/iw;->c(Lcom/nd/commplatform/d/c/iw;)Lcom/nd/commplatform/d/c/iw$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nd/commplatform/d/c/iw$b;->b(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/nd/commplatform/d/c/iw$a;->b:Lcom/nd/commplatform/d/c/iw;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/iw;->b(Lcom/nd/commplatform/d/c/iw;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/nd/commplatform/d/c/iw$a;->a(Lcom/nd/commplatform/d/c/iw$c;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
