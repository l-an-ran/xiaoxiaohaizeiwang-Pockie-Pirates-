.class public Lcom/nd/commplatform/d/c/cb;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "intent_category"

.field public static final b:Ljava/lang/String; = "intent_view"

.field public static final c:Ljava/lang/String; = "intent_control_center"

.field public static final d:Ljava/lang/String; = "intent_account"

.field protected static e:Lcom/nd/commplatform/d/c/ca;

.field protected static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nd/commplatform/d/c/bx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/nd/commplatform/widget/NdFrameInnerContent;)I
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/d/c/ca;->a(Lcom/nd/commplatform/widget/NdFrameInnerContent;)I

    move-result v0

    goto :goto_0
.end method

.method public static a()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ca;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(I)V
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/d/c/ca;->b(I)Lcom/nd/commplatform/d/c/by;

    goto :goto_0
.end method

.method public static a(IILcom/nd/commplatform/d/c/bx;)V
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->f()V

    invoke-static {p2}, Lcom/nd/commplatform/d/c/cb;->b(Lcom/nd/commplatform/d/c/bx;)Lcom/nd/commplatform/d/c/bx;

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0, p0, p1}, Lcom/nd/commplatform/d/c/ca;->b(II)V

    goto :goto_0
.end method

.method public static a(ILandroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1, p2}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;Landroid/content/Intent;)V

    return-void
.end method

.method public static a(ILcom/nd/commplatform/d/c/bx;)V
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->f()V

    invoke-static {p1}, Lcom/nd/commplatform/d/c/cb;->b(Lcom/nd/commplatform/d/c/bx;)Lcom/nd/commplatform/d/c/bx;

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/d/c/ca;->c(I)V

    goto :goto_0
.end method

.method public static a(IZLcom/nd/commplatform/d/c/bx;)V
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->f()V

    invoke-static {p2}, Lcom/nd/commplatform/d/c/cb;->b(Lcom/nd/commplatform/d/c/bx;)Lcom/nd/commplatform/d/c/bx;

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0, p0, p1}, Lcom/nd/commplatform/d/c/ca;->a(IZ)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;Landroid/content/Intent;)V

    return-void
.end method

.method private static a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    if-nez v0, :cond_1

    invoke-static {p3}, Lcom/nd/commplatform/d/c/cb;->b(Lcom/nd/commplatform/d/c/bx;)Lcom/nd/commplatform/d/c/bx;

    if-eqz p4, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_0
    const-class v1, Lcom/nd/commplatform/activity/SNSControlCenterActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "intent_category"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "intent_view"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/nd/commplatform/d/c/cb;->a(IILcom/nd/commplatform/d/c/bx;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;IIZLcom/nd/commplatform/d/c/bx;)V
    .locals 2

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    if-nez v0, :cond_0

    invoke-static {p4}, Lcom/nd/commplatform/d/c/cb;->b(Lcom/nd/commplatform/d/c/bx;)Lcom/nd/commplatform/d/c/bx;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/nd/commplatform/activity/SNSControlCenterActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "intent_category"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "intent_view"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/ca;->h(I)Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p1, p2, p4}, Lcom/nd/commplatform/d/c/cb;->a(IILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/ca;->a(IIZ)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p2, p3, v0, p1}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/nd/commplatform/activity/SNSLoginActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "intent_category"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "intent_view"

    const/16 v2, 0x3f6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "intent_control_center"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/nd/commplatform/activity/SNSLoginActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "intent_category"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "intent_view"

    const/16 v2, 0x3ec

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "intent_control_center"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "intent_account"

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Lcom/nd/commplatform/d/c/bx;)V
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->f()V

    invoke-static {p0}, Lcom/nd/commplatform/d/c/cb;->b(Lcom/nd/commplatform/d/c/bx;)Lcom/nd/commplatform/d/c/bx;

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ca;->f()V

    goto :goto_0
.end method

