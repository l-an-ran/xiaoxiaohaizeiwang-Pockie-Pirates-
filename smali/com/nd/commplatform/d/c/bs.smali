.class public Lcom/nd/commplatform/d/c/bs;
.super Ljava/lang/Object;


# static fields
.field public static A:I = 0x0

.field public static B:Ljava/lang/String; = null

.field public static C:Ljava/lang/String; = null

.field public static D:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static E:Ljava/lang/String; = null

.field public static F:Ljava/lang/String; = null

.field public static G:Z = false

.field public static H:Z = false

.field public static I:Z = false

.field public static J:Z = false

.field public static K:Z = false

.field public static L:Z = false

.field public static M:Z = false

.field public static N:Z = false

.field public static final O:Ljava/lang/String; = "nd.com.cn"

.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:[B

.field public static volatile d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:I

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static volatile p:Z

.field public static q:I

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:D

.field public static y:I

.field public static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-object v1, Lcom/nd/commplatform/d/c/bs;->a:Ljava/lang/String;

    sput-object v1, Lcom/nd/commplatform/d/c/bs;->b:Ljava/lang/String;

    sput-object v1, Lcom/nd/commplatform/d/c/bs;->c:[B

    sput-object v1, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    sput-object v1, Lcom/nd/commplatform/d/c/bs;->e:Ljava/lang/String;

    const-string v0, "0.00"

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->v:Ljava/lang/String;

    sput-object v1, Lcom/nd/commplatform/d/c/bs;->D:Ljava/util/HashMap;

    sput-object v1, Lcom/nd/commplatform/d/c/bs;->E:Ljava/lang/String;

    sput-object v1, Lcom/nd/commplatform/d/c/bs;->F:Ljava/lang/String;

    sput-boolean v2, Lcom/nd/commplatform/d/c/bs;->G:Z

    sput-boolean v3, Lcom/nd/commplatform/d/c/bs;->H:Z

    sput-boolean v2, Lcom/nd/commplatform/d/c/bs;->I:Z

    sput-boolean v2, Lcom/nd/commplatform/d/c/bs;->J:Z

    sput-boolean v3, Lcom/nd/commplatform/d/c/bs;->K:Z

    sput-boolean v3, Lcom/nd/commplatform/d/c/bs;->L:Z

    sput-boolean v2, Lcom/nd/commplatform/d/c/bs;->M:Z

    sput-boolean v2, Lcom/nd/commplatform/d/c/bs;->N:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/nd/commplatform/d/c/bs;->p:Z

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->f:Ljava/lang/String;

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->g:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->h:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->r:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nd/commplatform/d/c/bs;->H:Z

    sput-boolean v1, Lcom/nd/commplatform/d/c/bs;->N:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/ei;->a()Lcom/nd/commplatform/d/c/ei;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/d/c/ei;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "/sdcard"

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ndcommplatform"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "contact"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
