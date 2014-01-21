.class public Lcom/android/phone/UsCdmaCallForwardingDialog;
.super Landroid/app/Activity;
.source "UsCdmaCallForwardingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/UsCdmaCallForwardingDialog$14;,
        Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;
    }
.end annotation


# static fields
.field private static mCustomizeDialog:Landroid/app/AlertDialog;


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private eNumberText:Landroid/widget/EditText;

.field private mCFState:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

.field private mConvertCFCallToIMS:Z

.field private mDialNumber:Ljava/lang/String;

.field private mExtraCallType:I

.field private mFromWhere:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mNumber:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreNumber:Ljava/lang/String;

.field private numberFixDialog:Landroid/view/LayoutInflater;

.field private numberFixDialogView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mCustomizeDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    new-instance v0, Lcom/android/phone/UsCdmaCallForwardingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/phone/UsCdmaCallForwardingDialog$1;-><init>(Lcom/android/phone/UsCdmaCallForwardingDialog;)V

    iput-object v0, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private IsCFNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 387
    move-object v0, p1

    .line 388
    .local v0, checkNumber:Ljava/lang/String;
    const-string v1, "*72"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "*92"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "*73"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "*93"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/UsCdmaCallForwardingDialog;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/UsCdmaCallForwardingDialog;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/UsCdmaCallForwardingDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mPreNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mCustomizeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/UsCdmaCallForwardingDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mDialNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/UsCdmaCallForwardingDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mDialNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/UsCdmaCallForwardingDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mConvertCFCallToIMS:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/UsCdmaCallForwardingDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mExtraCallType:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/UsCdmaCallForwardingDialog;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/phone/UsCdmaCallForwardingDialog;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/UsCdmaCallForwardingDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->eNumberText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/UsCdmaCallForwardingDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mFromWhere:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/UsCdmaCallForwardingDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/UsCdmaCallForwardingDialog;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/UsCdmaCallForwardingDialog;->isCFButtonEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private displayDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 337
    sget-object v0, Lcom/android/phone/UsCdmaCallForwardingDialog$14;->$SwitchMap$com$android$phone$UsCdmaCallForwardingDialog$CFState:[I

    iget-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mCFState:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    invoke-virtual {v1}, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 356
    const-string v0, "IDLE"

    invoke-direct {p0, v0}, Lcom/android/phone/UsCdmaCallForwardingDialog;->log(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/phone/UsCdmaCallForwardingDialog;->finish()V

    .line 360
    :goto_0
    return-void

    .line 339
    :pswitch_0
    const-string v0, "displayDialog - ROAMING"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/UsCdmaCallForwardingDialog;->log(Ljava/lang/String;Z)V

    .line 340
    invoke-virtual {p0, v2}, Lcom/android/phone/UsCdmaCallForwardingDialog;->showDialog(I)V

    goto :goto_0

    .line 343
    :pswitch_1
    const-string v0, "displayDialog - DISPLAY_GUIDE"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/UsCdmaCallForwardingDialog;->log(Ljava/lang/String;Z)V

    .line 344
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/UsCdmaCallForwardingDialog;->showDialog(I)V

    goto :goto_0

    .line 347
    :pswitch_2
    const-string v0, "displayDialog - NEED_NUMBER_FIX"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/UsCdmaCallForwardingDialog;->log(Ljava/lang/String;Z)V

    .line 348
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/UsCdmaCallForwardingDialog;->showDialog(I)V

    goto :goto_0

    .line 351
    :pswitch_3
    const-string v0, "displayDialog - DEACTIVATE"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/UsCdmaCallForwardingDialog;->log(Ljava/lang/String;Z)V

    .line 352
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/UsCdmaCallForwardingDialog;->showDialog(I)V

    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isCFButtonEnabled(Ljava/lang/String;)Z
    .locals 6
    .parameter "number"

    .prologue
    .line 396
    const/4 v1, 0x0

    .line 397
    .local v1, count:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 398
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 399
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 400
    .local v0, c:C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_0

    const/16 v4, 0x39

    if-gt v0, v4, :cond_0

    .line 401
    add-int/lit8 v1, v1, 0x1

    .line 398
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 404
    .end local v0           #c:C
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/UsCdmaCallForwardingDialog;->log(Ljava/lang/String;)V

    .line 405
    const/16 v4, 0xa

    if-ne v1, v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 409
    const-string v0, "UsCdmaCallForwardingDialog"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 413
    const-string v0, "UsCdmaCallForwardingDialog"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 414
    return-void
.end method

.method private updateCallForwardingStateAndDiplayDialog(Ljava/lang/String;)V
    .locals 5
    .parameter "number"

    .prologue
    .line 363
    move-object v1, p1

    .line 364
    .local v1, checkNumber:Ljava/lang/String;
    const-string v3, "true"

    const-string v4, "gsm.operator.isroaming"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 365
    .local v2, isRoaming:Z
    iget-object v3, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mDialNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, checkDialNumber:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/phone/UsCdmaCallForwardingDialog;->IsCFNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 367
    if-eqz v2, :cond_0

    .line 368
    sget-object v3, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->ROAMING:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    iput-object v3, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mCFState:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    .line 383
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/UsCdmaCallForwardingDialog;->displayDialog()V

    .line 384
    return-void

    .line 370
    :cond_0
    const-string v3, "*72"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "*92"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 371
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 372
    sget-object v3, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->DISPLAY_GUIDE:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    iput-object v3, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mCFState:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    goto :goto_0

    .line 374
    :cond_2
    sget-object v3, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->NEED_NUMBER_FIX:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    iput-object v3, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mCFState:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    goto :goto_0

    .line 377
    :cond_3
    sget-object v3, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->DEACTIVATE:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    iput-object v3, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mCFState:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    goto :goto_0

    .line 381
    :cond_4
    sget-object v3, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->IDLE:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    iput-object v3, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mCFState:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const-string v1, "onCreate()"

    invoke-direct {p0, v1, v3}, Lcom/android/phone/UsCdmaCallForwardingDialog;->log(Ljava/lang/String;Z)V

    .line 113
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 114
    invoke-virtual {p0}, Lcom/android/phone/UsCdmaCallForwardingDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 116
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_call_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mExtraCallType:I

    .line 117
    const-string v1, "convert_cf_call_to_ims"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mConvertCFCallToIMS:Z

    .line 118
    const-string v1, "phone_number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mNumber:Ljava/lang/String;

    .line 119
    const-string v1, "from_where"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mFromWhere:Ljava/lang/String;

    .line 120
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->numberFixDialog:Landroid/view/LayoutInflater;

    .line 121
    iget-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mPreNumber:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mDialNumber:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mDialNumber:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mDialNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mDialNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mDialNumber:Ljava/lang/String;

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->numberFixDialog:Landroid/view/LayoutInflater;

    const v2, 0x7f0400cf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->numberFixDialogView:Landroid/view/View;

    .line 128
    iget-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mPreNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/UsCdmaCallForwardingDialog;->updateCallForwardingStateAndDiplayDialog(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const v10, 0x7f090686

    const v9, 0x7f09067b

    const v8, 0x7f09005a

    const/high16 v7, 0x104

    .line 137
    invoke-virtual {p0}, Lcom/android/phone/UsCdmaCallForwardingDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "country_detector"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 139
    .local v0, detector:Landroid/location/CountryDetector;
    packed-switch p1, :pswitch_data_0

    .line 282
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreateDialog: unexpected ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/UsCdmaCallForwardingDialog;->log(Ljava/lang/String;)V

    .line 283
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->dialog:Landroid/app/Dialog;

    .line 286
    :goto_0
    iget-object v5, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->dialog:Landroid/app/Dialog;

    :goto_1
    return-object v5

    .line 141
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Lcom/android/phone/UsCdmaCallForwardingDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mPreNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, title:Ljava/lang/String;
    const-string v5, "*72"

    iget-object v6, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mPreNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f090679

    invoke-virtual {p0, v6}, Lcom/android/phone/UsCdmaCallForwardingDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mDialNumber:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v7

    invoke-virtual {v7}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, msg:Ljava/lang/String;
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v10}, Lcom/android/phone/UsCdmaCallForwardingDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f09067d

    invoke-virtual {p0, v6}, Lcom/android/phone/UsCdmaCallForwardingDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090687

    new-instance v7, Lcom/android/phone/UsCdmaCallForwardingDialog$4;

    invoke-direct {v7, p0}, Lcom/android/phone/UsCdmaCallForwardingDialog$4;-><init>(Lcom/android/phone/UsCdmaCallForwardingDialog;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/UsCdmaCallForwardingDialog$3;

    invoke-direct {v6, p0}, Lcom/android/phone/UsCdmaCallForwardingDialog$3;-><init>(Lcom/android/phone/UsCdmaCallForwardingDialog;)V

    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/UsCdmaCallForwardingDialog$2;

    invoke-direct {v6, p0}, Lcom/android/phone/UsCdmaCallForwardingDialog$2;-><init>(Lcom/android/phone/UsCdmaCallForwardingDialog;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->dialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 146
    .end local v2           #msg:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f09067a

    invoke-virtual {p0, v6}, Lcom/android/phone/UsCdmaCallForwardingDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mDialNumber:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v7

    invoke-virtual {v7}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #msg:Ljava/lang/String;
    goto/16 :goto_2

    .line 178
    .end local v2           #msg:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    :pswitch_1
    iget-object v5, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->dialog:Landroid/app/Dialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 179
    iget-object v5, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->dialog:Landroid/app/Dialog;

    goto/16 :goto_1

    .line 181
    :cond_1
    iget-object v5, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->numberFixDialogView:Landroid/view/View;

    const v6, 0x7f0a031c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->eNumberText:Landroid/widget/EditText;

    .line 182
    iget-object v5, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->eNumberText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mDialNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v5, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->eNumberText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 185
    .local v1, etext:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v1, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Lcom/android/phone/UsCdmaCallForwardingDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mPreNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 188
    .restart local v4       #title:Ljava/lang/String;
    const-string v5, "*72"

    iget-object v6, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mPreNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 189
    const v5, 0x7f090676

    invoke-virtual {p0, v5}, Lcom/android/phone/UsCdmaCallForwardingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 193
    .restart local v2       #msg:Ljava/lang/String;
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v10}, Lcom/android/phone/UsCdmaCallForwardingDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090678

    invoke-virtual {p0, v6}, Lcom/android/phone/UsCdmaCallForwardingDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    const-string v5, "us_cdma_call_fowarding_setting"

    iget-object v6, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mFromWhere:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 195
    invoke-virtual {p0, v9}, Lcom/android/phone/UsCdmaCallForwardingDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, pos_btn:Ljava/lang/String;
    :goto_4
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->numberFixDialogView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/UsCdmaCallForwardingDialog$7;

    invoke-direct {v6, p0}, Lcom/android/phone/UsCdmaCallForwardingDialog$7;-><init>(Lcom/android/phone/UsCdmaCallForwardingDialog;)V

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/UsCdmaCallForwardingDialog$6;

    invoke-direct {v6, p0}, Lcom/android/phone/UsCdmaCallForwardingDialog$6;-><init>(Lcom/android/phone/UsCdmaCallForwardingDialog;)V

    invoke-virtual {v5, v3, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/UsCdmaCallForwardingDialog$5;

    invoke-direct {v6, p0}, Lcom/android/phone/UsCdmaCallForwardingDialog$5;-><init>(Lcom/android/phone/UsCdmaCallForwardingDialog;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->dialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 191
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #pos_btn:Ljava/lang/String;
    :cond_2
    const v5, 0x7f090677

    invoke-virtual {p0, v5}, Lcom/android/phone/UsCdmaCallForwardingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #msg:Ljava/lang/String;
    goto :goto_3

    .line 197
    :cond_3
    const v5, 0x7f0907cc

    invoke-virtual {p0, v5}, Lcom/android/phone/UsCdmaCallForwardingDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #pos_btn:Ljava/lang/String;
    goto :goto_4

    .line 233
    .end local v1           #etext:Landroid/text/Editable;
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #pos_btn:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    :pswitch_2
    const v5, 0x7f090684

    invoke-virtual {p0, v5}, Lcom/android/phone/UsCdmaCallForwardingDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 234
    .restart local v4       #title:Ljava/lang/String;
    const v5, 0x7f090685

    invoke-virtual {p0, v5}, Lcom/android/phone/UsCdmaCallForwardingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 236
    .restart local v2       #msg:Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/phone/UsCdmaCallForwardingDialog$9;

    invoke-direct {v7, p0}, Lcom/android/phone/UsCdmaCallForwardingDialog$9;-><init>(Lcom/android/phone/UsCdmaCallForwardingDialog;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/UsCdmaCallForwardingDialog$8;

    invoke-direct {v6, p0}, Lcom/android/phone/UsCdmaCallForwardingDialog$8;-><init>(Lcom/android/phone/UsCdmaCallForwardingDialog;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->dialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 252
    .end local v2           #msg:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    :pswitch_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f09067f

    invoke-virtual {p0, v6}, Lcom/android/phone/UsCdmaCallForwardingDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mPreNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 253
    .restart local v4       #title:Ljava/lang/String;
    const v5, 0x7f090683

    invoke-virtual {p0, v5}, Lcom/android/phone/UsCdmaCallForwardingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 255
    .restart local v2       #msg:Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/UsCdmaCallForwardingDialog$12;

    invoke-direct {v6, p0}, Lcom/android/phone/UsCdmaCallForwardingDialog$12;-><init>(Lcom/android/phone/UsCdmaCallForwardingDialog;)V

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f09067c

    new-instance v7, Lcom/android/phone/UsCdmaCallForwardingDialog$11;

    invoke-direct {v7, p0}, Lcom/android/phone/UsCdmaCallForwardingDialog$11;-><init>(Lcom/android/phone/UsCdmaCallForwardingDialog;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/UsCdmaCallForwardingDialog$10;

    invoke-direct {v6, p0}, Lcom/android/phone/UsCdmaCallForwardingDialog$10;-><init>(Lcom/android/phone/UsCdmaCallForwardingDialog;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->dialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 331
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 332
    const-string v0, "onDestroy()"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/UsCdmaCallForwardingDialog;->log(Ljava/lang/String;Z)V

    .line 333
    invoke-virtual {p0}, Lcom/android/phone/UsCdmaCallForwardingDialog;->finish()V

    .line 334
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 325
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 326
    const-string v0, "onPause()"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/UsCdmaCallForwardingDialog;->log(Ljava/lang/String;Z)V

    .line 327
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v2, 0x1

    .line 291
    const-string v0, "onPrepareDialog()"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/UsCdmaCallForwardingDialog;->log(Ljava/lang/String;Z)V

    move-object v0, p2

    .line 292
    check-cast v0, Landroid/app/AlertDialog;

    sput-object v0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mCustomizeDialog:Landroid/app/AlertDialog;

    .line 294
    packed-switch p1, :pswitch_data_0

    .line 320
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 321
    return-void

    .line 296
    :pswitch_0
    sget-object v0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mCustomizeDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 297
    sget-object v0, Lcom/android/phone/UsCdmaCallForwardingDialog;->mCustomizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 298
    const-string v0, "DIALOG_CALL_FORWARDING_NUMBER_FIX"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/UsCdmaCallForwardingDialog;->log(Ljava/lang/String;Z)V

    .line 299
    iget-object v0, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->eNumberText:Landroid/widget/EditText;

    new-instance v1, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 300
    iget-object v0, p0, Lcom/android/phone/UsCdmaCallForwardingDialog;->eNumberText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/phone/UsCdmaCallForwardingDialog$13;

    invoke-direct {v1, p0}, Lcom/android/phone/UsCdmaCallForwardingDialog$13;-><init>(Lcom/android/phone/UsCdmaCallForwardingDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
