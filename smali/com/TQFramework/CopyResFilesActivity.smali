.class public Lcom/TQFramework/CopyResFilesActivity;
.super Landroid/app/Activity;
.source "CopyResFilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/TQFramework/CopyResFilesActivity$CopyHandler;
    }
.end annotation


# static fields
.field private static final INT_DETAIL_INFO_MSG:I = 0x1002

.field private static final INT_EXIT_ACTIVITY:I = 0x1001

.field private static final INT_RETURN_MAINVIEW:I = 0x1010

.field private static final INT_TOTAL_INFO_MSG:I = 0x1003

.field private static final INT_UPDATE_PROGERSS_TEXE_MSG:I = 0x1000

.field public static MainContext:Landroid/content/Context;

.field public static Maincls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mCancelBtn:Landroid/widget/Button;

.field private mCopyHandler:Lcom/TQFramework/CopyResFilesActivity$CopyHandler;

.field private mIsThreadRunning:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressDetailBar:Landroid/widget/ProgressBar;

.field private mProgressText:Landroid/widget/TextView;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private m_DetailInfo:Landroid/widget/TextView;

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

.field private m_TotalInfo:Landroid/widget/TextView;

.field private m_handler:Landroid/os/Handler;

.field private nCurVer:I

.field private runnable:Ljava/lang/Runnable;

.field private sDestResPath:Ljava/lang/String;

.field private sSrcResPath:Ljava/lang/String;

.field private strcopycurper:Ljava/lang/String;

.field private strcopycurstep:Ljava/lang/String;

.field private strcopyfirstlogin:Ljava/lang/String;

.field private strcopymergper:Ljava/lang/String;

