.class public Lcom/nd/commplatform/d/c/my;
.super Ljava/lang/Object;


# static fields
.field public static final f:I = 0xffffff

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x2712

.field public static final j:I = 0x2714

.field public static final k:I = 0x2716

.field public static final l:I = 0x2718

.field public static final m:I = 0x271a

.field public static final n:I = 0x1

.field public static final o:I = 0x2713

.field public static final p:I = 0x2717

.field public static final q:I = 0x2711

.field public static final r:I = 0x2715

.field public static final s:I = 0x2719


# instance fields
.field protected b:I

.field protected c:Lcom/nd/commplatform/d/c/nb;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/d/c/my;->b:I

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/nb;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/my;->c:Lcom/nd/commplatform/d/c/nb;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/my;->d:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/my;->b:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/my;->e:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/nd/commplatform/d/c/nb;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/my;->c:Lcom/nd/commplatform/d/c/nb;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/my;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/my;->e:Ljava/lang/String;

    return-object v0
.end method
