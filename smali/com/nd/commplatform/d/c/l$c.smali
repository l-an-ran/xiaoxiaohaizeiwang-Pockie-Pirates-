.class Lcom/nd/commplatform/d/c/l$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/l;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/l;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/l$c;->a:Lcom/nd/commplatform/d/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    return-void
.end method
