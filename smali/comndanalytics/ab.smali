.class Lcomndanalytics/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcomndanalytics/aa;


# direct methods
.method constructor <init>(Lcomndanalytics/aa;)V
    .locals 0

    iput-object p1, p0, Lcomndanalytics/ab;->a:Lcomndanalytics/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 7
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    iget-object v0, p0, Lcomndanalytics/ab;->a:Lcomndanalytics/aa;

    new-array v3, v1, [B

    invoke-static {v0, v3}, Lcomndanalytics/aa;->a(Lcomndanalytics/aa;[B)[B

    iget-object v0, p0, Lcomndanalytics/ab;->a:Lcomndanalytics/aa;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v0, v3}, Lcomndanalytics/aa;->a(Lcomndanalytics/aa;I)I

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcomndanalytics/ab;->a:Lcomndanalytics/aa;

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcomndanalytics/aa;->a(Lcomndanalytics/aa;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcomndanalytics/ab;->a:Lcomndanalytics/aa;

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcomndanalytics/aa;->b(Lcomndanalytics/aa;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcomndanalytics/ab;->a:Lcomndanalytics/aa;

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v3

    invoke-static {v0, v3}, Lcomndanalytics/aa;->a(Lcomndanalytics/aa;[B)[B

    sget-object v3, Lcomndanalytics/aa;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive Uncompressed "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcomndanalytics/ab;->a:Lcomndanalytics/aa;

    invoke-static {v0}, Lcomndanalytics/aa;->a(Lcomndanalytics/aa;)[B

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcomndanalytics/ab;->a:Lcomndanalytics/aa;

    invoke-static {v0}, Lcomndanalytics/aa;->a(Lcomndanalytics/aa;)[B

    move-result-object v0

    array-length v0, v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " Bytes."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcomndanalytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcomndanalytics/ab;->a:Lcomndanalytics/aa;

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcomndanalytics/aa;->c(Lcomndanalytics/aa;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    iget-object v0, p0, Lcomndanalytics/ab;->a:Lcomndanalytics/aa;

    invoke-static {v0}, Lcomndanalytics/aa;->a(Lcomndanalytics/aa;)[B

    move-result-object v0

    array-length v0, v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    sget-object v0, Lcomndanalytics/aa;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Length mismatch with content - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcomndanalytics/ab;->a:Lcomndanalytics/aa;

    invoke-static {v3}, Lcomndanalytics/aa;->a(Lcomndanalytics/aa;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcomndanalytics/ab;->a:Lcomndanalytics/aa;

    invoke-static {v0, v1}, Lcomndanalytics/aa;->a(Lcomndanalytics/aa;I)I

    :cond_2
    iget-object v0, p0, Lcomndanalytics/ab;->a:Lcomndanalytics/aa;

    invoke-static {v0, p1}, Lcomndanalytics/aa;->a(Lcomndanalytics/aa;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    const/4 v0, 0x0

    return-object v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
