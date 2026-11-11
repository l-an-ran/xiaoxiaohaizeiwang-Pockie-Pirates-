.class final Lcom/nd/commplatform/d/c/iw$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/nd/commplatform/d/c/iw$c;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nd/commplatform/d/c/iw$c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    const-string v0, "0000"

    iget-object v1, p0, Lcom/nd/commplatform/d/c/iw$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
