.class public Lcom/nd/commplatform/widget/NdPayFriendListItem;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field private d:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPayFriendListItem;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fe:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdPayFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdPayFriendListItem;->d:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPayFriendListItem;->d:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ff:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdPayFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdPayFriendListItem;->a:Landroid/widget/ImageView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fi:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdPayFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdPayFriendListItem;->b:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fh:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdPayFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdPayFriendListItem;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPayFriendListItem;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPayFriendListItem;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPayFriendListItem;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->toggle()V

    return-void
.end method
