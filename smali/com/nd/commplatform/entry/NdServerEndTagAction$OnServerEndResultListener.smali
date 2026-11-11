.class public interface abstract Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/entry/NdServerEndTagAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnServerEndResultListener"
.end annotation


# static fields
.field public static final ACTION_RESULT_ERROR:I = 0x2

.field public static final ACTION_RESULT_REJECT:I = 0x1

.field public static final ACTION_RESULT_SUCCESS:I = 0x0

.field public static final ACTION_TYPE_AGREEMENT:I = 0x10

.field public static final ACTION_TYPE_REJECT:I = 0x20


# virtual methods
.method public abstract onServerEndResult(II)V
.end method
