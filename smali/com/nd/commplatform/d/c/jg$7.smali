.class final Lcom/nd/commplatform/d/c/jg$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/jg;->a(ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/nd/commplatform/d/c/jg;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/jg;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/jg$7;->b:Lcom/nd/commplatform/d/c/jg;

    iput-boolean p2, p0, Lcom/nd/commplatform/d/c/jg$7;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/jg$7;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    :cond_0
    return-void
.end method
