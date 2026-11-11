.class public Lcom/TQFramework/TQFrameworkActivity;
.super Landroid/app/Activity;
.source "TQFrameworkActivity.java"


# static fields
.field public static IsCHeckUpdate:Z = false

.field public static final STR_RES_RES_INTEGRITY:Ljava/lang/String; = "res_intergrity"

.field private static audioEngine:Lcom/TQFramework/C3AudioEngine;

.field private static mHandler:Lcom/TQFramework/TQHandler;

.field protected static s_bExtract:Z

.field static s_bInit:Z


# instance fields
.field protected bInit:Z

.field private mAssetManager:Landroid/content/res/AssetManager;

.field protected mGLView:Lcom/TQFramework/C3GLSurfaceView;

.field private strappexitcancel:Ljava/lang/String;

.field private strappexitgame:Ljava/lang/String;

.field private strappexitgametitle:Ljava/lang/String;

.field private strappexitok:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    sput-boolean v0, Lcom/TQFramework/TQFrameworkActivity;->s_bExtract:Z

    .line 69
    sput-boolean v0, Lcom/TQFramework/TQFrameworkActivity;->IsCHeckUpdate:Z

    .line 205
    sput-boolean v0, Lcom/TQFramework/TQFrameworkActivity;->s_bInit:Z

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/TQFramework/TQFrameworkActivity;->bInit:Z

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQFrameworkActivity;->strappexitgametitle:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQFrameworkActivity;->strappexitgame:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQFrameworkActivity;->strappexitok:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/TQFramework/TQFrameworkActivity;->strappexitcancel:Ljava/lang/String;

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/TQFramework/TQFrameworkActivity;->mAssetManager:Landroid/content/res/AssetManager;

    .line 66
    return-void
.end method

.method public static native GetDeviceOrientation()I
.end method

.method private IsAssetsContainRes(Ljava/lang/String;)Z
    .locals 4
    .param p1, "strSrcResPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 414
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    .line 416
    .local v1, "strResFiles":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/TQFramework/TQFrameworkActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 422
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_1

    .line 425
    :cond_0
    :goto_0
    return v2

    .line 417
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 425
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static native PreInitApp()I
.end method

.method public static native SetAndroidLibFolderPath(Ljava/lang/String;)V
.end method

