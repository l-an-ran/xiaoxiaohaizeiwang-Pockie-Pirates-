.class public Lcom/TQFramework/TQWebAdapter;
.super Ljava/lang/Object;
.source "TQWebAdapter.java"


# static fields
.field private static instance:Lcom/TQFramework/TQWebAdapter;


# instance fields
.field protected mGLView:Lcom/TQFramework/C3GLSurfaceView;

.field private mWebDlg:Lcom/TQFramework/TQWebDlg;

.field private mainActivity:Landroid/app/Activity;

.field private mlParam:I

.field private mnEventID:I

.field private mwParam:I

.field private strDestResPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/TQFramework/TQWebAdapter;

    invoke-direct {v0}, Lcom/TQFramework/TQWebAdapter;-><init>()V

    sput-object v0, Lcom/TQFramework/TQWebAdapter;->instance:Lcom/TQFramework/TQWebAdapter;

    .line 7
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/TQFramework/TQWebAdapter;->mainActivity:Landroid/app/Activity;

    .line 8
    return-void
.end method

.method public static native TQWebEvent(III)I
.end method

.method static synthetic access$0(Lcom/TQFramework/TQWebAdapter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/TQFramework/TQWebAdapter;->mainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/TQFramework/TQWebAdapter;Lcom/TQFramework/TQWebDlg;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/TQFramework/TQWebAdapter;->mWebDlg:Lcom/TQFramework/TQWebDlg;

    return-void
.end method

.method static synthetic access$2(Lcom/TQFramework/TQWebAdapter;)Lcom/TQFramework/TQWebDlg;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/TQFramework/TQWebAdapter;->mWebDlg:Lcom/TQFramework/TQWebDlg;

    return-object v0
.end method

.method static synthetic access$3(Lcom/TQFramework/TQWebAdapter;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/TQFramework/TQWebAdapter;->mnEventID:I

    return v0
.end method

.method static synthetic access$4(Lcom/TQFramework/TQWebAdapter;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/TQFramework/TQWebAdapter;->mwParam:I

    return v0
.end method

.method static synthetic access$5(Lcom/TQFramework/TQWebAdapter;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/TQFramework/TQWebAdapter;->mlParam:I

    return v0
.end method

.method public static sharedInstance()Lcom/TQFramework/TQWebAdapter;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/TQFramework/TQWebAdapter;->instance:Lcom/TQFramework/TQWebAdapter;

    return-object v0
.end method


# virtual methods
.method public GetMainActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/TQFramework/TQWebAdapter;->mainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public GetResPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/TQFramework/TQWebAdapter;->strDestResPath:Ljava/lang/String;

    return-object v0
.end method

.method public GetSurfaceView()Lcom/TQFramework/C3GLSurfaceView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/TQFramework/TQWebAdapter;->mGLView:Lcom/TQFramework/C3GLSurfaceView;

    return-object v0
.end method

.method public SetGLSurfaceView(Landroid/app/Activity;Lcom/TQFramework/C3GLSurfaceView;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "view"    # Lcom/TQFramework/C3GLSurfaceView;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/TQFramework/TQWebAdapter;->mainActivity:Landroid/app/Activity;

    .line 17
    iput-object p2, p0, Lcom/TQFramework/TQWebAdapter;->mGLView:Lcom/TQFramework/C3GLSurfaceView;

    .line 18
    return-void
.end method

.method public TQWebEvent2JniCall(III)I
    .locals 2
    .param p1, "nEventID"    # I
    .param p2, "wParam"    # I
    .param p3, "lParam"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/TQFramework/TQWebAdapter;->mnEventID:I

    .line 88
    iput p2, p0, Lcom/TQFramework/TQWebAdapter;->mwParam:I

    .line 89
    iput p3, p0, Lcom/TQFramework/TQWebAdapter;->mlParam:I

    .line 90
    iget-object v0, p0, Lcom/TQFramework/TQWebAdapter;->mGLView:Lcom/TQFramework/C3GLSurfaceView;

    new-instance v1, Lcom/TQFramework/TQWebAdapter$3;

    invoke-direct {v1, p0}, Lcom/TQFramework/TQWebAdapter$3;-><init>(Lcom/TQFramework/TQWebAdapter;)V

    invoke-virtual {v0, v1}, Lcom/TQFramework/C3GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public openLocalWeb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "strFilePath"    # Ljava/lang/String;
    .param p2, "strTitle"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v2, p0, Lcom/TQFramework/TQWebAdapter;->mainActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    const-string v2, ""

    if-ne p1, v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/TQFramework/TQWebAdapter;->strDestResPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "strURL":Ljava/lang/String;
    const-string v2, "//"

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-object v0, p2

    .line 64
    .local v0, "strTitleText":Ljava/lang/String;
    iget-object v2, p0, Lcom/TQFramework/TQWebAdapter;->mainActivity:Landroid/app/Activity;

    new-instance v3, Lcom/TQFramework/TQWebAdapter$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/TQFramework/TQWebAdapter$2;-><init>(Lcom/TQFramework/TQWebAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public openWeb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "strUrl"    # Ljava/lang/String;
    .param p2, "strTitle"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v2, p0, Lcom/TQFramework/TQWebAdapter;->mainActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    const-string v2, ""

    if-ne p1, v2, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    move-object v1, p1

    .line 45
    .local v1, "strURLText":Ljava/lang/String;
    move-object v0, p2

    .line 47
    .local v0, "strTitleText":Ljava/lang/String;
    iget-object v2, p0, Lcom/TQFramework/TQWebAdapter;->mainActivity:Landroid/app/Activity;

    new-instance v3, Lcom/TQFramework/TQWebAdapter$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/TQFramework/TQWebAdapter$1;-><init>(Lcom/TQFramework/TQWebAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setDestResPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "DestResPath"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/TQFramework/TQWebAdapter;->strDestResPath:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public showWeb()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/TQFramework/TQWebAdapter;->mWebDlg:Lcom/TQFramework/TQWebDlg;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/TQFramework/TQWebAdapter;->mWebDlg:Lcom/TQFramework/TQWebDlg;

    invoke-virtual {v0}, Lcom/TQFramework/TQWebDlg;->show()V

    .line 79
    :cond_0
    return-void
.end method
