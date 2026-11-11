.class Lcom/nd/commplatform/d/c/qd$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/qd;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/qd;

.field private final synthetic b:I

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/util/HashMap;

.field private final synthetic f:Lcom/nd/commplatform/d/c/qe;

.field private final synthetic g:[B

.field private final synthetic h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/qd;ILandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;[BLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    iput p2, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    iput-object p3, p0, Lcom/nd/commplatform/d/c/qd$6;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/nd/commplatform/d/c/qd$6;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/nd/commplatform/d/c/qd$6;->e:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/nd/commplatform/d/c/qd$6;->f:Lcom/nd/commplatform/d/c/qe;

    iput-object p7, p0, Lcom/nd/commplatform/d/c/qd$6;->g:[B

    iput-object p8, p0, Lcom/nd/commplatform/d/c/qd$6;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/qd$6;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/qd$6;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/qd$6;->e:Ljava/util/HashMap;

    iget v4, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    iget-object v5, p0, Lcom/nd/commplatform/d/c/qd$6;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static/range {v0 .. v5}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;ILcom/nd/commplatform/d/c/qe;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    if-nez v9, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    invoke-static {v0, v9, v1, v10}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    const-string v0, "POST"

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$6;->g:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$6;->g:[B

    array-length v0, v0

    if-lez v0, :cond_1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$6;->g:[B

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$6;->g:[B

    array-length v0, v0

    int-to-long v4, v0

    const-string v0, "CONTENT-LENGTH"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    iget v3, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    const-string v6, "CNetHttpTransfer.netPostGetFile"

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/nd/commplatform/d/c/qd$6;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static/range {v0 .. v8}, Lcom/nd/commplatform/d/c/qd;->b(Lcom/nd/commplatform/d/c/qd;Ljava/io/OutputStream;Ljava/io/InputStream;IJLjava/lang/String;ZLcom/nd/commplatform/d/c/qe;)V

    :cond_1
    invoke-static {}, Lcom/nd/commplatform/d/c/qd;->b()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;ILjava/util/Map;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    const/4 v1, 0x1

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/nd/commplatform/d/c/qd$6;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static/range {v0 .. v7}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$6;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/qd$6;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    const/4 v2, 0x1

    iget v3, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    const-string v4, "CNetHttpTransfer.netPostGetFile"

    iget-object v5, p0, Lcom/nd/commplatform/d/c/qd$6;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static/range {v0 .. v5}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/lang/String;ZILjava/lang/String;Lcom/nd/commplatform/d/c/qe;)J
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    invoke-static {v0, v9, v1, v10}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto/16 :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    const-string v3, "CNetHttpTransfer.netPostGetFile"

    iget-object v4, p0, Lcom/nd/commplatform/d/c/qd$6;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/lang/String;ILjava/lang/String;Lcom/nd/commplatform/d/c/qe;)Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    invoke-static {v0, v9, v1, v10}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto/16 :goto_0

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    const-wide/16 v4, 0x0

    iget v6, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    const-string v7, "CNetHttpTransfer.netPostGetFile"

    iget-object v8, p0, Lcom/nd/commplatform/d/c/qd$6;->f:Lcom/nd/commplatform/d/c/qe;

    move-object v3, v9

    invoke-static/range {v0 .. v8}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/lang/String;Ljava/io/RandomAccessFile;Ljava/net/HttpURLConnection;JILjava/lang/String;Lcom/nd/commplatform/d/c/qe;)V
    :try_end_3
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    invoke-static {v0, v9, v1, v10}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v10

    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    iget v3, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    const/4 v4, -0x2

    iget-object v5, p0, Lcom/nd/commplatform/d/c/qd$6;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static {v2, v3, v0, v4, v5}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;ILjava/lang/Exception;ILcom/nd/commplatform/d/c/qe;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    invoke-static {v0, v1, v2, v10}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v9, v10

    :goto_2
    :try_start_5
    iget-object v1, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/nd/commplatform/d/c/qd$6;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;ILjava/lang/Exception;ILcom/nd/commplatform/d/c/qe;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    invoke-static {v0, v9, v1, v10}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto/16 :goto_0

    :catch_2
    move-exception v4

    move-object v9, v10

    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    const/4 v1, -0x1

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    const/4 v3, -0x3

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/nd/commplatform/d/c/qd$6;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static/range {v0 .. v7}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    invoke-static {v0, v9, v1, v10}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move-object v9, v10

    :goto_4
    :try_start_7
    iget-object v1, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    const/16 v3, -0x64

    iget-object v4, p0, Lcom/nd/commplatform/d/c/qd$6;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;ILjava/lang/Exception;ILcom/nd/commplatform/d/c/qe;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    invoke-static {v0, v9, v1, v10}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v9, v10

    :goto_5
    iget-object v1, p0, Lcom/nd/commplatform/d/c/qd$6;->a:Lcom/nd/commplatform/d/c/qd;

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$6;->b:I

    invoke-static {v1, v9, v2, v10}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v9, v1

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v4

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    move-object v1, v9

    goto :goto_1
.end method
