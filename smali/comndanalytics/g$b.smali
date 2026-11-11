.class public Lcomndanalytics/g$b;
.super Lcomndanalytics/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcomndanalytics/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    new-instance v0, Lcomndanalytics/g$a;

    invoke-direct {v0, p1, p2}, Lcomndanalytics/g$a;-><init>(Landroid/content/Context;Z)V

    invoke-direct {p0, v0}, Lcomndanalytics/m;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcomndanalytics/m;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-static {p1}, Lcomndanalytics/g;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcomndanalytics/g;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcomndanalytics/g;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS tab_error"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS tab_event"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS tab_session"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {p1}, Lcomndanalytics/g;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcomndanalytics/g;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcomndanalytics/g;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
