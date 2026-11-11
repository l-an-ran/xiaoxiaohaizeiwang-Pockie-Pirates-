.class public Lcom/nd/commplatform/d/c/om;
.super Lcom/nd/commplatform/d/c/or;


# static fields
.field private static a:Lcom/nd/commplatform/d/c/om;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/d/c/om;->a:Lcom/nd/commplatform/d/c/om;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/or;-><init>()V

    return-void
.end method

.method public static a()Lcom/nd/commplatform/d/c/om;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/om;->a:Lcom/nd/commplatform/d/c/om;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/om;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/om;-><init>()V

    sput-object v0, Lcom/nd/commplatform/d/c/om;->a:Lcom/nd/commplatform/d/c/om;

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/om;->a:Lcom/nd/commplatform/d/c/om;

    return-object v0
.end method


# virtual methods
.method d()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
