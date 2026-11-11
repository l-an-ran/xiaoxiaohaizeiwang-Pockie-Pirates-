.class final Lcom/nd/commplatform/d/c/ia$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ia;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ia;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ia$2;->a:Lcom/nd/commplatform/d/c/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ia$2;->a:Lcom/nd/commplatform/d/c/ia;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ia;->b(Lcom/nd/commplatform/d/c/ia;)V

    return-void
.end method
