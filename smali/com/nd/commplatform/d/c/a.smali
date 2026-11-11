.class public Lcom/nd/commplatform/d/c/a;
.super Ljava/lang/Object;


# static fields
.field public static final A:I = 0x0

.field public static final B:I = 0x1

.field public static final C:I = 0x2

.field public static final D:I = 0x3

.field public static final E:I = 0x4

.field public static final F:I = 0xa

.field public static final G:I = 0xb

.field public static final H:I = 0x14

.field public static final I:I = 0x15

.field public static final J:I = 0x16

.field public static final K:I = 0x17

.field public static final L:I = 0x18

.field public static final M:I = 0x0

.field public static final N:I = 0x1

.field public static final O:I = 0x2

.field public static final P:I = 0x8

.field private static R:Lcom/nd/commplatform/d/c/a; = null

.field private static final S:Ljava/lang/String; = "app"

.field private static final T:Ljava/lang/String; = "portrait"

.field private static final U:Ljava/lang/String; = "achievement"

.field private static final V:Ljava/lang/String; = "3rd_platform"

.field private static final W:Ljava/lang/String; = "leaderboard"

.field private static final X:Ljava/lang/String; = "goods"

.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x4

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3e8

.field public static final g:I = 0x3e9

.field public static final h:I = 0x3ea

.field public static final i:I = 0x3eb

.field public static final j:I = 0x3ec

.field public static final k:I = 0x3ed

.field public static final l:I = 0x2

.field public static final m:I = 0x4

.field public static final n:I = 0x8

.field public static final o:I = 0x0

.field public static final p:I = 0x1

.field public static final q:I = 0x0

.field public static final r:I = 0x1

.field public static final s:I = 0x2

.field public static final t:I = 0x3

.field public static final u:I = 0x1

.field public static final v:I = 0x3

.field public static final w:I = 0x4

.field public static final x:I = 0x1

.field public static final y:I = 0x2

.field public static final z:I = 0x3


# instance fields
.field private Q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/d/c/a;->R:Lcom/nd/commplatform/d/c/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/a;->Q:Z

    return-void
.end method

.method private G()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/bs;->E:Ljava/lang/String;

    return-object v0
.end method

.method private H()V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/a;->J()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/a;->I()V

    return-void
.end method

