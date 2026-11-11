.class public Lcom/nd/commplatform/d/c/hh;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/hh;->a:Z

    iput v0, p0, Lcom/nd/commplatform/d/c/hh;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/d/c/hh;->b:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nd/commplatform/d/c/hh;->a:Z

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/hh;->b:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/hh;->a:Z

    return v0
.end method
