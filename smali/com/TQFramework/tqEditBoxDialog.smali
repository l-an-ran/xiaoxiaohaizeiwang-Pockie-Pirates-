.class public Lcom/TQFramework/tqEditBoxDialog;
.super Landroid/app/Dialog;
.source "tqEditBoxDialog.java"


# static fields
.field private static final ID_DONEBUTTON:I = 0x3eb

.field private static final ID_INPUTEDIT:I = 0x3ea

.field private static final ID_TEXTVIEWTITLE:I = 0x3e9

.field static bShowEdit:Z

.field public static mMainView:Lcom/TQFramework/C3GLSurfaceView;


# instance fields
.field private final kEditBoxInputFlagInitialCapsAllCharacters:I

.field private final kEditBoxInputFlagInitialCapsSentence:I

.field private final kEditBoxInputFlagInitialCapsWord:I

.field private final kEditBoxInputFlagPassword:I

.field private final kEditBoxInputFlagSensitive:I

.field private final kEditBoxInputModeAny:I

.field private final kEditBoxInputModeDecimal:I

.field private final kEditBoxInputModeEmailAddr:I

.field private final kEditBoxInputModeNumeric:I

.field private final kEditBoxInputModePhoneNumber:I

.field private final kEditBoxInputModeSingleLine:I

.field private final kEditBoxInputModeUrl:I

.field private final kKeyboardReturnTypeDefault:I

.field private final kKeyboardReturnTypeDone:I

.field private final kKeyboardReturnTypeGo:I

.field private final kKeyboardReturnTypeSearch:I

.field private final kKeyboardReturnTypeSend:I

.field private mButtonText:Ljava/lang/String;

.field private mDoneButton:Landroid/widget/Button;

.field private mHint:Ljava/lang/String;

.field private mInputEditText:Landroid/widget/EditText;

.field private mInputFlag:I

.field private mInputFlagConstraints:I

.field private mInputMode:I

.field private mInputModeContraints:I

.field private mIsMultiline:Z

.field private mMaxLength:I

.field private mMessage:Ljava/lang/String;

.field private mReturnType:I

.field private mTextViewTitle:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    sput-boolean v0, Lcom/TQFramework/tqEditBoxDialog;->bShowEdit:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;III)V
    .locals 6
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pTitle"    # Ljava/lang/String;
    .param p3, "pMessage"    # Ljava/lang/String;
    .param p4, "pMaxLength"    # I
    .param p5, "bIsMultiline"    # Z
    .param p6, "mHint"    # Ljava/lang/String;
    .param p7, "pInputMode"    # I
    .param p8, "pInputFlag"    # I
    .param p9, "pReturnType"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    iput v1, p0, Lcom/TQFramework/tqEditBoxDialog;->kEditBoxInputModeAny:I

    .line 37
    iput v2, p0, Lcom/TQFramework/tqEditBoxDialog;->kEditBoxInputModeEmailAddr:I

    .line 42
    iput v4, p0, Lcom/TQFramework/tqEditBoxDialog;->kEditBoxInputModeNumeric:I

    .line 47
    iput v5, p0, Lcom/TQFramework/tqEditBoxDialog;->kEditBoxInputModePhoneNumber:I

    .line 52
    iput v3, p0, Lcom/TQFramework/tqEditBoxDialog;->kEditBoxInputModeUrl:I

    .line 57
    const/4 v0, 0x5

    iput v0, p0, Lcom/TQFramework/tqEditBoxDialog;->kEditBoxInputModeDecimal:I

    .line 62
    const/4 v0, 0x6

    iput v0, p0, Lcom/TQFramework/tqEditBoxDialog;->kEditBoxInputModeSingleLine:I

    .line 67
    iput v1, p0, Lcom/TQFramework/tqEditBoxDialog;->kEditBoxInputFlagPassword:I

    .line 72
    iput v2, p0, Lcom/TQFramework/tqEditBoxDialog;->kEditBoxInputFlagSensitive:I

    .line 77
    iput v4, p0, Lcom/TQFramework/tqEditBoxDialog;->kEditBoxInputFlagInitialCapsWord:I

    .line 82
    iput v5, p0, Lcom/TQFramework/tqEditBoxDialog;->kEditBoxInputFlagInitialCapsSentence:I

    .line 87
    iput v3, p0, Lcom/TQFramework/tqEditBoxDialog;->kEditBoxInputFlagInitialCapsAllCharacters:I

    .line 89
    iput v1, p0, Lcom/TQFramework/tqEditBoxDialog;->kKeyboardReturnTypeDefault:I

    .line 90
    iput v2, p0, Lcom/TQFramework/tqEditBoxDialog;->kKeyboardReturnTypeDone:I

    .line 91
    iput v4, p0, Lcom/TQFramework/tqEditBoxDialog;->kKeyboardReturnTypeSend:I

    .line 92
    iput v5, p0, Lcom/TQFramework/tqEditBoxDialog;->kKeyboardReturnTypeSearch:I

    .line 93
    iput v3, p0, Lcom/TQFramework/tqEditBoxDialog;->kKeyboardReturnTypeGo:I

    .line 104
    const-string v0, "\u5b8c\u6210"

    iput-object v0, p0, Lcom/TQFramework/tqEditBoxDialog;->mButtonText:Ljava/lang/String;

    .line 106
    const-string v0, "\u8f93\u5165:"

    iput-object v0, p0, Lcom/TQFramework/tqEditBoxDialog;->mTitle:Ljava/lang/String;

    .line 108
    const-string v0, "<\u8bf7\u8f93\u5165>"

    iput-object v0, p0, Lcom/TQFramework/tqEditBoxDialog;->mHint:Ljava/lang/String;

    .line 109
    const/4 v0, 0x6

    iput v0, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputMode:I

    .line 110
    iput v3, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputFlag:I

    .line 111
    iput v1, p0, Lcom/TQFramework/tqEditBoxDialog;->mReturnType:I

    .line 112
    iput v1, p0, Lcom/TQFramework/tqEditBoxDialog;->mMaxLength:I

    .line 113
    iput-boolean v1, p0, Lcom/TQFramework/tqEditBoxDialog;->mIsMultiline:Z

    .line 131
    sput-boolean v2, Lcom/TQFramework/tqEditBoxDialog;->bShowEdit:Z

    .line 133
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 134
    iput-object p2, p0, Lcom/TQFramework/tqEditBoxDialog;->mTitle:Ljava/lang/String;

    .line 136
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 137
    iput-object p3, p0, Lcom/TQFramework/tqEditBoxDialog;->mMessage:Ljava/lang/String;

    .line 139
    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 140
    iput-object p6, p0, Lcom/TQFramework/tqEditBoxDialog;->mHint:Ljava/lang/String;

    .line 142
    :cond_2
    iput p7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputMode:I

    .line 143
    iput p8, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputFlag:I

    .line 144
    iput p9, p0, Lcom/TQFramework/tqEditBoxDialog;->mReturnType:I

    .line 145
    iput p4, p0, Lcom/TQFramework/tqEditBoxDialog;->mMaxLength:I

    .line 146
    iput-boolean p5, p0, Lcom/TQFramework/tqEditBoxDialog;->mIsMultiline:Z

    .line 147
    return-void