.method private I()V
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v0, "/sdcard"

    :cond_3
    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/a;->i(Ljava/lang/String;)V

    sget-boolean v1, Lcom/nd/commplatform/d/c/bs;->K:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/a;->h(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private J()V
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/nd/commplatform/d/c/nq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/oc;

    const-string v1, "portrait"

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/oc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/oc;->c()V

    new-instance v0, Lcom/nd/commplatform/d/c/oc;

    const-string v1, "app"

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/oc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/oc;->c()V

    new-instance v0, Lcom/nd/commplatform/d/c/oc;

    const-string v1, "achievement"

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/oc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/oc;->c()V

    new-instance v0, Lcom/nd/commplatform/d/c/oc;

    const-string v1, "3rd_platform"

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/oc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/oc;->c()V

    new-instance v0, Lcom/nd/commplatform/d/c/oc;

    const-string v1, "leaderboard"

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/oc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/oc;->c()V

    new-instance v0, Lcom/nd/commplatform/d/c/oc;

    const-string v1, "goods"

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/oc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/oc;->c()V

    invoke-static {}, Lcom/nd/commplatform/d/c/ep;->a()V

    invoke-static {}, Lcom/nd/commplatform/d/c/pa;->f()V

    invoke-static {}, Lcom/nd/commplatform/d/c/nq;->c()V

    goto :goto_0
.end method

.method public static a()Lcom/nd/commplatform/d/c/a;
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/nd/commplatform/d/c/a;->R:Lcom/nd/commplatform/d/c/a;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/qa;->a(Z)V

    new-instance v1, Lcom/nd/commplatform/d/c/a;

    invoke-direct {v1}, Lcom/nd/commplatform/d/c/a;-><init>()V

    sput-object v1, Lcom/nd/commplatform/d/c/a;->R:Lcom/nd/commplatform/d/c/a;

    sget-object v1, Lcom/nd/commplatform/d/c/a;->R:Lcom/nd/commplatform/d/c/a;

    invoke-direct {v1}, Lcom/nd/commplatform/d/c/a;->H()V

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/nd/commplatform/d/c/bs;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    :goto_0
    if-lt v0, v3, :cond_2

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    sget-object v0, Lcom/nd/commplatform/d/c/a;->R:Lcom/nd/commplatform/d/c/a;

    return-object v0

    :cond_2
    :try_start_1
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/a;Lcom/nd/commplatform/entry/NdLoginConfig;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/a;->a(Lcom/nd/commplatform/entry/NdLoginConfig;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/nd/commplatform/entry/NdLoginConfig;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 7

    new-instance v0, Lcom/nd/commplatform/d/c/al;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/al;-><init>()V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdLoginConfig;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdLoginConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdLoginConfig;->isAutoLogin()Z

    move-result v3

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdLoginConfig;->isSavePassword()Z

    move-result v4

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/al;->a(Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    const/4 v0, 0x1

    return v0
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/nd/commplatform/d/c/bs;->K:Z

    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "debugUrl.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ActUserCenterUrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    sput-object v0, Lcom/nd/commplatform/d/c/bp;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v5, "ActPayUrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    sput-object v0, Lcom/nd/commplatform/d/c/bp;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    :cond_5
    :try_start_2
    const-string v5, "ActPayUrlTest"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    sput-object v0, Lcom/nd/commplatform/d/c/bp;->e:Ljava/lang/String;
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_6
    :try_start_3
    const-string v5, "ActRechargeUrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    sput-object v0, Lcom/nd/commplatform/d/c/bp;->f:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const-string v5, "ActFPUrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    sput-object v0, Lcom/nd/commplatform/d/c/bp;->g:Ljava/lang/String;

    goto :goto_2

    :cond_8
    const-string v5, "ActMessageUrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    sput-object v0, Lcom/nd/commplatform/d/c/bp;->h:Ljava/lang/String;

    goto :goto_2

    :cond_9
    const-string v5, "ActWebRechargeUrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    sput-object v0, Lcom/nd/commplatform/d/c/bp;->k:Ljava/lang/String;

    goto :goto_2

    :cond_a
    const-string v5, "ActRankUrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    sput-object v0, Lcom/nd/commplatform/d/c/bp;->i:Ljava/lang/String;

    goto :goto_2

    :cond_b
    const-string v5, "ActShopUrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    sput-object v0, Lcom/nd/commplatform/d/c/bp;->l:Ljava/lang/String;

    goto/16 :goto_2

    :cond_c
    const-string v5, "ActAnalystUrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    sput-object v0, Lcom/nd/commplatform/d/c/bp;->m:Ljava/lang/String;

    goto/16 :goto_2

    :cond_d
    const-string v5, "ActVirtualPayUrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    sput-object v0, Lcom/nd/commplatform/d/c/bp;->n:Ljava/lang/String;

    goto/16 :goto_2

    :cond_e
    const-string v5, "ActCustomVirtualPayUrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    sput-object v0, Lcom/nd/commplatform/d/c/bp;->o:Ljava/lang/String;

    goto/16 :goto_2

    :cond_f
    const-string v5, "SoftwarePromotionUrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sput-object v0, Lcom/nd/commplatform/d/c/bp;->p:Ljava/lang/String;
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2
.end method

.method private i(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "versionupdate_debug.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "versionupdate_debug"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nd/commplatform/d/c/bs;->J:Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private w(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/BaseFriendInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/kb;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/kb;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/kb;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    sget-boolean v0, Lcom/nd/commplatform/d/c/bs;->J:Z

    return v0
.end method

.method public B()Z
    .locals 1

    sget-boolean v0, Lcom/nd/commplatform/d/c/bs;->K:Z

    return v0
.end method

.method public C()Z
    .locals 1

    sget-boolean v0, Lcom/nd/commplatform/d/c/bs;->M:Z

    return v0
.end method

.method public D()Z
    .locals 1

    sget-boolean v0, Lcom/nd/commplatform/d/c/bs;->N:Z

    return v0
.end method

.method public E()Z
    .locals 1

    sget-boolean v0, Lcom/nd/commplatform/d/c/bs;->L:Z

    return v0
.end method

.method public F()Lcom/nd/commplatform/entry/NdLoginStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nd/commplatform/entry/NdLoginStatus;->AccountLogin:Lcom/nd/commplatform/entry/NdLoginStatus;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/a;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nd/commplatform/entry/NdLoginStatus;->GuestLogin:Lcom/nd/commplatform/entry/NdLoginStatus;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/nd/commplatform/entry/NdLoginStatus;->NotLogin:Lcom/nd/commplatform/entry/NdLoginStatus;

    goto :goto_0
.end method

.method public a(ILjava/util/HashMap;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener;",
            ")I"
        }
    .end annotation

    const/16 v0, -0x4652

    if-nez p2, :cond_1

    if-eqz p4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/nd/commplatform/d/c/le;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/le;-><init>()V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/nd/commplatform/d/c/le;->a(Landroid/content/Context;ILjava/util/HashMap;Lcom/nd/commplatform/NdCallbackListener;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/nd/commplatform/d/c/mk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    sput p1, Lcom/nd/commplatform/d/c/bs;->y:I

    return-void
.end method

.method public a(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/lc;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/lc;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/lc;->a(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(ILcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdStrangerUserInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/kc;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/kc;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/nd/commplatform/d/c/kc;->a(Ljava/lang/String;Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(ILjava/lang/String;IILcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdProductInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/pm;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/pm;-><init>()V

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/nd/commplatform/d/c/pm;->a(ILjava/lang/String;IILcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(ILjava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdReqPurchaseResultInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/pp;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/pp;-><init>()V

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/pp;->a(ILjava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/ResPageInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/ad;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ad;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/ad;->a(ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 6

    new-instance v0, Lcom/nd/commplatform/d/c/li;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/li;-><init>()V

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/li;->a(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 7

    new-instance v0, Lcom/nd/commplatform/d/c/lz;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/lz;-><init>()V

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/lz;->a(ILjava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "91SDK version"

    const-string v1, "3.2.1.2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v2, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    sput-object v2, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    invoke-static {}, Lcom/nd/commplatform/d/c/bs;->a()V

    return-void
.end method

.method public a(Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdAppPromotion;",
            ">;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/ak;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ak;-><init>()V

    new-instance v1, Lcom/nd/commplatform/d/c/a$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/a$3;-><init>(Lcom/nd/commplatform/d/c/a;Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/nd/commplatform/d/c/ak;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/jk;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/jk;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/jk;->a(Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/ak;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ak;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/ak;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdPlatformConfig;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/ly;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ly;-><init>()V

    invoke-virtual {v0, p2, p1, p3}, Lcom/nd/commplatform/d/c/ly;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/me;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/me;-><init>()V

    invoke-virtual {v0, p2, p3, p1, p4}, Lcom/nd/commplatform/d/c/me;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/nd/commplatform/NdCallbackListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/md;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/md;-><init>()V

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p1

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/nd/commplatform/d/c/md;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/nd/commplatform/NdCallbackListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/mf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/mf;-><init>()V

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/mf;->a(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/nd/commplatform/d/c/nw;->b(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nd/commplatform/d/c/nw;->a(Landroid/content/Context;Z)Z

    invoke-static {p1}, Lcom/nd/commplatform/d/c/nw;->a(Landroid/content/Context;)Z

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "ndappid"

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->b()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ndappkey"

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-direct {v1}, Lcom/nd/commplatform/d/c/a;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/nd/commplatform/d/c/ej;)V
    .locals 2

    invoke-static {}, Lcom/nd/commplatform/d/c/ei;->a()Lcom/nd/commplatform/d/c/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ei;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/ei;->a()Lcom/nd/commplatform/d/c/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ei;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/nd/commplatform/d/c/ef;->a()Lcom/nd/commplatform/d/c/ef;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/nd/commplatform/d/c/ej;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/ef;->a()Lcom/nd/commplatform/d/c/ef;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/ef;->a(Lcom/nd/commplatform/d/c/ej;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NDCanPayPassword;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NDCanPayPassword;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPermission;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/jx;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/jx;-><init>()V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NDCanPayPassword;->value()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v1

    move-object v4, v1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/jx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    goto :goto_0
.end method

.method public a(Lcom/nd/commplatform/entry/NdAdvanceSearch;Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdAdvanceSearch;",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdStrangerUserInfo;",
            ">;>;)V"
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/nd/commplatform/d/c/ko;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ko;-><init>()V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdAdvanceSearch;->getAgeBegin()I

    move-result v1

    if-eq v1, v4, :cond_4

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdAdvanceSearch;->getAgeBegin()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdAdvanceSearch;->getAgeEnd()I

    move-result v2

    if-eq v2, v4, :cond_3

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdAdvanceSearch;->getAgeEnd()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdAdvanceSearch;->getSex()Lcom/nd/commplatform/entry/NdSex;

    move-result-object v4

    sget-object v5, Lcom/nd/commplatform/entry/NdSex;->NULL:Lcom/nd/commplatform/entry/NdSex;

    if-ne v5, v4, :cond_1

    const-string v3, "0"

    :cond_0
    :goto_2
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdAdvanceSearch;->getProvince()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdAdvanceSearch;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdPagination;->getPageIndex()I

    move-result v6

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdPagination;->getPageSize()I

    move-result v7

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/nd/commplatform/d/c/ko;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void

    :cond_1
    sget-object v5, Lcom/nd/commplatform/entry/NdSex;->Male:Lcom/nd/commplatform/entry/NdSex;

    if-ne v5, v4, :cond_2

    const-string v3, "1"

    goto :goto_2

    :cond_2
    sget-object v5, Lcom/nd/commplatform/entry/NdSex;->Female:Lcom/nd/commplatform/entry/NdSex;

    if-ne v5, v4, :cond_0

    const-string v3, "2"

    goto :goto_2

    :cond_3
    move-object v2, v3

    goto :goto_1

    :cond_4
    move-object v1, v3

    goto :goto_0
.end method

.method public a(Lcom/nd/commplatform/entry/NdBuyInfo;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdBuyInfo;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v0, "0.00"

    invoke-direct {v5, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/nd/commplatform/d/c/as;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/as;-><init>()V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdBuyInfo;->getSerial()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductPrice()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductOrginalPrice()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdBuyInfo;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdBuyInfo;->getPayDescription()Ljava/lang/String;

    move-result-object v7

    move-object v8, p2

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Lcom/nd/commplatform/d/c/as;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdPagination;IILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "II",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdReChargingRecord;",
            ">;>;)V"
        }
    .end annotation

    const/16 v2, 0xc

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, -0x1

    new-instance v0, Lcom/nd/commplatform/d/c/bc;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/bc;-><init>()V

    const/4 v3, 0x0

    if-eq p2, v1, :cond_3

    if-eq p3, v1, :cond_3

    if-lt p3, v5, :cond_0

    if-le p3, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "%04d%02d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdPagination;->getPageIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdPagination;->getPageSize()I

    move-result v2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/bc;->a(IILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    goto :goto_0

    :cond_3
    if-ne v1, p2, :cond_4

    if-eq p3, v1, :cond_4

    if-lt p3, v5, :cond_0

    if-gt p3, v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s%02d"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    if-eq p2, v1, :cond_2

    if-ne v1, p3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%04d%s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public a(Lcom/nd/commplatform/entry/NdPagination;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/ki;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ki;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/nd/commplatform/d/c/ki;->a(Lcom/nd/commplatform/entry/NdPagination;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdPagination;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdAppAchieveInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/ll;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ll;-><init>()V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/ll;->a(Lcom/nd/commplatform/entry/NdPagination;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdPayRecord;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/aa;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/aa;-><init>()V

    sget v1, Lcom/nd/commplatform/d/c/bs;->y:I

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdPagination;->getPageIndex()I

    move-result v2

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdPagination;->getPageSize()I

    move-result v3

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/aa;->a(IIILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdPagination;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdRankPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdUserRankInfo;",
            ">;>;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v0, Lcom/nd/commplatform/d/c/lm;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/lm;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/nd/commplatform/d/c/lm;->a(Lcom/nd/commplatform/entry/NdPagination;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void

    :cond_0
    move-object v3, p3

    goto :goto_0
.end method

.method public a(Lcom/nd/commplatform/entry/NdPayForAnotherRequest;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPayForAnotherRequest;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/ay;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ay;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/ay;->a(Lcom/nd/commplatform/entry/NdPayForAnotherRequest;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdPermission;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 7

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdPermission;->getAddFriendPermission()Lcom/nd/commplatform/entry/NdAddFriendPermission;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/jx;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/jx;-><init>()V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdPermission;->getCanPayPassword()Lcom/nd/commplatform/entry/NDCanPayPassword;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdAddFriendPermission;->getCanAddFriend()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdPermission;->getCanPayPassword()Lcom/nd/commplatform/entry/NDCanPayPassword;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NDCanPayPassword;->value()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/jx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdAddFriendPermission;->getCanAddFriend()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    move-object v4, v1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/jx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    goto :goto_0
.end method

.method public a(Lcom/nd/commplatform/entry/NdUserInfo;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/jv;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/jv;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/jv;->a(Lcom/nd/commplatform/entry/NdUserInfo;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/nd/commplatform/d/c/bs;->E:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdUserInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/jz;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/jz;-><init>()V

    const-string v2, "0"

    const-string v3, "0"

    const-string v4, "0"

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    const-string v2, "1"

    :cond_0
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    const-string v3, "1"

    :cond_1
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2

    const-string v4, "1"

    :cond_2
    move-object v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/jz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Ljava/lang/String;ILcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdStrangerUserInfo;",
            ">;>;)V"
        }
    .end annotation

    packed-switch p2, :pswitch_data_0

    const/4 p2, 0x1

    :pswitch_0
    new-instance v0, Lcom/nd/commplatform/d/c/kn;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/kn;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/nd/commplatform/entry/NdPagination;->getPageIndex()I

    move-result v3

    invoke-virtual {p3}, Lcom/nd/commplatform/entry/NdPagination;->getPageSize()I

    move-result v4

    move-object v1, p1

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/kn;->a(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 6

    new-instance v0, Lcom/nd/commplatform/d/c/lq;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/lq;-><init>()V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/lq;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/ap;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ap;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/ap;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/nd/commplatform/entry/NdMsgContent;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nd/commplatform/entry/NdMsgContent;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/ld;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ld;-><init>()V

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdMsgContent;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/nd/commplatform/d/c/ld;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v1, ""

    :goto_0
    new-instance v0, Lcom/nd/commplatform/d/c/km;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/km;-><init>()V

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdPagination;->getPageIndex()I

    move-result v2

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdPagination;->getPageSize()I

    move-result v3

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/km;->a(Ljava/lang/String;IILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/ao;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ao;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/ao;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/lv;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/lv;-><init>()V

    invoke-virtual {v0, p1, p2, p4, p5}, Lcom/nd/commplatform/d/c/lv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 7

    new-instance v0, Lcom/nd/commplatform/d/c/av;

    invoke-direct {v0, p5}, Lcom/nd/commplatform/d/c/av;-><init>(Z)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/av;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[BLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 6

    new-instance v0, Lcom/nd/commplatform/d/c/lr;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/lr;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/lr;->a(Ljava/lang/String;Ljava/lang/String;[BLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdRedeemGoodsInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/lk;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/lk;-><init>()V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/lk;->a(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Ljava/util/List;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdAchieveUnlockInfo;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/lo;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/lo;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/lo;->a(Ljava/util/List;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/ke;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ke;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/ke;->a(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Ljava/util/List;ZZZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdUserInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/w;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/w;-><init>()V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/w;->a(Ljava/util/List;ZZZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Z)V
    .locals 0

    sput-boolean p1, Lcom/nd/commplatform/d/c/bs;->H:Z

    return-void
.end method

.method public a(ZLandroid/content/Context;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/nd/commplatform/d/c/nw;->h(Landroid/content/Context;)Z

    :goto_0
    invoke-static {p2}, Lcom/nd/commplatform/d/c/nw;->a(Landroid/content/Context;)Z

    return-void

    :cond_0
    invoke-static {p2, p1}, Lcom/nd/commplatform/d/c/nw;->a(Landroid/content/Context;Z)Z

    goto :goto_0
.end method

.method public a([BLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/jy;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/jy;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/jy;->a([BLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/a;->e(Landroid/content/Context;)Lcom/nd/commplatform/entry/NdLoginConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdLoginConfig;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdLoginConfig;->isAutoLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/nd/commplatform/d/c/nw;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdLoginConfig;->setPassword(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-static {p3}, Lcom/nd/commplatform/NdMiscCallbackListener;->a(Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    :cond_2
    new-instance v0, Lcom/nd/commplatform/d/c/a$1;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/nd/commplatform/d/c/a$1;-><init>(Lcom/nd/commplatform/d/c/a;Lcom/nd/commplatform/entry/NdLoginConfig;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/nd/commplatform/d/c/a;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/nd/commplatform/entry/NdLoginConfig;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdLoginConfig;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    if-eqz p4, :cond_2

    invoke-static {p4}, Lcom/nd/commplatform/NdMiscCallbackListener;->a(Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/a;->a(Lcom/nd/commplatform/entry/NdLoginConfig;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/oi;->a()Lcom/nd/commplatform/d/c/oi;

    move-result-object v0

    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/oi;->a(Ljava/lang/String;)V

    move-object v1, p1

    move v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/oi;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;ZZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p4}, Lcom/nd/commplatform/d/c/a;->e(Landroid/content/Context;)Lcom/nd/commplatform/entry/NdLoginConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdLoginConfig;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdLoginConfig;->isSavePassword()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p4}, Lcom/nd/commplatform/d/c/nw;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, p1}, Lcom/nd/commplatform/entry/NdLoginConfig;->setUserName(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdLoginConfig;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/nd/commplatform/entry/NdLoginConfig;->setAutoLogin(Z)V

    invoke-virtual {v1, p2}, Lcom/nd/commplatform/entry/NdLoginConfig;->setSavePassword(Z)V

    if-eqz p6, :cond_2

    invoke-static {p6}, Lcom/nd/commplatform/NdMiscCallbackListener;->a(Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    :cond_2
    invoke-direct {p0, v1, p4, p5}, Lcom/nd/commplatform/d/c/a;->a(Lcom/nd/commplatform/entry/NdLoginConfig;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/bs;->y:I

    return v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 4

    const/16 v1, -0x4654

    sget-object v0, Lcom/nd/commplatform/d/c/bs;->D:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    sget-object v0, Lcom/nd/commplatform/d/c/bs;->D:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, -0x4653

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "0"

    :goto_0
    invoke-static {p1}, Lcom/nd/commplatform/d/c/pa;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "0"

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/ng;->a()Lcom/nd/commplatform/d/c/ng;

    const/4 v1, -0x1

    sget-object v2, Lcom/nd/commplatform/d/c/bp;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/ng;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?SessionId="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&HasSimCard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "1"

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nd/commplatform/d/c/bs;->I:Z

    return-void
.end method

.method public b(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdRankInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/ln;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ln;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/ln;->a(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public b(ILcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/kj;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/kj;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/kj;->a(ILcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public b(ILjava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdProductUseResult;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/pq;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/pq;-><init>()V

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/pq;->a(ILjava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public b(ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdProductOwnershipInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/pj;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/pj;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/pj;->a(ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public b(Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/ak;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ak;-><init>()V

    new-instance v1, Lcom/nd/commplatform/d/c/a$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/a$4;-><init>(Lcom/nd/commplatform/d/c/a;Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/nd/commplatform/d/c/ak;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/jn;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/jn;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/jn;->a(Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/aj;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/aj;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/aj;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdProductInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/pl;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/pl;-><init>()V

    invoke-virtual {v0, p2, p1, p3}, Lcom/nd/commplatform/d/c/pl;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/bb;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/bb;-><init>()V

    invoke-virtual {v0, p2, p3, p1, p4}, Lcom/nd/commplatform/d/c/bb;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "ndappid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ndappkey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/a;->a(I)V

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/nd/commplatform/d/c/ej;)V
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/ef;->a()Lcom/nd/commplatform/d/c/ef;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/ef;->b(Lcom/nd/commplatform/d/c/ej;)V

    return-void
.end method

.method public b(Lcom/nd/commplatform/entry/NdPagination;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdStrangerUserInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/kp;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/kp;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/nd/commplatform/d/c/kp;->a(Lcom/nd/commplatform/entry/NdPagination;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public b(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public b(Ljava/lang/String;ILcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdTinyActivityMsgInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/kx;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/kx;-><init>()V

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/kx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public b(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdVirtualPayResult;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/ps;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ps;-><init>()V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/ps;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public b(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/ju;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ju;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/ju;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/kh;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/kh;-><init>()V

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdPagination;->getPageIndex()I

    move-result v2

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdPagination;->getPageSize()I

    move-result v3

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/kh;->a(Ljava/lang/String;IILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    new-instance v1, Lcom/nd/commplatform/d/c/ob;

    invoke-direct {v1, p2, p4, p3}, Lcom/nd/commplatform/d/c/ob;-><init>(Ljava/lang/String;Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;)V

    invoke-virtual {p3, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p1, p2, p3}, Lcom/nd/commplatform/d/c/pa;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 6

    new-instance v0, Lcom/nd/commplatform/d/c/bh;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/bh;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/bh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/mb;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/mb;-><init>()V

    invoke-virtual {v0, p1, p2, p6, p7}, Lcom/nd/commplatform/d/c/mb;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public b(Ljava/util/List;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdUploadRankInfo;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/lp;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/lp;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/lp;->a(Ljava/util/List;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public b(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/kd;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/kd;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/kd;->a(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/ny;->a()Lcom/nd/commplatform/d/c/ny;

    move-result-object v0

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ny;->a(Ljava/lang/String;)V

    move-object v1, p1

    move v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/ny;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "0"

    :goto_0
    invoke-static {p1}, Lcom/nd/commplatform/d/c/pa;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "0"

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/ng;->a()Lcom/nd/commplatform/d/c/ng;

    const/4 v1, -0x3

    sget-object v2, Lcom/nd/commplatform/d/c/bp;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/ng;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?SessionId="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&HasSimCard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "1"

    goto :goto_0
.end method

.method public c(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdModuleSwitchInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/aq;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/aq;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/aq;->a(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public c(ILcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdPurchasedProductInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/po;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/po;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/po;->a(ILcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public c(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/ef;->a()Lcom/nd/commplatform/d/c/ef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ef;->b()V

    new-instance v0, Lcom/nd/commplatform/d/c/an;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/an;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/an;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    invoke-static {}, Lcom/nd/commplatform/d/c/bs;->a()V

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/ag;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ag;-><init>()V

    invoke-virtual {v0, p2, p1, p3}, Lcom/nd/commplatform/d/c/ag;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public c(Lcom/nd/commplatform/entry/NdPagination;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/ls;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ls;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/ls;->a(Lcom/nd/commplatform/entry/NdPagination;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public c(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdStrangerUserInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/kk;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/kk;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/kk;->a(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/nd/commplatform/d/c/bs;->D:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nd/commplatform/d/c/bs;->D:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPermission;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/jx;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/jx;-><init>()V

    const-string v2, "-1"

    const-string v3, "-1"

    const-string v4, "-1"

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/jx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdFriendAppInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/kg;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/kg;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/kg;->a(Ljava/lang/String;Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdRequestAddFriendResult;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/kl;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/kl;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/kl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public c(Z)V
    .locals 0

    sput-boolean p1, Lcom/nd/commplatform/d/c/bs;->L:Z

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/on;->a()Lcom/nd/commplatform/d/c/on;

    move-result-object v0

    const-string v1, "achievement"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/on;->a(Ljava/lang/String;)V

    move-object v1, p1

    move v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/on;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "3.2.1.2"

    return-object v0
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/nd/commplatform/d/c/ng;->a()Lcom/nd/commplatform/d/c/ng;

    const/4 v0, -0x2

    sget-object v1, Lcom/nd/commplatform/d/c/bp;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/ng;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "?SessionId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdCateInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/pn;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/pn;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/pn;->a(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public d(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/at;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/at;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/at;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdNewAppCount;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/ae;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ae;-><init>()V

    invoke-virtual {v0, p2, p1, p3}, Lcom/nd/commplatform/d/c/ae;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public d(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/DynamicInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/kt;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/kt;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/kt;->a(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public d(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/y;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/y;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/y;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/DynamicInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/kz;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/kz;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/kz;->a(Ljava/lang/String;Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/kr;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/kr;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/kr;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/ei;->a()Lcom/nd/commplatform/d/c/ei;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/ei;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/oq;->a()Lcom/nd/commplatform/d/c/oq;

    move-result-object v0

    const-string v1, "leaderboard"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/oq;->a(Ljava/lang/String;)V

    move-object v1, p1

    move v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/oq;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)Lcom/nd/commplatform/d/c/ek;
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/ei;->a()Lcom/nd/commplatform/d/c/ei;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/ei;->a(Ljava/lang/String;)Lcom/nd/commplatform/d/c/ek;

    move-result-object v0

    goto :goto_0
.end method

.method public e(Landroid/content/Context;)Lcom/nd/commplatform/entry/NdLoginConfig;
    .locals 8

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/nd/commplatform/d/c/pa;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Lcom/nd/commplatform/entry/NdLoginConfig;

    invoke-direct {v4}, Lcom/nd/commplatform/entry/NdLoginConfig;-><init>()V

    const-string v1, ""

    new-instance v6, Lcom/nd/commplatform/d/c/nq;

    invoke-direct {v6, v3}, Lcom/nd/commplatform/d/c/nq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/nd/commplatform/d/c/nq;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v6}, Lcom/nd/commplatform/d/c/nq;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/nd/commplatform/d/c/nq;->g()Z

    move-result v1

    invoke-virtual {v6}, Lcom/nd/commplatform/d/c/nq;->i()Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    if-nez v2, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lcom/nd/commplatform/d/c/nq;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    invoke-virtual {v6}, Lcom/nd/commplatform/d/c/nq;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/nd/commplatform/entry/NdLoginConfig;->setUserName(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/nd/commplatform/d/c/nq;->g()Z

    move-result v1

    invoke-virtual {v6}, Lcom/nd/commplatform/d/c/nq;->h()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    invoke-virtual {v6}, Lcom/nd/commplatform/d/c/nq;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "********"

    invoke-virtual {v4, v5}, Lcom/nd/commplatform/entry/NdLoginConfig;->setPassword(Ljava/lang/String;)V

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    move v1, v0

    :cond_4
    invoke-virtual {v4, v1}, Lcom/nd/commplatform/entry/NdLoginConfig;->setAutoLogin(Z)V

    invoke-virtual {v4, v2}, Lcom/nd/commplatform/entry/NdLoginConfig;->setSavePassword(Z)V

    move-object v0, v4

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move-object v2, v1

    move v1, v0

    :cond_7
    invoke-static {p1}, Lcom/nd/commplatform/d/c/nw;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    move-object v0, v3

    goto :goto_0

    :cond_8
    invoke-static {p1}, Lcom/nd/commplatform/d/c/nw;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    move-object v0, v3

    goto :goto_0

    :cond_9
    invoke-virtual {v4, v5}, Lcom/nd/commplatform/entry/NdLoginConfig;->setUserName(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nd/commplatform/d/c/nw;->d(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    if-nez v1, :cond_d

    move v1, v0

    :goto_2
    invoke-static {p1}, Lcom/nd/commplatform/d/c/nw;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_c

    :cond_a
    invoke-static {p1}, Lcom/nd/commplatform/d/c/nw;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "********"

    invoke-virtual {v4, v5}, Lcom/nd/commplatform/entry/NdLoginConfig;->setPassword(Ljava/lang/String;)V

    :cond_b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    :goto_3
    move v1, v0

    :cond_c
    invoke-virtual {v4, v1}, Lcom/nd/commplatform/entry/NdLoginConfig;->setAutoLogin(Z)V

    invoke-virtual {v4, v2}, Lcom/nd/commplatform/entry/NdLoginConfig;->setSavePassword(Z)V

    move-object v0, v4

    goto/16 :goto_0

    :cond_d
    move v1, v3

    goto :goto_2

    :cond_e
    move v0, v1

    goto :goto_3
.end method

.method public e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/bs;->u:Ljava/lang/String;

    return-object v0
.end method

.method public e(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/pi;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/pi;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/pi;->a(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public e(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPermission;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/jx;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/jx;-><init>()V

    const/4 v1, 0x0

    const-string v2, "-1"

    const-string v3, "-1"

    const-string v4, "-1"

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/jx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public e(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdUserMsgInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/kv;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/kv;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/kv;->a(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public e(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/a$2;

    invoke-direct {v0, p0, p3}, Lcom/nd/commplatform/d/c/a$2;-><init>(Lcom/nd/commplatform/d/c/a;Lcom/nd/commplatform/NdCallbackListener;)V

    new-instance v1, Lcom/nd/commplatform/d/c/ar;

    invoke-direct {v1}, Lcom/nd/commplatform/d/c/ar;-><init>()V

    invoke-virtual {v1, p1, p2, v0}, Lcom/nd/commplatform/d/c/ar;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public e(Ljava/lang/String;Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdTinyMsgInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/la;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/la;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/la;->a(Ljava/lang/String;Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/oo;->a()Lcom/nd/commplatform/d/c/oo;

    move-result-object v0

    const-string v1, "goods"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/oo;->a(Ljava/lang/String;)V

    move-object v1, p1

    move v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/oo;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/om;->a()Lcom/nd/commplatform/d/c/om;

    move-result-object v0

    const-string v1, "3rd_platform"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/om;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/om;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/bs;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/ng;->a()Lcom/nd/commplatform/d/c/ng;

    const/4 v0, -0x4

    invoke-static {v0, p1}, Lcom/nd/commplatform/d/c/ng;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/ah;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ah;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/ah;->a(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public f(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPermission;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Lcom/nd/commplatform/d/c/jx;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/jx;-><init>()V

    const-string v4, "-1"

    move-object v2, v1

    move-object v3, v1

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/jx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public f(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdSysMsgInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/lg;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/lg;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/lg;->a(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public f(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/d/c/fv;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/ar;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ar;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/ar;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/mi;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/mi;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/mi;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public f(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/a;->e(Landroid/content/Context;)Lcom/nd/commplatform/entry/NdLoginConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdLoginConfig;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdLoginConfig;->isAutoLogin()Z

    move-result v0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/a;->F()Lcom/nd/commplatform/entry/NdLoginStatus;

    move-result-object v0

    sget-object v1, Lcom/nd/commplatform/entry/NdLoginStatus;->NotLogin:Lcom/nd/commplatform/entry/NdLoginStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nd/commplatform/d/c/ng;->a()Lcom/nd/commplatform/d/c/ng;

    const/4 v1, -0x5

    invoke-static {v1, p1}, Lcom/nd/commplatform/d/c/ng;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?SessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroid/content/Context;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/nd/commplatform/d/c/nw;->a(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/nd/commplatform/d/c/nw;->b(Landroid/content/Context;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nd/commplatform/d/c/nw;->a(Landroid/content/Context;Z)Z

    invoke-static {p1}, Lcom/nd/commplatform/d/c/nw;->a(Landroid/content/Context;)Z

    return-void
.end method

.method public g(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPermission;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/jx;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/jx;-><init>()V

    const/4 v1, 0x0

    const-string v2, "-1"

    const-string v3, "-1"

    const-string v4, "-1"

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/jx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public g(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/kf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/kf;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/kf;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/mh;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/mh;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/mh;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nd/commplatform/d/c/nw;->a(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public h(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/pr;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/pr;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/pr;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public h(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/ka;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ka;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/ka;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/ml;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ml;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/ml;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public i(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/nd/commplatform/d/c/ef;->a()Lcom/nd/commplatform/d/c/ef;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/nd/commplatform/d/c/ef;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public i(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/x;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/x;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/x;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public i(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdMsgContent;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/ky;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ky;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/ky;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/d/c/fs;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/bg;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/bg;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/bg;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public i()Z
    .locals 1

    sget-boolean v0, Lcom/nd/commplatform/d/c/bs;->p:Z

    return v0
.end method

.method public j(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/nd/commplatform/d/c/pa;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<[I>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/lb;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/lb;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/lb;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    goto :goto_0
.end method

.method public j(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdDetailSysMsgInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/lf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/lf;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/lf;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/bk;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/bk;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/bk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public j()Z
    .locals 1

    sget-boolean v0, Lcom/nd/commplatform/d/c/bs;->I:Z

    return v0
.end method

.method public k()V
    .locals 0

    invoke-static {}, Lcom/nd/commplatform/d/c/bs;->a()V

    return-void
.end method

.method public k(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdNewAppVersionInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/nd/commplatform/d/c/jw;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/jw;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/nd/commplatform/d/c/pa;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/jw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public k(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/ab;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ab;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/ab;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/bm;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/bm;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/bm;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public l()V
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/ef;->a()Lcom/nd/commplatform/d/c/ef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ef;->b()V

    invoke-static {}, Lcom/nd/commplatform/d/c/bs;->a()V

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    return-void
.end method

.method public l(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdAppServProInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/kw;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/kw;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/kw;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public l(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPayForAnotherOrder;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/af;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/af;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/af;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/bo;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/bo;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/bo;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/bs;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public m(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/nd/commplatform/d/c/bs;->u:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget v2, Lcom/nd/commplatform/d/c/bs;->l:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v3, v0}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/nd/commplatform/d/c/t;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/t;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/t;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method public m(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdMsgTagResp;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/lh;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/lh;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/lh;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/ai;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ai;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/ai;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/bs;->g:Ljava/lang/String;

    return-object v0
.end method

.method public n(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdPartyPlatform;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/lx;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/lx;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/lx;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public n(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/bl;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/bl;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/bl;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/bs;->f:Ljava/lang/String;

    return-object v0
.end method

.method public o(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/lw;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/lw;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/lw;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public o(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/d/c/ft;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/bn;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/bn;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/bn;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/bs;->h:Ljava/lang/String;

    return-object v0
.end method

.method public p(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/lt;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/lt;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/lt;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public q(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/jr;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/jr;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/jr;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public q()Z
    .locals 1

    sget-boolean v0, Lcom/nd/commplatform/d/c/bs;->G:Z

    return v0
.end method

.method public r(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/d/c/ft;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/bi;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/bi;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/bi;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public r()Z
    .locals 1

    sget-boolean v0, Lcom/nd/commplatform/d/c/bs;->H:Z

    return v0
.end method

.method public s(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/d/c/fu;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/bj;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/bj;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/bj;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public s()Z
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/bs;->l:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public t(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/z;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/z;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/z;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public t()Z
    .locals 2

    sget-object v0, Lcom/nd/commplatform/d/c/bs;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public u()Lcom/nd/commplatform/entry/NdMyUserInfo;
    .locals 3

    new-instance v0, Lcom/nd/commplatform/entry/NdMyUserInfo;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdMyUserInfo;-><init>()V

    new-instance v1, Lcom/nd/commplatform/entry/NdMyBaseInfo;

    invoke-direct {v1}, Lcom/nd/commplatform/entry/NdMyBaseInfo;-><init>()V

    sget-object v2, Lcom/nd/commplatform/d/c/bs;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdMyBaseInfo;->setUin(Ljava/lang/String;)V

    sget-object v2, Lcom/nd/commplatform/d/c/bs;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdMyBaseInfo;->setNickName(Ljava/lang/String;)V

    sget-object v2, Lcom/nd/commplatform/d/c/bs;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdMyBaseInfo;->setCheckSum(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdMyUserInfo;->setNdMyBaseInfo(Lcom/nd/commplatform/entry/NdMyBaseInfo;)V

    return-object v0
.end method

.method public u(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdAppPromotionAward;",
            ">;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/ak;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ak;-><init>()V

    new-instance v1, Lcom/nd/commplatform/d/c/a$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/nd/commplatform/d/c/a$5;-><init>(Lcom/nd/commplatform/d/c/a;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/nd/commplatform/d/c/ak;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/jl;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/jl;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/jl;->b(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nd/commplatform/d/c/bs;->C:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/ak;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ak;-><init>()V

    new-instance v1, Lcom/nd/commplatform/d/c/a$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/nd/commplatform/d/c/a$6;-><init>(Lcom/nd/commplatform/d/c/a;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/nd/commplatform/d/c/ak;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/jm;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/jm;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/jm;->b(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/ek;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/ei;->a()Lcom/nd/commplatform/d/c/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ei;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public x()I
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/ei;->a()Lcom/nd/commplatform/d/c/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ei;->f()I

    move-result v0

    return v0
.end method

.method public y()V
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/ef;->a()Lcom/nd/commplatform/d/c/ef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ef;->b()V

    :cond_0
    return-void
.end method

.method public z()Z
    .locals 1

    sget-boolean v0, Lcom/nd/commplatform/d/c/bs;->I:Z

    return v0
.end method
