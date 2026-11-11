.class public Lcom/TQFramework/TQHandler$EditBoxMessage;
.super Ljava/lang/Object;
.source "TQHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TQFramework/TQHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditBoxMessage"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public inputFlag:I

.field public inputMode:I

.field public mHint:Ljava/lang/String;

.field public mIsMultiline:Z

.field public maxLength:I

.field public returnType:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;III)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "maxLength"    # I
    .param p4, "bIsMultiline"    # Z
    .param p5, "Hint"    # Ljava/lang/String;
    .param p6, "inputMode"    # I
    .param p7, "inputFlag"    # I
    .param p8, "returnType"    # I

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/TQFramework/TQHandler$EditBoxMessage;->content:Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/TQFramework/TQHandler$EditBoxMessage;->title:Ljava/lang/String;

    .line 102
    iput p6, p0, Lcom/TQFramework/TQHandler$EditBoxMessage;->inputMode:I

    .line 103
    iput p7, p0, Lcom/TQFramework/TQHandler$EditBoxMessage;->inputFlag:I

    .line 104
    iput p8, p0, Lcom/TQFramework/TQHandler$EditBoxMessage;->returnType:I

    .line 105
    iput p3, p0, Lcom/TQFramework/TQHandler$EditBoxMessage;->maxLength:I

    .line 106
    iput-boolean p4, p0, Lcom/TQFramework/TQHandler$EditBoxMessage;->mIsMultiline:Z

    .line 107
    iput-object p5, p0, Lcom/TQFramework/TQHandler$EditBoxMessage;->mHint:Ljava/lang/String;

    .line 108
    return-void
.end method
