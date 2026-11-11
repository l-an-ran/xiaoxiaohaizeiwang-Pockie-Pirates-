.class public Lcom/nd/commplatform/entry/NdThirdPartyPlatform;
.super Ljava/lang/Object;


# static fields
.field public static final LOGIN_BY_CLIENT:I = 0x1

.field public static final LOGIN_BY_SERVER:I = 0x2


# instance fields
.field private mCheckSum:Ljava/lang/String;

.field private mClientLogin:I

.field private mPlatformName:Ljava/lang/String;

.field private mPlatformType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "checkSum"    # Ljava/lang/String;
    .param p4, "aLogin"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->mPlatformType:Ljava/lang/String;

    iput-object p2, p0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->mPlatformName:Ljava/lang/String;

    iput-object p3, p0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->mCheckSum:Ljava/lang/String;

    iput p4, p0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->mClientLogin:I

    return-void
.end method


# virtual methods
.method public getCheckSum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->mCheckSum:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginType()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->mClientLogin:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->mPlatformName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->mPlatformType:Ljava/lang/String;

    return-object v0
.end method
