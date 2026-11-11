.class public Lcomndanalytics/g$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcomndanalytics/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "91analytics_SDK_0515.db"

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void

    :cond_0
    const-string v0, "91analytics_0515.db"

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    invoke-static {p1}, Lcomndanalytics/g;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcomndanalytics/g;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcomndanalytics/g;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
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
