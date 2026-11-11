.class final Lcom/nd/commplatform/d/c/fe$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fe;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/fe;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fe;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fe$3;->a:Lcom/nd/commplatform/d/c/fe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe$3;->a:Lcom/nd/commplatform/d/c/fe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fe;->c(Lcom/nd/commplatform/d/c/fe;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fe$3;->a:Lcom/nd/commplatform/d/c/fe;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/fe;->d(Lcom/nd/commplatform/d/c/fe;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/fn;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