.field private strcopysigposper:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->mCancelBtn:Landroid/widget/Button;

    .line 49
    iput-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 50
    iput-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->mProgressDetailBar:Landroid/widget/ProgressBar;

    .line 51
    iput-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->mProgressText:Landroid/widget/TextView;

    .line 52
    iput-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->m_TotalInfo:Landroid/widget/TextView;

    .line 53
    iput-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->m_DetailInfo:Landroid/widget/TextView;

    .line 54
    iput-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->mAssetManager:Landroid/content/res/AssetManager;

    .line 55
    iput-boolean v1, p0, Lcom/TQFramework/CopyResFilesActivity;->mIsThreadRunning:Z

    .line 56
    iput-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 58
    iput-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->mCopyHandler:Lcom/TQFramework/CopyResFilesActivity$CopyHandler;

    .line 59
    iput-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->m_handler:Landroid/os/Handler;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->m_SplitFileSet:Ljava/util/HashSet;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->sSrcResPath:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->sDestResPath:Ljava/lang/String;

    .line 64
    iput v1, p0, Lcom/TQFramework/CopyResFilesActivity;->nCurVer:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->strcopyfirstlogin:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->strcopycurstep:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->strcopysigposper:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->strcopycurper:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->strcopymergper:Ljava/lang/String;

    .line 247
    new-instance v0, Lcom/TQFramework/CopyResFilesActivity$1;

    invoke-direct {v0, p0}, Lcom/TQFramework/CopyResFilesActivity$1;-><init>(Lcom/TQFramework/CopyResFilesActivity;)V

    iput-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->runnable:Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method private CopyAssetsToSd(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 26
    .param p1, "strAssetsPath"    # Ljava/lang/String;
    .param p2, "strSDPath"    # Ljava/lang/String;

    .prologue
    .line 290
    :try_start_0
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v18, "targetFileDir":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_0

    .line 293
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 296
    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".nomedia/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 297
    .local v16, "strNoMedia":Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v19, "targetNoMedia":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_1

    .line 300
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdir()Z

    .line 303
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/CopyResFilesActivity;->mAssetManager:Landroid/content/res/AssetManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "ResFiles":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v20, v0

    add-int/lit8 v10, v20, 0x1

    .line 305
    .local v10, "nSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/CopyResFilesActivity;->mProgressBar:Landroid/widget/ProgressBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 306
    const/4 v9, 0x0

    .line 308
    .local v9, "nIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/CopyResFilesActivity;->mProgressBar:Landroid/widget/ProgressBar;

    move-object/from16 v20, v0

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 309
    const-string v20, "%s(%d/%d)"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/CopyResFilesActivity;->strcopycurstep:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 310
    .local v15, "strInfo":Ljava/lang/String;
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 311
    .local v13, "split_msg":Landroid/os/Message;
    const/16 v20, 0x1003

    move/from16 v0, v20

    iput v0, v13, Landroid/os/Message;->what:I

    .line 312
    iput-object v15, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/CopyResFilesActivity;->m_handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 314
    const-string v20, "splites.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/TQFramework/CopyResFilesActivity;->ReadSplitFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    array-length v0, v4

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_2

    .line 349
    const/16 v20, 0x1

    .end local v4    # "ResFiles":[Ljava/lang/String;
    .end local v9    # "nIndex":I
    .end local v10    # "nSize":I
    .end local v13    # "split_msg":Landroid/os/Message;
    .end local v15    # "strInfo":Ljava/lang/String;
    .end local v16    # "strNoMedia":Ljava/lang/String;
    .end local v18    # "targetFileDir":Ljava/io/File;
    .end local v19    # "targetNoMedia":Ljava/io/File;
    :goto_1
    return v20

    .line 316
    .restart local v4    # "ResFiles":[Ljava/lang/String;
    .restart local v9    # "nIndex":I
    .restart local v10    # "nSize":I
    .restart local v13    # "split_msg":Landroid/os/Message;
    .restart local v15    # "strInfo":Ljava/lang/String;
    .restart local v16    # "strNoMedia":Ljava/lang/String;
    .restart local v18    # "targetFileDir":Ljava/io/File;
    .restart local v19    # "targetNoMedia":Ljava/io/File;
    :cond_2
    aget-object v11, v4, v20

    .line 318
    .local v11, "resFile":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/CopyResFilesActivity;->mProgressBar:Landroid/widget/ProgressBar;

    move-object/from16 v22, v0

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 319
    const-string v22, "%s(%d/%d)"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/CopyResFilesActivity;->strcopysigposper:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 321
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 322
    .local v8, "msg":Landroid/os/Message;
    const/16 v22, 0x1003

    move/from16 v0, v22

    iput v0, v8, Landroid/os/Message;->what:I

    .line 323
    iput-object v15, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/CopyResFilesActivity;->m_handler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 326
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 327
    .local v14, "srcFile":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 329
    .local v6, "dstFile":Ljava/lang/String;
    const-string v22, "."

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 330
    .local v5, "bFile":Z
    if-eqz v5, :cond_3

    .line 333
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6}, Lcom/TQFramework/CopyResFilesActivity;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 338
    :cond_3
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v23, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 339
    .local v12, "sourceDir":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v23, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 340
    .local v17, "targetDir":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Lcom/TQFramework/CopyResFilesActivity;->copyDirectiory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 343
    .end local v4    # "ResFiles":[Ljava/lang/String;
    .end local v5    # "bFile":Z
    .end local v6    # "dstFile":Ljava/lang/String;
    .end local v8    # "msg":Landroid/os/Message;
    .end local v9    # "nIndex":I
    .end local v10    # "nSize":I
    .end local v11    # "resFile":Ljava/lang/String;
    .end local v12    # "sourceDir":Ljava/lang/String;
    .end local v13    # "split_msg":Landroid/os/Message;
    .end local v14    # "srcFile":Ljava/lang/String;
    .end local v15    # "strInfo":Ljava/lang/String;
    .end local v16    # "strNoMedia":Ljava/lang/String;
    .end local v17    # "targetDir":Ljava/lang/String;
    .end local v18    # "targetFileDir":Ljava/io/File;
    .end local v19    # "targetNoMedia":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 345
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 346
    const/16 v20, 0x0

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lcom/TQFramework/CopyResFilesActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->sSrcResPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/TQFramework/CopyResFilesActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->sDestResPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/TQFramework/CopyResFilesActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->mProgressDetailBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$11(Lcom/TQFramework/CopyResFilesActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->m_DetailInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/TQFramework/CopyResFilesActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->m_TotalInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/TQFramework/CopyResFilesActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 288
    invoke-direct {p0, p1, p2}, Lcom/TQFramework/CopyResFilesActivity;->CopyAssetsToSd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/TQFramework/CopyResFilesActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$4(Lcom/TQFramework/CopyResFilesActivity;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/TQFramework/CopyResFilesActivity;->nCurVer:I

    return v0
.end method

.method static synthetic access$5(Lcom/TQFramework/CopyResFilesActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->m_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/TQFramework/CopyResFilesActivity;Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/TQFramework/CopyResFilesActivity;->mIsThreadRunning:Z

    return-void
.end method

.method static synthetic access$7(Lcom/TQFramework/CopyResFilesActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->mProgressText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/TQFramework/CopyResFilesActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->strcopyfirstlogin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/TQFramework/CopyResFilesActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method protected ReadSplitFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .param p1, "srcDir"    # Ljava/lang/String;
    .param p2, "dstDir"    # Ljava/lang/String;
    .param p3, "strFileName"    # Ljava/lang/String;

    .prologue
    .line 424
    const/4 v7, 0x0

    .line 425
    .local v7, "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v6, 0x0

    .line 426
    .local v6, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v5, 0x0

    .line 427
    .local v5, "doc":Lorg/w3c/dom/Document;
    const-string v18, ""

    .line 429
    .local v18, "strRet":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 430
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 431
    const/4 v8, 0x0

    .line 433
    .local v8, "inputFile":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/CopyResFilesActivity;->m_SplitFileSet:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->clear()V

    .line 434
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 435
    .local v14, "splitXML":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/CopyResFilesActivity;->m_SplitFileSet:Ljava/util/HashSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/CopyResFilesActivity;->mAssetManager:Landroid/content/res/AssetManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 438
    invoke-virtual {v6, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 439
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v13

    .line 440
    .local v13, "root":Lorg/w3c/dom/Element;
    invoke-interface {v13}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 441
    const-string v19, "SplitFile"

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 442
    .local v12, "nodeList":Lorg/w3c/dom/NodeList;
    const-string v17, ""

    .line 443
    .local v17, "strPath":Ljava/lang/String;
    const-string v15, ""

    .line 444
    .local v15, "strCnt":Ljava/lang/String;
    const/4 v10, 0x0

    .line 445
    .local v10, "nIndex":I
    :goto_0
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-lt v10, v0, :cond_0

    .line 463
    .end local v8    # "inputFile":Ljava/io/InputStream;
    .end local v10    # "nIndex":I
    .end local v12    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "root":Lorg/w3c/dom/Element;
    .end local v14    # "splitXML":Ljava/lang/String;
    .end local v15    # "strCnt":Ljava/lang/String;
    .end local v17    # "strPath":Ljava/lang/String;
    :goto_1
    return-object v18

    .line 447
    .restart local v8    # "inputFile":Ljava/io/InputStream;
    .restart local v10    # "nIndex":I
    .restart local v12    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "root":Lorg/w3c/dom/Element;
    .restart local v14    # "splitXML":Ljava/lang/String;
    .restart local v15    # "strCnt":Ljava/lang/String;
    .restart local v17    # "strPath":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/CopyResFilesActivity;->mProgressDetailBar:Landroid/widget/ProgressBar;

    move-object/from16 v19, v0

    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 448
    invoke-interface {v12, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 449
    .local v11, "node":Lorg/w3c/dom/Element;
    const-string v19, "Path"

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 450
    const-string v19, "cnt"

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 451
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/TQFramework/CopyResFilesActivity;->mergeSplitFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/CopyResFilesActivity;->mProgressDetailBar:Landroid/widget/ProgressBar;

    move-object/from16 v19, v0

    add-int/lit8 v20, v10, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 454
    const-string v19, "%s(%d%%)"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/CopyResFilesActivity;->strcopycurper:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    add-int/lit8 v22, v10, 0x1

    mul-int/lit8 v22, v22, 0x64

    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    div-int v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 455
    .local v16, "strInfo":Ljava/lang/String;
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 456
    .local v9, "msg":Landroid/os/Message;
    const/16 v19, 0x1002

    move/from16 v0, v19

    iput v0, v9, Landroid/os/Message;->what:I

    .line 457
    move-object/from16 v0, v16

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/CopyResFilesActivity;->m_handler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 460
    .end local v8    # "inputFile":Ljava/io/InputStream;
    .end local v9    # "msg":Landroid/os/Message;
    .end local v10    # "nIndex":I
    .end local v11    # "node":Lorg/w3c/dom/Element;
    .end local v12    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "root":Lorg/w3c/dom/Element;
    .end local v14    # "splitXML":Ljava/lang/String;
    .end local v15    # "strCnt":Ljava/lang/String;
    .end local v16    # "strInfo":Ljava/lang/String;
    .end local v17    # "strPath":Ljava/lang/String;
    :catch_0
    move-exception v19

    goto/16 :goto_1
.end method

.method protected ReturnMainView()V
    .locals 2

    .prologue
    .line 233
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 234
    .local v0, "intentMain":Landroid/content/Intent;
    sget-object v1, Lcom/TQFramework/CopyResFilesActivity;->Maincls:Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v0}, Lcom/TQFramework/CopyResFilesActivity;->startActivity(Landroid/content/Intent;)V

    .line 236
    invoke-virtual {p0}, Lcom/TQFramework/CopyResFilesActivity;->finish()V

    .line 237
    return-void
.end method

.method public copyDirectiory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "sourceDir"    # Ljava/lang/String;
    .param p2, "targetDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 382
    const-string v12, "CopyDir"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "sourceDir: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " targetDir:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/TQFramework/CopyResFilesActivity;->mAssetManager:Landroid/content/res/AssetManager;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "ResFiles":[Ljava/lang/String;
    array-length v6, v1

    .line 385
    .local v6, "nSize":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/TQFramework/CopyResFilesActivity;->mProgressDetailBar:Landroid/widget/ProgressBar;

    invoke-virtual {v12, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 386
    const/4 v5, 0x0

    .line 388
    .local v5, "nIndex":I
    array-length v13, v1

    const/4 v12, 0x0

    :goto_0
    if-lt v12, v13, :cond_0

    .line 419
    return-void

    .line 388
    :cond_0
    aget-object v7, v1, v12

    .line 390
    .local v7, "resFile":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/TQFramework/CopyResFilesActivity;->mProgressDetailBar:Landroid/widget/ProgressBar;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v14, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 392
    rem-int/lit8 v14, v5, 0xa

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 394
    const-string v14, "\u5355\u6b65\u8fdb\u5ea6\uff1a(%d%%)"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    mul-int/lit8 v17, v5, 0x64

    div-int v17, v17, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 395
    .local v10, "strInfo":Ljava/lang/String;
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 396
    .local v4, "msg":Landroid/os/Message;
    const/16 v14, 0x1002

    iput v14, v4, Landroid/os/Message;->what:I

    .line 397
    iput-object v10, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 398
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/TQFramework/CopyResFilesActivity;->m_handler:Landroid/os/Handler;

    invoke-virtual {v14, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 402
    .end local v4    # "msg":Landroid/os/Message;
    .end local v10    # "strInfo":Ljava/lang/String;
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 403
    .local v11, "strSrc":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 404
    .local v9, "strDst":Ljava/lang/String;
    const-string v14, "."

    invoke-virtual {v7, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 406
    .local v2, "bFile":Z
    if-eqz v2, :cond_2

    .line 409
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v9}, Lcom/TQFramework/CopyResFilesActivity;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 414
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 415
    .local v8, "srcDir":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, "dstDir":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3}, Lcom/TQFramework/CopyResFilesActivity;->copyDirectiory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "srcFile"    # Ljava/lang/String;
    .param p2, "dstFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v6, p0, Lcom/TQFramework/CopyResFilesActivity;->m_SplitFileSet:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 356
    const-string v6, "SplitFile"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SrcFIle: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has dealed, return"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_0
    return-void

    .line 359
    :cond_0
    const-string v6, "CopyFile"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SrcFIle: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " DstFile:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v6, p0, Lcom/TQFramework/CopyResFilesActivity;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 361
    .local v2, "input":Ljava/io/InputStream;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v5, "targetFile":Ljava/io/File;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 363
    .local v1, "inBuff":Ljava/io/BufferedInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 365
    .local v4, "output":Ljava/io/FileOutputStream;
    const/16 v6, 0x7800

    new-array v0, v6, [B

    .line 367
    .local v0, "buf":[B
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 372
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 373
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 374
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 369
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1
.end method

.method protected mergeSplitFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 17
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
    .line 470
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 471
    .local v8, "strDstFile":Ljava/lang/String;
    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 472
    .local v5, "nPos":I
    const/4 v13, 0x1

    if-ge v5, v13, :cond_0

    .line 509
    .end local v5    # "nPos":I
    .end local v8    # "strDstFile":Ljava/lang/String;
    :goto_0
    return-void

    .line 475
    .restart local v5    # "nPos":I
    .restart local v8    # "strDstFile":Ljava/lang/String;
    :cond_0
    const/4 v13, 0x0

    invoke-virtual {v8, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 476
    .local v9, "strDstFolder":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 478
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    .local v12, "targetFile":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 480
    .local v6, "out":Ljava/io/OutputStream;
    const/16 v13, 0x7800

    new-array v1, v13, [B

    .line 482
    .local v1, "buffer":[B
    const/4 v7, 0x0

    .line 483
    .local v7, "readLen":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/TQFramework/CopyResFilesActivity;->mProgressDetailBar:Landroid/widget/ProgressBar;

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 484
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    move/from16 v0, p4

    if-le v2, v0, :cond_1

    .line 503
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 505
    .end local v1    # "buffer":[B
    .end local v2    # "i":I
    .end local v5    # "nPos":I
    .end local v6    # "out":Ljava/io/OutputStream;
    .end local v7    # "readLen":I
    .end local v8    # "strDstFile":Ljava/lang/String;
    .end local v9    # "strDstFolder":Ljava/lang/String;
    .end local v12    # "targetFile":Ljava/io/File;
    :catch_0
    move-exception v13

    goto :goto_0

    .line 486
    .restart local v1    # "buffer":[B
    .restart local v2    # "i":I
    .restart local v5    # "nPos":I
    .restart local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "readLen":I
    .restart local v8    # "strDstFile":Ljava/lang/String;
    .restart local v9    # "strDstFolder":Ljava/lang/String;
    .restart local v12    # "targetFile":Ljava/io/File;
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 488
    .local v11, "strSrcFile":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/TQFramework/CopyResFilesActivity;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v13, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 489
    .local v3, "in":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/TQFramework/CopyResFilesActivity;->m_SplitFileSet:Ljava/util/HashSet;

    invoke-virtual {v13, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 490
    :goto_2
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v13, -0x1

    if-ne v7, v13, :cond_2

    .line 493
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 494
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 495
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/TQFramework/CopyResFilesActivity;->mProgressDetailBar:Landroid/widget/ProgressBar;

    add-int/lit8 v14, v2, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 496
    const-string v13, "%s(%d%%)"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/CopyResFilesActivity;->strcopymergper:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    add-int/lit8 v16, v2, 0x1

    mul-int/lit8 v16, v16, 0x64

    div-int v16, v16, p4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 497
    .local v10, "strInfo":Ljava/lang/String;
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 498
    .local v4, "msg":Landroid/os/Message;
    const/16 v13, 0x1002

    iput v13, v4, Landroid/os/Message;->what:I

    .line 499
    iput-object v10, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 500
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/TQFramework/CopyResFilesActivity;->m_handler:Landroid/os/Handler;

    invoke-virtual {v13, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 491
    .end local v4    # "msg":Landroid/os/Message;
    .end local v10    # "strInfo":Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    invoke-virtual {v6, v1, v13, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/TQFramework/CopyResFilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 220
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ORIENTATION_LANDSCAPE=2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 229
    return-void

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/TQFramework/CopyResFilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 224
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ORIENTATION_PORTRAIT=1"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x400

    const/16 v3, 0x3e8

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-static {}, Lcom/TQFramework/TQFrameworkActivity;->GetDeviceOrientation()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 83
    invoke-virtual {p0, v6}, Lcom/TQFramework/CopyResFilesActivity;->setRequestedOrientation(I)V

    .line 89
    :goto_0
    sget-object v2, Lcom/TQFramework/CopyResFilesActivity;->MainContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/TQFramework/DynamicActivityId;->InitActivityID(Landroid/content/Context;)V

    .line 91
    sget v2, Lcom/TQFramework/DynamicActivityId$strid;->str_copyfirstlogin:I

    invoke-virtual {p0, v2}, Lcom/TQFramework/CopyResFilesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/TQFramework/CopyResFilesActivity;->strcopyfirstlogin:Ljava/lang/String;

    .line 92
    sget v2, Lcom/TQFramework/DynamicActivityId$strid;->str_copycurstep:I

    invoke-virtual {p0, v2}, Lcom/TQFramework/CopyResFilesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/TQFramework/CopyResFilesActivity;->strcopycurstep:Ljava/lang/String;

    .line 93
    sget v2, Lcom/TQFramework/DynamicActivityId$strid;->str_copysigposper:I

    invoke-virtual {p0, v2}, Lcom/TQFramework/CopyResFilesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/TQFramework/CopyResFilesActivity;->strcopysigposper:Ljava/lang/String;

    .line 94
    sget v2, Lcom/TQFramework/DynamicActivityId$strid;->str_copycurper:I

    invoke-virtual {p0, v2}, Lcom/TQFramework/CopyResFilesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/TQFramework/CopyResFilesActivity;->strcopycurper:Ljava/lang/String;

    .line 95
    sget v2, Lcom/TQFramework/DynamicActivityId$strid;->str_copymergper:I

    invoke-virtual {p0, v2}, Lcom/TQFramework/CopyResFilesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/TQFramework/CopyResFilesActivity;->strcopymergper:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/TQFramework/CopyResFilesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "srcResPath"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/TQFramework/CopyResFilesActivity;->sSrcResPath:Ljava/lang/String;

    .line 99
    const-string v2, "destResPath"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/TQFramework/CopyResFilesActivity;->sDestResPath:Ljava/lang/String;

    .line 100
    const-string v2, "nCurVer"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/TQFramework/CopyResFilesActivity;->nCurVer:I

    .line 101
    iget v2, p0, Lcom/TQFramework/CopyResFilesActivity;->nCurVer:I

    if-ge v2, v3, :cond_0

    .line 102
    iput v3, p0, Lcom/TQFramework/CopyResFilesActivity;->nCurVer:I

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/TQFramework/CopyResFilesActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 105
    invoke-virtual {p0, v6}, Lcom/TQFramework/CopyResFilesActivity;->requestWindowFeature(I)Z

    .line 106
    sget v2, Lcom/TQFramework/DynamicActivityId$layout;->copyresfiles:I

    invoke-virtual {p0, v2}, Lcom/TQFramework/CopyResFilesActivity;->setContentView(I)V

    .line 107
    const-string v2, "CopyFile"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/TQFramework/CopyResFilesActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iput-object v2, p0, Lcom/TQFramework/CopyResFilesActivity;->mAssetManager:Landroid/content/res/AssetManager;

    .line 110
    const-string v2, "res_intergrity"

    invoke-virtual {p0, v2, v4}, Lcom/TQFramework/CopyResFilesActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/TQFramework/CopyResFilesActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 112
    sget v2, Lcom/TQFramework/DynamicActivityId$id;->ap_cancelbutton:I

    invoke-virtual {p0, v2}, Lcom/TQFramework/CopyResFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/TQFramework/CopyResFilesActivity;->mCancelBtn:Landroid/widget/Button;

    .line 113
    iget-object v2, p0, Lcom/TQFramework/CopyResFilesActivity;->mCancelBtn:Landroid/widget/Button;

    new-instance v3, Lcom/TQFramework/CopyResFilesActivity$2;

    invoke-direct {v3, p0}, Lcom/TQFramework/CopyResFilesActivity$2;-><init>(Lcom/TQFramework/CopyResFilesActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget v2, Lcom/TQFramework/DynamicActivityId$id;->ap_copyprogressBar:I

    invoke-virtual {p0, v2}, Lcom/TQFramework/CopyResFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/TQFramework/CopyResFilesActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 124
    sget v2, Lcom/TQFramework/DynamicActivityId$id;->ap_copyprogressDetailBar:I

    invoke-virtual {p0, v2}, Lcom/TQFramework/CopyResFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/TQFramework/CopyResFilesActivity;->mProgressDetailBar:Landroid/widget/ProgressBar;

    .line 125
    sget v2, Lcom/TQFramework/DynamicActivityId$id;->totalPercent:I

    invoke-virtual {p0, v2}, Lcom/TQFramework/CopyResFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/TQFramework/CopyResFilesActivity;->m_TotalInfo:Landroid/widget/TextView;

    .line 127
    sget v2, Lcom/TQFramework/DynamicActivityId$id;->detailPercent:I

    invoke-virtual {p0, v2}, Lcom/TQFramework/CopyResFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/TQFramework/CopyResFilesActivity;->m_DetailInfo:Landroid/widget/TextView;

    .line 129
    iget-object v2, p0, Lcom/TQFramework/CopyResFilesActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 130
    iget-object v2, p0, Lcom/TQFramework/CopyResFilesActivity;->mProgressDetailBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 132
    sget v2, Lcom/TQFramework/DynamicActivityId$id;->ap_copyprogressTextView:I

    invoke-virtual {p0, v2}, Lcom/TQFramework/CopyResFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/TQFramework/CopyResFilesActivity;->mProgressText:Landroid/widget/TextView;

    .line 134
    new-instance v2, Lcom/TQFramework/CopyResFilesActivity$3;

    invoke-direct {v2, p0}, Lcom/TQFramework/CopyResFilesActivity$3;-><init>(Lcom/TQFramework/CopyResFilesActivity;)V

    iput-object v2, p0, Lcom/TQFramework/CopyResFilesActivity;->m_handler:Landroid/os/Handler;

    .line 175
    iget-boolean v2, p0, Lcom/TQFramework/CopyResFilesActivity;->mIsThreadRunning:Z

    if-nez v2, :cond_1

    .line 177
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "threadhandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 179
    new-instance v2, Lcom/TQFramework/CopyResFilesActivity$CopyHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/TQFramework/CopyResFilesActivity$CopyHandler;-><init>(Lcom/TQFramework/CopyResFilesActivity;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/TQFramework/CopyResFilesActivity;->mCopyHandler:Lcom/TQFramework/CopyResFilesActivity$CopyHandler;

    .line 180
    iget-object v2, p0, Lcom/TQFramework/CopyResFilesActivity;->mCopyHandler:Lcom/TQFramework/CopyResFilesActivity$CopyHandler;

    iget-object v3, p0, Lcom/TQFramework/CopyResFilesActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/TQFramework/CopyResFilesActivity$CopyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    .end local v1    # "thread":Landroid/os/HandlerThread;
    :cond_1
    iput-boolean v6, p0, Lcom/TQFramework/CopyResFilesActivity;->mIsThreadRunning:Z

    .line 184
    return-void

    .line 86
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0, v4}, Lcom/TQFramework/CopyResFilesActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/TQFramework/CopyResFilesActivity;->mCopyHandler:Lcom/TQFramework/CopyResFilesActivity$CopyHandler;

    iget-object v1, p0, Lcom/TQFramework/CopyResFilesActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/TQFramework/CopyResFilesActivity$CopyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 191
    return-void
.end method

.method public readresouceversion(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "versionfile"    # Ljava/lang/String;

    .prologue
    .line 513
    const-string v7, "0"

    .line 514
    .local v7, "version":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    move-object v8, v7

    .line 534
    .end local v7    # "version":Ljava/lang/String;
    .local v8, "version":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 520
    .end local v8    # "version":Ljava/lang/String;
    .restart local v7    # "version":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 521
    .local v4, "is":Ljava/io/FileInputStream;
    const/16 v9, 0x28

    new-array v0, v9, [B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 523
    .local v0, "buffer":[B
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    int-to-long v5, v9

    .line 524
    .local v5, "len":J
    long-to-int v9, v5

    const/4 v10, 0x0

    aput-byte v10, v0, v9

    .line 525
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v7    # "version":Ljava/lang/String;
    .restart local v8    # "version":Ljava/lang/String;
    move-object v7, v8

    .end local v0    # "buffer":[B
    .end local v4    # "is":Ljava/io/FileInputStream;
    .end local v5    # "len":J
    .end local v8    # "version":Ljava/lang/String;
    .restart local v7    # "version":Ljava/lang/String;
    :goto_1
    move-object v8, v7

    .line 534
    .end local v7    # "version":Ljava/lang/String;
    .restart local v8    # "version":Ljava/lang/String;
    goto :goto_0

    .line 526
    .end local v8    # "version":Ljava/lang/String;
    .restart local v0    # "buffer":[B
    .restart local v4    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "version":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 528
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 530
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 532
    .local v2, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
