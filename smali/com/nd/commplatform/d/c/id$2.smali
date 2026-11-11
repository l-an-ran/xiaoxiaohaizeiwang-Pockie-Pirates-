.class final Lcom/nd/commplatform/d/c/id$2;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/id;->a(Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/id;

.field private b:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/id;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/id$2;->a:Lcom/nd/commplatform/d/c/id;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/id$2;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/nd/commplatform/d/c/id$2;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/id$2;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/id$2;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/id$2;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/id$2;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    check-cast p1, Lorg/apache/http/HttpResponse;

    .end local p1    # "result":Ljava/lang/Object;
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/id$2;->a:Lcom/nd/commplatform/d/c/id;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/id$2;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/id;->a(Lcom/nd/commplatform/d/c/id;Lorg/apache/http/impl/client/DefaultHttpClient;)Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    const-string v1, "location"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    aget-object v0, v1, v3

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/id$2;->a:Lcom/nd/commplatform/d/c/id;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/id;->a(Lcom/nd/commplatform/d/c/id;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/nd/commplatform/d/c/id$2;->a:Lcom/nd/commplatform/d/c/id;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/id$2;->a:Lcom/nd/commplatform/d/c/id;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/id;->e(Lcom/nd/commplatform/d/c/id;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/nd/commplatform/d/c/id;->a(Lcom/nd/commplatform/d/c/id;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/id$2;->a:Lcom/nd/commplatform/d/c/id;

    invoke-static {v0, p1}, Lcom/nd/commplatform/d/c/id;->a(Lcom/nd/commplatform/d/c/id;Lorg/apache/http/HttpResponse;)V

    goto :goto_0
.end method
