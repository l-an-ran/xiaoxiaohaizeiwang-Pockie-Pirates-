.class Lcom/nd/commplatform/d/c/l$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/l;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/l;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/l$a;->a:Lcom/nd/commplatform/d/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/l;Lcom/nd/commplatform/d/c/l$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/l$a;-><init>(Lcom/nd/commplatform/d/c/l;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/l$a;->a:Lcom/nd/commplatform/d/c/l;

    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/l;->a(Lcom/nd/commplatform/d/c/l;Z)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/l$a;->a:Lcom/nd/commplatform/d/c/l;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/l;->d(Lcom/nd/commplatform/d/c/l;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/l$a;->a:Lcom/nd/commplatform/d/c/l;

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->X:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/l;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
