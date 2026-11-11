.class final Lcom/nd/commplatform/d/c/nm$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/nm;->a(Lcom/nd/commplatform/widget/NdFrameInnerContent;Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/nd/commplatform/d/c/nm;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/nm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/nm$2;->e:Lcom/nd/commplatform/d/c/nm;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/nm$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/nm$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/nd/commplatform/d/c/nm$2;->c:Ljava/lang/String;

    iput p5, p0, Lcom/nd/commplatform/d/c/nm$2;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/nm$2;->e:Lcom/nd/commplatform/d/c/nm;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/nm$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/nm$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/nm$2;->c:Ljava/lang/String;

    iget v4, p0, Lcom/nd/commplatform/d/c/nm$2;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nd/commplatform/d/c/nm;->a(Lcom/nd/commplatform/d/c/nm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
