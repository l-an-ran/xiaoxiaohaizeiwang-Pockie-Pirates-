.class Lcom/nd/commplatform/d/c/oj$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/oj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field final synthetic c:Lcom/nd/commplatform/d/c/oj;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/d/c/oj;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/oj$a;->c:Lcom/nd/commplatform/d/c/oj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nd/commplatform/d/c/oj$a;->a:Ljava/lang/String;

    iput p3, p0, Lcom/nd/commplatform/d/c/oj$a;->b:I

    return-void
.end method