.end method

.method public static native SendInputFinish(I)V
.end method

.method static synthetic access$0(Lcom/TQFramework/tqEditBoxDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/TQFramework/tqEditBoxDialog;)V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/TQFramework/tqEditBoxDialog;->openKeyboard()V

    return-void
.end method

.method static synthetic access$2(Lcom/TQFramework/tqEditBoxDialog;)Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/TQFramework/tqEditBoxDialog;->mIsMultiline:Z

    return v0
.end method

.method static synthetic access$3(Lcom/TQFramework/tqEditBoxDialog;)V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/TQFramework/tqEditBoxDialog;->closeKeyboard()V

    return-void
.end method

.method private closeKeyboard()V
    .locals 3

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/TQFramework/tqEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 348
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 349
    return-void
.end method

.method private convertDipsToPixels(F)I
    .locals 2
    .param p1, "pDIPs"    # F

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/TQFramework/tqEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 328
    .local v0, "scale":F
    mul-float v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private openKeyboard()V
    .locals 3

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/TQFramework/tqEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 343
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 344
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "pSavedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Lcom/TQFramework/tqEditBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v9, -0x80000000

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/TQFramework/tqEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 157
    .local v3, "layout":Landroid/widget/RelativeLayout;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v4, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/TQFramework/tqEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    .line 160
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    const/16 v8, 0x3e9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setId(I)V

    .line 162
    new-instance v7, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/TQFramework/tqEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    .line 163
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/16 v8, 0x3ea

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setId(I)V

    .line 165
    new-instance v7, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/TQFramework/tqEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mDoneButton:Landroid/widget/Button;

    .line 166
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mDoneButton:Landroid/widget/Button;

    const/16 v8, 0x3eb

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setId(I)V

    .line 168
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 169
    .local v6, "textviewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v7, 0x41200000    # 10.0f

    invoke-direct {p0, v7}, Lcom/TQFramework/tqEditBoxDialog;->convertDipsToPixels(F)I

    move-result v7

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 170
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    const/4 v8, 0x1

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 173
    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 174
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 175
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v7, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 179
    .local v1, "editTextParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v7, 0x41200000    # 10.0f

    invoke-direct {p0, v7}, Lcom/TQFramework/tqEditBoxDialog;->convertDipsToPixels(F)I

    move-result v7

    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 180
    const/16 v7, 0x9

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 181
    const/4 v7, 0x3

    const/16 v8, 0x3e9

    invoke-virtual {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 182
    const/4 v7, 0x0

    const/16 v8, 0x3eb

    invoke-virtual {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 183
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 187
    .local v0, "ButtonDoneParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v7, 0x41200000    # 10.0f

    invoke-direct {p0, v7}, Lcom/TQFramework/tqEditBoxDialog;->convertDipsToPixels(F)I

    move-result v7

    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 188
    const/4 v7, 0x3

    const/16 v8, 0x3e9

    invoke-virtual {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 189
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 190
    const/16 v7, 0x8

    const/16 v8, 0x3ea

    invoke-virtual {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 191
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v3, v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    invoke-virtual {p0, v3, v4}, Lcom/TQFramework/tqEditBoxDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-virtual {p0}, Lcom/TQFramework/tqEditBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x400

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 197
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/TQFramework/tqEditBoxDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/TQFramework/tqEditBoxDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mDoneButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/TQFramework/tqEditBoxDialog;->mButtonText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/TQFramework/tqEditBoxDialog;->mHint:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getImeOptions()I

    move-result v5

    .line 205
    .local v5, "oldImeOptions":I
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/high16 v8, 0x10000000

    or-int/2addr v8, v5

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 206
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getImeOptions()I

    move-result v5

    .line 208
    iget v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputMode:I

    packed-switch v7, :pswitch_data_0

    .line 235
    :goto_0
    iget-boolean v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mIsMultiline:Z

    if-eqz v7, :cond_0

    .line 236
    iget v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputModeContraints:I

    const/high16 v8, 0x20000

    or-int/2addr v7, v8

    iput v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputModeContraints:I

    .line 239
    :cond_0
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget v8, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputModeContraints:I

    iget v9, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputFlagConstraints:I

    or-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 241
    iget v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputFlag:I

    packed-switch v7, :pswitch_data_1

    .line 261
    :goto_1
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget v8, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputFlagConstraints:I

    iget v9, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputModeContraints:I

    or-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 263
    iget v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mReturnType:I

    packed-switch v7, :pswitch_data_2

    .line 280
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 284
    :goto_2
    iget v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mMaxLength:I

    if-lez v7, :cond_1

    .line 285
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/4 v8, 0x1

    new-array v8, v8, [Landroid/text/InputFilter;

    const/4 v9, 0x0

    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    iget v11, p0, Lcom/TQFramework/tqEditBoxDialog;->mMaxLength:I

    invoke-direct {v10, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 288
    :cond_1
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 289
    .local v2, "initHandler":Landroid/os/Handler;
    new-instance v7, Lcom/TQFramework/tqEditBoxDialog$1;

    invoke-direct {v7, p0}, Lcom/TQFramework/tqEditBoxDialog$1;-><init>(Lcom/TQFramework/tqEditBoxDialog;)V

    .line 295
    const-wide/16 v8, 0xc8

    .line 289
    invoke-virtual {v2, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    new-instance v8, Lcom/TQFramework/tqEditBoxDialog$2;

    invoke-direct {v8, p0}, Lcom/TQFramework/tqEditBoxDialog$2;-><init>(Lcom/TQFramework/tqEditBoxDialog;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 313
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mDoneButton:Landroid/widget/Button;

    new-instance v8, Lcom/TQFramework/tqEditBoxDialog$3;

    invoke-direct {v8, p0}, Lcom/TQFramework/tqEditBoxDialog$3;-><init>(Lcom/TQFramework/tqEditBoxDialog;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    return-void

    .line 210
    .end local v2    # "initHandler":Landroid/os/Handler;
    :pswitch_0
    const v7, 0x20001

    iput v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    .line 213
    :pswitch_1
    const/16 v7, 0x21

    iput v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    .line 216
    :pswitch_2
    const/16 v7, 0x1002

    iput v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    .line 219
    :pswitch_3
    const/4 v7, 0x3

    iput v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    .line 222
    :pswitch_4
    const/16 v7, 0x11

    iput v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputModeContraints:I

    goto/16 :goto_0

    .line 225
    :pswitch_5
    const/16 v7, 0x3002

    iput v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputModeContraints:I

    goto/16 :goto_0

    .line 228
    :pswitch_6
    const/4 v7, 0x1

    iput v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputModeContraints:I

    goto/16 :goto_0

    .line 243
    :pswitch_7
    const/16 v7, 0x81

    iput v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_1

    .line 246
    :pswitch_8
    const/high16 v7, 0x80000

    iput v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_1

    .line 249
    :pswitch_9
    const/16 v7, 0x2000

    iput v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputFlagConstraints:I

    goto/16 :goto_1

    .line 252
    :pswitch_a
    const/16 v7, 0x4000

    iput v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputFlagConstraints:I

    goto/16 :goto_1

    .line 255
    :pswitch_b
    const/16 v7, 0x1000

    iput v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputFlagConstraints:I

    goto/16 :goto_1

    .line 265
    :pswitch_c
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_2

    .line 268
    :pswitch_d
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v8, v5, 0x6

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_2

    .line 271
    :pswitch_e
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v8, v5, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_2

    .line 274
    :pswitch_f
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v8, v5, 0x3

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_2

    .line 277
    :pswitch_10
    iget-object v7, p0, Lcom/TQFramework/tqEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v8, v5, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_2

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 241
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 263
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 333
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/TQFramework/tqEditBoxDialog;->closeKeyboard()V

    .line 335
    invoke-virtual {p0}, Lcom/TQFramework/tqEditBoxDialog;->dismiss()V

    .line 336
    const/4 v0, 0x0

    sput-boolean v0, Lcom/TQFramework/tqEditBoxDialog;->bShowEdit:Z

    .line 338
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
