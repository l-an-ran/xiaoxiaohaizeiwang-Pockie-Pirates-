.class Lcom/nd/commplatform/d/c/mu$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/mu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# instance fields
.field public d:Lcom/nd/commplatform/entry/NdUserInfo;

.field public e:Lcom/nd/commplatform/d/c/nb;

.field public f:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/d/c/mu$a;->f:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/mu$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/mu$a;-><init>()V

    return-void
.end method
