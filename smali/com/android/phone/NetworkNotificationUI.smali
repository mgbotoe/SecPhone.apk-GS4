.class public Lcom/android/phone/NetworkNotificationUI;
.super Ljava/lang/Object;
.source "NetworkNotificationUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final SHIP_BUILD:Z

.field private static final VDBG:Z

.field private static mAutoTimesetDialog:Landroid/app/AlertDialog;

.field private static mIsRegistRejectEnabled:Z


# instance fields
.field PrevLteRejectCause:I

.field PrevRtsIdleValue:I

.field private dialog_textId:I

.field private isRoamingArea:I

.field private isRoamingDataset:Z

.field private loggingStopByRadioPwrOff:Z

.field private m3gnotiAfterWifiDisabled:Z

.field private m3gwarningPopup:Z

.field private mAirplaneMode:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAlertDialogDataKey:Landroid/app/AlertDialog;

.field private mAutoTimesetListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mAutoUpdate:Landroid/view/View;

.field private mBackGroundData:Landroid/view/View;

.field private mCheckableClicked:Landroid/view/View$OnClickListener;

.field private mCheckingDataSelectPopup:Z

.field private final mContext:Landroid/content/Context;

.field private mDataConnectSelectDialog:Landroid/app/AlertDialog;

.field private mDataConnectSelectListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDataDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDataRoamingUseSwtich:Landroid/widget/Switch;

.field private mDataSelectionByDataKeyListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDataState:I

.field private mDataUsage:Landroid/view/View;

.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mGlobalRoamoing1_9:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsWifiConnected:Z

.field private mNetworkRegNotiDialog:Landroid/app/AlertDialog;

.field private mNetworkRegNotiListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mNoServiceAndManualSelecionListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

.field private mNoservicePopupSelectionNagativeButton:Z

.field private mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

.field private mNotifyNetworkRegisteringListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mNotifyRTSDialog:Landroid/app/AlertDialog;

.field private mNotifyRTSListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhone2:Landroid/telephony/TelephonyManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPrevDataState:I

.field private mRegInRoamAtFirst:Z

