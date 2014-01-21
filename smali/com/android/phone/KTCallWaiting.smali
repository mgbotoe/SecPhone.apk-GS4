.class public Lcom/android/phone/KTCallWaiting;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "KTCallWaiting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/KTCallWaiting$MyHandler;
    }
.end annotation


# instance fields
.field private final Bearer_Service_Not_Provisoned:Ljava/lang/String;

.field private final Call_Barred:Ljava/lang/String;

.field private final Data_Missing:Ljava/lang/String;

.field private final Illegal_SS_Operation:Ljava/lang/String;

.field private final Negative_PW_Check:Ljava/lang/String;

.field private final Number_Of_PW_Attempts_Violation:Ljava/lang/String;

.field private final Pw_Registration_Failure:Ljava/lang/String;

.field private final SS_Error_Status:Ljava/lang/String;

.field private final SS_Incompatibility:Ljava/lang/String;

.field private final SS_Not_Available:Ljava/lang/String;

.field private final SS_Subscription_Violation:Ljava/lang/String;

.field private final System_Failure:Ljava/lang/String;

.field private final Teleservice_Not_Provisoned:Ljava/lang/String;

.field private final Unexpected_Data_Value:Ljava/lang/String;

.field private final Unknown_Subscriber:Ljava/lang/String;

.field private mChecked:Z

.field private mCheckedProgressDialog:Z

.field private mHandler:Lcom/android/phone/KTCallWaiting$MyHandler;

.field private mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingInfo:Landroid/preference/PreferenceScreen;

.field private mSettingOff:Landroid/preference/PreferenceScreen;

.field private mSettingOn:Landroid/preference/PreferenceScreen;

.field private mSettingStatus:Landroid/preference/PreferenceScreen;

.field private mtimer:Ljava/util/Timer;

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 57
    new-instance v0, Lcom/android/phone/KTCallWaiting$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/KTCallWaiting$MyHandler;-><init>(Lcom/android/phone/KTCallWaiting;Lcom/android/phone/KTCallWaiting$1;)V

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->mHandler:Lcom/android/phone/KTCallWaiting$MyHandler;

    .line 61
    iput-object v1, p0, Lcom/android/phone/KTCallWaiting;->phone:Lcom/android/internal/telephony/Phone;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    .line 66
    iput-object v1, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    .line 68
    const-string v0, "25"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->Pw_Registration_Failure:Ljava/lang/String;

    .line 69
    const-string v0, "26"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->Negative_PW_Check:Ljava/lang/String;

    .line 70
    const-string v0, "2B"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->Number_Of_PW_Attempts_Violation:Ljava/lang/String;

    .line 71
    const-string v0, "01"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->Unknown_Subscriber:Ljava/lang/String;

    .line 72
    const-string v0, "0A"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->Bearer_Service_Not_Provisoned:Ljava/lang/String;

    .line 73
    const-string v0, "0B"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->Teleservice_Not_Provisoned:Ljava/lang/String;

    .line 74
    const-string v0, "0D"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->Call_Barred:Ljava/lang/String;

    .line 75
    const-string v0, "10"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->Illegal_SS_Operation:Ljava/lang/String;

    .line 76
    const-string v0, "11"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->SS_Error_Status:Ljava/lang/String;

    .line 77
    const-string v0, "12"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->SS_Not_Available:Ljava/lang/String;

    .line 78
    const-string v0, "13"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->SS_Subscription_Violation:Ljava/lang/String;

    .line 79
    const-string v0, "14"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->SS_Incompatibility:Ljava/lang/String;

    .line 80
    const-string v0, "22"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->System_Failure:Ljava/lang/String;

    .line 81
    const-string v0, "23"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->Data_Missing:Ljava/lang/String;

    .line 82
    const-string v0, "24"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->Unexpected_Data_Value:Ljava/lang/String;

    .line 352
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/KTCallWaiting;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/KTCallWaiting;->mProgress:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/KTCallWaiting;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/phone/KTCallWaiting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    return p1
.end method

.method private destoryProgressDialogFromNoResponse()V
    .locals 6

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 197
    .local v1, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    if-nez v2, :cond_0

    .line 198
    const v2, 0x7f0905fc

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 199
    .local v0, NoResponse:Landroid/widget/Toast;
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    .line 200
    iget-object v2, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    new-instance v3, Lcom/android/phone/KTCallWaiting$2;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/KTCallWaiting$2;-><init>(Lcom/android/phone/KTCallWaiting;Landroid/widget/Toast;)V

    const-wide/16 v4, 0x1b58

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 214
    .end local v0           #NoResponse:Landroid/widget/Toast;
    :cond_0
    return-void
.end method


