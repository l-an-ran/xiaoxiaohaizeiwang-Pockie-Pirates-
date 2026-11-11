.class public Lcom/nd/commplatform/d/c/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/nd/commplatform/d/c/d;

.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nd/commplatform/d/c/e;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/nd/commplatform/d/c/d;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/e;->a:Lcom/nd/commplatform/d/c/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/d;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nd/commplatform/d/c/e;->a:Lcom/nd/commplatform/d/c/d;

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/e;->a:Lcom/nd/commplatform/d/c/d;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, p3}, Ljava/util/Vector;-><init>(I)V

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/e;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/nd/commplatform/d/c/e;->a(Landroid/content/Context;)Lcom/nd/commplatform/d/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/d;->a()Ljava/util/List;

    move-result-object v5

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    move-object v0, v4

    :goto_1
    return-object v0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v0, p3, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_3
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/c;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v3

    :goto_2
    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v0, p3, :cond_4

    move-object v0, v4

    goto :goto_1

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/c;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/d/c/e;->a:Lcom/nd/commplatform/d/c/d;

    sput-object v0, Lcom/nd/commplatform/d/c/e;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nd/commplatform/d/c/e;->c:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/nd/commplatform/d/c/e;->c(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v1, Lcom/nd/commplatform/d/c/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/e;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/nd/commplatform/d/c/e;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    sput-object v0, Lcom/nd/commplatform/d/c/e;->b:Ljava/util/ArrayList;

    sget-object v0, Lcom/nd/commplatform/d/c/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/nd/commplatform/d/c/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nd/commplatform/d/c/e;->c:Z

    return-void

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/e;->b:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/nd/commplatform/d/c/e;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/nd/commplatform/d/c/e;->a(Landroid/content/Context;)Lcom/nd/commplatform/d/c/d;

    move-result-object v1

    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    invoke-virtual {v1, p1, p2}, Lcom/nd/commplatform/d/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p0}, Lcom/nd/commplatform/d/c/d;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/nd/commplatform/d/c/e;->b(Ljava/lang/String;)V

    :cond_2
    invoke-static {p0}, Lcom/nd/commplatform/d/c/e;->a(Landroid/content/Context;)Lcom/nd/commplatform/d/c/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nd/commplatform/d/c/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p0}, Lcom/nd/commplatform/d/c/d;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/nd/commplatform/d/c/e;->c(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/nd/commplatform/d/c/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/nd/commplatform/d/c/e;->c:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcom/nd/commplatform/d/c/e;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    sput-object v0, Lcom/nd/commplatform/d/c/e;->b:Ljava/util/ArrayList;

    sget-object v0, Lcom/nd/commplatform/d/c/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {p0}, Lcom/nd/commplatform/d/c/e;->a(Landroid/content/Context;)Lcom/nd/commplatform/d/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/d;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/d/c/d;->a(Landroid/content/Context;)V

    :cond_0
    return v1

    :cond_1
    sget-object v0, Lcom/nd/commplatform/d/c/e;->b:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 6

    const/4 v2, -0x1

    sget-object v0, Lcom/nd/commplatform/d/c/e;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    sput-object v0, Lcom/nd/commplatform/d/c/e;->b:Ljava/util/ArrayList;

    const/4 v3, 0x0

    sget-object v0, Lcom/nd/commplatform/d/c/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    move v1, v3

    :goto_1
    if-nez v1, :cond_3

    :goto_2
    return v2

    :cond_1
    sget-object v0, Lcom/nd/commplatform/d/c/e;->b:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v5, v0

    move v0, v1

    move v1, v5

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_2
.end method

.method public static c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/nd/commplatform/d/c/e;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    sput-object v0, Lcom/nd/commplatform/d/c/e;->b:Ljava/util/ArrayList;

    sget-object v0, Lcom/nd/commplatform/d/c/e;->b:Ljava/util/ArrayList;

    return-object v0

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/e;->b:Ljava/util/ArrayList;

    goto :goto_0
.end method
