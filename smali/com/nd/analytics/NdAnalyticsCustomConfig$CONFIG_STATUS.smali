.class public final enum Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/analytics/NdAnalyticsCustomConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CONFIG_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NULL:Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

.field public static final enum TIMEOUT:Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

.field public static final enum VALID:Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

.field private static final synthetic a:[Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    const-string v1, "NULL"

    invoke-direct {v0, v1, v2}, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;->NULL:Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    new-instance v0, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v3}, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;->TIMEOUT:Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    new-instance v0, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    const-string v1, "VALID"

    invoke-direct {v0, v1, v4}, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;->VALID:Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    sget-object v1, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;->NULL:Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;->TIMEOUT:Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;->VALID:Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;->a:[Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;
    .locals 1

    sget-object v0, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;->a:[Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    invoke-virtual {v0}, [Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    return-object v0
.end method
