.class public Lcom/nd/OnePiece/OnePieceActivity;
.super Lcom/TQFramework/TQFrameworkActivity;
.source "OnePieceActivity.java"


# static fields
.field private static information:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static sIsCHeck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nd/OnePiece/OnePieceActivity;->sIsCHeck:Z

    .line 74
    const-string v0, "OnePiece"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/TQFramework/TQFrameworkActivity;-><init>()V

    return-void
.end method

.method public static Analytics(Ljava/lang/String;)V
    .locals 1
    .param p0, "funType"    # Ljava/lang/String;

    .prologue
    .line 129
    sget-object v0, Lcom/nd/OnePiece/OnePieceActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/nd/analytics/NdAnalytics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static Analytics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "funType"    # Ljava/lang/String;
    .param p1, "lablestr"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v0, Lcom/nd/OnePiece/OnePieceActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/nd/analytics/NdAnalytics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static DeleteFile(Ljava/lang/String;)V
    .locals 4
    .param p0, "srcfullfilepath"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 173
    :cond_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 166
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 168
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nd/OnePiece/OnePieceActivity;->DeleteFile(Ljava/lang/String;)V

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private ExistSDCard()Z
    .locals 2

    .prologue
    .line 176
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string v1, "mounted"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsWifiConnected()I
    .locals 9

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "isWifiConnected":I
    sget-object v5, Lcom/nd/OnePiece/OnePieceActivity;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 139
    .local v4, "networkManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 140
    .local v3, "networkInfos":[Landroid/net/NetworkInfo;
    array-length v6, v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 153
    :goto_1
    return v0

    .line 140
    :cond_0
    aget-object v2, v3, v5

    .line 141
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v7, v8, :cond_2

    .line 142
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 143
    .local v1, "nNetType":I
    if-nez v1, :cond_1

    .line 144
    const/4 v0, 0x0

    .line 145
    goto :goto_1

    .line 147
    :cond_1
    const/4 v7, 0x1

    if-ne v1, v7, :cond_2

    .line 148
    const/4 v0, 0x1

    .line 149
    goto :goto_1

    .line 140
    .end local v1    # "nNetType":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private showDialog1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 185
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 186
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 187
    const-string v1, "OK"

    new-instance v2, Lcom/nd/OnePiece/OnePieceActivity$1;

    invoke-direct {v2, p0}, Lcom/nd/OnePiece/OnePieceActivity$1;-><init>(Lcom/nd/OnePiece/OnePieceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 194
    new-instance v1, Lcom/nd/OnePiece/OnePieceActivity$2;

    invoke-direct {v1, p0}, Lcom/nd/OnePiece/OnePieceActivity$2;-><init>(Lcom/nd/OnePiece/OnePieceActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 209
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 210
    return-void
.end method


# virtual methods
.method public copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p1, "sourceFile"    # Ljava/io/File;
    .param p2, "targetFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "inBuff":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 83
    .local v4, "outBuff":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    .end local v1    # "inBuff":Ljava/io/BufferedInputStream;
    .local v2, "inBuff":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 89
    .end local v4    # "outBuff":Ljava/io/BufferedOutputStream;
    .local v5, "outBuff":Ljava/io/BufferedOutputStream;
    const/16 v6, 0x1400

    :try_start_2
    new-array v0, v6, [B

    .line 91
    .local v0, "b":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_2

    .line 95
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 100
    :cond_0
    if-eqz v5, :cond_1

    .line 101
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 103
    :cond_1
    return-void

    .line 92
    :cond_2
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v5, v0, v6, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 96
    .end local v0    # "b":[B
    .end local v3    # "len":I
    :catchall_0
    move-exception v6

    move-object v4, v5

    .end local v5    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v4    # "outBuff":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .line 98
    .end local v2    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v1    # "inBuff":Ljava/io/BufferedInputStream;
    :goto_1
    if-eqz v1, :cond_3

    .line 99
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 100
    :cond_3
    if-eqz v4, :cond_4

    .line 101
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 102
    :cond_4
    throw v6

    .line 96
    :catchall_1
    move-exception v6

    goto :goto_1

    .end local v1    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v2    # "inBuff":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v1    # "inBuff":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/TQFramework/TQFrameworkActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-direct {p0}, Lcom/nd/OnePiece/OnePieceActivity;->ExistSDCard()Z

    move-result v5

    if-nez v5, :cond_1

    .line 36
    const-string v5, "SD\u5361"

    const-string v6, "SD\u5361\u4e0d\u5b58\u5728!"

    invoke-direct {p0, v5, v6}, Lcom/nd/OnePiece/OnePieceActivity;->showDialog1(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/nd/OnePiece/OnePieceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v1}, Lcom/nd/OnePiece/OnePieceActivity;->setContentView(Landroid/view/View;)V

    .line 72
    .end local v1    # "layout":Landroid/widget/LinearLayout;
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string v5, "Env"

    const-string v6, "/sdcard/OnePiece"

    invoke-virtual {p0, v5, v6}, Lcom/nd/OnePiece/OnePieceActivity;->ExtractRes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 43
    const-string v5, "Env"

    const-string v6, "/sdcard/OnePiece"

    const/4 v5, 0x0    # offline patch: skip remote version check

    if-nez v5, :cond_2

    .line 47
    invoke-static {}, Lcom/TQFramework/NDLoginAdapter;->sharedInstance()Lcom/TQFramework/NDLoginAdapter;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/TQFramework/NDLoginAdapter;->Use91Sdk(Landroid/app/Activity;)V

    .line 48
    const-string v5, "/sdcard/OnePiece"

    invoke-virtual {p0, v5}, Lcom/nd/OnePiece/OnePieceActivity;->EnterGame(Ljava/lang/String;)Z

    .line 49
    sput-object p0, Lcom/nd/OnePiece/OnePieceActivity;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 53
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v5, "/sdcard/OnePiece/fonts"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 55
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 57
    :cond_3
    new-instance v3, Ljava/io/File;

    const-string v5, "/system/fonts/DroidSansFallback.ttf"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v3, "sourceFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "/sdcard/OnePiece/fonts/msya.ttf"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v4, "targetFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 63
    invoke-virtual {p0, v3, v4}, Lcom/nd/OnePiece/OnePieceActivity;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, "ee":Ljava/lang/Exception;
    const-string v5, "\u5b57\u5e93"

    const-string v6, "\u62f7\u8d1d\u5b57\u5e93\u5931\u8d25\uff01"

    invoke-direct {p0, v5, v6}, Lcom/nd/OnePiece/OnePieceActivity;->showDialog1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 108
    invoke-static {p0}, Lcom/nd/analytics/NdAnalytics;->onStopSession(Landroid/content/Context;)V

    .line 109
    invoke-super {p0}, Lcom/TQFramework/TQFrameworkActivity;->onPause()V

    .line 114
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lcom/nd/analytics/NdAnalyticsSettings;

    invoke-direct {v0}, Lcom/nd/analytics/NdAnalyticsSettings;-><init>()V

    .line 120
    .local v0, "settings":Lcom/nd/analytics/NdAnalyticsSettings;
    const v1, 0x1a6e4

    invoke-virtual {v0, v1}, Lcom/nd/analytics/NdAnalyticsSettings;->setAppId(I)V

    .line 121
    const-string v1, "0c5fff9d621aed1707ec456acfe367a84d878cc18699b450"

    invoke-virtual {v0, v1}, Lcom/nd/analytics/NdAnalyticsSettings;->setAppKey(Ljava/lang/String;)V

    .line 122
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/analytics/NdAnalyticsSettings;->setReportOnlyWifi(Z)V

    .line 123
    invoke-static {p0, v0}, Lcom/nd/analytics/NdAnalytics;->initialize(Landroid/content/Context;Lcom/nd/analytics/NdAnalyticsSettings;)V

    .line 124
    const-wide/16 v1, 0x2710

    invoke-static {v1, v2}, Lcom/nd/analytics/NdAnalytics;->setContinuousSessionMillis(J)V

    .line 125
    invoke-static {p0}, Lcom/nd/analytics/NdAnalytics;->onStartSession(Landroid/content/Context;)V

    .line 126
    invoke-super {p0}, Lcom/TQFramework/TQFrameworkActivity;->onResume()V

    .line 127
    return-void
.end method
