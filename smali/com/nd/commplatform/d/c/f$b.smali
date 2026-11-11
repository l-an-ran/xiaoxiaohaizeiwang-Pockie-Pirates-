.class Lcom/nd/commplatform/d/c/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/f;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/f$b;->a:Lcom/nd/commplatform/d/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/f;Lcom/nd/commplatform/d/c/f$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/f$b;-><init>(Lcom/nd/commplatform/d/c/f;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v0, 0x3ef

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method
