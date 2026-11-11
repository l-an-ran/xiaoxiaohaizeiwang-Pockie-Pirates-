.class public Lcom/TQFramework/TQUpdateActivity;
.super Landroid/app/Activity;
.source "TQUpdateActivity.java"


# static fields
.field private static final HEX_DIGITS:[C

.field static final MSG_DOLOADPROGRESS:I = 0x2

.field static MSG_INIRES:I

.field static MSG_INIRESTIPS:I

.field static MSG_INITUNPRESS:I

.field static MSG_UNPRESSERROR:I

.field public static MainContext:Landroid/content/Context;

.field public static Maincls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static bCheckVer:Z

.field private static handler:Landroid/os/Handler;


# instance fields
.field final ApkFileError:I

.field final INITCOPYFAILED:I

.field final MSG_Checknewver:I

.field final MSG_DOLOADCOMPLETE:I

.field final MSG_DOLOADFAILED:I

.field final MSG_INITCOPYLIBSO:I

.field final MSG_INITDOWNAPK:I

.field final MSG_INITDOWNRES:I

.field final NETCONFAILED:I

.field final NOTHAVE_NEWVER:I

.field final UNPRESSFAILED:I

.field final UPDATEAPK:I

.field final UPDATE_APK:I

.field final UPDATE_RES:I

.field final UPDATE_RES_AND_APK:I

.field protected bForeceUpdate:Z

.field private cancelbutton:Landroid/widget/Button;

.field private downbutton:Landroid/widget/Button;

.field private gcurdetail:J

.field private gsSrcResPath:Ljava/lang/String;

.field private gsSrcUrl:Ljava/lang/String;

.field private gtotalSize:J

.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mCheckvertext:Landroid/widget/TextView;

.field private mImageview:Landroid/widget/ImageView;

.field private mProgressText:Landroid/widget/TextView;

.field private mProgressrateview:Landroid/widget/TextView;

.field private mTextmessage:Landroid/widget/TextView;

.field protected m_ChannelUrl:Ljava/lang/String;

.field private m_SplitFileSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected m_apkmd5:Ljava/lang/String;

.field protected m_sApkUrl:Ljava/lang/String;

.field protected m_sDownPathchanelxml:Ljava/lang/String;

.field protected m_sResPacketUrl:Ljava/lang/String;

.field protected ncurApkver:I

.field protected ncurResver:I

.field private pDownBar:Landroid/widget/ProgressBar;

.field private strcopymergper:Ljava/lang/String;

.field private strforceupdate:Ljava/lang/String;

.field private strunpressfaile:Ljava/lang/String;

.field private strupdapkdownloading:Ljava/lang/String;

.field private strupdateinitfaile:Ljava/lang/String;

.field private strupdcurper:Ljava/lang/String;

.field private strupdfirstupdate:Ljava/lang/String;

.field private strupdok:Ljava/lang/String;

.field private strupdresdownloading:Ljava/lang/String;

.field private strupdunknowerror:Ljava/lang/String;

.field private strupdunpressRes:Ljava/lang/String;

.field private strupdupdatefaile:Ljava/lang/String;

.field private strupdupdatefailecon:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Lcom/TQFramework/TQUpdateActivity;->bCheckVer:Z

    .line 120
    const/16 v0, 0x8

    sput v0, Lcom/TQFramework/TQUpdateActivity;->MSG_INITUNPRESS:I

    .line 121
    const/16 v0, 0x9

    sput v0, Lcom/TQFramework/TQUpdateActivity;->MSG_UNPRESSERROR:I

    .line 122
    sput v1, Lcom/TQFramework/TQUpdateActivity;->MSG_INIRES:I

    .line 123
    const/16 v0, 0x11

    sput v0, Lcom/TQFramework/TQUpdateActivity;->MSG_INIRESTIPS:I

    .line 167
    const/4 v0, 0x0

    sput-object v0, Lcom/TQFramework/TQUpdateActivity;->handler:Landroid/os/Handler;

    .line 1149
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/TQFramework/TQUpdateActivity;->HEX_DIGITS:[C

    .line 92
    return-void

    .line 1149
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->gsSrcResPath:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->gsSrcUrl:Ljava/lang/String;

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/TQFramework/TQUpdateActivity;->gtotalSize:J

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/TQFramework/TQUpdateActivity;->gcurdetail:J

    .line 101
    iput-object v2, p0, Lcom/TQFramework/TQUpdateActivity;->pDownBar:Landroid/widget/ProgressBar;

    .line 102
    iput-object v2, p0, Lcom/TQFramework/TQUpdateActivity;->downbutton:Landroid/widget/Button;

    .line 103
    iput-object v2, p0, Lcom/TQFramework/TQUpdateActivity;->cancelbutton:Landroid/widget/Button;

    .line 104
    iput-object v2, p0, Lcom/TQFramework/TQUpdateActivity;->mProgressText:Landroid/widget/TextView;

    .line 105
    iput-object v2, p0, Lcom/TQFramework/TQUpdateActivity;->mTextmessage:Landroid/widget/TextView;

    .line 106
    iput-object v2, p0, Lcom/TQFramework/TQUpdateActivity;->mProgressrateview:Landroid/widget/TextView;

    .line 107
    iput-object v2, p0, Lcom/TQFramework/TQUpdateActivity;->mCheckvertext:Landroid/widget/TextView;

    .line 108
    iput-object v2, p0, Lcom/TQFramework/TQUpdateActivity;->mImageview:Landroid/widget/ImageView;

    .line 111
    iput v3, p0, Lcom/TQFramework/TQUpdateActivity;->MSG_DOLOADFAILED:I

    .line 113
    iput v4, p0, Lcom/TQFramework/TQUpdateActivity;->MSG_DOLOADCOMPLETE:I

    .line 114
    const/4 v0, 0x4

    iput v0, p0, Lcom/TQFramework/TQUpdateActivity;->MSG_INITCOPYLIBSO:I

    .line 115
    const/4 v0, 0x5

    iput v0, p0, Lcom/TQFramework/TQUpdateActivity;->MSG_INITDOWNAPK:I

    .line 116
    const/4 v0, 0x6

    iput v0, p0, Lcom/TQFramework/TQUpdateActivity;->MSG_INITDOWNRES:I

    .line 117
    const/4 v0, 0x7

    iput v0, p0, Lcom/TQFramework/TQUpdateActivity;->MSG_Checknewver:I

    .line 125
    iput v3, p0, Lcom/TQFramework/TQUpdateActivity;->UPDATEAPK:I

    .line 126
    iput v6, p0, Lcom/TQFramework/TQUpdateActivity;->INITCOPYFAILED:I

    .line 127
    iput v4, p0, Lcom/TQFramework/TQUpdateActivity;->NETCONFAILED:I

    .line 128
    const/4 v0, 0x4

    iput v0, p0, Lcom/TQFramework/TQUpdateActivity;->UNPRESSFAILED:I

    .line 129
    const/4 v0, 0x5

    iput v0, p0, Lcom/TQFramework/TQUpdateActivity;->ApkFileError:I

    .line 134
    iput v5, p0, Lcom/TQFramework/TQUpdateActivity;->NOTHAVE_NEWVER:I

    .line 135
    iput v3, p0, Lcom/TQFramework/TQUpdateActivity;->UPDATE_RES:I

    .line 136
    iput v6, p0, Lcom/TQFramework/TQUpdateActivity;->UPDATE_APK:I

    .line 137
    iput v4, p0, Lcom/TQFramework/TQUpdateActivity;->UPDATE_RES_AND_APK:I

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strupdfirstupdate:Ljava/lang/String;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strupdapkdownloading:Ljava/lang/String;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strupdresdownloading:Ljava/lang/String;

    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strupdunpressRes:Ljava/lang/String;

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strupdupdatefaile:Ljava/lang/String;

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strupdateinitfaile:Ljava/lang/String;

    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strupdupdatefailecon:Ljava/lang/String;

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strupdunknowerror:Ljava/lang/String;

    .line 147
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strupdok:Ljava/lang/String;

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strupdcurper:Ljava/lang/String;

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strunpressfaile:Ljava/lang/String;

    .line 150
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strforceupdate:Ljava/lang/String;

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strcopymergper:Ljava/lang/String;

    .line 159
    iput-boolean v5, p0, Lcom/TQFramework/TQUpdateActivity;->bForeceUpdate:Z

    .line 160
    const/16 v0, 0x3e7

    iput v0, p0, Lcom/TQFramework/TQUpdateActivity;->ncurResver:I

    .line 161
    const/16 v0, 0x3e7

    iput v0, p0, Lcom/TQFramework/TQUpdateActivity;->ncurApkver:I

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->m_sApkUrl:Ljava/lang/String;

    .line 163
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->m_apkmd5:Ljava/lang/String;

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->m_sResPacketUrl:Ljava/lang/String;

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->m_ChannelUrl:Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->m_SplitFileSet:Ljava/util/HashSet;

    .line 169
    iput-object v2, p0, Lcom/TQFramework/TQUpdateActivity;->mAssetManager:Landroid/content/res/AssetManager;

    .line 92
    return-void
.end method

.method public static Delete(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 724
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 725
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 729
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 730
    .local v0, "childFiles":[Ljava/io/File;
    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_3

    .line 731
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 734
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-lt v1, v2, :cond_4

    .line 737
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 735
    :cond_4
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/TQFramework/TQUpdateActivity;->Delete(Ljava/io/File;)V

    .line 734
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static IsWholePackage()Z
    .locals 6

    .prologue
    .line 753
    sget-object v4, Lcom/TQFramework/TQUpdateActivity;->MainContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 754
    .local v1, "sPageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/data/data/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/lib/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 755
    .local v2, "sSrcDir":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "libtqcopyso.so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 756
    .local v3, "sTqcopyso":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 758
    .local v0, "ftqsoxml":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 760
    const/4 v4, 0x1

    .line 762
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static UnCompressError(ILjava/lang/String;)V
    .locals 5
    .param p0, "ErrCode"    # I
    .param p1, "pszErrMsg"    # Ljava/lang/String;

    .prologue
    .line 1123
    const-string v1, "ErrCode:%d,ErrMsg:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1124
    .local v0, "strMsg":Ljava/lang/String;
    const-string v1, "UnCompressError"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    return-void
.end method

.method public static UnCompressEvent(IILjava/lang/String;)V
    .locals 2
    .param p0, "fileNum"    # I
    .param p1, "nfileIndex"    # I
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 1129
    const/4 v1, 0x1

    if-gt p1, v1, :cond_1

    .line 1131
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1132
    .local v0, "msg":Landroid/os/Message;
    sget v1, Lcom/TQFramework/TQUpdateActivity;->MSG_INITUNPRESS:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1133
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 1134
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1136
    sget-object v1, Lcom/TQFramework/TQUpdateActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1147
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1138
    :cond_1
    if-ge p1, p0, :cond_0

    .line 1140
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1141
    .restart local v0    # "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1142
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 1143
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1144
    sget-object v1, Lcom/TQFramework/TQUpdateActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static native UnCompressTQZip(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$0(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->mTextmessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->mProgressText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strupdresdownloading:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strupdunpressRes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->gsSrcResPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/TQFramework/TQUpdateActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$14(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strupdupdatefaile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strupdateinitfaile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strupdupdatefailecon:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strunpressfaile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strupdunknowerror:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strupdok:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->mProgressrateview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$20(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strupdcurper:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->mImageview:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$22()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/TQFramework/TQUpdateActivity;->bCheckVer:Z

    return v0
.end method

.method static synthetic access$23(Z)V
    .locals 0

    .prologue
    .line 96
    sput-boolean p0, Lcom/TQFramework/TQUpdateActivity;->bCheckVer:Z

    return-void
.end method

.method static synthetic access$3(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->pDownBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$4(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->mCheckvertext:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strforceupdate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->downbutton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$7(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->cancelbutton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strupdfirstupdate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity;->strupdapkdownloading:Ljava/lang/String;

    return-object v0
.end method

.method private copysoFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "ScrFileName"    # Ljava/lang/String;
    .param p2, "DstFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 864
    const/4 v7, 0x0

    .line 865
    .local v7, "inChannel":Ljava/nio/channels/FileChannel;
    const/4 v11, 0x0

    .line 866
    .local v11, "outChannel":Ljava/nio/channels/FileChannel;
    const/4 v8, 0x0

    .line 867
    .local v8, "inStream":Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 868
    .local v12, "outStream":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 869
    .local v3, "SrcFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 872
    .local v2, "DstFile":Ljava/io/File;
    :try_start_0
    new-instance v14, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 873
    .local v14, "parentDir":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 874
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 876
    :cond_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    .end local v8    # "inStream":Ljava/io/FileInputStream;
    .local v9, "inStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 878
    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    .local v13, "outStream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    .line 879
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    .line 880
    const/16 v15, 0x7530

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 881
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    const/4 v5, -0x1

    .line 882
    .local v5, "ch":I
    :goto_0
    invoke-virtual {v7, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v5

    const/4 v15, -0x1

    if-ne v5, v15, :cond_1

    .line 898
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 899
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 900
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 901
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->close()V

    move-object v12, v13

    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outStream":Ljava/io/FileOutputStream;
    move-object v8, v9

    .line 903
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    .end local v5    # "ch":I
    .end local v9    # "inStream":Ljava/io/FileInputStream;
    .end local v14    # "parentDir":Ljava/io/File;
    .restart local v8    # "inStream":Ljava/io/FileInputStream;
    :goto_1
    return-void

    .line 883
    .end local v8    # "inStream":Ljava/io/FileInputStream;
    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    .restart local v4    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v5    # "ch":I
    .restart local v9    # "inStream":Ljava/io/FileInputStream;
    .restart local v13    # "outStream":Ljava/io/FileOutputStream;
    .restart local v14    # "parentDir":Ljava/io/File;
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 884
    invoke-virtual {v11, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 885
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 887
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/TQFramework/TQUpdateActivity;->gcurdetail:J

    int-to-long v0, v5

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/TQFramework/TQUpdateActivity;->gcurdetail:J

    .line 888
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 889
    .local v10, "msg":Landroid/os/Message;
    const/4 v15, 0x2

    iput v15, v10, Landroid/os/Message;->what:I

    .line 890
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/TQFramework/TQUpdateActivity;->gtotalSize:J

    long-to-int v15, v15

    iput v15, v10, Landroid/os/Message;->arg1:I

    .line 891
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/TQFramework/TQUpdateActivity;->gcurdetail:J

    long-to-int v15, v15

    iput v15, v10, Landroid/os/Message;->arg2:I

    .line 892
    sget-object v15, Lcom/TQFramework/TQUpdateActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v15, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 895
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    .end local v5    # "ch":I
    .end local v10    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v6

    move-object v12, v13

    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outStream":Ljava/io/FileOutputStream;
    move-object v8, v9

    .line 896
    .end local v9    # "inStream":Ljava/io/FileInputStream;
    .end local v14    # "parentDir":Ljava/io/File;
    .local v6, "e":Ljava/io/IOException;
    .restart local v8    # "inStream":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 898
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 899
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 900
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 901
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_1

    .line 897
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    .line 898
    :goto_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 899
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 900
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 901
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->close()V

    .line 902
    throw v15

    .line 897
    .end local v8    # "inStream":Ljava/io/FileInputStream;
    .restart local v9    # "inStream":Ljava/io/FileInputStream;
    .restart local v14    # "parentDir":Ljava/io/File;
    :catchall_1
    move-exception v15

    move-object v8, v9

    .end local v9    # "inStream":Ljava/io/FileInputStream;
    .restart local v8    # "inStream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v8    # "inStream":Ljava/io/FileInputStream;
    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    .restart local v9    # "inStream":Ljava/io/FileInputStream;
    .restart local v13    # "outStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v15

    move-object v12, v13

    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outStream":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9    # "inStream":Ljava/io/FileInputStream;
    .restart local v8    # "inStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 895
    .end local v14    # "parentDir":Ljava/io/File;
    :catch_1
    move-exception v6

    goto :goto_2

    .end local v8    # "inStream":Ljava/io/FileInputStream;
    .restart local v9    # "inStream":Ljava/io/FileInputStream;
    .restart local v14    # "parentDir":Ljava/io/File;
    :catch_2
    move-exception v6

    move-object v8, v9

    .end local v9    # "inStream":Ljava/io/FileInputStream;
    .restart local v8    # "inStream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static md5sum(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 1163
    const/16 v5, 0x7800

    new-array v0, v5, [B

    .line 1164
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 1167
    .local v4, "numRead":I
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1168
    .local v2, "fis":Ljava/io/InputStream;
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1169
    .local v3, "md5":Ljava/security/MessageDigest;
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_0

    .line 1172
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1173
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lcom/TQFramework/TQUpdateActivity;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 1176
    .end local v2    # "fis":Ljava/io/InputStream;
    .end local v3    # "md5":Ljava/security/MessageDigest;
    :goto_1
    return-object v5

    .line 1170
    .restart local v2    # "fis":Ljava/io/InputStream;
    .restart local v3    # "md5":Ljava/security/MessageDigest;
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1174
    .end local v2    # "fis":Ljava/io/InputStream;
    .end local v3    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 1175
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "error"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1176
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 1153
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1154
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 1158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1155
    :cond_0
    sget-object v2, Lcom/TQFramework/TQUpdateActivity;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1156
    sget-object v2, Lcom/TQFramework/TQUpdateActivity;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public CheckNewVersion()I
    .locals 4

    .prologue
    .line 344
    iget-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->gsSrcUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/TQFramework/TQUpdateActivity;->m_sDownPathchanelxml:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/TQFramework/TQUpdateActivity;->GetXmlConfigFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/TQFramework/TQUpdateActivity;->GetAppChanelId()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "sChannelID":Ljava/lang/String;
    iget-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->gsSrcUrl:Ljava/lang/String;

    iget v2, p0, Lcom/TQFramework/TQUpdateActivity;->ncurResver:I

    iget v3, p0, Lcom/TQFramework/TQUpdateActivity;->ncurApkver:I

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/TQFramework/TQUpdateActivity;->GetChannelIdUrl(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 349
    .end local v0    # "sChannelID":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method CopyLibSoToSdcrad()Z
    .locals 36

    .prologue
    .line 767
    const/4 v8, 0x0

    .line 768
    .local v8, "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v7, 0x0

    .line 769
    .local v7, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v6, 0x0

    .line 770
    .local v6, "doc":Lorg/w3c/dom/Document;
    invoke-virtual/range {p0 .. p0}, Lcom/TQFramework/TQUpdateActivity;->getApplication()Landroid/app/Application;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v25

    .line 771
    .local v25, "sPageName":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "/data/data/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/lib/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 772
    .local v26, "sSrcDir":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity;->gsSrcResPath:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/libso/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 773
    .local v24, "sDstDir":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "libtqcopyso.so"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 776
    .local v27, "sTqcopyso":Ljava/lang/String;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 779
    .local v16, "libsofileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 780
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 781
    const/4 v15, 0x0

    .line 782
    .local v15, "inputFile":Ljava/io/InputStream;
    new-instance v15, Ljava/io/FileInputStream;

    .end local v15    # "inputFile":Ljava/io/InputStream;
    move-object/from16 v0, v27

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 783
    .restart local v15    # "inputFile":Ljava/io/InputStream;
    invoke-virtual {v7, v15}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 784
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v23

    .line 785
    .local v23, "root":Lorg/w3c/dom/Element;
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 786
    const-string v32, "SoFile"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 787
    .local v19, "nodeSofileList":Lorg/w3c/dom/NodeList;
    const-string v32, "fontinfo"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 793
    .local v18, "nodeFontfileList":Lorg/w3c/dom/NodeList;
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/TQFramework/TQUpdateActivity;->gcurdetail:J

    .line 794
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/TQFramework/TQUpdateActivity;->gtotalSize:J

    .line 797
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    move/from16 v0, v32

    if-lt v14, v0, :cond_0

    .line 832
    const/4 v14, 0x0

    :goto_1
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    move/from16 v0, v32

    if-lt v14, v0, :cond_2

    .line 848
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_2
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-nez v33, :cond_4

    .line 859
    const/16 v32, 0x1

    .end local v14    # "i":I
    .end local v15    # "inputFile":Ljava/io/InputStream;
    .end local v18    # "nodeFontfileList":Lorg/w3c/dom/NodeList;
    .end local v19    # "nodeSofileList":Lorg/w3c/dom/NodeList;
    .end local v23    # "root":Lorg/w3c/dom/Element;
    :goto_3
    return v32

    .line 788
    :catch_0
    move-exception v11

    .line 790
    .local v11, "e":Ljava/lang/Exception;
    const/16 v32, 0x0

    goto :goto_3

    .line 799
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v14    # "i":I
    .restart local v15    # "inputFile":Ljava/io/InputStream;
    .restart local v18    # "nodeFontfileList":Lorg/w3c/dom/NodeList;
    .restart local v19    # "nodeSofileList":Lorg/w3c/dom/NodeList;
    .restart local v23    # "root":Lorg/w3c/dom/Element;
    :cond_0
    const-string v4, ""

    .line 800
    .local v4, "FileName":Ljava/lang/String;
    const-string v9, ""

    .line 801
    .local v9, "dstFileName":Ljava/lang/String;
    const-string v13, ""

    .line 802
    .local v13, "fontsize":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Element;

    .line 803
    .local v17, "node":Lorg/w3c/dom/Element;
    const-string v32, "filelibso"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 804
    const-string v32, "filename"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 805
    const-string v32, "fontsize"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 807
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 808
    .local v30, "srcfullfilepath":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity;->gsSrcResPath:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 809
    .local v10, "dstfullfilepath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v30

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 810
    .local v5, "SrcFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/TQFramework/TQUpdateActivity;->gtotalSize:J

    move-wide/from16 v32, v0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v34

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/TQFramework/TQUpdateActivity;->gtotalSize:J

    .line 812
    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    new-instance v32, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity;->gsSrcResPath:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/ini/font.ini"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 816
    .local v29, "sfontinifile":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 817
    .local v28, "sWritecontent":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v29

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 818
    .local v12, "fontiniFile":Ljava/io/File;
    new-instance v22, Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 819
    .local v22, "parentDir":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v32

    if-nez v32, :cond_1

    .line 820
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdirs()Z

    .line 822
    :cond_1
    :try_start_1
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 823
    .local v21, "output":Ljava/io/FileOutputStream;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v34

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 824
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 797
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 825
    .end local v21    # "output":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v11

    .line 827
    .restart local v11    # "e":Ljava/lang/Exception;
    const/16 v32, 0x0

    goto/16 :goto_3

    .line 834
    .end local v4    # "FileName":Ljava/lang/String;
    .end local v5    # "SrcFile":Ljava/io/File;
    .end local v9    # "dstFileName":Ljava/lang/String;
    .end local v10    # "dstfullfilepath":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "fontiniFile":Ljava/io/File;
    .end local v13    # "fontsize":Ljava/lang/String;
    .end local v17    # "node":Lorg/w3c/dom/Element;
    .end local v22    # "parentDir":Ljava/io/File;
    .end local v28    # "sWritecontent":Ljava/lang/String;
    .end local v29    # "sfontinifile":Ljava/lang/String;
    .end local v30    # "srcfullfilepath":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Element;

    .line 835
    .restart local v17    # "node":Lorg/w3c/dom/Element;
    const-string v4, ""

    .line 836
    .restart local v4    # "FileName":Ljava/lang/String;
    const-string v32, "filelibso"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 837
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 838
    .restart local v30    # "srcfullfilepath":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 839
    .restart local v10    # "dstfullfilepath":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_3

    .line 841
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v30

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 842
    .restart local v5    # "SrcFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/TQFramework/TQUpdateActivity;->gtotalSize:J

    move-wide/from16 v32, v0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v34

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/TQFramework/TQUpdateActivity;->gtotalSize:J

    .line 843
    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    .end local v5    # "SrcFile":Ljava/io/File;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 848
    .end local v4    # "FileName":Ljava/lang/String;
    .end local v10    # "dstfullfilepath":Ljava/lang/String;
    .end local v17    # "node":Lorg/w3c/dom/Element;
    .end local v30    # "srcfullfilepath":Ljava/lang/String;
    :cond_4
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    .line 850
    .local v20, "objKey":Ljava/lang/Object;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    .line 852
    .local v31, "value":Ljava/lang/Object;
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/TQFramework/TQUpdateActivity;->copysoFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 853
    :catch_2
    move-exception v11

    .line 855
    .restart local v11    # "e":Ljava/lang/Exception;
    const/16 v32, 0x0

    goto/16 :goto_3
.end method

.method DownLoadFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "localfile"    # Ljava/lang/String;

    .prologue
    .line 1022
    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_6

    .line 1024
    const-wide/16 v11, -0x1

    .line 1025
    .local v11, "lApkFileLength":J
    const/16 v16, 0x0

    .line 1026
    .local v16, "nDownFileBytes":I
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1027
    .local v6, "client":Lorg/apache/http/client/HttpClient;
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1030
    .local v9, "get":Lorg/apache/http/client/methods/HttpGet;
    const/4 v2, 0x0

    .line 1032
    .local v2, "accessor":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1033
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_1

    .line 1035
    new-instance v17, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1036
    .local v17, "parentDir":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_0

    .line 1037
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    .line 1038
    :cond_0
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 1041
    .end local v17    # "parentDir":Ljava/io/File;
    :cond_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v20, "rw"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1042
    .end local v2    # "accessor":Ljava/io/RandomAccessFile;
    .local v3, "accessor":Ljava/io/RandomAccessFile;
    const-wide/16 v14, 0x0

    .line 1043
    .local v14, "nCurfileSize":J
    if-eqz v3, :cond_2

    .line 1045
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v14

    .line 1046
    long-to-int v0, v14

    move/from16 v16, v0

    .line 1047
    invoke-virtual {v3, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1049
    :cond_2
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "bytes="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1050
    .local v19, "startPosition":Ljava/lang/String;
    const-string v20, "Range"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-interface {v6, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 1063
    .local v18, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 1064
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    .line 1066
    add-long/2addr v11, v14

    .line 1067
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 1069
    .local v10, "is":Ljava/io/InputStream;
    if-eqz v10, :cond_3

    .line 1074
    const/16 v20, 0x7530

    move/from16 v0, v20

    new-array v4, v0, [B

    .line 1075
    .local v4, "buf":[B
    const/4 v5, -0x1

    .line 1076
    .local v5, "ch":I
    :goto_0
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_5

    .line 1088
    .end local v4    # "buf":[B
    .end local v5    # "ch":I
    :cond_3
    if-eqz v3, :cond_4

    .line 1089
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 1092
    :cond_4
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v11, v20

    if-nez v20, :cond_6

    .line 1094
    const/16 v20, 0x1

    .line 1100
    .end local v3    # "accessor":Ljava/io/RandomAccessFile;
    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "get":Lorg/apache/http/client/methods/HttpGet;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "lApkFileLength":J
    .end local v14    # "nCurfileSize":J
    .end local v16    # "nDownFileBytes":I
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v19    # "startPosition":Ljava/lang/String;
    :goto_1
    return v20

    .line 1077
    .restart local v3    # "accessor":Ljava/io/RandomAccessFile;
    .restart local v4    # "buf":[B
    .restart local v5    # "ch":I
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "get":Lorg/apache/http/client/methods/HttpGet;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "lApkFileLength":J
    .restart local v14    # "nCurfileSize":J
    .restart local v16    # "nDownFileBytes":I
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    .restart local v19    # "startPosition":Ljava/lang/String;
    :cond_5
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1078
    add-int v16, v16, v5

    .line 1080
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 1081
    .local v13, "msg":Landroid/os/Message;
    const/16 v20, 0x2

    move/from16 v0, v20

    iput v0, v13, Landroid/os/Message;->what:I

    .line 1082
    long-to-int v0, v11

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v13, Landroid/os/Message;->arg1:I

    .line 1083
    move/from16 v0, v16

    iput v0, v13, Landroid/os/Message;->arg2:I

    .line 1084
    sget-object v20, Lcom/TQFramework/TQUpdateActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1096
    .end local v4    # "buf":[B
    .end local v5    # "ch":I
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v13    # "msg":Landroid/os/Message;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v19    # "startPosition":Ljava/lang/String;
    :catch_0
    move-exception v20

    move-object v2, v3

    .line 1100
    .end local v3    # "accessor":Ljava/io/RandomAccessFile;
    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "get":Lorg/apache/http/client/methods/HttpGet;
    .end local v11    # "lApkFileLength":J
    .end local v14    # "nCurfileSize":J
    .end local v16    # "nDownFileBytes":I
    :cond_6
    :goto_2
    const/16 v20, 0x0

    goto :goto_1

    .line 1096
    .restart local v2    # "accessor":Ljava/io/RandomAccessFile;
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v9    # "get":Lorg/apache/http/client/methods/HttpGet;
    .restart local v11    # "lApkFileLength":J
    .restart local v16    # "nDownFileBytes":I
    :catch_1
    move-exception v20

    goto :goto_2
.end method

.method protected GetAppChanelId()Ljava/lang/String;
    .locals 10

    .prologue
    .line 188
    const/4 v2, 0x0

    .line 189
    .local v2, "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x0

    .line 190
    .local v1, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v0, 0x0

    .line 191
    .local v0, "doc":Lorg/w3c/dom/Document;
    const-string v7, ""

    .line 193
    .local v7, "strRet":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 195
    invoke-virtual {p0}, Lcom/TQFramework/TQUpdateActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "NdChannelId.xml"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    .line 198
    .local v6, "root":Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 199
    const-string v8, "chl"

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 200
    .local v5, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-lt v3, v8, :cond_0

    .line 208
    .end local v3    # "i":I
    .end local v5    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v6    # "root":Lorg/w3c/dom/Element;
    :goto_1
    return-object v7

    .line 202
    .restart local v3    # "i":I
    .restart local v5    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v6    # "root":Lorg/w3c/dom/Element;
    :cond_0
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 203
    .local v4, "node":Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 200
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    .end local v3    # "i":I
    .end local v4    # "node":Lorg/w3c/dom/Element;
    .end local v5    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v6    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method protected GetChannelIdUrl(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 18
    .param p1, "sUrl"    # Ljava/lang/String;
    .param p2, "sChennelID"    # Ljava/lang/String;
    .param p3, "nResVerCode"    # I
    .param p4, "nCurApkver"    # I

    .prologue
    .line 261
    const/4 v5, 0x0

    .line 262
    .local v5, "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x0

    .line 263
    .local v4, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v3, 0x0

    .line 265
    .local v3, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 266
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 267
    const/4 v7, 0x0

    .line 268
    .local v7, "inputFile":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity;->m_sDownPathchanelxml:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/TQFramework/TQUpdateActivity;->GetLocalFileFromURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 269
    .local v14, "sFileName":Ljava/lang/String;
    new-instance v7, Ljava/io/FileInputStream;

    .end local v7    # "inputFile":Ljava/io/InputStream;
    invoke-direct {v7, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 270
    .restart local v7    # "inputFile":Ljava/io/InputStream;
    invoke-virtual {v4, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 271
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v12

    .line 272
    .local v12, "root":Lorg/w3c/dom/Element;
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 273
    const-string v17, "chl"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 274
    .local v11, "nodeList":Lorg/w3c/dom/NodeList;
    const-string v16, ""

    .line 275
    .local v16, "strChlTxt":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-lt v6, v0, :cond_1

    .line 317
    .end local v6    # "i":I
    .end local v7    # "inputFile":Ljava/io/InputStream;
    .end local v11    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v12    # "root":Lorg/w3c/dom/Element;
    .end local v14    # "sFileName":Ljava/lang/String;
    .end local v16    # "strChlTxt":Ljava/lang/String;
    :cond_0
    :goto_1
    const/16 v17, 0x0

    :goto_2
    return v17

    .line 277
    .restart local v6    # "i":I
    .restart local v7    # "inputFile":Ljava/io/InputStream;
    .restart local v11    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v12    # "root":Lorg/w3c/dom/Element;
    .restart local v14    # "sFileName":Ljava/lang/String;
    .restart local v16    # "strChlTxt":Ljava/lang/String;
    :cond_1
    invoke-interface {v11, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 278
    .local v10, "node":Lorg/w3c/dom/Element;
    const-string v17, "Key"

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 279
    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_6

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 281
    const/16 v9, 0x3e8

    .line 282
    .local v9, "nNewResVer":I
    const/16 v8, 0x3e8

    .line 284
    .local v8, "nNewApkVer":I
    const-string v17, "Url"

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/TQFramework/TQUpdateActivity;->m_ChannelUrl:Ljava/lang/String;

    .line 285
    const-string v17, "Version"

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 286
    .local v15, "sResVer":Ljava/lang/String;
    const-string v17, "apkVer"

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 288
    .local v13, "sApkVer":Ljava/lang/String;
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_2

    .line 290
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 292
    :cond_2
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_3

    .line 294
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 297
    :cond_3
    move/from16 v0, p3

    if-le v9, v0, :cond_4

    move/from16 v0, p4

    if-le v8, v0, :cond_4

    .line 299
    const/16 v17, 0x3

    goto :goto_2

    .line 301
    :cond_4
    move/from16 v0, p3

    if-le v9, v0, :cond_5

    move/from16 v0, p4

    if-gt v8, v0, :cond_5

    .line 303
    const/16 v17, 0x1

    goto :goto_2

    .line 305
    :cond_5
    move/from16 v0, p3

    if-gt v9, v0, :cond_0

    move/from16 v0, p4

    if-le v8, v0, :cond_0

    .line 307
    const/16 v17, 0x2

    goto :goto_2

    .line 275
    .end local v8    # "nNewApkVer":I
    .end local v9    # "nNewResVer":I
    .end local v13    # "sApkVer":Ljava/lang/String;
    .end local v15    # "sResVer":Ljava/lang/String;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 313
    .end local v6    # "i":I
    .end local v7    # "inputFile":Ljava/io/InputStream;
    .end local v10    # "node":Lorg/w3c/dom/Element;
    .end local v11    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v12    # "root":Lorg/w3c/dom/Element;
    .end local v14    # "sFileName":Ljava/lang/String;
    .end local v16    # "strChlTxt":Ljava/lang/String;
    :catch_0
    move-exception v17

    goto/16 :goto_1
.end method

.method public GetDownurl()Z
    .locals 20

    .prologue
    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity;->m_ChannelUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity;->m_sDownPathchanelxml:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/TQFramework/TQUpdateActivity;->GetXmlConfigFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 357
    const/4 v5, 0x0

    .line 358
    .local v5, "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x0

    .line 359
    .local v4, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v3, 0x0

    .line 361
    .local v3, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 362
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 363
    const/4 v8, 0x0

    .line 364
    .local v8, "inputFile":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity;->m_ChannelUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity;->m_sDownPathchanelxml:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/TQFramework/TQUpdateActivity;->GetLocalFileFromURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 365
    .local v14, "sFileName":Ljava/lang/String;
    new-instance v8, Ljava/io/FileInputStream;

    .end local v8    # "inputFile":Ljava/io/InputStream;
    invoke-direct {v8, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 366
    .restart local v8    # "inputFile":Ljava/io/InputStream;
    invoke-virtual {v4, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 367
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v13

    .line 368
    .local v13, "root":Lorg/w3c/dom/Element;
    invoke-interface {v13}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 370
    const-string v18, "apkpacket"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/TQFramework/TQUpdateActivity;->m_sApkUrl:Ljava/lang/String;

    .line 371
    const-string v18, "apkmd5"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/TQFramework/TQUpdateActivity;->m_apkmd5:Ljava/lang/String;

    .line 372
    const/16 v9, 0x3e8

    .line 373
    .local v9, "nMiniver":I
    const-string v18, "miniver"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 374
    .local v16, "strMiniver":Ljava/lang/String;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_0

    .line 376
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 378
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/TQFramework/TQUpdateActivity;->ncurResver:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v9, :cond_1

    .line 380
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/TQFramework/TQUpdateActivity;->ncurResver:I

    .line 382
    :cond_1
    const-string v18, "Version"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 383
    .local v12, "nodeList":Lorg/w3c/dom/NodeList;
    const-string v17, ""

    .line 384
    .local v17, "stridTxt":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-lt v7, v0, :cond_3

    .line 400
    :cond_2
    :goto_1
    const/16 v18, 0x1

    .line 405
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "i":I
    .end local v8    # "inputFile":Ljava/io/InputStream;
    .end local v9    # "nMiniver":I
    .end local v12    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "root":Lorg/w3c/dom/Element;
    .end local v14    # "sFileName":Ljava/lang/String;
    .end local v16    # "strMiniver":Ljava/lang/String;
    .end local v17    # "stridTxt":Ljava/lang/String;
    :goto_2
    return v18

    .line 386
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v4    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5    # "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7    # "i":I
    .restart local v8    # "inputFile":Ljava/io/InputStream;
    .restart local v9    # "nMiniver":I
    .restart local v12    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "root":Lorg/w3c/dom/Element;
    .restart local v14    # "sFileName":Ljava/lang/String;
    .restart local v16    # "strMiniver":Ljava/lang/String;
    .restart local v17    # "stridTxt":Ljava/lang/String;
    :cond_3
    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 387
    .local v11, "node":Lorg/w3c/dom/Element;
    const-string v18, "id"

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 388
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 389
    .local v10, "nVerCode":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/TQFramework/TQUpdateActivity;->ncurResver:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v10, v0, :cond_5

    .line 391
    const-string v18, "respacket"

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/TQFramework/TQUpdateActivity;->m_sResPacketUrl:Ljava/lang/String;

    .line 392
    const-string v18, "forceupdate"

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 393
    .local v15, "sForceUpdate":Ljava/lang/String;
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_2

    const-string v18, "1"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 395
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/TQFramework/TQUpdateActivity;->bForeceUpdate:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 401
    .end local v7    # "i":I
    .end local v8    # "inputFile":Ljava/io/InputStream;
    .end local v9    # "nMiniver":I
    .end local v10    # "nVerCode":I
    .end local v11    # "node":Lorg/w3c/dom/Element;
    .end local v12    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "root":Lorg/w3c/dom/Element;
    .end local v14    # "sFileName":Ljava/lang/String;
    .end local v15    # "sForceUpdate":Ljava/lang/String;
    .end local v16    # "strMiniver":Ljava/lang/String;
    .end local v17    # "stridTxt":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 402
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 405
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 384
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v4    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5    # "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7    # "i":I
    .restart local v8    # "inputFile":Ljava/io/InputStream;
    .restart local v9    # "nMiniver":I
    .restart local v10    # "nVerCode":I
    .restart local v11    # "node":Lorg/w3c/dom/Element;
    .restart local v12    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "root":Lorg/w3c/dom/Element;
    .restart local v14    # "sFileName":Ljava/lang/String;
    .restart local v16    # "strMiniver":Ljava/lang/String;
    .restart local v17    # "stridTxt":Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method GetLocalFileFromURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sDownPath"    # Ljava/lang/String;

    .prologue
    .line 323
    const-string v2, ""

    .line 326
    .local v2, "sLocalFile":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 327
    .local v1, "objUrl":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 328
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 332
    .end local v1    # "objUrl":Ljava/net/URL;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 334
    const-string v2, "NdChannelId.xml"

    .line 337
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 338
    return-object v2

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e1":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method protected GetXmlConfigFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .param p1, "sUrl"    # Ljava/lang/String;
    .param p2, "sDownPath"    # Ljava/lang/String;

    .prologue
    .line 214
    const/4 v2, 0x0

    .line 215
    .local v2, "bRet":Z
    new-instance v16, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 216
    .local v16, "params":Lorg/apache/http/params/HttpParams;
    const/16 v18, 0xfa0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 217
    const/16 v18, 0xfa0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 218
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 219
    .local v6, "client":Lorg/apache/http/client/HttpClient;
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 222
    .local v12, "get":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v6, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 223
    .local v17, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move v3, v2

    .line 255
    .end local v2    # "bRet":Z
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    .local v3, "bRet":I
    :goto_0
    return v3

    .line 227
    .end local v3    # "bRet":I
    .restart local v2    # "bRet":Z
    .restart local v17    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 228
    .local v9, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v14

    .line 229
    .local v14, "length":J
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .line 230
    .local v13, "is":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 231
    .local v11, "fileOutputStream":Ljava/io/FileOutputStream;
    if-eqz v13, :cond_1

    .line 232
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    .line 233
    new-instance v10, Ljava/io/File;

    invoke-virtual/range {p0 .. p2}, Lcom/TQFramework/TQUpdateActivity;->GetLocalFileFromURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v10, "file":Ljava/io/File;
    new-instance v11, Ljava/io/FileOutputStream;

    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 235
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v18, 0x400

    move/from16 v0, v18

    new-array v4, v0, [B

    .line 236
    .local v4, "buf":[B
    const/4 v5, -0x1

    .line 237
    .local v5, "ch":I
    const/4 v7, 0x0

    .line 238
    .local v7, "count":I
    :goto_1
    invoke-virtual {v13, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_2

    .line 242
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 243
    if-eqz v11, :cond_1

    .line 244
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 245
    int-to-long v0, v7

    move-wide/from16 v18, v0

    cmp-long v18, v18, v14

    if-nez v18, :cond_1

    .line 246
    const/4 v2, 0x1

    .end local v4    # "buf":[B
    .end local v5    # "ch":I
    .end local v7    # "count":I
    .end local v9    # "entity":Lorg/apache/http/HttpEntity;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v14    # "length":J
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    :goto_2
    move v3, v2

    .line 255
    .restart local v3    # "bRet":I
    goto :goto_0

    .line 239
    .end local v3    # "bRet":I
    .restart local v4    # "buf":[B
    .restart local v5    # "ch":I
    .restart local v7    # "count":I
    .restart local v9    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "is":Ljava/io/InputStream;
    .restart local v14    # "length":J
    .restart local v17    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v4, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    add-int/2addr v7, v5

    goto :goto_1

    .line 252
    .end local v4    # "buf":[B
    .end local v5    # "ch":I
    .end local v7    # "count":I
    .end local v9    # "entity":Lorg/apache/http/HttpEntity;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v14    # "length":J
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v8

    .line 253
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method InstallApk()V
    .locals 4

    .prologue
    .line 1105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1106
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/TQFramework/TQUpdateActivity;->m_sApkUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/TQFramework/TQUpdateActivity;->m_sDownPathchanelxml:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/TQFramework/TQUpdateActivity;->GetLocalFileFromURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1107
    const-string v2, "application/vnd.android.package-archive"

    .line 1106
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    invoke-virtual {p0, v0}, Lcom/TQFramework/TQUpdateActivity;->startActivity(Landroid/content/Intent;)V

    .line 1109
    return-void
.end method

.method protected ReadSplitFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 23
    .param p1, "srcDir"    # Ljava/lang/String;
    .param p2, "dstDir"    # Ljava/lang/String;
    .param p3, "strFileName"    # Ljava/lang/String;

    .prologue
    .line 1184
    const/4 v7, 0x0

    .line 1185
    .local v7, "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v6, 0x0

    .line 1186
    .local v6, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v5, 0x0

    .line 1187
    .local v5, "doc":Lorg/w3c/dom/Document;
    const-string v20, ""

    .line 1189
    .local v20, "strRet":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 1190
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 1191
    const/4 v11, 0x0

    .line 1193
    .local v11, "inputFile":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity;->m_SplitFileSet:Ljava/util/HashSet;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashSet;->clear()V

    .line 1194
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1195
    .local v17, "splitXML":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1196
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_0

    .line 1198
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 1199
    .local v12, "msg":Landroid/os/Message;
    const/16 v21, 0x3

    move/from16 v0, v21

    iput v0, v12, Landroid/os/Message;->what:I

    .line 1200
    sget-object v21, Lcom/TQFramework/TQUpdateActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1243
    .end local v9    # "file":Ljava/io/File;
    .end local v11    # "inputFile":Ljava/io/InputStream;
    .end local v12    # "msg":Landroid/os/Message;
    .end local v17    # "splitXML":Ljava/lang/String;
    :goto_0
    return-object v20

    .line 1203
    .restart local v9    # "file":Ljava/io/File;
    .restart local v11    # "inputFile":Ljava/io/InputStream;
    .restart local v17    # "splitXML":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity;->m_SplitFileSet:Ljava/util/HashSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1205
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1208
    .local v10, "inBuff":Ljava/io/FileInputStream;
    invoke-virtual {v6, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 1209
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v16

    .line 1210
    .local v16, "root":Lorg/w3c/dom/Element;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 1211
    const-string v21, "SplitFile"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 1212
    .local v15, "nodeList":Lorg/w3c/dom/NodeList;
    const-string v19, ""

    .line 1213
    .local v19, "strPath":Ljava/lang/String;
    const-string v18, ""

    .line 1214
    .local v18, "strCnt":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1216
    .local v13, "nIndex":I
    :goto_1
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    move/from16 v0, v21

    if-lt v13, v0, :cond_1

    .line 1234
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1235
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 1236
    .restart local v12    # "msg":Landroid/os/Message;
    const/16 v21, 0x3

    move/from16 v0, v21

    iput v0, v12, Landroid/os/Message;->what:I

    .line 1237
    sget-object v21, Lcom/TQFramework/TQUpdateActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1238
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "inBuff":Ljava/io/FileInputStream;
    .end local v11    # "inputFile":Ljava/io/InputStream;
    .end local v12    # "msg":Landroid/os/Message;
    .end local v13    # "nIndex":I
    .end local v15    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v16    # "root":Lorg/w3c/dom/Element;
    .end local v17    # "splitXML":Ljava/lang/String;
    .end local v18    # "strCnt":Ljava/lang/String;
    .end local v19    # "strPath":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1240
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1219
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "inBuff":Ljava/io/FileInputStream;
    .restart local v11    # "inputFile":Ljava/io/InputStream;
    .restart local v13    # "nIndex":I
    .restart local v15    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v16    # "root":Lorg/w3c/dom/Element;
    .restart local v17    # "splitXML":Ljava/lang/String;
    .restart local v18    # "strCnt":Ljava/lang/String;
    .restart local v19    # "strPath":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v15, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 1220
    .local v14, "node":Lorg/w3c/dom/Element;
    const-string v21, "Path"

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1221
    const-string v21, "cnt"

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1228
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/TQFramework/TQUpdateActivity;->mergeSplitFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1216
    add-int/lit8 v13, v13, 0x1

    goto :goto_1
.end method

.method protected ReturnMainView()V
    .locals 2

    .prologue
    .line 415
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 416
    .local v0, "intentUpgrade":Landroid/content/Intent;
    sget-object v1, Lcom/TQFramework/TQUpdateActivity;->Maincls:Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 417
    invoke-virtual {p0, v0}, Lcom/TQFramework/TQUpdateActivity;->startActivity(Landroid/content/Intent;)V

    .line 418
    invoke-virtual {p0}, Lcom/TQFramework/TQUpdateActivity;->finish()V

    .line 419
    return-void
.end method

.method StartCheckVersion()V
    .locals 1

    .prologue
    .line 687
    new-instance v0, Lcom/TQFramework/TQUpdateActivity$4;

    invoke-direct {v0, p0}, Lcom/TQFramework/TQUpdateActivity$4;-><init>(Lcom/TQFramework/TQUpdateActivity;)V

    .line 719
    invoke-virtual {v0}, Lcom/TQFramework/TQUpdateActivity$4;->start()V

    .line 720
    return-void
.end method

.method UpdateVersion(I)V
    .locals 1
    .param p1, "nStyle"    # I

    .prologue
    .line 906
    new-instance v0, Lcom/TQFramework/TQUpdateActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/TQFramework/TQUpdateActivity$5;-><init>(Lcom/TQFramework/TQUpdateActivity;I)V

    .line 1017
    invoke-virtual {v0}, Lcom/TQFramework/TQUpdateActivity$5;->start()V

    .line 1018
    return-void
.end method

.method protected mergeSplitFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14
    .param p1, "strFile"    # Ljava/lang/String;
    .param p2, "srcDir"    # Ljava/lang/String;
    .param p3, "dstDir"    # Ljava/lang/String;
    .param p4, "nCnt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1250
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1251
    .local v8, "strDstFile":Ljava/lang/String;
    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 1252
    .local v5, "nPos":I
    const/4 v12, 0x1

    if-ge v5, v12, :cond_0

    .line 1287
    .end local v5    # "nPos":I
    .end local v8    # "strDstFile":Ljava/lang/String;
    :goto_0
    return-void

    .line 1255
    .restart local v5    # "nPos":I
    .restart local v8    # "strDstFile":Ljava/lang/String;
    :cond_0
    const/4 v12, 0x0

    invoke-virtual {v8, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1256
    .local v9, "strDstFolder":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 1258
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1259
    .local v11, "targetFile":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1260
    .local v6, "out":Ljava/io/OutputStream;
    const/16 v12, 0x7800

    new-array v1, v12, [B

    .line 1262
    .local v1, "buffer":[B
    const/4 v7, 0x0

    .line 1263
    .local v7, "readLen":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    move/from16 v0, p4

    if-le v3, v0, :cond_1

    .line 1281
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 1283
    .end local v1    # "buffer":[B
    .end local v3    # "i":I
    .end local v5    # "nPos":I
    .end local v6    # "out":Ljava/io/OutputStream;
    .end local v7    # "readLen":I
    .end local v8    # "strDstFile":Ljava/lang/String;
    .end local v9    # "strDstFolder":Ljava/lang/String;
    .end local v11    # "targetFile":Ljava/io/File;
    :catch_0
    move-exception v12

    goto :goto_0

    .line 1265
    .restart local v1    # "buffer":[B
    .restart local v3    # "i":I
    .restart local v5    # "nPos":I
    .restart local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "readLen":I
    .restart local v8    # "strDstFile":Ljava/lang/String;
    .restart local v9    # "strDstFolder":Ljava/lang/String;
    .restart local v11    # "targetFile":Ljava/io/File;
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1267
    .local v10, "strSrcFile":Ljava/lang/String;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1269
    .local v4, "inBuff":Ljava/io/FileInputStream;
    iget-object v12, p0, Lcom/TQFramework/TQUpdateActivity;->m_SplitFileSet:Ljava/util/HashSet;

    invoke-virtual {v12, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1270
    :goto_2
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v12, -0x1

    if-ne v7, v12, :cond_3

    .line 1273
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 1274
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1275
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1276
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1277
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1263
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1271
    .end local v2    # "file":Ljava/io/File;
    :cond_3
    const/4 v12, 0x0

    invoke-virtual {v6, v1, v12, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x400

    const/16 v4, 0x3e7

    const/4 v2, 0x1

    const/4 v3, 0x4

    .line 423
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 425
    invoke-static {}, Lcom/TQFramework/TQFrameworkActivity;->GetDeviceOrientation()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 427
    invoke-virtual {p0, v2}, Lcom/TQFramework/TQUpdateActivity;->setRequestedOrientation(I)V

    .line 433
    :goto_0
    invoke-virtual {p0}, Lcom/TQFramework/TQUpdateActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 434
    invoke-virtual {p0, v2}, Lcom/TQFramework/TQUpdateActivity;->requestWindowFeature(I)Z

    .line 435
    sget-object v1, Lcom/TQFramework/TQUpdateActivity;->MainContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/TQFramework/DynamicActivityId;->InitActivityID(Landroid/content/Context;)V

    .line 436
    sget v1, Lcom/TQFramework/DynamicActivityId$layout;->tqupdate:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->setContentView(I)V

    .line 441
    invoke-virtual {p0}, Lcom/TQFramework/TQUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 442
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "srcUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->gsSrcUrl:Ljava/lang/String;

    .line 443
    const-string v1, "nResCurVer"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/TQFramework/TQUpdateActivity;->ncurResver:I

    .line 444
    const-string v1, "nApkCurVer"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/TQFramework/TQUpdateActivity;->ncurApkver:I

    .line 445
    const-string v1, "srcResPath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->gsSrcResPath:Ljava/lang/String;

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/TQFramework/TQUpdateActivity;->gsSrcResPath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/download/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->m_sDownPathchanelxml:Ljava/lang/String;

    .line 449
    sget v1, Lcom/TQFramework/DynamicActivityId$strid;->str_updfirstupdate:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->strupdfirstupdate:Ljava/lang/String;

    .line 450
    sget v1, Lcom/TQFramework/DynamicActivityId$strid;->str_updapkdownloading:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->strupdapkdownloading:Ljava/lang/String;

    .line 451
    sget v1, Lcom/TQFramework/DynamicActivityId$strid;->str_updresdownloading:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->strupdresdownloading:Ljava/lang/String;

    .line 452
    sget v1, Lcom/TQFramework/DynamicActivityId$strid;->str_updunpressRes:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->strupdunpressRes:Ljava/lang/String;

    .line 453
    sget v1, Lcom/TQFramework/DynamicActivityId$strid;->str_updupdatefaile:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->strupdupdatefaile:Ljava/lang/String;

    .line 454
    sget v1, Lcom/TQFramework/DynamicActivityId$strid;->str_updupdateinitfaile:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->strupdateinitfaile:Ljava/lang/String;

    .line 455
    sget v1, Lcom/TQFramework/DynamicActivityId$strid;->str_updunpressfaile:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->strunpressfaile:Ljava/lang/String;

    .line 456
    sget v1, Lcom/TQFramework/DynamicActivityId$strid;->str_updupdatefailecon:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->strupdupdatefailecon:Ljava/lang/String;

    .line 457
    sget v1, Lcom/TQFramework/DynamicActivityId$strid;->str_updunknowerror:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->strupdunknowerror:Ljava/lang/String;

    .line 458
    sget v1, Lcom/TQFramework/DynamicActivityId$strid;->str_updok:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->strupdok:Ljava/lang/String;

    .line 459
    sget v1, Lcom/TQFramework/DynamicActivityId$strid;->str_updcurper:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->strupdcurper:Ljava/lang/String;

    .line 460
    sget v1, Lcom/TQFramework/DynamicActivityId$strid;->str_forceupdate:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->strforceupdate:Ljava/lang/String;

    .line 461
    sget v1, Lcom/TQFramework/DynamicActivityId$strid;->str_copymergper:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->strcopymergper:Ljava/lang/String;

    .line 463
    sget v1, Lcom/TQFramework/DynamicActivityId$id;->ap_upprogressBardetail:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->pDownBar:Landroid/widget/ProgressBar;

    .line 464
    sget v1, Lcom/TQFramework/DynamicActivityId$id;->ap_updownbutton:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->downbutton:Landroid/widget/Button;

    .line 465
    sget v1, Lcom/TQFramework/DynamicActivityId$id;->ap_upcancelbutton:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->cancelbutton:Landroid/widget/Button;

    .line 466
    sget v1, Lcom/TQFramework/DynamicActivityId$id;->ap_upprogressTextView:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->mProgressText:Landroid/widget/TextView;

    .line 467
    sget v1, Lcom/TQFramework/DynamicActivityId$id;->ap_progressrateview:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->mProgressrateview:Landroid/widget/TextView;

    .line 468
    sget v1, Lcom/TQFramework/DynamicActivityId$id;->ap_upmessage:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->mTextmessage:Landroid/widget/TextView;

    .line 469
    sget v1, Lcom/TQFramework/DynamicActivityId$id;->ap_pchecknewver:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->mCheckvertext:Landroid/widget/TextView;

    .line 470
    sget v1, Lcom/TQFramework/DynamicActivityId$id;->tq_imageview:I

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->mImageview:Landroid/widget/ImageView;

    .line 472
    iget-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->mProgressrateview:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    iget-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->mTextmessage:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    iget-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->pDownBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 475
    iget-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->mImageview:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    iget-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    iget-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->downbutton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 478
    iget-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->cancelbutton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 480
    invoke-virtual {p0}, Lcom/TQFramework/TQUpdateActivity;->StartCheckVersion()V

    .line 492
    new-instance v1, Lcom/TQFramework/TQUpdateActivity$1;

    invoke-direct {v1, p0}, Lcom/TQFramework/TQUpdateActivity$1;-><init>(Lcom/TQFramework/TQUpdateActivity;)V

    sput-object v1, Lcom/TQFramework/TQUpdateActivity;->handler:Landroid/os/Handler;

    .line 652
    iget-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->downbutton:Landroid/widget/Button;

    new-instance v2, Lcom/TQFramework/TQUpdateActivity$2;

    invoke-direct {v2, p0}, Lcom/TQFramework/TQUpdateActivity$2;-><init>(Lcom/TQFramework/TQUpdateActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    iget-object v1, p0, Lcom/TQFramework/TQUpdateActivity;->cancelbutton:Landroid/widget/Button;

    new-instance v2, Lcom/TQFramework/TQUpdateActivity$3;

    invoke-direct {v2, p0}, Lcom/TQFramework/TQUpdateActivity$3;-><init>(Lcom/TQFramework/TQUpdateActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    return-void

    .line 430
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/TQFramework/TQUpdateActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 411
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 412
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 743
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 744
    invoke-virtual {p0}, Lcom/TQFramework/TQUpdateActivity;->finish()V

    .line 745
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 747
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
