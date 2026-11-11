.class Lcom/nd/commplatform/d/c/iq$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/iq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/iq;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/iq;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/iq$a;->a:Lcom/nd/commplatform/d/c/iq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/iq;Lcom/nd/commplatform/d/c/iq$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/iq$a;-><init>(Lcom/nd/commplatform/d/c/iq;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x6

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iq$a;->a:Lcom/nd/commplatform/d/c/iq;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/iq;->b()I

    move-result v7

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iq$a;->a:Lcom/nd/commplatform/d/c/iq;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/iq;->c()I

    move-result v8

    invoke-static {}, Lcom/nd/commplatform/d/c/oh;->d()I

    move-result v5

    invoke-static {}, Lcom/nd/commplatform/d/c/oh;->e()I

    move-result v4

    const/4 v2, 0x0

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x0

    move v0, v4

    move v1, v5

    :goto_0
    if-ge v3, v6, :cond_2

    iget-object v10, p0, Lcom/nd/commplatform/d/c/iq$a;->a:Lcom/nd/commplatform/d/c/iq;

    invoke-virtual {v10}, Lcom/nd/commplatform/d/c/iq;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/nd/commplatform/d/c/jo$h;->ff:I

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    add-int/lit8 v14, v0, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    if-ne v7, v1, :cond_0

    if-ne v8, v0, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    const/16 v0, 0xb

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iq$a;->a:Lcom/nd/commplatform/d/c/iq;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/iq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v3, Lcom/nd/commplatform/d/c/iq$a$1;

    invoke-direct {v3, p0, v4, v5}, Lcom/nd/commplatform/d/c/iq$a$1;-><init>(Lcom/nd/commplatform/d/c/iq$a;II)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fd:I

    new-instance v2, Lcom/nd/commplatform/d/c/iq$a$2;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/iq$a$2;-><init>(Lcom/nd/commplatform/d/c/iq$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
