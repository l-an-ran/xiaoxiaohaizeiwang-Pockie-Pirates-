.class Lcom/nd/commplatform/d/c/by;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# instance fields
.field protected d:I

.field protected e:I

.field protected f:Lcom/nd/commplatform/widget/NdFrameInnerContent;


# direct methods
.method public constructor <init>(ILcom/nd/commplatform/widget/NdFrameInnerContent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nd/commplatform/d/c/by;->d:I

    iput-object p2, p0, Lcom/nd/commplatform/d/c/by;->f:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    const/4 v0, 0x1

    iput v0, p0, Lcom/nd/commplatform/d/c/by;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/by;->d:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/d/c/by;->e:I

    return-void
.end method

.method public b()Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/by;->f:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/by;->e:I

    return v0
.end method
