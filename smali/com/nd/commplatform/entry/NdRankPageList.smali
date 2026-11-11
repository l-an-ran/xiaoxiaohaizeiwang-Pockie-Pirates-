.class public Lcom/nd/commplatform/entry/NdRankPageList;
.super Lcom/nd/commplatform/entry/NdPageList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nd/commplatform/entry/NdPageList",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3c115ea1faf5553dL


# instance fields
.field private mExtras:Ljava/lang/String;

.field private t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/entry/NdPageList;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtras()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdRankPageList;->mExtras:Ljava/lang/String;

    return-object v0
.end method

.method public getT()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdRankPageList;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public setExtras(Ljava/lang/String;)V
    .locals 0
    .param p1, "extras"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/nd/commplatform/entry/NdRankPageList;, "Lcom/nd/commplatform/entry/NdRankPageList<TT;>;"
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdRankPageList;->mExtras:Ljava/lang/String;

    return-void
.end method

.method public setT(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/nd/commplatform/entry/NdRankPageList;, "Lcom/nd/commplatform/entry/NdRankPageList<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdRankPageList;->t:Ljava/lang/Object;

    return-void
.end method
