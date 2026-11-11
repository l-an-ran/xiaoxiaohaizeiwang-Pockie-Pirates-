.class final Lcom/nd/commplatform/d/c/ik$b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ik$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ik$b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ik$b;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ik$b$2;->a:Lcom/nd/commplatform/d/c/ik$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$b$2;->a:Lcom/nd/commplatform/d/c/ik$b;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ik$b;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ik;->l(Lcom/nd/commplatform/d/c/ik;)V

    return-void
.end method
