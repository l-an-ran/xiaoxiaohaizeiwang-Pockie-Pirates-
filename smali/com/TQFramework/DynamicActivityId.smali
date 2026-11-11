.class public final Lcom/TQFramework/DynamicActivityId;
.super Ljava/lang/Object;
.source "DynamicActivityId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/TQFramework/DynamicActivityId$id;,
        Lcom/TQFramework/DynamicActivityId$layout;,
        Lcom/TQFramework/DynamicActivityId$strid;,
        Lcom/TQFramework/DynamicActivityId$style;
    }
.end annotation


# static fields
.field private static icount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput v0, Lcom/TQFramework/DynamicActivityId;->icount:I

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitActivityID(Landroid/content/Context;)V
    .locals 4
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 11
    sget v2, Lcom/TQFramework/DynamicActivityId;->icount:I

    if-eqz v2, :cond_0

    .line 68
    :goto_0
    return-void

    .line 13
    :cond_0
    sget v2, Lcom/TQFramework/DynamicActivityId;->icount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/TQFramework/DynamicActivityId;->icount:I

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 16
    .local v0, "localResources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, "str":Ljava/lang/String;
    const-string v2, "ap_cancelbutton"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$id;->ap_cancelbutton:I

    .line 18
    const-string v2, "ap_copyprogressBar"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$id;->ap_copyprogressBar:I

    .line 19
    const-string v2, "ap_copyprogressDetailBar"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$id;->ap_copyprogressDetailBar:I

    .line 20
    const-string v2, "totalPercent"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$id;->totalPercent:I

    .line 21
    const-string v2, "detailPercent"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$id;->detailPercent:I

    .line 22
    const-string v2, "ap_copyprogressTextView"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$id;->ap_copyprogressTextView:I

    .line 24
    const-string v2, "tq_copyresfiles"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$layout;->copyresfiles:I

    .line 25
    const-string v2, "tq_update"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$layout;->tqupdate:I

    .line 26
    const-string v2, "tq_webdlg"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$layout;->tq_webdlg:I

    .line 28
    const-string v2, "ap_message"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$id;->ap_upmessage:I

    .line 29
    const-string v2, "ap_progressTextView"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$id;->ap_upprogressTextView:I

    .line 30
    const-string v2, "tq_progressBar1"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$id;->ap_upprogressBardetail:I

    .line 31
    const-string v2, "ap_updownbutton"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$id;->ap_updownbutton:I

    .line 32
    const-string v2, "ap_upcancelbutton"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$id;->ap_upcancelbutton:I

    .line 33
    const-string v2, "ap_progressrateview"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$id;->ap_progressrateview:I

    .line 34
    const-string v2, "ap_pchecknewver"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$id;->ap_pchecknewver:I

    .line 35
    const-string v2, "tq_btn_exit"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$id;->tq_btn_exit:I

    .line 36
    const-string v2, "tq_btn_back"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$id;->tq_btn_back:I

    .line 37
    const-string v2, "tq_txt_Title"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$id;->tq_txt_Title:I

    .line 38
    const-string v2, "tq_wv_browser"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$id;->tq_wv_browser:I

    .line 39
    const-string v2, "tq_imageview"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$id;->tq_imageview:I

    .line 42
    const-string v2, "copyfirstlogin"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$strid;->str_copyfirstlogin:I

    .line 43
    const-string v2, "copycurstep"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$strid;->str_copycurstep:I

    .line 44
    const-string v2, "copysigposper"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$strid;->str_copysigposper:I

    .line 45
    const-string v2, "copycurper"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$strid;->str_copycurper:I

    .line 46
    const-string v2, "copymergper"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$strid;->str_copymergper:I

    .line 48
    const-string v2, "updfirstupdate"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$strid;->str_updfirstupdate:I

    .line 49
    const-string v2, "upddownApkloading"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$strid;->str_updapkdownloading:I

    .line 50
    const-string v2, "upddownResloading"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$strid;->str_updresdownloading:I

    .line 51
    const-string v2, "updunpressRes"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$strid;->str_updunpressRes:I

    .line 53
    const-string v2, "updunpressfaile"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$strid;->str_updunpressfaile:I

    .line 54
    const-string v2, "updupdatefaile"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$strid;->str_updupdatefaile:I

    .line 55
    const-string v2, "updupdateinitfaile"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$strid;->str_updupdateinitfaile:I

    .line 56
    const-string v2, "updupdatefailecon"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$strid;->str_updupdatefailecon:I

    .line 57
    const-string v2, "updunknowerror"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$strid;->str_updunknowerror:I

    .line 58
    const-string v2, "updok"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$strid;->str_updok:I

    .line 59
    const-string v2, "updcurper"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$strid;->str_updcurper:I

    .line 60
    const-string v2, "forceupdate"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$strid;->str_forceupdate:I

    .line 62
    const-string v2, "appexitgametitle"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$strid;->str_appexitgametitle:I

    .line 63
    const-string v2, "appexitgame"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$strid;->str_appexitgame:I

    .line 64
    const-string v2, "appexitok"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$strid;->str_appexitok:I

    .line 65
    const-string v2, "appexitcancel"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$strid;->str_appexitcancel:I

    .line 67
    const-string v2, "tq_webdialog"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/TQFramework/DynamicActivityId$style;->tq_webdialog:I

    goto/16 :goto_0
.end method
