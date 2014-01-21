.class public Lcom/android/phone/GlobalNetworkSelectAlertDialog;
.super Landroid/app/Activity;
.source "GlobalNetworkSelectAlertDialog.java"


# static fields
.field private static final DBG:Z


# instance fields
.field createDialog:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 54
    sget v2, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    if-lt v2, v0, :cond_0

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    new-instance v0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog$1;-><init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)V

    iput-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mHandler:Landroid/os/Handler;

    .line 166
    new-instance v0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$6;

    invoke-direct {v0, p0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog$6;-><init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)V

    iput-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const-string v4, "GlobalNetworkSelectAlertDialog"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 81
    iget-object v4, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 82
    iget-object v4, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 84
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 85
    .local v3, test:Landroid/view/LayoutInflater;
    const v4, 0x7f04004e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 86
    .local v2, notShowAgainLayout:Landroid/view/View;
    const v4, 0x7f0a018c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 104
    .local v1, mDisableAlertCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090734

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090733

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090021

    new-instance v6, Lcom/android/phone/GlobalNetworkSelectAlertDialog$4;

    invoke-direct {v6, p0, v1}, Lcom/android/phone/GlobalNetworkSelectAlertDialog$4;-><init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090024

    new-instance v6, Lcom/android/phone/GlobalNetworkSelectAlertDialog$3;

    invoke-direct {v6, p0, v1}, Lcom/android/phone/GlobalNetworkSelectAlertDialog$3;-><init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/GlobalNetworkSelectAlertDialog$2;

    invoke-direct {v5, p0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog$2;-><init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->createDialog:Landroid/app/AlertDialog;

    .line 143
    iget-object v4, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->createDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/phone/GlobalNetworkSelectAlertDialog$5;

    invoke-direct {v5, p0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog$5;-><init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 150
    iget-object v4, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 151
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 162
    const-string v0, "GlobalNetworkSelectAlertDialog"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->createDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 164
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 156
    const-string v0, "GlobalNetworkSelectAlertDialog"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method
