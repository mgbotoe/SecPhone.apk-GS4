.class public Lcom/android/phone/CdmaAdditionalCallOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CdmaAdditionalCallOptions.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaAdditionalCallOptions$16;,
        Lcom/android/phone/CdmaAdditionalCallOptions$AppState;
    }
.end annotation


# static fields
.field public static DBG:Z


# instance fields
.field doActivate:Ljava/lang/Runnable;

.field doDeactivate:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

.field private mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

.field private mEnhancedVPHandler:Landroid/os/Handler;

.field private mErrAlertPopup:Landroid/app/AlertDialog;

.field private mGetCallWaitingComplete:Landroid/os/Handler;

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mNoiseReduction:Landroid/preference/CheckBoxPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrevBusyDialog:I

.field private mQueryVoicePrivacyComplete:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSetOptionComplete:Landroid/os/Handler;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSkipCallWaitingReq:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mVoiceCallEqListSetting:Landroid/preference/ListPreference;

.field private mVoiceCallVisible:Z

.field private mVoicePrivacy:Landroid/preference/CheckBoxPreference;

.field private mWaitPopup:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 99
    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mWaitPopup:Landroid/app/AlertDialog;

    .line 100
    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mErrAlertPopup:Landroid/app/AlertDialog;

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSkipCallWaitingReq:Z

    .line 472
    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$5;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$5;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mGetCallWaitingComplete:Landroid/os/Handler;

    .line 527
    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$6;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$6;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSetOptionComplete:Landroid/os/Handler;

    .line 652
    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$7;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$7;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    .line 800
    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$10;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$10;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mEnhancedVPHandler:Landroid/os/Handler;

    .line 847
    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$11;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$11;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mQueryVoicePrivacyComplete:Landroid/os/Handler;

    .line 963
    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$14;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$14;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->handler:Landroid/os/Handler;

    .line 967
    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$15;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$15;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CdmaAdditionalCallOptions;Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/CdmaAdditionalCallOptions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallVisible:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/phone/CdmaAdditionalCallOptions;Landroid/os/AsyncResult;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->handleGetCWMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/phone/CdmaAdditionalCallOptions;Lcom/android/phone/CdmaAdditionalCallOptions$AppState;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CdmaAdditionalCallOptions;->setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->handleSetCWMessage()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/CdmaAdditionalCallOptions;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/CdmaAdditionalCallOptions;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->dismissCallWaiting()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/phone/CdmaAdditionalCallOptions;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->handleGetVPResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/CdmaAdditionalCallOptions;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->handleSetVPMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->updateNoiseReduction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/CdmaAdditionalCallOptions;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->updateSummaryAutoAreaCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CdmaAdditionalCallOptions;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->updateAutoAreaCodeOnOff(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private deleteBusyDialog()V
    .locals 2

    .prologue
    .line 796
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " deleteBusyDialog mPrevBusyDialog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPrevBusyDialog:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ####"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 797
    :cond_0
    iget v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPrevBusyDialog:I

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->removeDialog(I)V

    .line 798
    return-void
.end method

.method private dismissCallWaiting()V
    .locals 1

    .prologue
    .line 791
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V

    .line 792
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->finish()V

    .line 793
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 983
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 984
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 985
    return-void
.end method

.method private handleGetCWMessage(Landroid/os/AsyncResult;)I
    .locals 7
    .parameter "ar"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 505
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 506
    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "handleGetCWMessage: Error getting CW enable state."

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 507
    :cond_0
    const/16 v1, 0xc8

    .line 517
    :goto_0
    return v1

    .line 509
    :cond_1
    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "handleGetCWMessage: CW enable state successfully queried."

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 510
    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 511
    .local v0, cwArray:[I
    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncCWState: Setting UI state consistent with CW enable state of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v1, v0, v6

    if-ne v1, v5, :cond_6

    const-string v1, "ENABLED"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 513
    :cond_3
    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service Class = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%08X"

    new-array v3, v5, [Ljava/lang/Object;

    aget v4, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 514
    :cond_4
    aget v1, v0, v6

    if-ne v1, v5, :cond_5

    aget v1, v0, v5

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 515
    const v1, 0x7f0904a9

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->displayToast(Ljava/lang/String;)V

    .line 517
    :cond_5
    const/16 v1, 0x64

    goto :goto_0

    .line 511
    :cond_6
    const-string v1, "DISABLED"

    goto :goto_1
.end method

.method private handleGetVPResponse(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 831
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 833
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 834
    sget-boolean v2, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetVPResponse: ar.exception="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 835
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 844
    :goto_0
    return-void

    .line 837
    :cond_1
    sget-boolean v2, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "handleGetVPResponse: VP state successfully queried."

    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 838
    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v3

    .line 839
    .local v1, enable:I
    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 841
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enhanced_voice_privacy_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    move v2, v3

    .line 839
    goto :goto_1
.end method

.method private handleSetCWMessage()V
    .locals 3

    .prologue
    .line 545
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "handleSetCWMessage"

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mGetCallWaitingComplete:Landroid/os/Handler;

    const/16 v2, 0x190

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 547
    return-void
.end method

.method private handleSetVPMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 822
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 823
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 824
    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetVPResponse: ar.exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 826
    :cond_0
    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "handleSetVPResponse: re get"

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mQueryVoicePrivacyComplete:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 828
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 960
    const-string v0, "CdmaAdditionalOtions"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V
    .locals 2
    .parameter "requestedState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 551
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-ne p1, v0, :cond_1

    .line 552
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "setAppState: illegal error state without reason."

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 553
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_1
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;I)V

    .line 556
    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;I)V
    .locals 2
    .parameter "requestedState"
    .parameter "msgStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 562
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState() mAppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,requestedState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",msgStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-ne p1, v0, :cond_2

    .line 566
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 640
    :cond_1
    :goto_0
    return-void

    .line 571
    :cond_2
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-ne p1, v0, :cond_4

    .line 572
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 573
    :cond_3
    sparse-switch p2, :sswitch_data_0

    .line 593
    :goto_1
    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    goto :goto_0

    .line 576
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->deleteBusyDialog()V

    .line 577
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto :goto_1

    .line 581
    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto :goto_1

    .line 585
    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->deleteBusyDialog()V

    .line 586
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto :goto_1

    .line 597
    :cond_4
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 599
    :cond_5
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$16;->$SwitchMap$com$android$phone$CdmaAdditionalCallOptions$AppState:[I

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 639
    :cond_6
    :goto_2
    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    goto :goto_0

    .line 604
    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-eq p1, v0, :cond_6

    .line 605
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 606
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :pswitch_1
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: displaying busy dialog, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 613
    :cond_8
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-ne p1, v0, :cond_9

    .line 614
    const/16 v0, 0x384

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto :goto_2

    .line 615
    :cond_9
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-ne p1, v0, :cond_6

    .line 616
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto :goto_2

    .line 622
    :pswitch_2
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-eq p1, v0, :cond_b

    .line 623
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 624
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_b
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->deleteBusyDialog()V

    goto :goto_2

    .line 631
    :pswitch_3
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-eq p1, v0, :cond_d

    .line 632
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 633
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->deleteBusyDialog()V

    goto :goto_2

    .line 573
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x320 -> :sswitch_1
    .end sparse-switch

    .line 599
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setNoiseReduction(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 898
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 899
    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 900
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    .line 902
    const-string v0, "ims_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "noise_reduction_value_for_volte"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 907
    :cond_0
    if-eqz p1, :cond_2

    .line 910
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v0, :cond_3

    .line 911
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "call_noise_reduction"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 916
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 903
    goto :goto_0

    :cond_2
    move v1, v2

    .line 907
    goto :goto_1

    .line 914
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->noiseReductionBroadcast(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method private updateAutoAreaCodeOnOff(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 887
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 888
    :goto_0
    const-string v3, "area_code_enabled"

    .line 889
    if-eqz v0, :cond_1

    .line 891
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAutoAreaCodeOnOff : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 894
    return-void

    :cond_0
    move v0, v2

    .line 887
    goto :goto_0

    :cond_1
    move v1, v2

    .line 889
    goto :goto_1
.end method

.method private updateNoiseReduction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 920
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    .line 923
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 924
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_noise_reduction"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 926
    if-lt v0, v2, :cond_2

    .line 927
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 932
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 938
    :cond_1
    :goto_1
    return-void

    .line 929
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 935
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateSummaryAutoAreaCode(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 870
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 871
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSummaryAutoAreaCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 873
    if-eqz v0, :cond_2

    .line 874
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "%d"

    aput-object v3, v0, v2

    .line 875
    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    .line 876
    const v2, 0x7f090311

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 880
    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 884
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 870
    goto :goto_0

    .line 882
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    const v1, 0x7f090312

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_1
.end method


# virtual methods
.method protected makeEQDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 941
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 942
    const v1, 0x7f090021

    new-instance v2, Lcom/android/phone/CdmaAdditionalCallOptions$12;

    invoke-direct {v2, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$12;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 948
    const v1, 0x7f090024

    new-instance v2, Lcom/android/phone/CdmaAdditionalCallOptions$13;

    invoke-direct {v2, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$13;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 953
    const v1, 0x7f09039b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 954
    const v1, 0x7f0903a6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 955
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 956
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 170
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 187
    const v5, 0x7f060012

    invoke-virtual {p0, v5}, Lcom/android/phone/CdmaAdditionalCallOptions;->addPreferencesFromResource(I)V

    .line 188
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 189
    const-string v5, "voiceprivacy_preference"

    invoke-virtual {p0, v5}, Lcom/android/phone/CdmaAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    .line 190
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 191
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    const-string v5, "button_noise_reduction_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    .line 192
    const-string v5, "voicecall_eq_list_setting"

    invoke-virtual {p0, v5}, Lcom/android/phone/CdmaAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    .line 194
    new-instance v5, Lcom/android/phone/CdmaAdditionalCallOptions$1;

    invoke-direct {v5, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$1;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->doActivate:Ljava/lang/Runnable;

    .line 201
    new-instance v5, Lcom/android/phone/CdmaAdditionalCallOptions$2;

    invoke-direct {v5, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$2;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->doDeactivate:Ljava/lang/Runnable;

    .line 208
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 209
    .local v1, actionBar:Landroid/app/ActionBar;
    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 214
    :cond_0
    sget-object v5, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    iput-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    .line 215
    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 217
    const-string v5, "voicecall_barring_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 218
    const-string v5, "button_cw_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 220
    const-string v5, "button_fdn_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    const-string v5, "button_cdma_voicecall_forwarding"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 223
    .local v2, options:Landroid/preference/Preference;
    if-eqz v2, :cond_1

    .line 224
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 237
    .end local v2           #options:Landroid/preference/Preference;
    :cond_1
    :goto_0
    const-string v5, "edittext_areacode_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    .line 238
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    new-instance v6, Lcom/android/phone/CdmaAdditionalCallOptions$3;

    invoke-direct {v6, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$3;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 259
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    new-instance v6, Lcom/android/phone/CdmaAdditionalCallOptions$4;

    invoke-direct {v6, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$4;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 298
    const-string v5, "button_voicecall_eq_category_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 299
    iput-object v10, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    .line 302
    :cond_2
    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "feature_ctc"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    if-eqz v5, :cond_4

    .line 304
    const-string v5, "button_voicecall_eq_category_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 305
    iput-object v10, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    .line 308
    :cond_4
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_e

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 309
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    const-string v6, "default_noise_reduction"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 315
    :goto_1
    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 316
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_5

    .line 317
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 320
    :cond_5
    const-string v5, "feature_chn_duos_cdma_gsm"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 321
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_6

    .line 322
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 323
    :cond_6
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    if-eqz v5, :cond_7

    .line 324
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 327
    :cond_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 328
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eq v5, v7, :cond_8

    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eq v5, v9, :cond_8

    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_f

    .line 333
    :cond_8
    const-string v5, "feature_ctc"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 334
    const/16 v5, 0xc8

    invoke-virtual {p0, v5}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    .line 336
    :cond_9
    sget-boolean v5, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v5, :cond_a

    const-string v5, "sim card status is wrong"

    invoke-static {v5}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 337
    :cond_a
    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 338
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 353
    :cond_b
    :goto_2
    return-void

    .line 227
    :cond_c
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mQueryVoicePrivacyComplete:Landroid/os/Handler;

    invoke-static {v6, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enhanced_voice_privacy_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 229
    .local v0, VPchecked:I
    if-ne v0, v7, :cond_d

    .line 230
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 233
    :cond_d
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 311
    .end local v0           #VPchecked:I
    :cond_e
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 343
    :cond_f
    const-string v5, "feature_ctc"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "ctc_dual_mode_single_phone_byqc"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 345
    const/4 v4, 0x0

    .line 346
    .local v4, simState:I
    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 347
    if-eqz v4, :cond_10

    if-ne v4, v9, :cond_b

    .line 348
    :cond_10
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 721
    sget-boolean v4, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayDialog() mWaitPopup:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mWaitPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 722
    :cond_0
    const/16 v4, 0x64

    if-eq p1, v4, :cond_1

    const/16 v4, 0x384

    if-ne p1, v4, :cond_2

    .line 723
    :cond_1
    iput p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPrevBusyDialog:I

    .line 724
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 725
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 726
    sparse-switch p1, :sswitch_data_0

    .line 739
    const/4 v0, 0x0

    .line 786
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    .line 728
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    :sswitch_0
    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 729
    const v4, 0x7f090077

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 733
    :sswitch_1
    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 734
    const v4, 0x7f090076

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 735
    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v5, 0x258

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 741
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_2
    const/16 v4, 0x12c

    if-eq p1, v4, :cond_3

    const/16 v4, 0xc8

    if-eq p1, v4, :cond_3

    const/16 v4, 0x320

    if-ne p1, v4, :cond_4

    .line 743
    :cond_3
    const v3, 0x7f090075

    .line 744
    .local v3, titleId:I
    sparse-switch p1, :sswitch_data_1

    .line 756
    const v2, 0x7f09007a

    .line 759
    .local v2, msgId:I
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 760
    .local v1, err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 761
    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 762
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 763
    const v4, 0x7f0902b7

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/phone/CdmaAdditionalCallOptions$8;

    invoke-direct {v5, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$8;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 769
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 771
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/phone/CdmaAdditionalCallOptions$9;

    invoke-direct {v4, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$9;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 747
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v1           #err_builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #msgId:I
    :sswitch_2
    const v2, 0x7f090079

    .line 748
    .restart local v2       #msgId:I
    goto :goto_1

    .line 751
    .end local v2           #msgId:I
    :sswitch_3
    const v2, 0x7f09007c

    .line 752
    .restart local v2       #msgId:I
    goto :goto_1

    .line 782
    .end local v2           #msgId:I
    .end local v3           #titleId:I
    :cond_4
    const/16 v4, 0x1f7

    if-ne p1, v4, :cond_5

    .line 783
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->makeEQDialog()Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 786
    :cond_5
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 726
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x384 -> :sswitch_1
    .end sparse-switch

    .line 744
    :sswitch_data_1
    .sparse-switch
        0x12c -> :sswitch_2
        0x320 -> :sswitch_3
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 989
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 998
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 991
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 992
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 996
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 994
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->finish()V

    goto :goto_1

    .line 989
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 416
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPause()V

    .line 417
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 419
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 422
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 683
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 684
    const-string v2, "ims_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 686
    const-string v2, "persist.sys.ims.volte_supported"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 687
    .local v0, isVolteSupported:I
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 690
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 691
    const v2, 0x7f09075b

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->displayToast(Ljava/lang/String;)V

    .line 700
    .end local v0           #isVolteSupported:I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->setNoiseReduction(Z)V

    .line 716
    :goto_1
    return v1

    .line 692
    .restart local v0       #isVolteSupported:I
    :cond_1
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 716
    .end local v0           #isVolteSupported:I
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 361
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 362
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 363
    iput-boolean v8, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallVisible:Z

    .line 365
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    if-eqz v5, :cond_0

    .line 367
    const/4 v0, 0x0

    .line 369
    .local v0, data:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "area_code_value"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    const-string v5, "cdma_additional_setting_enable"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 372
    invoke-direct {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->updateSummaryAutoAreaCode(Ljava/lang/String;)V

    .line 375
    .end local v0           #data:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    if-eqz v5, :cond_3

    .line 376
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voicecall_eq_list_value"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 377
    .local v2, eqListValue:I
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, eqListEntries:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hearing_diagnosis"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 379
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hearing_direction"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 380
    .local v3, hearingDirection:I
    if-ne v3, v9, :cond_5

    .line 381
    if-eq v2, v10, :cond_1

    if-ne v2, v11, :cond_2

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voicecall_eq_list_value"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 383
    const/4 v2, 0x0

    .line 393
    .end local v3           #hearingDirection:I
    :cond_2
    :goto_0
    if-nez v2, :cond_7

    .line 394
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    const v6, 0x7f0903a4

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 398
    :goto_1
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 401
    .end local v1           #eqListEntries:[Ljava/lang/String;
    .end local v2           #eqListValue:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 402
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 403
    .local v4, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 405
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->updateNoiseReduction()V

    .line 408
    .end local v4           #intentFilter:Landroid/content/IntentFilter;
    :cond_4
    return-void

    .line 385
    .restart local v1       #eqListEntries:[Ljava/lang/String;
    .restart local v2       #eqListValue:I
    .restart local v3       #hearingDirection:I
    :cond_5
    if-nez v3, :cond_6

    .line 386
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voicecall_eq_list_value"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 387
    const/4 v2, 0x3

    goto :goto_0

    .line 388
    :cond_6
    if-ne v3, v8, :cond_2

    .line 389
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voicecall_eq_list_value"

    invoke-static {v5, v6, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 390
    const/4 v2, 0x4

    goto :goto_0

    .line 396
    .end local v3           #hearingDirection:I
    :cond_7
    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 437
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========== onSharedPreferenceChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 439
    const-string v1, "voiceprivacy_preference"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 441
    .local v0, isChecked:Z
    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mQueryVoicePrivacyComplete:Landroid/os/Handler;

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 443
    .end local v0           #isChecked:Z
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 425
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onStop()V

    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallVisible:Z

    .line 427
    return-void
.end method
