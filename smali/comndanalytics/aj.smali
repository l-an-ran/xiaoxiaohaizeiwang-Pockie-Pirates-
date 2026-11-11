.class public abstract Lcomndanalytics/aj;
.super Lcomndanalytics/aa;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field protected b:Landroid/content/Context;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcomndanalytics/aj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcomndanalytics/aj;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcomndanalytics/aa;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcomndanalytics/aj;->b:Landroid/content/Context;

    iput p2, p0, Lcomndanalytics/aj;->d:I

    iput-object p3, p0, Lcomndanalytics/aj;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I[BLjava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Lcomndanalytics/aj;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "91Analytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail Http Action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    :try_start_0
    sget-object v1, Lcomndanalytics/aj;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v1, v2}, Lcomndanalytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcomndanalytics/aj;->a(ZLjava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance v1, Lcomndanalytics/y;

    invoke-direct {v1, p2}, Lcomndanalytics/y;-><init>([B)V

    invoke-virtual {v1}, Lcomndanalytics/y;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcomndanalytics/y;->b()I

    move-result v2

    invoke-virtual {p0, v2}, Lcomndanalytics/aj;->b(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    sget-object v2, Lcomndanalytics/aj;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcomndanalytics/y;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcomndanalytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v1}, Lcomndanalytics/y;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcomndanalytics/aj;->a(ZLjava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v3, "91Analytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail Action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcomndanalytics/aj;->m()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Error Code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string v2, "91Analytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail decode Action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcomndanalytics/aj;->m()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public abstract a(ZLjava/lang/String;)V
.end method

.method protected final b(I)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()[B
    .locals 4

    new-instance v0, Lcomndanalytics/x;

    iget-object v1, p0, Lcomndanalytics/aj;->b:Landroid/content/Context;

    iget v2, p0, Lcomndanalytics/aj;->d:I

    iget-object v3, p0, Lcomndanalytics/aj;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcomndanalytics/x;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcomndanalytics/aj;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcomndanalytics/x;->b(I)V

    invoke-virtual {p0}, Lcomndanalytics/aj;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lcomndanalytics/x;->a(I)V

    invoke-virtual {p0}, Lcomndanalytics/aj;->o()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcomndanalytics/aj;->c:Ljava/lang/String;

    invoke-static {v2, v1}, Lcomndanalytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcomndanalytics/x;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcomndanalytics/x;->a()[B

    move-result-object v0

    return-object v0
.end method

.method protected abstract m()I
.end method

.method protected abstract n()I
.end method

.method protected o()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
