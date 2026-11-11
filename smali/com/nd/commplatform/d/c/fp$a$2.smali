.class final Lcom/nd/commplatform/d/c/fp$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fp$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/fp$a;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fp$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fp$a$2;->a:Lcom/nd/commplatform/d/c/fp$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$a$2;->a:Lcom/nd/commplatform/d/c/fp$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fp$a;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fp;->d(Lcom/nd/commplatform/d/c/fp;)V

    return-void
.end method
