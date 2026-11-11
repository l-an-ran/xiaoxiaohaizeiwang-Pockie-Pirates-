.class final Lcom/nd/commplatform/d/c/dp$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/dp;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/dp;

.field private b:[C

.field private c:[C


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/dp;)V
    .locals 2

    const/4 v1, 0x2

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dp$1;->a:Lcom/nd/commplatform/d/c/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dp$1;->b:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dp$1;->c:[C

    return-void

    nop

    :array_0
    .array-data 2
        0xas
        0xds
    .end array-data

    :array_1
    .array-data 2
        0x20s
        -0x101s
    .end array-data
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_6

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dp$1;->b:[C

    aget-char v2, v2, v5

    if-eq v1, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dp$1;->b:[C

    aget-char v2, v2, v6

    if-ne v1, v2, :cond_5

    :cond_0
    sub-int v0, p3, p2

    new-array v1, v0, [C

    invoke-static {p1, p2, p3, v1, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    move v0, v5

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-char v2, v1, v0

    iget-object v4, p0, Lcom/nd/commplatform/d/c/dp$1;->b:[C

    aget-char v4, v4, v5

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dp$1;->c:[C

    aget-char v2, v2, v5

    aput-char v2, v1, v0

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    aget-char v2, v1, v0

    iget-object v4, p0, Lcom/nd/commplatform/d/c/dp$1;->b:[C

    aget-char v4, v4, v6

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dp$1;->c:[C

    aget-char v2, v2, v6

    aput-char v2, v1, v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_4

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    :goto_3
    return-object v4

    :cond_4
    move-object v4, v0

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    move-object v4, v3

    goto :goto_3
.end method
