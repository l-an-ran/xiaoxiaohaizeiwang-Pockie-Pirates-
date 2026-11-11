.class final Lcom/nd/commplatform/d/c/fp$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fp;->b(Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

.field final synthetic b:Lcom/nd/commplatform/d/c/fp;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fp;Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fp$6;->b:Lcom/nd/commplatform/d/c/fp;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/fp$6;->a:Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$6;->b:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fp;->g(Lcom/nd/commplatform/d/c/fp;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp$6;->a:Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->getAccountType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$6;->b:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fp;->r(Lcom/nd/commplatform/d/c/fp;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$6;->b:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fp;->g(Lcom/nd/commplatform/d/c/fp;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp$6;->a:Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->getAccountType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
