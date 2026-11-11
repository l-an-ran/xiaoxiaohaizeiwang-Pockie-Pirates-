.class final enum Lcom/nd/commplatform/d/c/hj$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/hj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nd/commplatform/d/c/hj$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nd/commplatform/d/c/hj$b;

.field public static final enum b:Lcom/nd/commplatform/d/c/hj$b;

.field public static final enum c:Lcom/nd/commplatform/d/c/hj$b;

.field public static final enum d:Lcom/nd/commplatform/d/c/hj$b;

.field public static final enum e:Lcom/nd/commplatform/d/c/hj$b;

.field private static final synthetic f:[Lcom/nd/commplatform/d/c/hj$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nd/commplatform/d/c/hj$b;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v2}, Lcom/nd/commplatform/d/c/hj$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/commplatform/d/c/hj$b;->a:Lcom/nd/commplatform/d/c/hj$b;

    new-instance v0, Lcom/nd/commplatform/d/c/hj$b;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v3}, Lcom/nd/commplatform/d/c/hj$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/commplatform/d/c/hj$b;->b:Lcom/nd/commplatform/d/c/hj$b;

    new-instance v0, Lcom/nd/commplatform/d/c/hj$b;

    const-string v1, "VALID"

    invoke-direct {v0, v1, v4}, Lcom/nd/commplatform/d/c/hj$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/commplatform/d/c/hj$b;->c:Lcom/nd/commplatform/d/c/hj$b;

    new-instance v0, Lcom/nd/commplatform/d/c/hj$b;

    const-string v1, "INVALID_PENDING"

    invoke-direct {v0, v1, v5}, Lcom/nd/commplatform/d/c/hj$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/commplatform/d/c/hj$b;->d:Lcom/nd/commplatform/d/c/hj$b;

    new-instance v0, Lcom/nd/commplatform/d/c/hj$b;

    const-string v1, "INVALID_OPTIMIZE"

    invoke-direct {v0, v1, v6}, Lcom/nd/commplatform/d/c/hj$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/commplatform/d/c/hj$b;->e:Lcom/nd/commplatform/d/c/hj$b;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nd/commplatform/d/c/hj$b;

    sget-object v1, Lcom/nd/commplatform/d/c/hj$b;->a:Lcom/nd/commplatform/d/c/hj$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nd/commplatform/d/c/hj$b;->b:Lcom/nd/commplatform/d/c/hj$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nd/commplatform/d/c/hj$b;->c:Lcom/nd/commplatform/d/c/hj$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nd/commplatform/d/c/hj$b;->d:Lcom/nd/commplatform/d/c/hj$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nd/commplatform/d/c/hj$b;->e:Lcom/nd/commplatform/d/c/hj$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nd/commplatform/d/c/hj$b;->f:[Lcom/nd/commplatform/d/c/hj$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/nd/commplatform/d/c/hj$b;
    .locals 1

    const-class v0, Lcom/nd/commplatform/d/c/hj$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/hj$b;

    return-object v0
.end method

.method public static a()[Lcom/nd/commplatform/d/c/hj$b;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/hj$b;->f:[Lcom/nd/commplatform/d/c/hj$b;

    invoke-virtual {v0}, [Lcom/nd/commplatform/d/c/hj$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nd/commplatform/d/c/hj$b;

    return-object v0
.end method
