.class Lcom/nd/commplatform/d/c/qd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/qd;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
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

.field private final synthetic g:Ljava/lang/String;

.field private final synthetic h:Z


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/qd;ILandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/qd$1;->a:Lcom/nd/commplatform/d/c/qd;

    iput p2, p0, Lcom/nd/commplatform/d/c/qd$1;->b:I

    iput-object p3, p0, Lcom/nd/commplatform/d/c/qd$1;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/nd/commplatform/d/c/qd$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/nd/commplatform/d/c/qd$1;->e:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/nd/commplatform/d/c/qd$1;->f:Lcom/nd/commplatform/d/c/qe;

    iput-object p7, p0, Lcom/nd/commplatform/d/c/qd$1;->g:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/nd/commplatform/d/c/qd$1;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$1;->a:Lcom/nd/commplatform/d/c/qd;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/qd$1;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/qd$1;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/qd$1;->e:Ljava/util/HashMap;

    iget v4, p0, Lcom/nd/commplatform/d/c/qd$1;->b:I

    iget-object v5, p0, Lcom/nd/commplatform/d/c/qd$1;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static/range {v0 .. v5}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;ILcom/nd/commplatform/d/c/qe;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    if-nez v11, :cond_1

    if-eqz v7, :cond_0

    :try_start_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$1;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$1;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v11, v1, v2}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$1;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/qd$1;->a:Lcom/nd/commplatform/d/c/qd;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/qd$1;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$1;->a:Lcom/nd/commplatform/d/c/qd;

    iget-boolean v2, p0, Lcom/nd/commplatform/d/c/qd$1;->h:Z

    iget v3, p0, Lcom/nd/commplatform/d/c/qd$1;->b:I

    const-string v4, "CNetHttpTransfer.netGetFile"

    iget-object v5, p0, Lcom/nd/commplatform/d/c/qd$1;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static/range {v0 .. v5}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/lang/String;ZILjava/lang/String;Lcom/nd/commplatform/d/c/qe;)J
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    if-eqz v7, :cond_2

    :try_start_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$1;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$1;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v11, v1, v2}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$1;->a:Lcom/nd/commplatform/d/c/qd;

    iget v4, p0, Lcom/nd/commplatform/d/c/qd$1;->b:I

    const-string v5, "CNetHttpTransfer.netGetFile"

    iget-object v6, p0, Lcom/nd/commplatform/d/c/qd$1;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static {v0, v1, v4, v5, v6}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/lang/String;ILjava/lang/String;Lcom/nd/commplatform/d/c/qe;)Ljava/io/RandomAccessFile;
    :try_end_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v12

    if-nez v12, :cond_5

    if-eqz v12, :cond_4

    :try_start_5
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$1;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$1;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v11, v1, v2}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_5
    :try_start_6
    const-string v0, "GET"

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    const-string v0, "RANGE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bytes="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-wide v13, v2

    invoke-static {}, Lcom/nd/commplatform/d/c/qd;->b()Ljava/util/Map;

    move-result-object v0

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$1;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v10

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$1;->a:Lcom/nd/commplatform/d/c/qd;

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$1;->b:I

    const-string v3, "CNetHttpTransfer.netGetFile"

    iget-object v4, p0, Lcom/nd/commplatform/d/c/qd$1;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static {v0, v2, v11, v3, v4}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;ILjava/net/HttpURLConnection;Ljava/lang/String;Lcom/nd/commplatform/d/c/qe;)I

    move-result v6

    iget-object v2, p0, Lcom/nd/commplatform/d/c/qd$1;->a:Lcom/nd/commplatform/d/c/qd;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/qd$1;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/nd/commplatform/d/c/qd$1;->d:Ljava/lang/String;

    iget v7, p0, Lcom/nd/commplatform/d/c/qd$1;->b:I

    iget-object v8, p0, Lcom/nd/commplatform/d/c/qd$1;->f:Lcom/nd/commplatform/d/c/qe;

    const-string v9, "GET"

    move-object v5, v11

    invoke-static/range {v2 .. v10}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Landroid/content/Context;Ljava/lang/String;Ljava/net/HttpURLConnection;IILcom/nd/commplatform/d/c/qe;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    :try_end_6
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v3

    :try_start_7
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$1;->a:Lcom/nd/commplatform/d/c/qd;

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$1;->b:I

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;ILjava/util/Map;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$1;->a:Lcom/nd/commplatform/d/c/qd;

    iget v6, p0, Lcom/nd/commplatform/d/c/qd$1;->b:I

    const-string v7, "CNetHttpTransfer.netGetFile"

    iget-object v8, p0, Lcom/nd/commplatform/d/c/qd$1;->f:Lcom/nd/commplatform/d/c/qe;

    move-object v2, v12

    move-wide v4, v13

    invoke-static/range {v0 .. v8}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/lang/String;Ljava/io/RandomAccessFile;Ljava/net/HttpURLConnection;JILjava/lang/String;Lcom/nd/commplatform/d/c/qe;)V
    :try_end_7
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_13
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v12, :cond_7

    :try_start_8
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$1;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$1;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move-object v3, v6

    move-object v1, v7

    :goto_5
    :try_start_9
    iget-object v2, p0, Lcom/nd/commplatform/d/c/qd$1;->a:Lcom/nd/commplatform/d/c/qd;

    iget v4, p0, Lcom/nd/commplatform/d/c/qd$1;->b:I

    const/4 v5, -0x2

    iget-object v6, p0, Lcom/nd/commplatform/d/c/qd$1;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static {v2, v4, v0, v5, v6}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;ILjava/lang/Exception;ILcom/nd/commplatform/d/c/qe;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v1, :cond_8

    :try_start_a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$1;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$1;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto/16 :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v11, v6

    move-object v12, v7

    :goto_7
    :try_start_b
    iget-object v1, p0, Lcom/nd/commplatform/d/c/qd$1;->a:Lcom/nd/commplatform/d/c/qd;

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$1;->b:I

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/nd/commplatform/d/c/qd$1;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;ILjava/lang/Exception;ILcom/nd/commplatform/d/c/qe;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v12, :cond_9

    :try_start_c
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    :cond_9
    :goto_8
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$1;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$1;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v11, v1, v2}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto/16 :goto_1

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v11, v6

    move-object v12, v7

    :goto_9
    :try_start_d
    iget-object v1, p0, Lcom/nd/commplatform/d/c/qd$1;->a:Lcom/nd/commplatform/d/c/qd;

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$1;->b:I

    const/16 v3, -0x64

    iget-object v4, p0, Lcom/nd/commplatform/d/c/qd$1;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;ILjava/lang/Exception;ILcom/nd/commplatform/d/c/qe;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v12, :cond_a

    :try_start_e
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$1;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$1;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v11, v1, v2}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto/16 :goto_1

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v11, v6

    move-object v12, v7

    :goto_b
    if-eqz v12, :cond_b

    :try_start_f
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    :cond_b
    :goto_c
    iget-object v1, p0, Lcom/nd/commplatform/d/c/qd$1;->a:Lcom/nd/commplatform/d/c/qd;

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$1;->b:I

    const/4 v3, 0x0

    invoke-static {v1, v11, v2, v3}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    throw v0

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object v12, v7

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v11, v3

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v11, v3

    move-object v12, v1

    goto :goto_b

    :catch_b
    move-exception v0

    move-object v12, v7

    goto :goto_9

    :catch_c
    move-exception v0

    goto :goto_9

    :catch_d
    move-exception v0

    move-object v11, v3

    goto :goto_9

    :catch_e
    move-exception v0

    move-object v12, v7

    goto :goto_7

    :catch_f
    move-exception v0

    goto :goto_7

    :catch_10
    move-exception v0

    move-object v11, v3

    goto :goto_7

    :catch_11
    move-exception v0

    move-object v3, v11

    move-object v1, v7

    goto/16 :goto_5

    :catch_12
    move-exception v0

    move-object v3, v11

    move-object v1, v12

    goto/16 :goto_5

    :catch_13
    move-exception v0

    move-object v1, v12

    goto/16 :goto_5
.end method
