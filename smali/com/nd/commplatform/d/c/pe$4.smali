.class final Lcom/nd/commplatform/d/c/pe$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/qe$f;


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

    iput-object p1, p0, Lcom/nd/commplatform/d/c/pe$4;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$4;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->a(Lcom/nd/commplatform/d/c/pe;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$4;->a:Lcom/nd/commplatform/d/c/pe;

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lcom/nd/commplatform/d/c/pe;->a(Lcom/nd/commplatform/d/c/pe;II)V

    :cond_0
    return-void
.end method
