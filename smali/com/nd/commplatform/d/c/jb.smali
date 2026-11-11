.class public Lcom/nd/commplatform/d/c/jb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/jb$b;,
        Lcom/nd/commplatform/d/c/jb$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Ljava/lang/String;

.field private static f:Lcom/nd/commplatform/widget/NdFrameInnerContent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/nd/commplatform/d/c/jb;->a:Ljava/lang/String;

    sput-boolean v0, Lcom/nd/commplatform/d/c/jb;->b:Z

    sput-boolean v0, Lcom/nd/commplatform/d/c/jb;->c:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nd/commplatform/d/c/jb;->d:Z

    sput-object v1, Lcom/nd/commplatform/d/c/jb;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/widget/NdFrameInnerContent;)Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 0

    sput-object p0, Lcom/nd/commplatform/d/c/jb;->f:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/jb;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/nd/commplatform/d/c/ni;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/nd/commplatform/d/c/jb$a;)V
    .locals 2

    invoke-static {p0}, Lcom/nd/commplatform/d/c/ni;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/ni;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/nd/commplatform/d/c/jb$a;->a()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/jb;->f:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nd/commplatform/d/c/jb;->f:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->b(Z)V

    :cond_1
    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->f()V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/jb$1;

    invoke-direct {v1, p0, p1}, Lcom/nd/commplatform/d/c/jb$1;-><init>(Landroid/content/Context;Lcom/nd/commplatform/d/c/jb$a;)V

    invoke-virtual {v0, p0, v1}, Lcom/nd/commplatform/d/c/a;->r(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/nd/commplatform/d/c/jb$b;)V
    .locals 2

    sget-boolean v0, Lcom/nd/commplatform/d/c/jb;->c:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/nd/commplatform/d/c/jb$b;->a()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nd/commplatform/d/c/jb;->c:Z

    invoke-static {p0}, Lcom/nd/commplatform/d/c/ni;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/jb$2;

    invoke-direct {v1, p0, p1}, Lcom/nd/commplatform/d/c/jb$2;-><init>(Landroid/content/Context;Lcom/nd/commplatform/d/c/jb$b;)V

    invoke-virtual {v0, p0, v1}, Lcom/nd/commplatform/d/c/a;->r(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method public static a(Lcom/nd/commplatform/widget/NdFrameInnerContent;Lcom/nd/commplatform/d/c/jb$a;)V
    .locals 1

    sput-object p0, Lcom/nd/commplatform/d/c/jb;->f:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    sget-object v0, Lcom/nd/commplatform/d/c/jb;->f:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nd/commplatform/d/c/jb;->a(Landroid/content/Context;Lcom/nd/commplatform/d/c/jb$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/nd/commplatform/d/c/jb;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/nd/commplatform/d/c/jb;->d:Z

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/jb;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/nd/commplatform/d/c/jb;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/nd/commplatform/d/c/ni;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/nd/commplatform/d/c/jb;->c:Z

    return-void
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/nd/commplatform/d/c/jb;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/nd/commplatform/d/c/jb;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/ni;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Z)Z
    .locals 0

    sput-boolean p0, Lcom/nd/commplatform/d/c/jb;->c:Z

    return p0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nd/commplatform/d/c/ni;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public static d()Z
    .locals 1

    sget-boolean v0, Lcom/nd/commplatform/d/c/jb;->b:Z

    return v0
.end method

.method static synthetic d(Z)Z
    .locals 0

    sput-boolean p0, Lcom/nd/commplatform/d/c/jb;->b:Z

    return p0
.end method

.method static synthetic e()Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/jb;->f:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    return-object v0
.end method

.method static synthetic f()Z
    .locals 1

    sget-boolean v0, Lcom/nd/commplatform/d/c/jb;->d:Z

    return v0
.end method
