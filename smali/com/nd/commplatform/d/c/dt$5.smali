.class final Lcom/nd/commplatform/d/c/dt$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/dt;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/dt;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/dt;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dt$5;->a:Lcom/nd/commplatform/d/c/dt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