.method public static a(Lcom/nd/commplatform/d/c/ca;)V
    .locals 1

    sput-object p0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    if-nez p0, :cond_0

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/d/c/cb;->f:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method public static a(Lcom/nd/commplatform/d/c/eq;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eq;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/nd/commplatform/d/c/cb$1;

    invoke-direct {v2, p0, v0}, Lcom/nd/commplatform/d/c/cb$1;-><init>(Lcom/nd/commplatform/d/c/eq;Z)V

    invoke-static {v2}, Lcom/nd/commplatform/NdMiscCallbackListener;->a(Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    const/16 v0, -0xc

    invoke-static {v3, v0}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    invoke-static {v1, v3}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public static a(Z)V
    .locals 2

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    new-instance v1, Lcom/nd/commplatform/d/c/cb$2;

    invoke-direct {v1, v0}, Lcom/nd/commplatform/d/c/cb$2;-><init>(Z)V

    invoke-static {v1}, Lcom/nd/commplatform/NdMiscCallbackListener;->a(Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->b()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, p0, v1}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method public static b()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ca;->b()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(I)Lcom/nd/commplatform/d/c/bx;
    .locals 2

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/cb;->f:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/bx;

    goto :goto_0
.end method

.method public static b(Lcom/nd/commplatform/d/c/bx;)Lcom/nd/commplatform/d/c/bx;
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/cb;->f:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nd/commplatform/d/c/cb;->f:Ljava/util/HashMap;

    :cond_1
    sget-object v0, Lcom/nd/commplatform/d/c/cb;->f:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/bx;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static b(ILcom/nd/commplatform/d/c/bx;)V
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->f()V

    invoke-static {p1}, Lcom/nd/commplatform/d/c/cb;->b(Lcom/nd/commplatform/d/c/bx;)Lcom/nd/commplatform/d/c/bx;

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/d/c/ca;->e(I)V

    goto :goto_0
.end method

.method public static b(Lcom/nd/commplatform/d/c/eq;)V
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/nd/commplatform/d/c/eq;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v2

    const-string v3, ""

    new-instance v4, Lcom/nd/commplatform/d/c/cb$5;

    invoke-direct {v4, p0, v0}, Lcom/nd/commplatform/d/c/cb$5;-><init>(Lcom/nd/commplatform/d/c/eq;Z)V

    invoke-virtual {v2, v1, v5, v3, v4}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;ZLjava/lang/String;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    return-void
.end method

.method public static b(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v2

    const-string v3, ""

    new-instance v4, Lcom/nd/commplatform/d/c/cb$3;

    invoke-direct {v4, p0, v0}, Lcom/nd/commplatform/d/c/cb$3;-><init>(Lcom/nd/commplatform/widget/NdFrameInnerContent;Z)V

    invoke-virtual {v2, v1, v5, v3, v4}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;ZLjava/lang/String;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    return-void
.end method

.method public static b(Z)V
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/d/c/ca;->a(Z)V

    :cond_0
    return-void
.end method

.method public static c()I
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ca;->e()I

    move-result v0

    goto :goto_0
.end method

.method public static c(I)Lcom/nd/commplatform/d/c/bx;
    .locals 2

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/cb;->f:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/bx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/bx;->e()V

    :cond_1
    sget-object v0, Lcom/nd/commplatform/d/c/cb;->f:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/bx;

    goto :goto_0
.end method

.method public static c(ILcom/nd/commplatform/d/c/bx;)V
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/nd/commplatform/d/c/cb;->b(Lcom/nd/commplatform/d/c/bx;)Lcom/nd/commplatform/d/c/bx;

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/d/c/ca;->g(I)V

    goto :goto_0
.end method

.method public static c(Lcom/nd/commplatform/d/c/bx;)V
    .locals 2

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/cb;->f:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/bx;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/bx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/bx;->e()V

    :cond_1
    sget-object v0, Lcom/nd/commplatform/d/c/cb;->f:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/bx;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static c(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v1

    const-string v2, ""

    new-instance v3, Lcom/nd/commplatform/d/c/cb$4;

    invoke-direct {v3, p0}, Lcom/nd/commplatform/d/c/cb$4;-><init>(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;ZLjava/lang/String;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    return-void
.end method

.method public static d()V
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ca;->d()V

    goto :goto_0
.end method

.method public static d(ILcom/nd/commplatform/d/c/bx;)V
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->f()V

    invoke-static {p1}, Lcom/nd/commplatform/d/c/cb;->b(Lcom/nd/commplatform/d/c/bx;)Lcom/nd/commplatform/d/c/bx;

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/d/c/ca;->f(I)V

    goto :goto_0
.end method

.method public static e()V
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ca;->g()V

    goto :goto_0
.end method

.method public static f()V
    .locals 3

    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ca;->b()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sget-object v1, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/ca;->a()Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public static g()Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/nd/commplatform/d/c/cb;->e:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/ca;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    if-gt v2, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
