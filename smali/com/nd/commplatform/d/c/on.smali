.class public Lcom/nd/commplatform/d/c/on;
.super Lcom/nd/commplatform/d/c/or;


# static fields
.field private static a:Lcom/nd/commplatform/d/c/on;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/d/c/on;->a:Lcom/nd/commplatform/d/c/on;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/or;-><init>()V

    return-void
.end method

.method public static a()Lcom/nd/commplatform/d/c/on;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/on;->a:Lcom/nd/commplatform/d/c/on;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/on;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/on;-><init>()V

    sput-object v0, Lcom/nd/commplatform/d/c/on;->a:Lcom/nd/commplatform/d/c/on;

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/on;->a:Lcom/nd/commplatform/d/c/on;

    return-object v0
.end method


# virtual methods
.method d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
