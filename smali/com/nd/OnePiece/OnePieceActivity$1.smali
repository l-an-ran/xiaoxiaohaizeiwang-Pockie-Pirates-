.class Lcom/nd/OnePiece/OnePieceActivity$1;
.super Ljava/lang/Object;
.source "OnePieceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/OnePiece/OnePieceActivity;->showDialog1(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nd/OnePiece/OnePieceActivity;


# direct methods
.method constructor <init>(Lcom/nd/OnePiece/OnePieceActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nd/OnePiece/OnePieceActivity$1;->this$0:Lcom/nd/OnePiece/OnePieceActivity;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/nd/OnePiece/OnePieceActivity$1;->this$0:Lcom/nd/OnePiece/OnePieceActivity;

    invoke-virtual {v0}, Lcom/nd/OnePiece/OnePieceActivity;->finish()V

    .line 191
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 192
    return-void
.end method
