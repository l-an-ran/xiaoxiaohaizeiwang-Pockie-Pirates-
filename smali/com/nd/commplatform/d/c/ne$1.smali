.class final Lcom/nd/commplatform/d/c/ne$1;
.super Lcom/nd/commplatform/d/c/mr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ne;->a(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/d/c/mr",
        "<",
        "Lcom/nd/commplatform/d/c/my;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/nd/commplatform/d/c/ne;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ne;Lcom/nd/commplatform/d/c/my;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ne$1;->b:Lcom/nd/commplatform/d/c/ne;

    invoke-direct {p0, p2}, Lcom/nd/commplatform/d/c/mr;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ne$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/my;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/my;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ne$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/my;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/my;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
