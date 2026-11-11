.class public final enum Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/analytics/NdAnalyticsDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RESULT_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum RESULT_FAIL:Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

.field public static final enum RESULT_SUCCESS:Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

.field private static final synthetic a:[Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

    const-string v1, "RESULT_FAIL"

    invoke-direct {v0, v1, v2}, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;->RESULT_FAIL:Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

    new-instance v0, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

    const-string v1, "RESULT_SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;->RESULT_SUCCESS:Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

    sget-object v1, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;->RESULT_FAIL:Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;->RESULT_SUCCESS:Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;->a:[Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

    return-object v0
.end method

.method public static values()[Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;
    .locals 1

    sget-object v0, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;->a:[Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

    invoke-virtual {v0}, [Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

    return-object v0
.end method
