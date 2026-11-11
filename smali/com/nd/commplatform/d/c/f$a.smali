.class Lcom/nd/commplatform/d/c/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/f;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/f$a;->a:Lcom/nd/commplatform/d/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/f;Lcom/nd/commplatform/d/c/f$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/f$a;-><init>(Lcom/nd/commplatform/d/c/f;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/f$a;->a:Lcom/nd/commplatform/d/c/f;

    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/f;->a(Lcom/nd/commplatform/d/c/f;Z)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/f$a;->a:Lcom/nd/commplatform/d/c/f;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/f;->b(Lcom/nd/commplatform/d/c/f;)V

    return-void
.end method
