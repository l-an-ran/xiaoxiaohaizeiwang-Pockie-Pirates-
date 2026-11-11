.class public final enum Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/entry/NdVirtualCurrency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NdVirtualCurrencyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BEAN91:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

.field public static final enum CUSTOM:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

.field private static final synthetic ENUM$VALUES:[Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    const-string v1, "BEAN91"

    invoke-direct {v0, v1, v2}, Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;->BEAN91:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    new-instance v0, Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v3}, Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;->CUSTOM:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    sget-object v1, Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;->BEAN91:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;->CUSTOM:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;->ENUM$VALUES:[Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;
    .locals 1

    const-class v0, Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    return-object v0
.end method

.method public static values()[Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;->ENUM$VALUES:[Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    array-length v1, v0

    new-array v2, v1, [Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
