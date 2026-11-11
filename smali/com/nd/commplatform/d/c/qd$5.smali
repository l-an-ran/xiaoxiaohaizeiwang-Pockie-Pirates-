.class Lcom/nd/commplatform/d/c/qd$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/qd;->a(Ljava/lang/String;[BLjava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/qd;

.field private final synthetic b:[B

.field private final synthetic c:I

.field private final synthetic d:Lcom/nd/commplatform/d/c/qe;

.field private final synthetic e:Landroid/content/Context;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/qd;[BILcom/nd/commplatform/d/c/qe;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/qd$5;->a:Lcom/nd/commplatform/d/c/qd;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/qd$5;->b:[B

    iput p3, p0, Lcom/nd/commplatform/d/c/qd$5;->c:I

    iput-object p4, p0, Lcom/nd/commplatform/d/c/qd$5;->d:Lcom/nd/commplatform/d/c/qe;

    iput-object p5, p0, Lcom/nd/commplatform/d/c/qd$5;->e:Landroid/content/Context;

    iput-object p6, p0, Lcom/nd/commplatform/d/c/qd$5;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/nd/commplatform/d/c/qd$5;->g:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$5;->b:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$5;->a:Lcom/nd/commplatform/d/c/qd;

    const/4 v1, -0x1

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$5;->c:I

    const/4 v3, -0x2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/nd/commplatform/d/c/qd$5;->d:Lcom/nd/commplatform/d/c/qe;

    invoke-static/range {v0 .. v7}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    :goto_0
    return-void

    :cond_0
    new-instance v10, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$5;->b:[B

    invoke-direct {v10, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$5;->b:[B

    array-length v0, v0

    int-to-long v11, v0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$5;->a:Lcom/nd/commplatform/d/c/qd;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/qd$5;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/qd$5;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/qd$5;->g:Ljava/util/HashMap;

    iget v4, p0, Lcom/nd/commplatform/d/c/qd$5;->c:I

    iget-object v5, p0, Lcom/nd/commplatform/d/c/qd$5;->d:Lcom/nd/commplatform/d/c/qe;

    invoke-static/range {v0 .. v5}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;ILcom/nd/commplatform/d/c/qe;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    if-nez v9, :cond_1

    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$5;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$5;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v9, v1, v2}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    :try_start_2
    const-string v0, "POST"

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v0, "CONTENT-LENGTH"

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/qd;->b()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$5;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$5;->a:Lcom/nd/commplatform/d/c/qd;

    iget v3, p0, Lcom/nd/commplatform/d/c/qd$5;->c:I

    const-string v6, "CNetHttpTransfer.netPostData"

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/nd/commplatform/d/c/qd$5;->d:Lcom/nd/commplatform/d/c/qe;

    move-object v2, v10

    move-wide v4, v11

    invoke-static/range {v0 .. v8}, Lcom/nd/commplatform/d/c/qd;->b(Lcom/nd/commplatform/d/c/qd;Ljava/io/OutputStream;Ljava/io/InputStream;IJLjava/lang/String;ZLcom/nd/commplatform/d/c/qe;)V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$5;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$5;->c:I

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;ILjava/util/Map;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$5;->a:Lcom/nd/commplatform/d/c/qd;

    const/4 v1, 0x1

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$5;->c:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/nd/commplatform/d/c/qd$5;->d:Lcom/nd/commplatform/d/c/qe;

    invoke-static/range {v0 .. v7}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    :goto_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$5;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$5;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v9, v1, v2}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v1, v6

    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/nd/commplatform/d/c/qd$5;->a:Lcom/nd/commplatform/d/c/qd;

    iget v3, p0, Lcom/nd/commplatform/d/c/qd$5;->c:I

    const/4 v4, -0x2

    iget-object v5, p0, Lcom/nd/commplatform/d/c/qd$5;->d:Lcom/nd/commplatform/d/c/qe;

    invoke-static {v2, v3, v0, v4, v5}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;ILjava/lang/Exception;ILcom/nd/commplatform/d/c/qe;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$5;->a:Lcom/nd/commplatform/d/c/qd;

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$5;->c:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v9, v6

    :goto_5
    :try_start_6
    iget-object v1, p0, Lcom/nd/commplatform/d/c/qd$5;->a:Lcom/nd/commplatform/d/c/qd;

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$5;->c:I

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/nd/commplatform/d/c/qd$5;->d:Lcom/nd/commplatform/d/c/qe;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;ILjava/lang/Exception;ILcom/nd/commplatform/d/c/qe;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :goto_6
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$5;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$5;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v9, v1, v2}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_5
    move-exception v4

    move-object v9, v6

    :goto_7
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$5;->a:Lcom/nd/commplatform/d/c/qd;

    const/4 v1, -0x1

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$5;->c:I

    const/4 v3, -0x3

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/nd/commplatform/d/c/qd$5;->d:Lcom/nd/commplatform/d/c/qe;

    invoke-static/range {v0 .. v7}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :goto_8
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$5;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$5;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v9, v1, v2}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto/16 :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v9, v6

    :goto_9
    :try_start_a
    iget-object v1, p0, Lcom/nd/commplatform/d/c/qd$5;->a:Lcom/nd/commplatform/d/c/qd;

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$5;->c:I

    const/16 v3, -0x64

    iget-object v4, p0, Lcom/nd/commplatform/d/c/qd$5;->d:Lcom/nd/commplatform/d/c/qe;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;ILjava/lang/Exception;ILcom/nd/commplatform/d/c/qe;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :goto_a
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$5;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$5;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v9, v1, v2}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto/16 :goto_0

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v9, v6

    :goto_b
    :try_start_c
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :goto_c
    iget-object v1, p0, Lcom/nd/commplatform/d/c/qd$5;->a:Lcom/nd/commplatform/d/c/qd;

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$5;->c:I

    const/4 v3, 0x0

    invoke-static {v1, v9, v2, v3}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    throw v0

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v9, v1

    goto :goto_b

    :catch_b
    move-exception v0

    goto :goto_9

    :catch_c
    move-exception v4

    goto :goto_7

    :catch_d
    move-exception v0

    goto/16 :goto_5

    :catch_e
    move-exception v0

    move-object v1, v9

    goto/16 :goto_3
.end method
