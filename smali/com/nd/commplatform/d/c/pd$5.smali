.class final Lcom/nd/commplatform/d/c/pd$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/qe$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/pd;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/pd;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/pd;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/pd$5;->a:Lcom/nd/commplatform/d/c/pd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJJ)V
    .locals 6

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pd$5;->a:Lcom/nd/commplatform/d/c/pd;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pd;->a(Lcom/nd/commplatform/d/c/pd;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pd$5;->a:Lcom/nd/commplatform/d/c/pd;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pd;->b(Lcom/nd/commplatform/d/c/pd;)Lcom/nd/commplatform/d/c/og$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pd$5;->a:Lcom/nd/commplatform/d/c/pd;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pd;->b(Lcom/nd/commplatform/d/c/pd;)Lcom/nd/commplatform/d/c/og$a;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/nd/commplatform/d/c/og$a;->a(IJJ)V

    :cond_0
    return-void
.end method
