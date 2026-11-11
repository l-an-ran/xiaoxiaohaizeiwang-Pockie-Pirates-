.class Lcom/nd/commplatform/d/c/qd$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/qd;->a(Ljava/lang/String;Lcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
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

.field private final synthetic g:Lcom/nd/commplatform/d/c/pz;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/qd;ILandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Lcom/nd/commplatform/d/c/pz;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/qd$2;->a:Lcom/nd/commplatform/d/c/qd;

    iput p2, p0, Lcom/nd/commplatform/d/c/qd$2;->b:I

    iput-object p3, p0, Lcom/nd/commplatform/d/c/qd$2;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/nd/commplatform/d/c/qd$2;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/nd/commplatform/d/c/qd$2;->e:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/nd/commplatform/d/c/qd$2;->f:Lcom/nd/commplatform/d/c/qe;

    iput-object p7, p0, Lcom/nd/commplatform/d/c/qd$2;->g:Lcom/nd/commplatform/d/c/pz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v12, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$2;->a:Lcom/nd/commplatform/d/c/qd;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/qd$2;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/qd$2;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/qd$2;->e:Ljava/util/HashMap;

    iget v4, p0, Lcom/nd/commplatform/d/c/qd$2;->b:I

    iget-object v5, p0, Lcom/nd/commplatform/d/c/qd$2;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static/range {v0 .. v5}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;ILcom/nd/commplatform/d/c/qe;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$2;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$2;->b:I

    invoke-static {v0, v3, v1, v12}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    :goto_0
    return-void

    :cond_0
    :try_start_2
    const-string v0, "GET"

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/qd;->b()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$2;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v8

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$2;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$2;->b:I

    const-string v2, "CNetHttpTransfer.netGetData"

    iget-object v4, p0, Lcom/nd/commplatform/d/c/qd$2;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static {v0, v1, v3, v2, v4}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;ILjava/net/HttpURLConnection;Ljava/lang/String;Lcom/nd/commplatform/d/c/qe;)I

    move-result v4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$2;->a:Lcom/nd/commplatform/d/c/qd;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/qd$2;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/qd$2;->d:Ljava/lang/String;

    iget v5, p0, Lcom/nd/commplatform/d/c/qd$2;->b:I

    iget-object v6, p0, Lcom/nd/commplatform/d/c/qd$2;->f:Lcom/nd/commplatform/d/c/qe;

    const-string v7, "GET"

    invoke-static/range {v0 .. v8}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Landroid/content/Context;Ljava/lang/String;Ljava/net/HttpURLConnection;IILcom/nd/commplatform/d/c/qe;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    :try_start_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v8, v0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$2;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$2;->b:I

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;ILjava/util/Map;)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/qd$2;->a:Lcom/nd/commplatform/d/c/qd;

    iget v6, p0, Lcom/nd/commplatform/d/c/qd$2;->b:I

    iget-object v7, p0, Lcom/nd/commplatform/d/c/qd$2;->g:Lcom/nd/commplatform/d/c/pz;

    const-string v10, "CNetHttpTransfer.netGetData"

    iget-object v11, p0, Lcom/nd/commplatform/d/c/qd$2;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static/range {v3 .. v11}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;ILjava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/pz;JLjava/lang/String;Lcom/nd/commplatform/d/c/qe;)V
    :try_end_3
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$2;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$2;->b:I

    invoke-static {v0, v5, v1, v12}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v12

    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/nd/commplatform/d/c/qd$2;->a:Lcom/nd/commplatform/d/c/qd;

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$2;->b:I

    const/4 v4, -0x2

    iget-object v5, p0, Lcom/nd/commplatform/d/c/qd$2;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static {v1, v2, v0, v4, v5}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;ILjava/lang/Exception;ILcom/nd/commplatform/d/c/qe;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$2;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$2;->b:I

    invoke-static {v0, v3, v1, v12}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v12

    :goto_2
    :try_start_5
    iget-object v1, p0, Lcom/nd/commplatform/d/c/qd$2;->a:Lcom/nd/commplatform/d/c/qd;

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$2;->b:I

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/nd/commplatform/d/c/qd$2;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static {v1, v2, v0, v4, v5}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;ILjava/lang/Exception;ILcom/nd/commplatform/d/c/qe;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$2;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$2;->b:I

    invoke-static {v0, v3, v1, v12}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto :goto_0

    :catch_2
    move-exception v4

    move-object v8, v12

    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$2;->a:Lcom/nd/commplatform/d/c/qd;

    const/4 v1, -0x1

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$2;->b:I

    const/4 v3, -0x3

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/nd/commplatform/d/c/qd$2;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static/range {v0 .. v7}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$2;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$2;->b:I

    invoke-static {v0, v8, v1, v12}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move-object v3, v12

    :goto_4
    :try_start_7
    iget-object v1, p0, Lcom/nd/commplatform/d/c/qd$2;->a:Lcom/nd/commplatform/d/c/qd;

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$2;->b:I

    const/16 v4, -0x64

    iget-object v5, p0, Lcom/nd/commplatform/d/c/qd$2;->f:Lcom/nd/commplatform/d/c/qe;

    invoke-static {v1, v2, v0, v4, v5}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;ILjava/lang/Exception;ILcom/nd/commplatform/d/c/qe;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qd$2;->a:Lcom/nd/commplatform/d/c/qd;

    iget v1, p0, Lcom/nd/commplatform/d/c/qd$2;->b:I

    invoke-static {v0, v3, v1, v12}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v12

    :goto_5
    iget-object v1, p0, Lcom/nd/commplatform/d/c/qd$2;->a:Lcom/nd/commplatform/d/c/qd;

    iget v2, p0, Lcom/nd/commplatform/d/c/qd$2;->b:I

    invoke-static {v1, v3, v2, v12}, Lcom/nd/commplatform/d/c/qd;->a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v3, v5

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v8

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v3, v5

    goto :goto_4

    :catch_6
    move-exception v4

    move-object v8, v3

    goto :goto_3

    :catch_7
    move-exception v4

    move-object v8, v5

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_2

    :catch_9
    move-exception v0

    move-object v3, v5

    goto :goto_2

    :catch_a
    move-exception v0

    goto :goto_1

    :catch_b
    move-exception v0

    move-object v3, v5

    goto :goto_1
.end method
