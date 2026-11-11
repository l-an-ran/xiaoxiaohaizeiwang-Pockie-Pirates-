.class Lcom/nd/commplatform/d/c/h$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/h;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/d/c/h;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/nd/commplatform/d/c/h$b;->a:Lcom/nd/commplatform/d/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nd/commplatform/d/c/h$b;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/nd/commplatform/d/c/h$b;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/h$b;->d:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nd/commplatform/d/c/h$b;->d:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/h$b;->c:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/h$b;->d:Z

    return v0
.end method
