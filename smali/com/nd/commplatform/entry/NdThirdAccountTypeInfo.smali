.class public Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;
.super Ljava/lang/Object;


# instance fields
.field private accountName:Ljava/lang/String;

.field private accountType:I

.field private isValidated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->isValidated:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "accountType"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "isValidated"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->isValidated:Z

    iput-object p2, p0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->accountName:Ljava/lang/String;

    iput p1, p0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->accountType:I

    iput-boolean p3, p0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->isValidated:Z

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->accountType:I

    return v0
.end method

.method public isValidated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->isValidated:Z

    return v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->accountName:Ljava/lang/String;

    return-void
.end method

.method public setAccountType(I)V
    .locals 0
    .param p1, "accountType"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->accountType:I

    return-void
.end method

.method public setValidated(Z)V
    .locals 0
    .param p1, "isValidated"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->isValidated:Z

    return-void
.end method
