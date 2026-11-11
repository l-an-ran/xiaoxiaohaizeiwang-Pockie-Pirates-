.class public Lcom/nd/commplatform/entry/NDCanPayPassword;
.super Ljava/lang/Object;


# static fields
.field public static final Disable:I = 0x0

.field public static final Enable:I = 0x1


# instance fields
.field private mValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nd/commplatform/entry/NDCanPayPassword;->mValue:I

    return-void
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NDCanPayPassword;->mValue:I

    return v0
.end method
