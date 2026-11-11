.class final Lcom/nd/commplatform/d/c/iq$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/iq$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/nd/commplatform/d/c/iq$a;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/iq$a;II)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/iq$a$1;->c:Lcom/nd/commplatform/d/c/iq$a;

    iput p2, p0, Lcom/nd/commplatform/d/c/iq$a$1;->a:I

    iput p3, p0, Lcom/nd/commplatform/d/c/iq$a$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    iget v0, p0, Lcom/nd/commplatform/d/c/iq$a$1;->a:I

    sub-int v1, v0, p2

    iget v0, p0, Lcom/nd/commplatform/d/c/iq$a$1;->b:I

    :goto_0
    if-gez v1, :cond_0

    add-int/lit8 v1, v1, 0xc

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/nd/commplatform/d/c/iq$a$1;->c:Lcom/nd/commplatform/d/c/iq$a;

    iget-object v2, v2, Lcom/nd/commplatform/d/c/iq$a;->a:Lcom/nd/commplatform/d/c/iq;

    invoke-virtual {v2, v0, v1}, Lcom/nd/commplatform/d/c/iq;->a(II)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
