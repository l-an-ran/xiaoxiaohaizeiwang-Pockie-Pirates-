.class public Lcom/nd/commplatform/d/c/eg;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/nd/commplatform/d/c/ek;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/d/c/eg;->h:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eg;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/d/c/eg;->h:I

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/ek;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/eg;->g:Lcom/nd/commplatform/d/c/ek;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/eg;->e:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eg;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eg;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/nd/commplatform/d/c/eg;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/nd/commplatform/d/c/ek;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eg;->g:Lcom/nd/commplatform/d/c/ek;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/eg;->h:I

    return v0
.end method
