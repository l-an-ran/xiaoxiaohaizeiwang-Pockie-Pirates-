.class Lcom/nd/commplatform/d/c/h$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# static fields
.field private static final b:I = 0xa


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/h;

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/nd/commplatform/d/c/h$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/d/c/h;)V
    .locals 2

    iput-object p1, p0, Lcom/nd/commplatform/d/c/h$a;->a:Lcom/nd/commplatform/d/c/h;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/h$a;->c:Ljava/util/Vector;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/h$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/h$a;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$a;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/h$b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/h$b;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/nd/commplatform/d/c/h$b;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$a;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/h$b;

    return-object v0
.end method

.method public a(Lcom/nd/commplatform/d/c/h$b;)V
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/h$a;->b()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/d/c/h$b;->a(Z)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/h$a;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$a;->a:Lcom/nd/commplatform/d/c/h;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/h;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/nd/commplatform/d/c/e;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$a;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$a;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/h$b;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/h$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$a;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/h$a;->notifyDataSetChanged()V

    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 7

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$a;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$a;->a:Lcom/nd/commplatform/d/c/h;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/h;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/e;->a(Landroid/content/Context;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/h$a;->c:Ljava/util/Vector;

    new-instance v4, Lcom/nd/commplatform/d/c/h$b;

    iget-object v5, p0, Lcom/nd/commplatform/d/c/h$a;->a:Lcom/nd/commplatform/d/c/h;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-direct {v4, v5, v0, v6}, Lcom/nd/commplatform/d/c/h$b;-><init>(Lcom/nd/commplatform/d/c/h;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-object v1, v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/h$a;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/h$a;->d:Z

    return v0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nd/commplatform/d/c/h$a;->d:Z

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/h$a;->b()V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/h$a;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$a;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/h$a;->a(I)Lcom/nd/commplatform/d/c/h$b;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$a;->a:Lcom/nd/commplatform/d/c/h;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/h;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->bq:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2    # "convertView":Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/nd/commplatform/d/c/h$d;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/h$a;->a:Lcom/nd/commplatform/d/c/h;

    invoke-direct {v0, v1, p2}, Lcom/nd/commplatform/d/c/h$d;-><init>(Lcom/nd/commplatform/d/c/h;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/h$d;

    check-cast v0, Lcom/nd/commplatform/d/c/h$d;

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/h$a;->a(I)Lcom/nd/commplatform/d/c/h$b;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nd/commplatform/d/c/h$a;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/h$d;->a(Lcom/nd/commplatform/d/c/h$b;Z)V

    return-object p2
.end method
