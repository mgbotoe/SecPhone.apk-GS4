.class public Lcom/android/phone/CallLockSettings;
.super Landroid/preference/PreferenceActivity;
.source "CallLockSettings.java"

# interfaces
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# static fields
.field private static final DBG:Z


# instance fields
.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/phone/EditPinPreference;

.field private mRealPin:Ljava/lang/String;

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/phone/CallLockSettings;->DBG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    .line 331
    new-instance v0, Lcom/android/phone/CallLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CallLockSettings$2;-><init>(Lcom/android/phone/CallLockSettings;)V

    iput-object v0, p0, Lcom/android/phone/CallLockSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallLockSettings;)Lcom/android/phone/EditPinPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 347
    const-string v0, "CallLockSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"

    .prologue
    .line 317
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 318
    :cond_0
    const/4 v0, 0x0

    .line 320
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    .line 326
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    .line 327
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    .line 328
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->setDialogValues()V

    .line 329
    return-void
.end method

.method private setDialogValues()V
    .locals 7

    .prologue
    const v6, 0x7f090495

    const v5, 0x7f09036e

    const v4, 0x7f09036b

    const v3, 0x7f090369

    .line 181
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 182
    const-string v0, ""

    .line 183
    .local v0, message:Ljava/lang/String;
    iget v1, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 207
    return-void

    .line 185
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 194
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 198
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->setDialogValues()V

    .line 177
    iget-object v0, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x65

    .line 87
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/phone/CallLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 91
    const v1, 0x7f060009

    invoke-virtual {p0, v1}, Lcom/android/phone/CallLockSettings;->addPreferencesFromResource(I)V

    .line 93
    const-string v1, "call_lock_dialog"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    .line 94
    if-eqz p1, :cond_0

    const-string v1, "call_lock_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "call_lock_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    .line 96
    const-string v1, "call_lock_pin"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    .line 97
    const-string v1, "call_lock_error"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    .line 99
    :cond_0
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallLockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/phone/CallLockSettings;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 100
    const-string v1, "feature_chn_duos_cdma_gsm"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/CallLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallLockSettings;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 106
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 107
    .local v0, defaultPreferences:Landroid/content/SharedPreferences;
    const-string v1, "cb_passwd_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallLockSettings;->mRealPin:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/phone/CallLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/android/phone/CallLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    .line 115
    invoke-virtual {p0, v4}, Lcom/android/phone/CallLockSettings;->setResult(I)V

    .line 116
    return-void

    .line 103
    .end local v0           #defaultPreferences:Landroid/content/SharedPreferences;
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 121
    iget-object v0, p0, Lcom/android/phone/CallLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 122
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 145
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 146
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    .line 153
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/CallLockSettings$1;

    invoke-direct {v2, p0}, Lcom/android/phone/CallLockSettings$1;-><init>(Lcom/android/phone/CallLockSettings;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 162
    return-void
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .locals 9
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const v8, 0x7f090496

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 210
    if-nez p2, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->resetDialogState()V

    .line 212
    const/16 v4, 0x65

    invoke-virtual {p0, v4}, Lcom/android/phone/CallLockSettings;->setResult(I)V

    .line 213
    invoke-virtual {p0}, Lcom/android/phone/CallLockSettings;->finish()V

    .line 313
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    .line 218
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/phone/CallLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 220
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090497

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    .line 221
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->showPinDialog()V

    goto :goto_0

    .line 224
    :cond_1
    iget v4, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 226
    :pswitch_0
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mRealPin:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 227
    const/16 v4, 0x64

    invoke-virtual {p0, v4}, Lcom/android/phone/CallLockSettings;->setResult(I)V

    .line 228
    const-string v4, ""

    invoke-virtual {p1, v4}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/Ringer;->stopRing()V

    .line 234
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, answered:Z
    const/4 v3, 0x0

    .line 240
    .local v3, validState:Z
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 242
    .local v2, call:Lcom/android/internal/telephony/Call;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 243
    sget-boolean v4, Lcom/android/phone/CallLockSettings;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accept state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallLockSettings;->log(Ljava/lang/String;)V

    .line 245
    :cond_2
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CDMA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 246
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 247
    .local v1, app:Lcom/android/phone/PhoneGlobals;
    iget-object v4, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_6

    .line 248
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_3

    .line 251
    const/4 v3, 0x1

    .line 263
    .end local v1           #app:Lcom/android/phone/PhoneGlobals;
    :cond_3
    :goto_1
    if-eqz v3, :cond_8

    .line 265
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/phone/PhoneUtils;->isFinishCdmaCallBarring:Z

    .line 267
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v5, "LockPatternClear"

    invoke-virtual {v4, v5}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallLockSettings;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 268
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v4}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 270
    sget-boolean v4, Lcom/android/phone/CallLockSettings;->DBG:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "answerCall: call state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallLockSettings;->log(Ljava/lang/String;)V

    .line 271
    :cond_4
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 272
    const/4 v0, 0x1

    .line 278
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/CallLockSettings;->finish()V

    goto/16 :goto_0

    .line 253
    .restart local v1       #app:Lcom/android/phone/PhoneGlobals;
    :cond_6
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_3

    .line 256
    const/4 v3, 0x1

    goto :goto_1

    .line 261
    .end local v1           #app:Lcom/android/phone/PhoneGlobals;
    :cond_7
    const/4 v3, 0x1

    goto :goto_1

    .line 275
    :cond_8
    sget-boolean v4, Lcom/android/phone/CallLockSettings;->DBG:Z

    if-eqz v4, :cond_5

    const-string v4, "answerCall: inconsistent states"

    invoke-static {v4}, Lcom/android/phone/CallLockSettings;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 281
    .end local v0           #answered:Z
    .end local v2           #call:Lcom/android/internal/telephony/Call;
    .end local v3           #validState:Z
    :cond_9
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    .line 282
    iput-object v6, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    .line 283
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->showPinDialog()V

    goto/16 :goto_0

    .line 288
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/phone/CallLockSettings;->mOldPin:Ljava/lang/String;

    .line 289
    iput v7, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    .line 290
    iput-object v6, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    .line 291
    iput-object v6, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    .line 292
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->showPinDialog()V

    goto/16 :goto_0

    .line 296
    :pswitch_2
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/phone/CallLockSettings;->mNewPin:Ljava/lang/String;

    .line 297
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    .line 298
    iput-object v6, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    .line 299
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->showPinDialog()V

    goto/16 :goto_0

    .line 303
    :pswitch_3
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/CallLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 304
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    .line 305
    iput v7, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    .line 306
    iput-object v6, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    .line 307
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->showPinDialog()V

    goto/16 :goto_0

    .line 309
    :cond_a
    iput-object v6, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    goto/16 :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 126
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 127
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 131
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    sget-boolean v1, Lcom/android/phone/CallLockSettings;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDialogState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallLockSettings;->log(Ljava/lang/String;)V

    .line 132
    :cond_0
    iget v1, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    if-eqz v1, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->showPinDialog()V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 166
    const-string v0, "call_lock_state"

    iget v1, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    const-string v0, "call_lock_pin"

    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "call_lock_error"

    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    return-void
.end method
