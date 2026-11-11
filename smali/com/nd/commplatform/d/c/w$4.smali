.class Lcom/nd/commplatform/d/c/w$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/w;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/w;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/w;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/w$4;->a:Lcom/nd/commplatform/d/c/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nd/commplatform/d/c/bs;->p:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    return-void
.end method
