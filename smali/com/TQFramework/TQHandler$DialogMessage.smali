.class public Lcom/TQFramework/TQHandler$DialogMessage;
.super Ljava/lang/Object;
.source "TQHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TQFramework/TQHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogMessage"
.end annotation


# instance fields
.field public message:Ljava/lang/String;

.field public titile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/TQFramework/TQHandler$DialogMessage;->titile:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/TQFramework/TQHandler$DialogMessage;->message:Ljava/lang/String;

    .line 86
    return-void
.end method
