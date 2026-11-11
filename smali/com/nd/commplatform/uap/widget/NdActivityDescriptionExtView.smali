.class public Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field public a:Landroid/widget/TextView;

.field private b:Lcom/nd/commplatform/widget/NdTextView;

.field private c:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http(s)?://([\\w-]+\\.)+[\\w-]+(/[\\w-./?%&=]*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->b:Lcom/nd/commplatform/widget/NdTextView;

    new-instance v1, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1;-><init>(Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->c:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method private b()V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->aF:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdTextView;

    iput-object v0, p0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->b:Lcom/nd/commplatform/widget/NdTextView;

    iget-object v0, p0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->b:Lcom/nd/commplatform/widget/NdTextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdTextView;->b(I)V

    iget-object v0, p0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->b:Lcom/nd/commplatform/widget/NdTextView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdTextView;->a(I)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->aH:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->b:Lcom/nd/commplatform/widget/NdTextView;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/widget/NdTextView;->a(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->c:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->c:[Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->a()V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->b()V

    return-void
.end method
