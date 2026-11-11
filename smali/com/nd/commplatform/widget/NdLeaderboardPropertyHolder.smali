.class public Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;
.super Lcom/nd/commplatform/widget/NdAppPropertyHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdAppPropertyHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/jo$d;->bp:I

    return v0
.end method

.method protected b()I
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ho:I

    return v0
.end method

.method protected c()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;->a:Ljava/lang/String;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/fh;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
