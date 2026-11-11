.class final Lcom/nd/commplatform/d/c/ik$14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ik;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/nd/commplatform/d/c/ik;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ik;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ik$14;->c:Lcom/nd/commplatform/d/c/ik;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/ik$14;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/ik$14;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$14;->c:Lcom/nd/commplatform/d/c/ik;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$14;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ik$14;->b:[Ljava/lang/String;

    aget-object v2, v2, p2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/ik;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
