.class final Lcom/nd/commplatform/d/c/ez$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ez;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ez;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ez;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ez$5;->a:Lcom/nd/commplatform/d/c/ez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/fe;->a(Ljava/lang/String;I)V

    return-void
.end method
