.class public Lcom/nd/commplatform/entry/NdAdvanceSearch;
.super Ljava/lang/Object;


# instance fields
.field private ageBegin:I

.field private ageEnd:I

.field private city:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private sex:Lcom/nd/commplatform/entry/NdSex;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/nd/commplatform/entry/NdAdvanceSearch;->ageBegin:I

    iput v0, p0, Lcom/nd/commplatform/entry/NdAdvanceSearch;->ageEnd:I

    sget-object v0, Lcom/nd/commplatform/entry/NdSex;->NULL:Lcom/nd/commplatform/entry/NdSex;

    iput-object v0, p0, Lcom/nd/commplatform/entry/NdAdvanceSearch;->sex:Lcom/nd/commplatform/entry/NdSex;

    return-void
.end method


# virtual methods
.method public getAgeBegin()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdAdvanceSearch;->ageBegin:I

    return v0
.end method

.method public getAgeEnd()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdAdvanceSearch;->ageEnd:I

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAdvanceSearch;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {p1}, Lcom/nd/commplatform/widget/AreaCsv;->a(Landroid/content/Context;)Lcom/nd/commplatform/widget/AreaCsv;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdAdvanceSearch;->province:Ljava/lang/String;

    iget-object v2, p0, Lcom/nd/commplatform/entry/NdAdvanceSearch;->city:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/widget/AreaCsv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAdvanceSearch;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getProvinceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {p1}, Lcom/nd/commplatform/widget/AreaCsv;->a(Landroid/content/Context;)Lcom/nd/commplatform/widget/AreaCsv;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdAdvanceSearch;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/AreaCsv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSex()Lcom/nd/commplatform/entry/NdSex;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAdvanceSearch;->sex:Lcom/nd/commplatform/entry/NdSex;

    return-object v0
.end method

.method public setAgeBegin(I)V
    .locals 0
    .param p1, "ageBegin"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdAdvanceSearch;->ageBegin:I

    return-void
.end method

.method public setAgeEnd(I)V
    .locals 0
    .param p1, "ageEnd"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdAdvanceSearch;->ageEnd:I

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAdvanceSearch;->city:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAdvanceSearch;->province:Ljava/lang/String;

    return-void
.end method

.method public setSex(Lcom/nd/commplatform/entry/NdSex;)V
    .locals 0
    .param p1, "sex"    # Lcom/nd/commplatform/entry/NdSex;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAdvanceSearch;->sex:Lcom/nd/commplatform/entry/NdSex;

    return-void
.end method
