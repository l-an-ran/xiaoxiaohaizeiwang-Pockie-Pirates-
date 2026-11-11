.class public Lcomndanalytics/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcomndanalytics/d$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcomndanalytics/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcomndanalytics/d;->a:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcomndanalytics/d;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcomndanalytics/d;
    .locals 2

    new-instance v0, Lcomndanalytics/d;

    invoke-direct {v0}, Lcomndanalytics/d;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcomndanalytics/d;->a:Z

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcomndanalytics/d$a;)V
    .locals 1

    iget-object v0, p0, Lcomndanalytics/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcomndanalytics/d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcomndanalytics/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcomndanalytics/d$a;
    .locals 1

    iget-object v0, p0, Lcomndanalytics/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcomndanalytics/d$a;

    if-nez v0, :cond_0

    sget-object v0, Lcomndanalytics/d$a;->a:Lcomndanalytics/d$a;

    :cond_0
    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcomndanalytics/d$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcomndanalytics/d;->b:Ljava/util/Map;

    return-object v0
.end method
