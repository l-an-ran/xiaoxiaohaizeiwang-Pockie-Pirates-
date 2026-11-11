.class public Lcomndanalytics/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcomndanalytics/g$a;,
        Lcomndanalytics/g$b;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "91analytics_0515.db"

.field private static final d:I = 0x1

.field private static final e:Ljava/lang/String; = "/ndcommplatform/91analytics_0515.db"

.field private static final f:Ljava/lang/String; = "91analytics_SDK_0515.db"

.field private static final g:Ljava/lang/String; = "/ndcommplatform/91analytics_SDK_0515.db"


# instance fields
.field public a:Lcomndanalytics/g$b;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcomndanalytics/g;->b:Z

    invoke-direct {p0, p1, p2}, Lcomndanalytics/g;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcomndanalytics/g;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcomndanalytics/g$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v0, "/ndcommplatform/91analytics_SDK_0515.db"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcomndanalytics/g$b;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcomndanalytics/g;->a:Lcomndanalytics/g$b;

    :goto_1
    return-void

    :cond_0
    const-string v0, "/ndcommplatform/91analytics_0515.db"

    goto :goto_0

    :cond_1
    new-instance v0, Lcomndanalytics/g$b;

    invoke-direct {v0, p1, p2}, Lcomndanalytics/g$b;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcomndanalytics/g;->a:Lcomndanalytics/g$b;

    goto :goto_1
.end method

.method static synthetic a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-static {p0}, Lcomndanalytics/g;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-static {p0}, Lcomndanalytics/g;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-static {p0}, Lcomndanalytics/g;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private static d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE tab_error (_id INTEGER PRIMARY KEY AUTOINCREMENT, log TEXT NOT NULL, millis INTEGER, versionname TEXT)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static e(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE tab_event (_id INTEGER PRIMARY KEY AUTOINCREMENT, id TEXT NOT NULL, label TEXT, millis INTEGER, frequency INTEGER NOT NULL, daymillis INTEGER, session INTEGER NOT NULL, netmode INTEGER NOT NULL)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "Create Index tab_event_idx ON tab_event(id)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static f(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE tab_session (_id INTEGER PRIMARY KEY AUTOINCREMENT, session INTEGER NOT NULL, begintime INTEGER NOT NULL, endtime INTEGER NOT NULL, millis INTEGER NOT NULL)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "Create Index tab_session_idx ON tab_session(session)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
