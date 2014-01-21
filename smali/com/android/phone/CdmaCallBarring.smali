.class public Lcom/android/phone/CdmaCallBarring;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CdmaCallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaCallBarring$2;,
        Lcom/android/phone/CdmaCallBarring$AppState;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field private mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

.field private mButtonCDMAMoreExpand:Landroid/preference/PreferenceScreen;

.field private mButtonDS:Landroid/preference/ListPreference;

.field private mButtonIncoming:Landroid/preference/ListPreference;

.field private mButtonOutgoing:Landroid/preference/ListPreference;

.field private mButtonPasswd:Lcom/android/phone/EditPinPreference;

.field private mDisplayMode:I

.field private mIsBusyDialogAvailable:Z

.field private mMoreDataStale:Z

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mNewIncoming:Ljava/lang/String;

.field private mNewOutgoing:Ljava/lang/String;

.field private mNewPassWD:Ljava/lang/String;

.field private mOldIncoming:Ljava/lang/String;

.field private mOldOutgoing:Ljava/lang/String;

.field private mPassWD:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPwState:I

.field private mSetState:I

.field private mSetState_check:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private temp_NewPassWD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    .line 65
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "{0}"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/CdmaCallBarring;->SRC_TAGS:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 62
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallBarring;->mMoreDataStale:Z

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallBarring;->mIsBusyDialogAvailable:Z

    .line 344
    new-instance v0, Lcom/android/phone/CdmaCallBarring$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaCallBarring$1;-><init>(Lcom/android/phone/CdmaCallBarring;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CdmaCallBarring;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CdmaCallBarring;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CdmaCallBarring;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->dismissExpandedDialog()V

    return-void
.end method

.method private changeCallBarringValue()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 839
    iget v2, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    if-ne v2, v5, :cond_1

    .line 840
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 841
    .local v1, nOutgoing:I
    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallBarring;->saveCallBarringOutgoing(I)V

    .line 843
    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallBarring;->updateCBOutgoingSummary(I)V

    .line 844
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 845
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mOldOutgoing:Ljava/lang/String;

    .line 846
    iput-object v6, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    .line 857
    .end local v1           #nOutgoing:I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 858
    iput v5, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 862
    :goto_1
    iput v4, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    .line 863
    return-void

    .line 848
    :cond_1
    iget v2, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 849
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 850
    .local v0, nIncoming:I
    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallBarring;->saveCallBarringIncoming(I)V

    .line 852
    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallBarring;->updateCBIncomingSummary(I)V

    .line 853
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 854
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mOldIncoming:Ljava/lang/String;

    .line 855
    iput-object v6, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    goto :goto_0

    .line 860
    .end local v0           #nIncoming:I
    :cond_2
    iput v4, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    goto :goto_1
.end method

.method private checkCallBarringPassword(Z)V
    .locals 2
    .parameter "shouldDisplay"

    .prologue
    const/4 v1, 0x0

    .line 828
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 829
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 830
    invoke-direct {p0, v1, p1}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    .line 836
    :goto_0
    return-void

    .line 833
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 834
    invoke-direct {p0, v1, p1}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto :goto_0
.end method

.method private final dismissBusyDialog()V
    .locals 2

    .prologue
    .line 608
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissBusyDialog: mIsBusyDialogAvailable => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallBarring;->mIsBusyDialogAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 610
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/CdmaCallBarring;->mIsBusyDialogAvailable:Z

    if-eqz v0, :cond_1

    .line 611
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallBarring;->dismissDialog(I)V

    .line 613
    :cond_1
    return-void
.end method

.method private dismissExpandedDialog()V
    .locals 2

    .prologue
    .line 470
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissExpandedDialog mDisplayMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CdmaCallBarring;->mDisplayMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 471
    :cond_0
    iget v0, p0, Lcom/android/phone/CdmaCallBarring;->mDisplayMode:I

    packed-switch v0, :pswitch_data_0

    .line 476
    :cond_1
    :goto_0
    const/4 v0, -0x3

    iput v0, p0, Lcom/android/phone/CdmaCallBarring;->mDisplayMode:I

    .line 477
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallBarring;->setAppState(Lcom/android/phone/CdmaCallBarring$AppState;)V

    .line 478
    return-void

    .line 473
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonCDMAMoreExpand:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonCDMAMoreExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 471
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
    .end packed-switch
.end method

.method private final displayPasswdDialog(IZ)V
    .locals 4
    .parameter "strId"
    .parameter "shouldDisplay"

    .prologue
    .line 912
    iget v1, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    packed-switch v1, :pswitch_data_0

    .line 924
    const v0, 0x7f09036e

    .line 928
    .local v0, msgId:I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 929
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 932
    if-eqz p1, :cond_1

    .line 933
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/phone/CdmaCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 938
    :goto_1
    if-eqz p2, :cond_0

    .line 939
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    .line 941
    :cond_0
    return-void

    .line 914
    .end local v0           #msgId:I
    :pswitch_0
    const v0, 0x7f09036b

    .line 915
    .restart local v0       #msgId:I
    goto :goto_0

    .line 917
    .end local v0           #msgId:I
    :pswitch_1
    const v0, 0x7f090369

    .line 918
    .restart local v0       #msgId:I
    goto :goto_0

    .line 920
    .end local v0           #msgId:I
    :pswitch_2
    const v0, 0x7f090495

    .line 921
    .restart local v0       #msgId:I
    goto :goto_0

    .line 935
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPinPreference;->setDialogMessage(I)V

    goto :goto_1

    .line 912
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final getCallBarringPasswd()Ljava/lang/String;
    .locals 3

    .prologue
    .line 966
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 967
    .local v0, callBarringPreferences:Landroid/content/SharedPreferences;
    const-string v1, "cb_passwd_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initCallBarringPassword(Z)V
    .locals 4
    .parameter "shouldDisplay"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 866
    iget v0, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    if-eq v0, v3, :cond_0

    .line 867
    iput v1, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    if-eq v0, v3, :cond_3

    .line 869
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->temp_NewPassWD:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 870
    iput v2, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 878
    :cond_1
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    .line 879
    return-void

    .line 872
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CdmaCallBarring;->temp_NewPassWD:Ljava/lang/String;

    goto :goto_0

    .line 875
    :cond_3
    iget v0, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    if-nez v0, :cond_1

    .line 876
    iput v1, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 735
    const-string v0, "call features settings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    return-void
.end method

.method private final saveCallBarringIncoming(I)V
    .locals 3
    .parameter "nIncoming"

    .prologue
    .line 958
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 959
    .local v0, callBarringPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 960
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cb_incoming_key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 961
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 962
    return-void
.end method

.method private final saveCallBarringOutgoing(I)V
    .locals 3
    .parameter "nOutgoing"

    .prologue
    .line 951
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 952
    .local v0, callBarringPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 953
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cb_outgoing_key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 954
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 955
    return-void
.end method

.method private final saveCallBarringPasswd(Ljava/lang/String;)V
    .locals 3
    .parameter "sPasswd"

    .prologue
    .line 944
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 945
    .local v0, callBarringPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 946
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cb_passwd_key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 947
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 948
    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallBarring$AppState;)V
    .locals 2
    .parameter "requestedState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 482
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState First => requestedState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 483
    :cond_0
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne p1, v0, :cond_2

    .line 484
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "setAppState: illegal error state without reason."

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 485
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_2
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaCallBarring;->setAppState(Lcom/android/phone/CdmaCallBarring$AppState;I)V

    .line 488
    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallBarring$AppState;I)V
    .locals 4
    .parameter "requestedState"
    .parameter "msgStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x64

    const/16 v2, 0x384

    .line 493
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState Second => requestedState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msgStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne p1, v0, :cond_2

    .line 496
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 599
    :cond_1
    :goto_0
    return-void

    .line 502
    :cond_2
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne p1, v0, :cond_6

    .line 503
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 504
    :cond_3
    sparse-switch p2, :sswitch_data_0

    .line 531
    :goto_1
    iput-object p1, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    goto :goto_0

    .line 506
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne v0, v1, :cond_4

    .line 507
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallBarring;->dismissDialog(I)V

    .line 511
    :goto_2
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallBarring;->showDialog(I)V

    goto :goto_1

    .line 509
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->dismissBusyDialog()V

    goto :goto_2

    .line 515
    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallBarring;->showDialog(I)V

    goto :goto_1

    .line 519
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne v0, v1, :cond_5

    .line 520
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallBarring;->dismissDialog(I)V

    .line 524
    :goto_3
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallBarring;->showDialog(I)V

    goto :goto_1

    .line 522
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->dismissBusyDialog()V

    goto :goto_3

    .line 535
    :cond_6
    sget-object v0, Lcom/android/phone/CdmaCallBarring$2;->$SwitchMap$com$android$phone$CdmaCallBarring$AppState:[I

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallBarring$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 598
    :cond_7
    :goto_4
    iput-object p1, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    goto :goto_0

    .line 539
    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq p1, v0, :cond_7

    .line 540
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 541
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :pswitch_1
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: displaying busy dialog, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 548
    :cond_9
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne p1, v0, :cond_a

    .line 549
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallBarring;->showDialog(I)V

    goto :goto_4

    .line 550
    :cond_a
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne p1, v0, :cond_b

    .line 551
    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallBarring;->showDialog(I)V

    goto :goto_4

    .line 552
    :cond_b
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne p1, v0, :cond_7

    .line 553
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "setAppState: illegal transition from INPUT_READY"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 554
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INPUT_READY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :pswitch_2
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "setAppState: DIALOG_OPEN"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 561
    :cond_d
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq p1, v0, :cond_7

    .line 563
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "setAppState: DIALOG_OPEN => BUSY_DIALOG"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 564
    :cond_e
    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallBarring;->showDialog(I)V

    goto :goto_4

    .line 570
    :pswitch_3
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq p1, v0, :cond_10

    .line 571
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 572
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_10
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_11

    const-string v0, "setAppState: INITIAL_QUERY => INITIAL_BUSY_DIALOG"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 576
    :cond_11
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallBarring;->dismissDialog(I)V

    goto/16 :goto_4

    .line 580
    :pswitch_4
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq p1, v0, :cond_13

    .line 581
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_12

    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 582
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_13
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "setAppState: BUSY_NETWORK_CONNECT =>dismissBusyDialog"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 586
    :cond_14
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->dismissBusyDialog()V

    goto/16 :goto_4

    .line 589
    :pswitch_5
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq p1, v0, :cond_16

    .line 590
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_15

    const-string v0, "setAppState: illegal transition from WAITING_NUMBER_SELECT"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 591
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from WAITING_NUMBER_SELECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_16
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_17

    const-string v0, "setAppState: WAITING_NUMBER_SELECT =>dismissBusyDialog"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 595
    :cond_17
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->dismissBusyDialog()V

    goto/16 :goto_4

    .line 504
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x320 -> :sswitch_1
    .end sparse-switch

    .line 535
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateCBIncomingSummary(I)V
    .locals 2
    .parameter "Value"

    .prologue
    const v1, 0x7f09049f

    .line 895
    packed-switch p1, :pswitch_data_0

    .line 906
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 908
    :goto_0
    return-void

    .line 897
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 900
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    const v1, 0x7f0904a0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 903
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    const v1, 0x7f0904a1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 895
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateCBOutgoingSummary(I)V
    .locals 2
    .parameter "Value"

    .prologue
    const v1, 0x7f09049b

    .line 882
    packed-switch p1, :pswitch_data_0

    .line 890
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 892
    :goto_0
    return-void

    .line 884
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 887
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    const v1, 0x7f09049c

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 882
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 327
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq v0, v1, :cond_2

    .line 330
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onActivityResult: wrong state, ignoring message from contact picker."

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 341
    :cond_1
    :goto_0
    return-void

    .line 333
    :cond_2
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallBarring;->setAppState(Lcom/android/phone/CdmaCallBarring$AppState;)V

    .line 336
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 337
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onActivityResult: contact picker result not OK."

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    const/4 v0, 0x0

    .line 821
    iput-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    .line 822
    iput-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    .line 823
    iput-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    .line 824
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    .line 825
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 441
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 443
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 444
    packed-switch p2, :pswitch_data_0

    .line 456
    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallBarring;->setAppState(Lcom/android/phone/CdmaCallBarring$AppState;)V

    .line 459
    :goto_0
    return-void

    .line 447
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->dismissExpandedDialog()V

    goto :goto_0

    .line 451
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->finish()V

    goto :goto_0

    .line 444
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 640
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 642
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 645
    const v2, 0x7f060013

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallBarring;->addPreferencesFromResource(I)V

    .line 646
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 647
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    sget-object v2, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    .line 648
    sget-boolean v2, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate icicle => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 649
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 651
    if-eqz p1, :cond_a

    .line 653
    const-string v2, "app_state_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CdmaCallBarring$AppState;

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    .line 654
    const-string v2, "display_mode_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/CdmaCallBarring;->mDisplayMode:I

    .line 655
    const-string v2, "MPASSWORD_STATE_KEY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 656
    const-string v2, "MSET_STATE_KEY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    .line 657
    const-string v2, "MSET_STATE_CHECK_KEY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/CdmaCallBarring;->mSetState_check:Z

    .line 658
    const-string v2, "MOUTGOING_VALUE_KEY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    .line 659
    const-string v2, "MINCOMING_VALUE_KEY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    .line 660
    const-string v2, "MNEWPASSWD_VALUE_KEY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    .line 661
    const-string v2, "MTEMP_NEWPASSWD_VALUE_KEY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->temp_NewPassWD:Ljava/lang/String;

    .line 669
    :goto_0
    const-string v2, "button_outgoing_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    .line 671
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    if-eqz v2, :cond_1

    .line 672
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 673
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mOldOutgoing:Ljava/lang/String;

    .line 674
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mOldOutgoing:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/CdmaCallBarring;->updateCBOutgoingSummary(I)V

    .line 676
    :cond_1
    const-string v2, "button_incoming_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    .line 678
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    if-eqz v2, :cond_2

    .line 679
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 680
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mOldIncoming:Ljava/lang/String;

    .line 681
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mOldIncoming:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/CdmaCallBarring;->updateCBIncomingSummary(I)V

    .line 684
    :cond_2
    const-string v2, "button_cbpasswd_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPinPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    .line 685
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    if-eqz v2, :cond_3

    .line 686
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->getCallBarringPasswd()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    .line 687
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 688
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 691
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/phone/CdmaCallBarring;->initCallBarringPassword(Z)V

    .line 693
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 694
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_4

    .line 695
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 698
    :cond_4
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v5, :cond_9

    .line 706
    :cond_5
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallBarring;->showDialog(I)V

    .line 707
    sget-boolean v2, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "skip set or get CallForwarding"

    invoke-static {v2}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 708
    :cond_6
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 709
    :cond_7
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 710
    :cond_8
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 713
    :cond_9
    return-void

    .line 665
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_a
    iput-boolean v5, p0, Lcom/android/phone/CdmaCallBarring;->mMoreDataStale:Z

    .line 666
    iput-boolean v4, p0, Lcom/android/phone/CdmaCallBarring;->mSetState_check:Z

    .line 667
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->temp_NewPassWD:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f09007d

    const/4 v6, 0x1

    .line 369
    sget-boolean v4, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateDialog id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 371
    :cond_0
    const/16 v4, 0x64

    if-eq p1, v4, :cond_1

    const/16 v4, 0x384

    if-ne p1, v4, :cond_2

    .line 372
    :cond_1
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 373
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v4, 0x7f090074

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 374
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 376
    sparse-switch p1, :sswitch_data_0

    .line 391
    :goto_0
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 433
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :goto_1
    return-object v1

    .line 378
    .restart local v1       #dialog:Landroid/app/ProgressDialog;
    :sswitch_0
    iput-boolean v6, p0, Lcom/android/phone/CdmaCallBarring;->mIsBusyDialogAvailable:Z

    .line 379
    invoke-virtual {v1, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 380
    const v4, 0x7f090077

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 384
    :sswitch_1
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 385
    iget-object v4, p0, Lcom/android/phone/CdmaCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v5, 0x258

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    .line 387
    const v4, 0x7f090076

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 396
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_2
    const/16 v4, 0x12c

    if-eq p1, v4, :cond_3

    const/16 v4, 0xc8

    if-eq p1, v4, :cond_3

    const/16 v4, 0x320

    if-ne p1, v4, :cond_4

    .line 398
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 401
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f090075

    .line 402
    .local v3, titleId:I
    sparse-switch p1, :sswitch_data_1

    .line 418
    const v2, 0x7f09007a

    .line 421
    .local v2, msgId:I
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 425
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 426
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 427
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 428
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 429
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_1

    .line 404
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #msgId:I
    :sswitch_2
    const v2, 0x7f090079

    .line 407
    .restart local v2       #msgId:I
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 411
    .end local v2           #msgId:I
    :sswitch_3
    const v2, 0x7f09007c

    .line 413
    .restart local v2       #msgId:I
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 433
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v2           #msgId:I
    .end local v3           #titleId:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 376
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x384 -> :sswitch_1
    .end sparse-switch

    .line 402
    :sswitch_data_1
    .sparse-switch
        0x12c -> :sswitch_2
        0x320 -> :sswitch_3
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 189
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 190
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->finish()V

    .line 192
    const/4 v1, 0x1

    .line 194
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .locals 6
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const/4 v5, 0x0

    const v2, 0x7f090496

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 738
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    if-ne p1, v1, :cond_0

    .line 739
    if-nez p2, :cond_4

    .line 740
    iget-boolean v1, p0, Lcom/android/phone/CdmaCallBarring;->mSetState_check:Z

    if-nez v1, :cond_2

    .line 741
    iput-object v5, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    .line 742
    iput-object v5, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    .line 743
    iput-object v5, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    .line 744
    iput v3, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    .line 746
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 747
    iput v4, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 760
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/phone/CdmaCallBarring;->initCallBarringPassword(Z)V

    .line 818
    :cond_0
    :goto_1
    return-void

    .line 749
    :cond_1
    iput v3, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    goto :goto_0

    .line 752
    :cond_2
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallBarring;->mSetState_check:Z

    .line 753
    iput v3, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    .line 754
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 755
    iput v4, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    goto :goto_0

    .line 757
    :cond_3
    iput v3, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    goto :goto_0

    .line 764
    :cond_4
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, password:Ljava/lang/String;
    iget v1, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 768
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 769
    iput v4, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 770
    invoke-direct {p0, v3, v4}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto :goto_1

    .line 773
    :cond_5
    invoke-direct {p0, v2, v4}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto :goto_1

    .line 777
    :pswitch_1
    iput-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    .line 779
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_7

    .line 780
    :cond_6
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    .line 781
    iput v4, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 782
    const v1, 0x7f090497

    invoke-direct {p0, v1, v4}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto :goto_1

    .line 784
    :cond_7
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->temp_NewPassWD:Ljava/lang/String;

    .line 785
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 786
    invoke-direct {p0, v3, v4}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto :goto_1

    .line 790
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 791
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    .line 792
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    .line 793
    iput v3, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 794
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallBarring;->saveCallBarringPasswd(Ljava/lang/String;)V

    .line 795
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->changeCallBarringValue()V

    .line 796
    invoke-direct {p0, v3, v3}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto :goto_1

    .line 799
    :cond_8
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    .line 800
    iput v4, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 801
    invoke-direct {p0, v2, v4}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto/16 :goto_1

    .line 805
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 806
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->changeCallBarringValue()V

    .line 807
    invoke-direct {p0, v3}, Lcom/android/phone/CdmaCallBarring;->initCallBarringPassword(Z)V

    goto/16 :goto_1

    .line 810
    :cond_9
    invoke-direct {p0, v2, v4}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto/16 :goto_1

    .line 766
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 206
    sget-boolean v2, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "onPreferenceChange "

    invoke-static {v2}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 209
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    .line 210
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mOldOutgoing:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    :cond_1
    :goto_0
    return v0

    .line 212
    :cond_2
    iput v1, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    .line 213
    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallBarring;->checkCallBarringPassword(Z)V

    goto :goto_0

    .line 216
    .restart local p2
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_4

    .line 217
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    .line 218
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mOldIncoming:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 220
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    .line 221
    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallBarring;->checkCallBarringPassword(Z)V

    goto :goto_0

    .restart local p2
    :cond_4
    move v0, v1

    .line 224
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    sget-object v3, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq v2, v3, :cond_1

    .line 169
    sget-boolean v2, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "onPreferencesHierarchyClick: preference request denied, currently busy."

    invoke-static {v2}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 185
    :cond_0
    :goto_0
    return v1

    .line 173
    :cond_1
    sget-boolean v2, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "onPreferencesHierarchyClick: request preference click."

    invoke-static {v2}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 174
    :cond_2
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    .line 175
    .local v0, nextState:Lcom/android/phone/CdmaCallBarring$AppState;
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonDS:Landroid/preference/ListPreference;

    if-eq p2, v2, :cond_0

    .line 179
    sget-object v2, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq v0, v2, :cond_0

    .line 180
    sget-boolean v1, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "onPreferenceTreeClick => != AppState.INPUT_READY"

    invoke-static {v1}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 181
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallBarring;->setAppState(Lcom/android/phone/CdmaCallBarring$AppState;)V

    .line 182
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 617
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 618
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 621
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 630
    :cond_0
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onResume Start"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 632
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 717
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 719
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onSaveInstanceState: saving relevant UI state."

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 721
    :cond_0
    const-string v0, "app_state_key"

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 722
    const-string v0, "display_mode_key"

    iget v1, p0, Lcom/android/phone/CdmaCallBarring;->mDisplayMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallBarring;->mSetState_check:Z

    .line 724
    const-string v0, "MPASSWORD_STATE_KEY"

    iget v1, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 725
    const-string v0, "MSET_STATE_KEY"

    iget v1, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 726
    const-string v0, "MSET_STATE_CHECK_KEY"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallBarring;->mSetState_check:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 727
    const-string v0, "MOUTGOING_VALUE_KEY"

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v0, "MINCOMING_VALUE_KEY"

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v0, "MNEWPASSWD_VALUE_KEY"

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v0, "MTEMP_NEWPASSWD_VALUE_KEY"

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->temp_NewPassWD:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 306
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivityForResult intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 308
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 309
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 319
    :cond_1
    :goto_0
    return-void

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq v0, v1, :cond_3

    .line 314
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "startSubActivity: dialog start activity request denied, currently busy."

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 318
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallBarring;->setAppState(Lcom/android/phone/CdmaCallBarring$AppState;)V

    goto :goto_0
.end method
