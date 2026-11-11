.class public Lcom/nd/commplatform/d/c/pz;
.super Ljava/lang/Object;


# instance fields
.field private a:[B

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pz;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/pz;->b:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/pz;->a:[B

    return-void
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pz;->a:[B

    return-object v0
.end method
