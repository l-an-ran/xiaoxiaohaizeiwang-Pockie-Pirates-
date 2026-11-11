.class Lcom/nd/OnePiece/OnePieceActivity$2;
.super Ljava/lang/Object;
.source "OnePieceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    iput-object p1, p0, Lcom/nd/OnePiece/OnePieceActivity$2;->this$0:Lcom/nd/OnePiece/OnePieceActivity;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 199
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 200
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/nd/OnePiece/OnePieceActivity$2;->this$0:Lcom/nd/OnePiece/OnePieceActivity;

    invoke-virtual {v0}, Lcom/nd/OnePiece/OnePieceActivity;->finish()V

    .line 202
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 204
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
