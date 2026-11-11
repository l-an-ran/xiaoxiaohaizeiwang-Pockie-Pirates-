.class final Lcom/nd/commplatform/d/c/ds$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ds;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ds;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ds;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ds$2;->a:Lcom/nd/commplatform/d/c/ds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ds$2;->a:Lcom/nd/commplatform/d/c/ds;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ds;->a(Lcom/nd/commplatform/d/c/ds;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ds$2;->a:Lcom/nd/commplatform/d/c/ds;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ds;->b(Lcom/nd/commplatform/d/c/ds;)Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