# virtual methods
.method handleGetCallWaitingResult(I)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 218
    .local v0, context:Landroid/content/Context;
    iget-boolean v2, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    if-nez v2, :cond_0

    .line 241
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/android/phone/KTCallWaiting;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    .line 224
    .local v1, progress:Landroid/app/ProgressDialog;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 226
    iput-boolean v3, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    .line 227
    iget-object v2, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 228
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    .line 231
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 233
    :pswitch_0
    const v2, 0x7f0905f1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 236
    :pswitch_1
    const v2, 0x7f0905f0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method handleSetCallWaitingResult(I)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 244
    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 245
    .local v0, context:Landroid/content/Context;
    iget-boolean v2, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    if-nez v2, :cond_0

    .line 267
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/android/phone/KTCallWaiting;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    .line 251
    .local v1, progress:Landroid/app/ProgressDialog;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 253
    iput-boolean v3, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    .line 254
    iget-object v2, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 255
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    .line 258
    :cond_1
    if-lez p1, :cond_3

    .line 259
    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    const v2, 0x7f0905ee

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 262
    :cond_2
    const v2, 0x7f0905ef

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 265
    :cond_3
    const v2, 0x7f0905fc

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/android/phone/KTCallWaiting;->mChecked:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 397
    const-string v0, "KTCallWaiting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 399
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const v0, 0x7f060029

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallWaiting;->addPreferencesFromResource(I)V

    .line 122
    const-string v0, "setting_on_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallWaiting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->mSettingOn:Landroid/preference/PreferenceScreen;

    .line 123
    const-string v0, "setting_off_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallWaiting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->mSettingOff:Landroid/preference/PreferenceScreen;

    .line 124
    const-string v0, "setting_status__preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallWaiting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->mSettingStatus:Landroid/preference/PreferenceScreen;

    .line 125
    const-string v0, "setting_info_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallWaiting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->mSettingInfo:Landroid/preference/PreferenceScreen;

    .line 127
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->phone:Lcom/android/internal/telephony/Phone;

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    .line 131
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0905ed

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 135
    const/4 v2, 0x0

    .line 136
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 138
    .local v1, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/android/phone/KTCallWaiting;->mSettingOn:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 139
    iget-boolean v4, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    if-nez v4, :cond_0

    .line 140
    iput-boolean v3, p0, Lcom/android/phone/KTCallWaiting;->mChecked:Z

    .line 141
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v6}, Lcom/android/phone/KTCallWaiting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v7, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/phone/KTCallWaiting;->mProgress:Ljava/lang/ref/WeakReference;

    .line 142
    iget-object v4, p0, Lcom/android/phone/KTCallWaiting;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->isChecked()Z

    move-result v5

    iget-object v6, p0, Lcom/android/phone/KTCallWaiting;->mHandler:Lcom/android/phone/KTCallWaiting$MyHandler;

    invoke-virtual {v6, v3}, Lcom/android/phone/KTCallWaiting$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 143
    invoke-direct {p0}, Lcom/android/phone/KTCallWaiting;->destoryProgressDialogFromNoResponse()V

    .line 144
    iput-boolean v3, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    .line 178
    :cond_0
    :goto_0
    return v3

    .line 147
    :cond_1
    iget-object v5, p0, Lcom/android/phone/KTCallWaiting;->mSettingOff:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 148
    iget-boolean v5, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    if-nez v5, :cond_0

    .line 149
    iput-boolean v4, p0, Lcom/android/phone/KTCallWaiting;->mChecked:Z

    .line 150
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v6}, Lcom/android/phone/KTCallWaiting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v7, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/phone/KTCallWaiting;->mProgress:Ljava/lang/ref/WeakReference;

    .line 151
    iget-object v4, p0, Lcom/android/phone/KTCallWaiting;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->isChecked()Z

    move-result v5

    iget-object v6, p0, Lcom/android/phone/KTCallWaiting;->mHandler:Lcom/android/phone/KTCallWaiting$MyHandler;

    invoke-virtual {v6, v3}, Lcom/android/phone/KTCallWaiting$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 152
    invoke-direct {p0}, Lcom/android/phone/KTCallWaiting;->destoryProgressDialogFromNoResponse()V

    .line 153
    iput-boolean v3, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    goto :goto_0

    .line 156
    :cond_2
    iget-object v5, p0, Lcom/android/phone/KTCallWaiting;->mSettingStatus:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 157
    iget-boolean v5, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    if-nez v5, :cond_0

    .line 158
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v6}, Lcom/android/phone/KTCallWaiting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v1, v7, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/android/phone/KTCallWaiting;->mProgress:Ljava/lang/ref/WeakReference;

    .line 159
    iget-object v5, p0, Lcom/android/phone/KTCallWaiting;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/KTCallWaiting;->mHandler:Lcom/android/phone/KTCallWaiting$MyHandler;

    invoke-virtual {v6, v4}, Lcom/android/phone/KTCallWaiting$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 160
    invoke-direct {p0}, Lcom/android/phone/KTCallWaiting;->destoryProgressDialogFromNoResponse()V

    .line 161
    iput-boolean v3, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    goto :goto_0

    .line 164
    :cond_3
    iget-object v5, p0, Lcom/android/phone/KTCallWaiting;->mSettingInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 165
    iget-boolean v4, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    if-nez v4, :cond_0

    .line 166
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 167
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0905eb

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 168
    const v4, 0x7f0905ec

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 169
    const v4, 0x7f090021

    new-instance v5, Lcom/android/phone/KTCallWaiting$1;

    invoke-direct {v5, p0}, Lcom/android/phone/KTCallWaiting$1;-><init>(Lcom/android/phone/KTCallWaiting;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .end local v0           #alert:Landroid/app/AlertDialog$Builder;
    :cond_4
    move v3, v4

    .line 178
    goto/16 :goto_0
.end method

.method showReturnError(Ljava/lang/Throwable;)V
    .locals 11
    .parameter "exception"

    .prologue
    const v10, 0x7f090607

    const v9, 0x7f0905f5

    const v8, 0x7f0905f2

    const/4 v7, 0x0

    .line 270
    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 271
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 272
    .local v2, errorcode:Ljava/lang/String;
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 274
    .local v1, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v4, :cond_0

    .line 275
    const-string v4, "ril.ss.errorcode"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    if-nez v2, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    const/4 v3, 0x0

    .line 288
    .local v3, errorvalue:I
    const-string v4, "SOO_Test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v4, "37"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 291
    invoke-static {v0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 292
    :cond_2
    const-string v4, "38"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 293
    invoke-static {v0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 294
    :cond_3
    const-string v4, "43"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 295
    const v4, 0x7f0905f3

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 296
    :cond_4
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 297
    const v4, 0x7f0905f4

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 298
    :cond_5
    const-string v4, "10"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 299
    invoke-static {v0, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 300
    :cond_6
    const-string v4, "11"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 301
    invoke-static {v0, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 302
    :cond_7
    const-string v4, "13"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 303
    const v4, 0x7f0905f6

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 304
    :cond_8
    const-string v4, "16"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 305
    const v4, 0x7f0905f7

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 306
    :cond_9
    const-string v4, "17"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 307
    const v4, 0x7f0905f8

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 308
    :cond_a
    const-string v4, "18"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 309
    const v4, 0x7f0905f9

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 310
    :cond_b
    const-string v4, "19"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 311
    const v4, 0x7f0905fa

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 312
    :cond_c
    const-string v4, "20"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 313
    const v4, 0x7f0905fb

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 314
    :cond_d
    const-string v4, "34"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 315
    const v4, 0x7f0905fc

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 316
    :cond_e
    const-string v4, "35"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 317
    const v4, 0x7f0905fd

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 318
    :cond_f
    const-string v4, "36"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 319
    const v4, 0x7f0905fe

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 320
    :cond_10
    const-string v4, "121"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 321
    const v4, 0x7f0905ff

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 322
    :cond_11
    const-string v4, "122"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 323
    const v4, 0x7f090600

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 324
    :cond_12
    const-string v4, "71"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 325
    const v4, 0x7f090601

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 326
    :cond_13
    const-string v4, "72"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 327
    const v4, 0x7f090602

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 328
    :cond_14
    const-string v4, "54"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 329
    const v4, 0x7f090603

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 330
    :cond_15
    const-string v4, "9"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 331
    const v4, 0x7f090604

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 332
    :cond_16
    const-string v4, "21"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 333
    const v4, 0x7f090605

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 334
    :cond_17
    const-string v4, "27"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 335
    const v4, 0x7f090606

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 336
    :cond_18
    const-string v4, "29"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 337
    invoke-static {v0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 338
    :cond_19
    const-string v4, "30"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 339
    invoke-static {v0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 340
    :cond_1a
    const-string v4, "123"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 341
    const v4, 0x7f090608

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 342
    :cond_1b
    const-string v4, "124"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 343
    const v4, 0x7f090609

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 344
    :cond_1c
    const-string v4, "125"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 345
    const v4, 0x7f09060a

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 346
    :cond_1d
    const-string v4, "126"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 347
    const v4, 0x7f09060b

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 348
    :cond_1e
    const-string v4, "127"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 349
    const v4, 0x7f09060c

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