.field private mRoamDataWarnigListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mRtsValue:[Ljava/lang/Integer;

.field public newSS:Landroid/telephony/ServiceState;

.field private final roamingCurrentOperator:I

.field private final roamingNetScanNotiId:I

.field private roamingRegFailNoti:Z

.field private final roamingRegFailNotiId:I

.field private final roamingRtsNotiId:I

.field public ss:Landroid/telephony/ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 99
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    if-lt v0, v1, :cond_0

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    .line 101
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    sput-boolean v2, Lcom/android/phone/NetworkNotificationUI;->VDBG:Z

    .line 102
    const-string v0, "true"

    const-string v2, "ro.product_ship"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/NetworkNotificationUI;->SHIP_BUILD:Z

    .line 124
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetDialog:Landroid/app/AlertDialog;

    .line 144
    sput-boolean v1, Lcom/android/phone/NetworkNotificationUI;->mIsRegistRejectEnabled:Z

    return-void

    :cond_0
    move v0, v2

    .line 99
    goto :goto_0

    :cond_1
    move v2, v1

    .line 101
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 359
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->isRoamingDataset:Z

    .line 111
    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    .line 112
    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->mDataState:I

    .line 113
    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I

    .line 114
    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z

    .line 115
    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->mRegInRoamAtFirst:Z

    .line 123
    iput-object v3, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    .line 138
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea:I

    .line 140
    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->m3gnotiAfterWifiDisabled:Z

    .line 141
    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->mCheckingDataSelectPopup:Z

    .line 142
    iput-object v3, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    .line 143
    iput-object v3, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialogDataKey:Landroid/app/AlertDialog;

    .line 145
    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->PrevRtsIdleValue:I

    .line 146
    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->PrevLteRejectCause:I

    .line 148
    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->loggingStopByRadioPwrOff:Z

    .line 150
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;-><init>(Lcom/android/phone/NetworkNotificationUI;Lcom/android/phone/NetworkNotificationUI$1;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    .line 153
    iput-object v3, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    .line 154
    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->dialog_textId:I

    .line 155
    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z

    .line 158
    iput-object v3, p0, Lcom/android/phone/NetworkNotificationUI;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 161
    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z

    .line 175
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_GlobalRoamingLGT19"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->mGlobalRoamoing1_9:Z

    .line 177
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$1;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 419
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$2;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 934
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$5;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$5;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mDataConnectSelectListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 941
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$6;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$6;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mRoamDataWarnigListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 950
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$7;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$7;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mDataDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1046
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$8;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$8;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mCheckableClicked:Landroid/view/View$OnClickListener;

    .line 1209
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$13;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$13;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mDataSelectionByDataKeyListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1311
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$15;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$15;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelecionListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1386
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$17;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$17;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1429
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$18;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$18;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 2010
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$21;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$21;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 2084
    const v0, 0xd903

    iput v0, p0, Lcom/android/phone/NetworkNotificationUI;->roamingRegFailNotiId:I

    .line 2085
    const v0, 0xd904

    iput v0, p0, Lcom/android/phone/NetworkNotificationUI;->roamingCurrentOperator:I

    .line 2086
    const v0, 0xd905

    iput v0, p0, Lcom/android/phone/NetworkNotificationUI;->roamingRtsNotiId:I

    .line 2087
    const v0, 0xd906

    iput v0, p0, Lcom/android/phone/NetworkNotificationUI;->roamingNetScanNotiId:I

    .line 2088
    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->roamingRegFailNoti:Z

    .line 2407
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$25;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$25;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNetworkRegNotiListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 360
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    .line 361
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;

    .line 362
    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "phone2"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone2:Landroid/telephony/TelephonyManager;

    .line 413
    :goto_0
    return-void

    .line 365
    :cond_0
    iput-object v3, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone2:Landroid/telephony/TelephonyManager;

    goto :goto_0
.end method

.method private final NotifyNetworkRegistering()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1318
    .line 1319
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->refleshRTSValue()V

    .line 1320
    sget-boolean v0, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotifyNetworkRegistering mRtsValue[1]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mRtsValue:[Ljava/lang/Integer;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mRtsValue:[Ljava/lang/Integer;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1384
    :goto_0
    return-void

    .line 1323
    :sswitch_0
    const v0, 0x7f0906fa

    .line 1353
    :goto_1
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1355
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1356
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1326
    :sswitch_1
    const v0, 0x7f0906fb

    .line 1327
    goto :goto_1

    .line 1329
    :sswitch_2
    const v0, 0x7f0906fc

    .line 1330
    goto :goto_1

    .line 1336
    :sswitch_3
    const v0, 0x7f0906fd

    .line 1337
    goto :goto_1

    .line 1340
    :sswitch_4
    const v0, 0x7f090700

    .line 1341
    goto :goto_1

    .line 1346
    :sswitch_5
    const v0, 0x7f0906fe

    .line 1347
    goto :goto_1

    .line 1361
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v3, 0x103000c

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1362
    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1365
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$16;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$16;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    .line 1372
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1374
    const v3, 0x7f0904d2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x104000a

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1378
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1379
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1380
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1381
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1383
    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1321
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_4
        0x8 -> :sswitch_3
        0xb -> :sswitch_3
        0xc -> :sswitch_3
        0xd -> :sswitch_3
        0xe -> :sswitch_4
        0xf -> :sswitch_3
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x16 -> :sswitch_5
        0xfe -> :sswitch_5
    .end sparse-switch
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/NetworkNotificationUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->notifyRoaming()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/NetworkNotificationUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/phone/NetworkNotificationUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->refleshRTSValue()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/NetworkNotificationUI;)[Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mRtsValue:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->dissmissRTSPopup()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkNotificationUI;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->updateConnectivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/phone/NetworkNotificationUI;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/phone/NetworkNotificationUI;->mDataState:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/phone/NetworkNotificationUI;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/phone/NetworkNotificationUI;->mDataState:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/phone/NetworkNotificationUI;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/phone/NetworkNotificationUI;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/phone/NetworkNotificationUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/phone/NetworkNotificationUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->updateWifistate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->notify3gWarning()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/phone/NetworkNotificationUI;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkNotificationUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mDataConnectSelectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/phone/NetworkNotificationUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/phone/NetworkNotificationUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->isRoamingDataset:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/phone/NetworkNotificationUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/phone/NetworkNotificationUI;->isRoamingDataset:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/phone/NetworkNotificationUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/phone/NetworkNotificationUI;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mDataRoamingUseSwtich:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/phone/NetworkNotificationUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->mGlobalRoamoing1_9:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/phone/NetworkNotificationUI;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mBackGroundData:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/phone/NetworkNotificationUI;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mDataUsage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/phone/NetworkNotificationUI;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mAutoUpdate:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/phone/NetworkNotificationUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->setRoamingButtonEnable(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/NetworkNotificationUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isRtsPopupAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4102(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialogDataKey:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->showNoServiceAndManualSelecionDialog()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->addRoamingRegFailNotification()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNetworkRegNotiDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mNetworkRegNotiDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->showNetworkRegNotiPopUp()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/phone/NetworkNotificationUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isUnknownArea()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->removeRTSNotification()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->NotifyNetworkRegistering()V

    return-void
.end method

.method static synthetic access$4902(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    sput-object p0, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->showAutoTimeSetDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/NetworkNotificationUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/NetworkNotificationUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z

    return p1
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/android/phone/NetworkNotificationUI;->VDBG:Z

    return v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/android/phone/NetworkNotificationUI;->SHIP_BUILD:Z

    return v0
.end method

.method private addRoamingRegFailNotification()V
    .locals 8

    .prologue
    const v7, 0x108008a

    const v6, 0xd903

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2145
    sget-boolean v0, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkNotificationUI"

    const-string v1, "addRoamingRegFailNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 2148
    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_3

    .line 2149
    :cond_1
    sget-boolean v0, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "NetworkNotificationUI"

    const-string v1, "addRoamingRegFailNotification Sim Absent.. Skip Notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    :cond_2
    :goto_0
    return-void

    .line 2153
    :cond_3
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2154
    new-instance v1, Landroid/app/Notification;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v7, v5, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2155
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2156
    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2157
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 2158
    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v4, 0x7f09041b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v5, 0x7f09083b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2160
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2163
    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 2164
    :cond_4
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2165
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "1"

    const-string v1, "ril.IsManualSelection"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2166
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->removeRoamingNetScanningNotification()V

    .line 2167
    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->roamingRegFailNoti:Z

    .line 2169
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2170
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 2171
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2172
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 2173
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v2, 0x7f090712

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2174
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v2, 0x7f090716

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2176
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2177
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2183
    const-string v2, "com.samsung.android.phone"

    const-string v3, "com.samsung.android.phone.NetworkOperators"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2184
    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2185
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 2187
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 2189
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2191
    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2192
    sget-boolean v0, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "NetworkNotificationUI"

    const-string v1, "addRoamingRegFailNotification_LGT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private dissmissRTSPopup()V
    .locals 2

    .prologue
    .line 1948
    sget-boolean v0, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkNotificationUI"

    const-string v1, "dissmissRTSPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1950
    sget-boolean v0, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NetworkNotificationUI"

    const-string v1, "mNotifyRTSDialog.dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    :cond_1
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1952
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    .line 1955
    :cond_2
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1956
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->removeRTSNotification()V

    .line 1957
    :cond_3
    return-void
.end method

.method private isDefaultImei()Z
    .locals 2

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1453
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 1455
    const-string v1, "357858010034783"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "000000000000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "004400152020002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "100000000000116"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1456
    :cond_0
    const/4 v0, 0x1

    .line 1458
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOtaRegistering()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1462
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1463
    const-string v0, "ril.simtype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1464
    const-string v0, "ril.domesticOtaStart"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1465
    const-string v0, "ril.domesticOta"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1467
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string v3, "UsimDownload"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1468
    const-string v3, "Download"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1470
    const-string v0, ""

    .line 1471
    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - isOTADownload= true"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1472
    :cond_0
    const-string v3, "true"

    const-string v4, "ril.domesticOtaStart"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - domesticOtaStart= true"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1473
    :cond_1
    const-string v3, "KtfNumberReg"

    const-string v4, "ril.domesticOta"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - domesticOta= KtfNumberReg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1474
    :cond_2
    const-string v3, "RefreshReset"

    const-string v4, "ril.domesticOta"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - domesticOta= RefreshReset"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1475
    :cond_3
    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "19"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - SKT simType= 19"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1476
    :cond_4
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "18"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - LGT simType= 18"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1478
    :cond_5
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1479
    const-string v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOtaRegistering is false due to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    const/4 v0, 0x1

    .line 1485
    :goto_0
    return v0

    :cond_6
    move v0, v1

    .line 1482
    goto :goto_0

    :cond_7
    move v0, v1

    .line 1485
    goto :goto_0
.end method

.method private final isRoamingArea()Z
    .locals 4

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 1397
    const-string v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1400
    :try_start_0
    const-string v2, "oversea"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    const/4 v0, 0x1

    .line 1406
    :goto_0
    return v0

    .line 1403
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1404
    :catch_0
    move-exception v1

    .line 1405
    const-string v2, "NetworkNotificationUI"

    const-string v3, "isRoamingArea ullPointerException : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isRtsPopupAllowed()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1437
    const-string v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsRegistRejectEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/NetworkNotificationUI;->mIsRegistRejectEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    const-string v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDefaultImei:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isDefaultImei()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    const-string v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOtaRegistering:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isOtaRegistering()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    sget-boolean v1, Lcom/android/phone/NetworkNotificationUI;->mIsRegistRejectEnabled:Z

    if-nez v1, :cond_1

    .line 1448
    :cond_0
    :goto_0
    return v0

    .line 1443
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isDefaultImei()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1445
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isOtaRegistering()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1448
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final isUnknownArea()Z
    .locals 2

    .prologue
    .line 1412
    const-string v0, "ril.currentplmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1414
    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1415
    const/4 v0, 0x1

    .line 1417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final notify3gWarning()V
    .locals 4

    .prologue
    .line 1134
    const-string v0, ""

    .line 1135
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v2, 0x7f100062

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1137
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1138
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v2, 0x7f090560

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1139
    const-string v2, "LGT"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v2, 0x7f09055e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1148
    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1149
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1150
    :cond_1
    return-void

    .line 1144
    :cond_2
    const-string v0, "LGT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1146
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v2, 0x7f09055a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final notifyRoaming()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1422
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v1, 0x7f0904c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1423
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1424
    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1425
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1426
    return-void
.end method

.method private refleshRTSValue()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    .line 1915
    .line 1916
    const/4 v0, 0x0

    .line 1918
    const/4 v1, 0x2

    .line 1919
    const/4 v2, 0x3

    .line 1920
    const-string v3, "Status"

    .line 1921
    const-string v4, "Idle"

    .line 1922
    const-string v5, "CS"

    .line 1923
    const-string v6, "PS"

    .line 1926
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI;->mRtsValue:[Ljava/lang/Integer;

    if-nez v7, :cond_0

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Integer;

    iput-object v7, p0, Lcom/android/phone/NetworkNotificationUI;->mRtsValue:[Ljava/lang/Integer;

    .line 1928
    :cond_0
    const-string v7, "ril.skt.network_regist"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1929
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_3

    .line 1930
    :cond_1
    sget-boolean v0, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "NetworkNotificationUI"

    const-string v1, "ril is empty or error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    :cond_2
    :goto_0
    return-void

    .line 1933
    :cond_3
    sget-boolean v4, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "NetworkNotificationUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ril ril="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    :cond_4
    const-string v4, ";"

    invoke-virtual {v7, v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 1936
    aget-object v7, v4, v0

    invoke-virtual {v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1937
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI;->mRtsValue:[Ljava/lang/Integer;

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v0

    .line 1938
    aget-object v0, v4, v10

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1939
    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI;->mRtsValue:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v10

    .line 1940
    aget-object v0, v4, v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1941
    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI;->mRtsValue:[Ljava/lang/Integer;

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 1942
    aget-object v0, v4, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1943
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mRtsValue:[Ljava/lang/Integer;

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_0
.end method

.method private removeRTSNotification()V
    .locals 2

    .prologue
    .line 2274
    sget-boolean v0, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkNotificationUI"

    const-string v1, "removeRTSNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2276
    const v1, 0xd905

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2277
    return-void
.end method

.method private removeRoamingNetScanningNotification()V
    .locals 2

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2238
    const v1, 0xd906

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2239
    return-void
.end method

.method private sendDataConnectionIntent(ZZ)V
    .locals 3
    .parameter "enable"
    .parameter "roaming"

    .prologue
    .line 669
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_DATA_SELECTION_POPUP_PRESSED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "DataEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 671
    const-string v1, "Roaming"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 672
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 674
    const-string v1, "LGT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 675
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    .line 677
    :cond_0
    return-void
.end method

.method private setDataRoamingEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 697
    sget-boolean v1, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkNotificationUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDataRoamingEnabled("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_0
    const-string v0, "data_roaming"

    .line 700
    .local v0, mDataRoamingKey:Ljava/lang/String;
    const-string v1, "feature_chn_duos_gsm_gsm"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 701
    sget-boolean v1, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "NetworkNotificationUI"

    const-string v4, "DUOS"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_1
    const-string v1, "true"

    const-string v4, "gsm.operator.isroaming"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "true"

    const-string v4, "gsm.operator.isroaming2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 704
    sget-boolean v1, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "NetworkNotificationUI"

    const-string v4, "SIM1 & SIM2"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_2
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_roaming"

    if-eqz p1, :cond_3

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 707
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "data_roaming_secondary"

    if-eqz p1, :cond_4

    :goto_1
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 751
    :goto_2
    return-void

    :cond_3
    move v1, v3

    .line 705
    goto :goto_0

    :cond_4
    move v2, v3

    .line 707
    goto :goto_1

    .line 709
    :cond_5
    const-string v1, "true"

    const-string v4, "gsm.operator.isroaming2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 710
    sget-boolean v1, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "NetworkNotificationUI"

    const-string v4, "SIM2 only"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_6
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "data_roaming_secondary"

    if-eqz p1, :cond_7

    :goto_3
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_3

    .line 714
    :cond_8
    sget-boolean v1, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "NetworkNotificationUI"

    const-string v4, "SIM1 only"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_9
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "data_roaming"

    if-eqz p1, :cond_a

    :goto_4
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_a
    move v2, v3

    goto :goto_4

    .line 718
    :cond_b
    const-string v1, "sec_product_feature_common_dsds_support"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 719
    sget-boolean v1, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v1, :cond_c

    const-string v1, "NetworkNotificationUI"

    const-string v4, "DSDS"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_c
    const-string v1, "true"

    const-string v4, "gsm.operator.isroaming"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "true"

    const-string v4, "gsm.operator.isroaming_1"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 722
    sget-boolean v1, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v1, :cond_d

    const-string v1, "NetworkNotificationUI"

    const-string v4, "SIM1 & SIM2"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_d
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_roaming"

    if-eqz p1, :cond_e

    move v1, v2

    :goto_5
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 725
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "data_roaming2"

    if-eqz p1, :cond_f

    :goto_6
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_e
    move v1, v3

    .line 723
    goto :goto_5

    :cond_f
    move v2, v3

    .line 725
    goto :goto_6

    .line 727
    :cond_10
    const-string v1, "true"

    const-string v4, "gsm.operator.isroaming_1"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 728
    sget-boolean v1, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v1, :cond_11

    const-string v1, "NetworkNotificationUI"

    const-string v4, "SIM2 only"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_11
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "data_roaming2"

    if-eqz p1, :cond_12

    :goto_7
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_12
    move v2, v3

    goto :goto_7

    .line 732
    :cond_13
    sget-boolean v1, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v1, :cond_14

    const-string v1, "NetworkNotificationUI"

    const-string v4, "SIM1 only"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_14
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "data_roaming"

    if-eqz p1, :cond_15

    :goto_8
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_15
    move v2, v3

    goto :goto_8

    .line 736
    :cond_16
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 737
    sget-boolean v1, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v1, :cond_17

    const-string v1, "NetworkNotificationUI"

    const-string v4, "MultiSIM"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_17
    const-string v1, "true"

    const-string v4, "gsm.operator.isroaming"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "true"

    const-string v4, "gsm.operator.isroaming_1"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 740
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v1, "data_roaming"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_18

    move v1, v2

    :goto_9
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 741
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "data_roaming"

    invoke-static {v4, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_19

    :goto_a
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_18
    move v1, v3

    .line 740
    goto :goto_9

    :cond_19
    move v2, v3

    .line 741
    goto :goto_a

    .line 742
    :cond_1a
    const-string v1, "true"

    const-string v4, "gsm.operator.isroaming_1"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 743
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "data_roaming"

    invoke-static {v4, v3}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1b

    :goto_b
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_1b
    move v2, v3

    goto :goto_b

    .line 745
    :cond_1c
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "data_roaming"

    invoke-static {v4, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1d

    :goto_c
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_1d
    move v2, v3

    goto :goto_c

    .line 748
    :cond_1e
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p1, :cond_1f

    :goto_d
    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_1f
    move v2, v3

    goto :goto_d
.end method

.method private final setRoamingButtonEnable(Z)V
    .locals 2
    .parameter "set"

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1070
    return-void
.end method

.method private showAutoTimeSetDialog()V
    .locals 4

    .prologue
    .line 1960
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$20;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$20;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    .line 1995
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1997
    const v2, 0x7f0904cf

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0904d0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0904cd

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0904ce

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2003
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2004
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2005
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 2006
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2007
    sput-object v0, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetDialog:Landroid/app/AlertDialog;

    .line 2008
    return-void
.end method

.method private showNetworkRegNotiPopUp()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2343
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 2344
    if-eqz v0, :cond_0

    if-ne v0, v5, :cond_2

    .line 2345
    :cond_0
    sget-boolean v0, Lcom/android/phone/NetworkNotificationUI;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NetworkNotificationUI"

    const-string v1, "addRTSNotification Sim Absent.. Skip Notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    :cond_1
    :goto_0
    return-void

    .line 2348
    :cond_2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v2, 0x103000c

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2349
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2352
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$24;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$24;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    .line 2373
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2375
    const v2, 0x7f09041b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09083c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09058d

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0906a7

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2381
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2382
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mNetworkRegNotiListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2383
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 2384
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2387
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 2388
    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 2391
    const-string v3, "data_popup_using_data_hotkey"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2392
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2393
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2399
    :goto_1
    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNetworkRegNotiDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 2395
    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2396
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_1
.end method

.method private showNoServiceAndManualSelecionDialog()V
    .locals 4

    .prologue
    .line 1273
    new-instance v0, Lcom/android/phone/NetworkNotificationUI$14;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$14;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    .line 1296
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1298
    const v2, 0x7f090701

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090702

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0904cd

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0904ce

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1304
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1305
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelecionListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1306
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1307
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1308
    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

    .line 1309
    return-void
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 618
    const-string v1, "networkInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    move-object v0, v1

    check-cast v0, Landroid/net/NetworkInfo;

    .line 621
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 636
    :goto_0
    return-void

    .line 623
    :pswitch_0
    const-string v1, "NetworkNotificationUI"

    const-string v2, "updateConnectivity-TYPE_MOBILE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 626
    :pswitch_1
    const-string v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateConnectivity-TYPE_WIFI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z

    goto :goto_0

    .line 630
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z

    goto :goto_0

    .line 621
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateWifistate()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 605
    iget-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 606
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 607
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    sget-object v2, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 608
    .local v2, networkState:Landroid/net/NetworkInfo$State;
    :goto_0
    const-string v4, "NetworkNotificationUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWifistate : networkState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v4, :cond_1

    .line 613
    :goto_1
    return v3

    .line 607
    .end local v2           #networkState:Landroid/net/NetworkInfo$State;
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    goto :goto_0

    .line 613
    .restart local v2       #networkState:Landroid/net/NetworkInfo$State;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
