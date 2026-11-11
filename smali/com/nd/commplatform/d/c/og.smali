.class public Lcom/nd/commplatform/d/c/og;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/og$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x7

.field public static final b:I = 0x8

.field public static final c:I = 0x9

.field public static final d:I = 0xa

.field public static final e:I = 0xb

.field private static f:Lcom/nd/commplatform/d/c/cc;

.field private static g:Lcom/nd/commplatform/d/c/og$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ZZLjava/lang/String;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v9, Lcom/nd/commplatform/d/c/pd;

    invoke-direct {v9}, Lcom/nd/commplatform/d/c/pd;-><init>()V

    new-instance v1, Lcom/nd/commplatform/d/c/og$1;

    move-object v2, p3

    move-object/from16 v4, p7

    move-object v5, p4

    move-object/from16 v6, p6

    move v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/nd/commplatform/d/c/og$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/nd/commplatform/NdCallbackListener;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string v2, "/sdcard"

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/ndcommplatform/downapp/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v2, Lcom/nd/commplatform/d/c/cc;

    invoke-direct {v2, v3, p3}, Lcom/nd/commplatform/d/c/cc;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v2, Lcom/nd/commplatform/d/c/og;->f:Lcom/nd/commplatform/d/c/cc;

    sget-object v2, Lcom/nd/commplatform/d/c/og;->f:Lcom/nd/commplatform/d/c/cc;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/cc;->a()Lcom/nd/commplatform/d/c/og$a;

    move-result-object v2

    sput-object v2, Lcom/nd/commplatform/d/c/og;->g:Lcom/nd/commplatform/d/c/og$a;

    if-eqz p6, :cond_3

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    sget-object v8, Lcom/nd/commplatform/d/c/og;->g:Lcom/nd/commplatform/d/c/og$a;

    move-object v2, v9

    move v3, p5

    move-object v4, p2

    move-object v6, p3

    move-object v7, v1

    invoke-virtual/range {v2 .. v8}, Lcom/nd/commplatform/d/c/pd;->a(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;Lcom/nd/commplatform/d/c/og$a;)I

    move-result v1

    :goto_1
    sget-object v2, Lcom/nd/commplatform/d/c/og;->f:Lcom/nd/commplatform/d/c/cc;

    new-instance v3, Lcom/nd/commplatform/d/c/og$2;

    move-object/from16 v0, p7

    invoke-direct {v3, v1, v0, p0}, Lcom/nd/commplatform/d/c/og$2;-><init>(ILcom/nd/commplatform/NdCallbackListener;Z)V

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/d/c/cc;->a(Lcom/nd/commplatform/d/c/cc$a;)V

    sget-object v1, Lcom/nd/commplatform/d/c/og;->f:Lcom/nd/commplatform/d/c/cc;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/cc;->show()V

    return-void

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/nd/commplatform/d/c/og;->g:Lcom/nd/commplatform/d/c/og$a;

    move-object v2, v9

    move v3, p5

    move-object v4, p2

    move-object v6, p3

    move-object v7, v1

    invoke-virtual/range {v2 .. v8}, Lcom/nd/commplatform/d/c/pd;->a(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;Lcom/nd/commplatform/d/c/og$a;)I

    move-result v1

    goto :goto_1

    :cond_5
    move-object v3, p4

    goto/16 :goto_0
.end method

.method static synthetic b()Lcom/nd/commplatform/d/c/cc;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/og;->f:Lcom/nd/commplatform/d/c/cc;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/nd/commplatform/d/c/og$a;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/og;->g:Lcom/nd/commplatform/d/c/og$a;

    return-object v0
.end method

.method public a(Lcom/nd/commplatform/d/c/og$a;)V
    .locals 0

    sput-object p1, Lcom/nd/commplatform/d/c/og;->g:Lcom/nd/commplatform/d/c/og$a;

    return-void
.end method