.method public static native SetOSInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private setOSInfo()V
    .locals 24

    .prologue
    .line 444
    const-string v1, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/TQFramework/TQFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/TelephonyManager;

    .line 445
    .local v21, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "strImei":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "strImsi":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 450
    const-string v3, ""

    .line 452
    :cond_0
    if-nez v2, :cond_1

    .line 454
    const-string v2, ""

    .line 457
    :cond_1
    const/16 v20, 0x0

    .line 459
    .local v20, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/TQFramework/TQFrameworkActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/TQFramework/TQFrameworkActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4000

    .line 459
    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 466
    :goto_0
    const/4 v13, -0x1

    .line 467
    .local v13, "isWifiConnected":I
    const-string v1, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/TQFramework/TQFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/ConnectivityManager;

    .line 468
    .local v19, "networkManager":Landroid/net/ConnectivityManager;
    invoke-virtual/range {v19 .. v19}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v17

    .line 469
    .local v17, "networkInfos":[Landroid/net/NetworkInfo;
    move-object/from16 v0, v17

    array-length v4, v0

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v4, :cond_3

    .line 482
    :goto_2
    const-string v7, ""

    .line 483
    .local v7, "strClientIP":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v13, v1, :cond_6

    .line 484
    const-string v1, "wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/TQFramework/TQFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    .line 485
    .local v23, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 486
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v22

    .line 487
    .local v22, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v12

    .line 488
    .local v12, "ipAddress":I
    new-instance v1, Ljava/lang/StringBuilder;

    and-int/lit16 v4, v12, 0xff

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v4, v12, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 489
    shr-int/lit8 v4, v12, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v4, v12, 0x18

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 488
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 510
    .end local v12    # "ipAddress":I
    .end local v22    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v23    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    :goto_3
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "Android"

    sget-object v6, Landroid/os/Build;->BOARD:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Lcom/TQFramework/TQFrameworkActivity;->SetOSInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    return-void

    .line 461
    .end local v7    # "strClientIP":Ljava/lang/String;
    .end local v13    # "isWifiConnected":I
    .end local v17    # "networkInfos":[Landroid/net/NetworkInfo;
    .end local v19    # "networkManager":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v9

    .line 463
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 469
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v13    # "isWifiConnected":I
    .restart local v17    # "networkInfos":[Landroid/net/NetworkInfo;
    .restart local v19    # "networkManager":Landroid/net/ConnectivityManager;
    :cond_3
    aget-object v16, v17, v1

    .line 470
    .local v16, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_5

    .line 471
    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->getType()I

    move-result v14

    .line 472
    .local v14, "nNetType":I
    if-nez v14, :cond_4

    .line 473
    const/4 v13, 0x0

    .line 474
    goto :goto_2

    .line 476
    :cond_4
    const/4 v5, 0x1

    if-ne v14, v5, :cond_5

    .line 477
    const/4 v13, 0x1

    .line 478
    goto/16 :goto_2

    .line 469
    .end local v14    # "nNetType":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 492
    .end local v16    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v7    # "strClientIP":Ljava/lang/String;
    :cond_6
    if-nez v13, :cond_2

    .line 494
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v15

    .line 495
    .local v15, "networkEnumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_7
    :goto_4
    invoke-interface {v15}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    .line 494
    if-eqz v1, :cond_2

    .line 496
    invoke-interface {v15}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/net/NetworkInterface;

    .line 497
    .local v18, "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual/range {v18 .. v18}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v10

    .line 498
    .local v10, "inetAddrEnumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_8
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    .line 497
    if-eqz v1, :cond_7

    .line 499
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/net/InetAddress;

    .line 500
    .local v11, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v11}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-nez v1, :cond_8

    .line 501
    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 502
    goto :goto_4

    .line 506
    .end local v10    # "inetAddrEnumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v11    # "inetAddress":Ljava/net/InetAddress;
    .end local v15    # "networkEnumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v18    # "networkInterface":Ljava/net/NetworkInterface;
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public static showEditTextDialog(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;III)V
    .locals 10
    .param p0, "pTitle"    # Ljava/lang/String;
    .param p1, "pContent"    # Ljava/lang/String;
    .param p2, "pMaxlength"    # I
    .param p3, "bIsMultiline"    # Z
    .param p4, "mHint"    # Ljava/lang/String;
    .param p5, "pInputMode"    # I
    .param p6, "pInputFlag"    # I
    .param p7, "pReturnType"    # I

    .prologue
    .line 514
    sget-boolean v0, Lcom/TQFramework/tqEditBoxDialog;->bShowEdit:Z

    if-nez v0, :cond_0

    .line 516
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 517
    .local v9, "msg":Landroid/os/Message;
    const/4 v0, 0x2

    iput v0, v9, Landroid/os/Message;->what:I

    .line 518
    new-instance v0, Lcom/TQFramework/TQHandler$EditBoxMessage;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/TQFramework/TQHandler$EditBoxMessage;-><init>(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;III)V

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/TQFramework/TQFrameworkActivity;->mHandler:Lcom/TQFramework/TQHandler;

    invoke-virtual {v0, v9}, Lcom/TQFramework/TQHandler;->sendMessage(Landroid/os/Message;)Z

    .line 522
    .end local v9    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public static terminateProcess()V
    .locals 1

    .prologue
    .line 432
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 433
    return-void
.end method


