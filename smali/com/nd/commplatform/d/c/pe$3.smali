.class final Lcom/nd/commplatform/d/c/pe$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/qe$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/pe;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/pe;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/pe;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/pe$3;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$3;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->a(Lcom/nd/commplatform/d/c/pe;)I

    move-result v0

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$3;->a:Lcom/nd/commplatform/d/c/pe;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/pe;->a(Lcom/nd/commplatform/d/c/pe;II)V

    :cond_0
    return-void
.end method
