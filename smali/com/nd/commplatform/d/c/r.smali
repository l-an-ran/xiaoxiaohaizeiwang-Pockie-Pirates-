.class Lcom/nd/commplatform/d/c/r;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = -0x1

.field public static final c:I = -0x2

.field public static final d:I = -0x3

.field public static final e:I = -0x4

.field public static final f:I = -0x5

.field public static final g:I = -0x6

.field public static final h:I = 0x4

.field public static final i:I = 0x46

.field public static final j:I = 0x7

.field public static final k:I = 0xc

.field public static final l:I = 0xa


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 11

    const/16 v10, 0x5f

    const/16 v9, 0x2e

    const/16 v8, 0x2d

    const/4 v0, 0x0

    const/16 v7, 0x40

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v1, 0x4

    if-lt v3, v1, :cond_2

    const/16 v1, 0x46

    if-le v3, v1, :cond_3

    :cond_2
    const/4 v0, -0x2

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_4

    const/16 v5, 0x39

    if-le v4, v5, :cond_6

    :cond_4
    const/16 v5, 0x61

    if-lt v4, v5, :cond_5

    const/16 v5, 0x7a

    if-le v4, v5, :cond_6

    :cond_5
    const/4 v0, -0x3

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v1, 0x4

    if-lt v4, v1, :cond_8

    const/16 v1, 0x46

    if-le v4, v1, :cond_9

    :cond_8
    const/4 v0, -0x2

    goto :goto_0

    :cond_9
    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_d

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_a

    const/16 v6, 0x39

    if-le v5, v6, :cond_c

    :cond_a
    const/16 v6, 0x61

    if-lt v5, v6, :cond_b

    const/16 v6, 0x7a

    if-le v5, v6, :cond_c

    :cond_b
    if-eq v5, v8, :cond_c

    if-eq v5, v10, :cond_c

    if-eq v5, v7, :cond_c

    if-eq v5, v9, :cond_c

    const/4 v0, -0x3

    goto :goto_0

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v3, v1, :cond_e

    const/4 v0, -0x4

    goto :goto_0

    :cond_e
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v8, :cond_f

    if-eq v1, v10, :cond_f

    if-eq v1, v7, :cond_f

    if-ne v1, v9, :cond_10

    :cond_f
    const/4 v0, -0x5

    goto/16 :goto_0

    :cond_10
    if-eq v2, v8, :cond_11

    if-eq v2, v10, :cond_11

    if-eq v2, v7, :cond_11

    if-ne v2, v9, :cond_0

    :cond_11
    const/4 v0, -0x6

    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    const/4 v0, -0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v1, 0x7

    if-lt v3, v1, :cond_2

    const/16 v1, 0xc

    if-le v3, v1, :cond_3

    :cond_2
    const/4 v0, -0x2

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_4

    const/16 v5, 0x39

    if-le v4, v5, :cond_7

    :cond_4
    const/16 v5, 0x61

    if-lt v4, v5, :cond_5

    const/16 v5, 0x7a

    if-le v4, v5, :cond_7

    :cond_5
    const/16 v5, 0x41

    if-lt v4, v5, :cond_6

    const/16 v5, 0x5a

    if-le v4, v5, :cond_7

    :cond_6
    const/4 v0, -0x3

    goto :goto_0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