# virtual methods
.method public CheckNewVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "sAssetsRes"    # Ljava/lang/String;
    .param p2, "sDestResPath"    # Ljava/lang/String;
    .param p3, "sUrl"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 97
    sget-boolean v8, Lcom/TQFramework/TQFrameworkActivity;->IsCHeckUpdate:Z

    if-eqz v8, :cond_0

    .line 154
    :goto_0
    return v6

    .line 99
    :cond_0
    sput-boolean v7, Lcom/TQFramework/TQFrameworkActivity;->IsCHeckUpdate:Z

    .line 100
    sput-object p0, Lcom/TQFramework/TQUpdateActivity;->MainContext:Landroid/content/Context;

    .line 121
    const/16 v2, 0x3e7

    .line 127
    .local v2, "nApkVer":I
    :try_start_0
    const-string v8, "tqApkVer.ver"

    invoke-virtual {p0, v8}, Lcom/TQFramework/TQFrameworkActivity;->OpenAssetVerFile(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 133
    :goto_1
    const/16 v3, 0x3e7

    .line 134
    .local v3, "nResVer":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "TqUpdate.ver"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "strSourceVer":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v4, "resVerFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 139
    :try_start_1
    invoke-virtual {p0, v5}, Lcom/TQFramework/TQFrameworkActivity;->OpenResVerFile(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 145
    :cond_1
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lcom/TQFramework/TQUpdateActivity;->Maincls:Ljava/lang/Class;

    .line 146
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v1, "intentUpdate":Landroid/content/Intent;
    const-string v8, "srcUrl"

    invoke-virtual {v1, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v8, "srcResPath"

    invoke-virtual {v1, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v8, "nResCurVer"

    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    const-string v8, "nApkCurVer"

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    const-class v8, Lcom/TQFramework/TQUpdateActivity;

    invoke-virtual {v1, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v1, v6}, Lcom/TQFramework/TQFrameworkActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 153
    invoke-virtual {p0}, Lcom/TQFramework/TQFrameworkActivity;->finish()V

    move v6, v7

    .line 154
    goto :goto_0

    .line 128
    .end local v1    # "intentUpdate":Landroid/content/Intent;
    .end local v3    # "nResVer":I
    .end local v4    # "resVerFile":Ljava/io/File;
    .end local v5    # "strSourceVer":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    const/16 v2, 0x3e7

    goto :goto_1

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "nResVer":I
    .restart local v4    # "resVerFile":Ljava/io/File;
    .restart local v5    # "strSourceVer":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 141
    .restart local v0    # "e":Ljava/lang/Exception;
    const/16 v3, 0x3e7

    goto :goto_2
.end method

.method public EnterGame(Ljava/lang/String;)Z
    .locals 9
    .param p1, "sResPath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 210
    sput-boolean v8, Lcom/TQFramework/TQFrameworkActivity;->s_bInit:Z

    .line 212
    new-instance v5, Lcom/TQFramework/TQHandler;

    invoke-direct {v5, p0}, Lcom/TQFramework/TQHandler;-><init>(Lcom/TQFramework/TQFrameworkActivity;)V

    sput-object v5, Lcom/TQFramework/TQFrameworkActivity;->mHandler:Lcom/TQFramework/TQHandler;

    .line 214
    invoke-static {p0}, Lcom/TQFramework/DynamicActivityId;->InitActivityID(Landroid/content/Context;)V

    .line 216
    sget v5, Lcom/TQFramework/DynamicActivityId$strid;->str_appexitgametitle:I

    invoke-virtual {p0, v5}, Lcom/TQFramework/TQFrameworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/TQFramework/TQFrameworkActivity;->strappexitgametitle:Ljava/lang/String;

    .line 217
    sget v5, Lcom/TQFramework/DynamicActivityId$strid;->str_appexitgame:I

    invoke-virtual {p0, v5}, Lcom/TQFramework/TQFrameworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/TQFramework/TQFrameworkActivity;->strappexitgame:Ljava/lang/String;

    .line 218
    sget v5, Lcom/TQFramework/DynamicActivityId$strid;->str_appexitok:I

    invoke-virtual {p0, v5}, Lcom/TQFramework/TQFrameworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/TQFramework/TQFrameworkActivity;->strappexitok:Ljava/lang/String;

    .line 219
    sget v5, Lcom/TQFramework/DynamicActivityId$strid;->str_appexitcancel:I

    invoke-virtual {p0, v5}, Lcom/TQFramework/TQFrameworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/TQFramework/TQFrameworkActivity;->strappexitcancel:Ljava/lang/String;

    .line 221
    invoke-static {}, Lcom/TQFramework/TQFrameworkActivity;->PreInitApp()I

    .line 222
    sput-object p0, Lcom/TQFramework/TQUpdateActivity;->MainContext:Landroid/content/Context;

    .line 223
    const-string v4, ""

    .line 224
    .local v4, "sLibFolderPath":Ljava/lang/String;
    invoke-static {}, Lcom/TQFramework/TQUpdateActivity;->IsWholePackage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/data/data/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/TQFramework/TQFrameworkActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/lib"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 231
    :goto_0
    invoke-static {v4}, Lcom/TQFramework/TQFrameworkActivity;->SetAndroidLibFolderPath(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/TQFramework/TQFrameworkActivity;->setOSInfo()V

    .line 236
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 238
    .local v3, "framelayout_params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 239
    .local v2, "framelayout":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 244
    const/4 v5, -0x2

    .line 243
    invoke-direct {v0, v7, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 245
    .local v0, "edittext_layout_params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Lcom/TQFramework/TqEditText;

    invoke-direct {v1, p0}, Lcom/TQFramework/TqEditText;-><init>(Landroid/content/Context;)V

    .line 246
    .local v1, "edtInput":Lcom/TQFramework/TqEditText;
    invoke-virtual {v1, v0}, Lcom/TQFramework/TqEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 252
    new-instance v5, Lcom/TQFramework/C3GLSurfaceView;

    invoke-direct {v5, p0}, Lcom/TQFramework/C3GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/TQFramework/TQFrameworkActivity;->mGLView:Lcom/TQFramework/C3GLSurfaceView;

    .line 253
    iget-object v5, p0, Lcom/TQFramework/TQFrameworkActivity;->mGLView:Lcom/TQFramework/C3GLSurfaceView;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 254
    iget-object v5, p0, Lcom/TQFramework/TQFrameworkActivity;->mGLView:Lcom/TQFramework/C3GLSurfaceView;

    invoke-virtual {v5, p1}, Lcom/TQFramework/C3GLSurfaceView;->initView(Ljava/lang/String;)V

    .line 255
    iget-object v5, p0, Lcom/TQFramework/TQFrameworkActivity;->mGLView:Lcom/TQFramework/C3GLSurfaceView;

    new-instance v6, Lcom/TQFramework/C3Renderer;

    invoke-direct {v6}, Lcom/TQFramework/C3Renderer;-><init>()V

    invoke-virtual {v5, v6}, Lcom/TQFramework/C3GLSurfaceView;->setTqRenderer(Lcom/TQFramework/C3Renderer;)V

    .line 256
    iget-object v5, p0, Lcom/TQFramework/TQFrameworkActivity;->mGLView:Lcom/TQFramework/C3GLSurfaceView;

    invoke-virtual {v5, v1}, Lcom/TQFramework/C3GLSurfaceView;->setTextField(Lcom/TQFramework/TqEditText;)V

    .line 257
    invoke-static {}, Lcom/TQFramework/NDLoginAdapter;->sharedInstance()Lcom/TQFramework/NDLoginAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/TQFramework/TQFrameworkActivity;->mGLView:Lcom/TQFramework/C3GLSurfaceView;

    invoke-virtual {v5, v6}, Lcom/TQFramework/NDLoginAdapter;->SetGLSurfaceView(Lcom/TQFramework/C3GLSurfaceView;)V

    .line 260
    invoke-virtual {p0, v2}, Lcom/TQFramework/TQFrameworkActivity;->setContentView(Landroid/view/View;)V

    .line 264
    new-instance v5, Lcom/TQFramework/C3AudioEngine;

    invoke-direct {v5, p0}, Lcom/TQFramework/C3AudioEngine;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/TQFramework/TQFrameworkActivity;->audioEngine:Lcom/TQFramework/C3AudioEngine;

    .line 265
    invoke-static {p1}, Lcom/TQFramework/C3AudioEngine;->SetResPath(Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/TQFramework/C3AudioEngine;->init()V

    .line 304
    return v8

    .line 229
    .end local v0    # "edittext_layout_params":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "edtInput":Lcom/TQFramework/TqEditText;
    .end local v2    # "framelayout":Landroid/widget/FrameLayout;
    .end local v3    # "framelayout_params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/libso"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public ExtractRes(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "sAssetsRes"    # Ljava/lang/String;
    .param p2, "sDestResPath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 159
    sget-boolean v8, Lcom/TQFramework/TQFrameworkActivity;->s_bExtract:Z

    if-eqz v8, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v6

    .line 163
    :cond_1
    sput-boolean v7, Lcom/TQFramework/TQFrameworkActivity;->s_bExtract:Z

    .line 166
    const-string v8, "res_intergrity"

    .line 165
    invoke-virtual {p0, v8, v6}, Lcom/TQFramework/TQFrameworkActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 167
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    sput-object p0, Lcom/TQFramework/CopyResFilesActivity;->MainContext:Landroid/content/Context;

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "bIsAssets":Z
    const/4 v2, 0x0

    .line 170
    .local v2, "nVersion":I
    const/4 v3, 0x0

    .line 172
    .local v3, "ncurVersion":I
    invoke-direct {p0, p1}, Lcom/TQFramework/TQFrameworkActivity;->IsAssetsContainRes(Ljava/lang/String;)Z

    move-result v0

    .line 173
    if-eqz v0, :cond_2

    .line 175
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "TqUpdate.ver"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "strSourceVer":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/TQFramework/TQFrameworkActivity;->OpenAssetVerFile(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 180
    .end local v5    # "strSourceVer":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v8, "res_intergrity"

    invoke-interface {v4, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 182
    :try_start_1
    const-string v8, "res_intergrity"

    const/4 v9, 0x0

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 187
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    if-eqz v2, :cond_0

    if-ge v2, v3, :cond_0

    .line 188
    :cond_4
    if-eqz v0, :cond_0

    .line 189
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 190
    .local v1, "intentCopyRes":Landroid/content/Intent;
    const-string v8, "srcResPath"

    invoke-virtual {v1, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v8, "destResPath"

    invoke-virtual {v1, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v8, "nCurVer"

    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lcom/TQFramework/CopyResFilesActivity;->Maincls:Ljava/lang/Class;

    .line 196
    const-class v8, Lcom/TQFramework/CopyResFilesActivity;

    .line 195
    invoke-virtual {v1, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v1, v6}, Lcom/TQFramework/TQFrameworkActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 198
    invoke-virtual {p0}, Lcom/TQFramework/TQFrameworkActivity;->finish()V

    move v6, v7

    .line 199
    goto :goto_0

    .line 183
    .end local v1    # "intentCopyRes":Landroid/content/Intent;
    :catch_0
    move-exception v8

    goto :goto_2

    .line 177
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method public OpenAssetVerFile(Ljava/lang/String;)I
    .locals 13
    .param p1, "srcFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 328
    const/4 v4, 0x0

    .line 329
    .local v4, "ncurVersion":I
    invoke-virtual {p0}, Lcom/TQFramework/TQFrameworkActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    iput-object v10, p0, Lcom/TQFramework/TQFrameworkActivity;->mAssetManager:Landroid/content/res/AssetManager;

    .line 330
    iget-object v10, p0, Lcom/TQFramework/TQFrameworkActivity;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v10, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 331
    .local v2, "input":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 333
    .local v1, "inBuff":Ljava/io/BufferedInputStream;
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 335
    .local v0, "buf":[B
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    .line 336
    .local v3, "len":I
    aput-byte v12, v0, v3

    .line 337
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    .line 338
    .local v8, "strCurVersion":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 339
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 340
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 341
    const-string v10, "\r\n"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 342
    .local v7, "strArray":[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x2

    if-lt v10, v11, :cond_0

    .line 343
    aget-object v10, v7, v12

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 344
    .local v6, "sSection":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 346
    .local v9, "strLine":Ljava/lang/String;
    const-string v10, "[public]"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 347
    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 348
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 349
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v5, v4

    .line 353
    .end local v4    # "ncurVersion":I
    .end local v6    # "sSection":Ljava/lang/String;
    .end local v9    # "strLine":Ljava/lang/String;
    .local v5, "ncurVersion":I
    :goto_0
    return v5

    .end local v5    # "ncurVersion":I
    .restart local v4    # "ncurVersion":I
    :cond_0
    move v5, v4

    .end local v4    # "ncurVersion":I
    .restart local v5    # "ncurVersion":I
    goto :goto_0
.end method

.method public OpenResVerFile(Ljava/lang/String;)I
    .locals 13
    .param p1, "srcFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 358
    const/16 v4, 0x3e8

    .line 359
    .local v4, "ncurVersion":I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    .local v1, "fverfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    move v5, v4

    .line 385
    .end local v4    # "ncurVersion":I
    .local v5, "ncurVersion":I
    :goto_0
    return v5

    .line 364
    .end local v5    # "ncurVersion":I
    .restart local v4    # "ncurVersion":I
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 366
    .local v2, "inBuff":Ljava/io/FileInputStream;
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 368
    .local v0, "buf":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 369
    .local v3, "len":I
    aput-byte v12, v0, v3

    .line 370
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    .line 371
    .local v8, "strCurVersion":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 372
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 373
    const-string v10, "\r\n"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 374
    .local v7, "strArray":[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x2

    if-lt v10, v11, :cond_1

    .line 375
    aget-object v10, v7, v12

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 376
    .local v6, "sSection":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 378
    .local v9, "strLine":Ljava/lang/String;
    const-string v10, "[public]"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 379
    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 380
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 381
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v5, v4

    .line 382
    .end local v4    # "ncurVersion":I
    .restart local v5    # "ncurVersion":I
    goto :goto_0

    .end local v5    # "ncurVersion":I
    .end local v6    # "sSection":Ljava/lang/String;
    .end local v9    # "strLine":Ljava/lang/String;
    .restart local v4    # "ncurVersion":I
    :cond_1
    move v5, v4

    .line 385
    .end local v4    # "ncurVersion":I
    .restart local v5    # "ncurVersion":I
    goto :goto_0
.end method

.method public getGLView()Lcom/TQFramework/C3GLSurfaceView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/TQFramework/TQFrameworkActivity;->mGLView:Lcom/TQFramework/C3GLSurfaceView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 390
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 391
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/TQFramework/TQFrameworkActivity;->strappexitgametitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/TQFramework/TQFrameworkActivity;->strappexitgame:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/TQFramework/TQFrameworkActivity;->strappexitok:Ljava/lang/String;

    .line 394
    new-instance v2, Lcom/TQFramework/TQFrameworkActivity$1;

    invoke-direct {v2, p0}, Lcom/TQFramework/TQFrameworkActivity$1;-><init>(Lcom/TQFramework/TQFrameworkActivity;)V

    .line 393
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/TQFramework/TQFrameworkActivity;->strappexitcancel:Ljava/lang/String;

    .line 402
    new-instance v2, Lcom/TQFramework/TQFrameworkActivity$2;

    invoke-direct {v2, p0}, Lcom/TQFramework/TQFrameworkActivity$2;-><init>(Lcom/TQFramework/TQFrameworkActivity;)V

    .line 401
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 410
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 309
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 310
    iget-object v0, p0, Lcom/TQFramework/TQFrameworkActivity;->mGLView:Lcom/TQFramework/C3GLSurfaceView;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/TQFramework/TQFrameworkActivity;->mGLView:Lcom/TQFramework/C3GLSurfaceView;

    invoke-virtual {v0}, Lcom/TQFramework/C3GLSurfaceView;->onPause()V

    .line 313
    :cond_0
    invoke-static {}, Lcom/TQFramework/C3AudioEngine;->pauseBackgroundMusic()V

    .line 314
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 318
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 319
    iget-object v0, p0, Lcom/TQFramework/TQFrameworkActivity;->mGLView:Lcom/TQFramework/C3GLSurfaceView;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/TQFramework/TQFrameworkActivity;->mGLView:Lcom/TQFramework/C3GLSurfaceView;

    invoke-virtual {v0}, Lcom/TQFramework/C3GLSurfaceView;->onResume()V

    .line 322
    :cond_0
    invoke-static {}, Lcom/TQFramework/C3AudioEngine;->resumeBackgroundMusic()V

    .line 323
    return-void
.end method
