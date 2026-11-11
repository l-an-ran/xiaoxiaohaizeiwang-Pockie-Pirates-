.class Lcom/nd/commplatform/d/c/ef$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/ef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ef;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/nd/commplatform/d/c/en;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/d/c/ef;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ef$a;->a:Lcom/nd/commplatform/d/c/ef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nd/commplatform/d/c/en;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/en;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ef$a;->d:Lcom/nd/commplatform/d/c/en;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ef$a;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/ef$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef$a;->d:Lcom/nd/commplatform/d/c/en;

    new-instance v1, Lcom/nd/commplatform/d/c/ef$a$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ef$a$1;-><init>(Lcom/nd/commplatform/d/c/ef$a;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/en;->a(Lcom/nd/commplatform/d/c/en$a;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ef$a;)Lcom/nd/commplatform/d/c/ef;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef$a;->a:Lcom/nd/commplatform/d/c/ef;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nd/commplatform/d/c/ef$a;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef$a;->d:Lcom/nd/commplatform/d/c/en;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/en;->a(Lcom/nd/commplatform/d/c/en$a;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef$a;->d:Lcom/nd/commplatform/d/c/en;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/en;->a()V

    return-void
.end method

.method public b()Lcom/nd/commplatform/d/c/en;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef$a;->d:Lcom/nd/commplatform/d/c/en;

    return-object v0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef$a;->d:Lcom/nd/commplatform/d/c/en;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ef$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/en;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef$a;->d:Lcom/nd/commplatform/d/c/en;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ef$a;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/en;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ef$a;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef$a;->a:Lcom/nd/commplatform/d/c/ef;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ef;->b(Lcom/nd/commplatform/d/c/ef;)V

    return-void
.end method
