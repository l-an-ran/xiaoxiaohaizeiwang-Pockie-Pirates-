.class Lcom/nd/commplatform/d/c/gz$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/gz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "LoadImageUrlHelper"

.field private static b:Ljava/util/WeakHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:I = 0x0

.field private static final i:I = 0x1


# instance fields
.field private c:Ljava/lang/String;

.field private d:Landroid/widget/ImageView;

.field private e:Ljava/lang/Thread;

.field private f:I

.field private g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/nd/commplatform/d/c/gz$a;->b:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/nd/commplatform/d/c/gz$a;->f:I

    new-instance v0, Lcom/nd/commplatform/d/c/ha;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ha;-><init>(Lcom/nd/commplatform/d/c/gz$a;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gz$a;->g:Landroid/os/Handler;

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gz$a;->d:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/gz$a;I)I
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/d/c/gz$a;->f:I

    return p1
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/gz$a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz$a;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nd/commplatform/d/c/gz$a;->b(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {p0}, Lcom/nd/commplatform/d/c/gz$a;->d(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/gz$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz$a;->d:Landroid/widget/ImageView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aa:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private static b(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    sget-object v0, Lcom/nd/commplatform/d/c/gz$a;->b:Ljava/util/WeakHashMap;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {p0}, Lcom/nd/commplatform/d/c/gz$a;->f(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/gz$a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz$a;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-object v3, p0, Lcom/nd/commplatform/d/c/gz$a;->c:Ljava/lang/String;

    iput v2, p0, Lcom/nd/commplatform/d/c/gz$a;->f:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz$a;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz$a;->g:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz$a;->e:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz$a;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz$a;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iput-object v3, p0, Lcom/nd/commplatform/d/c/gz$a;->e:Ljava/lang/Thread;

    return-void
.end method

.method private static d(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/gz$a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gz$a;->c:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/gz$a$1;

    invoke-direct {v0, p0, p1}, Lcom/nd/commplatform/d/c/gz$a$1;-><init>(Lcom/nd/commplatform/d/c/gz$a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gz$a;->e:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz$a;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static f(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    const-string v1, "name"

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gz$a;->c()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gz$a;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const-string v1, "LoadImageUrlHelper"

    const-string v2, "load error: null url."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gz$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/nd/commplatform/d/c/gz$a;->f:I

    if-eqz v1, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gz$a;->c()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gz$a;->b()V

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/gz$a;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
