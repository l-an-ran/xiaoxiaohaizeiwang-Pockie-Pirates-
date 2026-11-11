.class Lcom/nd/commplatform/d/c/g$a;
.super Landroid/widget/ArrayAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final b:I = 0xa


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/g;

.field private c:Lcom/nd/commplatform/widget/NdFrameInnerContent;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/d/c/g;Landroid/content/Context;Lcom/nd/commplatform/widget/NdFrameInnerContent;II)V
    .locals 3

    iput-object p1, p0, Lcom/nd/commplatform/d/c/g$a;->a:Lcom/nd/commplatform/d/c/g;

    invoke-direct {p0, p2, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    iput-object p3, p0, Lcom/nd/commplatform/d/c/g$a;->c:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-static {p2, v0, v1, v2}, Lcom/nd/commplatform/d/c/e;->a(Landroid/content/Context;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g$a;->d:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g$a;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/g$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/g$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/g$a;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/g$a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$a;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/g$a;->e:Ljava/lang/String;

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g$a;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 2

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/nd/commplatform/d/c/g$a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/g$a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/g$a;->a(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->y:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->A:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->x:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    return-object v1

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/nd/commplatform/d/c/g$a$1;

    invoke-direct {v1, p0, v0}, Lcom/nd/commplatform/d/c/g$a$1;-><init>(Lcom/nd/commplatform/d/c/g$a;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/g$a;->a:Lcom/nd/commplatform/d/c/g;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/d/c/g;->b(Z)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/g$a;->c:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1, v4}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/g$a;->a:Lcom/nd/commplatform/d/c/g;

    invoke-virtual {v2, v4}, Lcom/nd/commplatform/d/c/g;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g$a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/nd/commplatform/d/c/a;->k(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method
