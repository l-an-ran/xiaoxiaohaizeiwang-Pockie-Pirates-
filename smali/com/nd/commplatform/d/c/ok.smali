.class public Lcom/nd/commplatform/d/c/ok;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/ok$a;
    }
.end annotation


# static fields
.field static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "@sina.cn"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "@sina.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "@vip.sina.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "@163.com"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "@qq.com"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "@126.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "@hotmail.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "@gmail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "@sohu.com"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "@139.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nd/commplatform/d/c/ok;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/EditText;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->g()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/nd/commplatform/d/c/ok;->b(Landroid/widget/EditText;)V

    goto :goto_0

    :cond_2
    check-cast p0, Landroid/widget/AutoCompleteTextView;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    new-instance v0, Lcom/nd/commplatform/d/c/ok$a;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ok$a;-><init>(Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ok$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/widget/EditText;)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/ok$a;

    check-cast v0, Lcom/nd/commplatform/d/c/ok$a;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0
.end method
