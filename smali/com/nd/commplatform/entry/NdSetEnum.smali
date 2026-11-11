.class public final enum Lcom/nd/commplatform/entry/NdSetEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nd/commplatform/entry/NdSetEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONSUME_RECORDS:Lcom/nd/commplatform/entry/NdSetEnum;

.field private static final synthetic ENUM$VALUES:[Lcom/nd/commplatform/entry/NdSetEnum;

.field public static final enum MORE:Lcom/nd/commplatform/entry/NdSetEnum;

.field public static final enum PASS_MANAGE:Lcom/nd/commplatform/entry/NdSetEnum;

.field public static final enum RECHARGE:Lcom/nd/commplatform/entry/NdSetEnum;

.field public static final enum RECHARGE_RECORDS:Lcom/nd/commplatform/entry/NdSetEnum;

.field public static final enum RECORDS:Lcom/nd/commplatform/entry/NdSetEnum;

.field public static final enum SET_PERMISSIONS:Lcom/nd/commplatform/entry/NdSetEnum;

.field public static final enum SET_PERSON_INFO:Lcom/nd/commplatform/entry/NdSetEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/nd/commplatform/entry/NdSetEnum;

    const-string v1, "MORE"

    invoke-direct {v0, v1, v3}, Lcom/nd/commplatform/entry/NdSetEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/commplatform/entry/NdSetEnum;->MORE:Lcom/nd/commplatform/entry/NdSetEnum;

    new-instance v0, Lcom/nd/commplatform/entry/NdSetEnum;

    const-string v1, "SET_PERSON_INFO"

    invoke-direct {v0, v1, v4}, Lcom/nd/commplatform/entry/NdSetEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/commplatform/entry/NdSetEnum;->SET_PERSON_INFO:Lcom/nd/commplatform/entry/NdSetEnum;

    new-instance v0, Lcom/nd/commplatform/entry/NdSetEnum;

    const-string v1, "PASS_MANAGE"

    invoke-direct {v0, v1, v5}, Lcom/nd/commplatform/entry/NdSetEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/commplatform/entry/NdSetEnum;->PASS_MANAGE:Lcom/nd/commplatform/entry/NdSetEnum;

    new-instance v0, Lcom/nd/commplatform/entry/NdSetEnum;

    const-string v1, "SET_PERMISSIONS"

    invoke-direct {v0, v1, v6}, Lcom/nd/commplatform/entry/NdSetEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/commplatform/entry/NdSetEnum;->SET_PERMISSIONS:Lcom/nd/commplatform/entry/NdSetEnum;

    new-instance v0, Lcom/nd/commplatform/entry/NdSetEnum;

    const-string v1, "RECHARGE"

    invoke-direct {v0, v1, v7}, Lcom/nd/commplatform/entry/NdSetEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/commplatform/entry/NdSetEnum;->RECHARGE:Lcom/nd/commplatform/entry/NdSetEnum;

    new-instance v0, Lcom/nd/commplatform/entry/NdSetEnum;

    const-string v1, "RECORDS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nd/commplatform/entry/NdSetEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/commplatform/entry/NdSetEnum;->RECORDS:Lcom/nd/commplatform/entry/NdSetEnum;

    new-instance v0, Lcom/nd/commplatform/entry/NdSetEnum;

    const-string v1, "RECHARGE_RECORDS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nd/commplatform/entry/NdSetEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/commplatform/entry/NdSetEnum;->RECHARGE_RECORDS:Lcom/nd/commplatform/entry/NdSetEnum;

    new-instance v0, Lcom/nd/commplatform/entry/NdSetEnum;

    const-string v1, "CONSUME_RECORDS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nd/commplatform/entry/NdSetEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/commplatform/entry/NdSetEnum;->CONSUME_RECORDS:Lcom/nd/commplatform/entry/NdSetEnum;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/nd/commplatform/entry/NdSetEnum;

    sget-object v1, Lcom/nd/commplatform/entry/NdSetEnum;->MORE:Lcom/nd/commplatform/entry/NdSetEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nd/commplatform/entry/NdSetEnum;->SET_PERSON_INFO:Lcom/nd/commplatform/entry/NdSetEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nd/commplatform/entry/NdSetEnum;->PASS_MANAGE:Lcom/nd/commplatform/entry/NdSetEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nd/commplatform/entry/NdSetEnum;->SET_PERMISSIONS:Lcom/nd/commplatform/entry/NdSetEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nd/commplatform/entry/NdSetEnum;->RECHARGE:Lcom/nd/commplatform/entry/NdSetEnum;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nd/commplatform/entry/NdSetEnum;->RECORDS:Lcom/nd/commplatform/entry/NdSetEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nd/commplatform/entry/NdSetEnum;->RECHARGE_RECORDS:Lcom/nd/commplatform/entry/NdSetEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nd/commplatform/entry/NdSetEnum;->CONSUME_RECORDS:Lcom/nd/commplatform/entry/NdSetEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nd/commplatform/entry/NdSetEnum;->ENUM$VALUES:[Lcom/nd/commplatform/entry/NdSetEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/commplatform/entry/NdSetEnum;
    .locals 1

    const-class v0, Lcom/nd/commplatform/entry/NdSetEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdSetEnum;

    return-object v0
.end method

.method public static values()[Lcom/nd/commplatform/entry/NdSetEnum;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nd/commplatform/entry/NdSetEnum;->ENUM$VALUES:[Lcom/nd/commplatform/entry/NdSetEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/nd/commplatform/entry/NdSetEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
