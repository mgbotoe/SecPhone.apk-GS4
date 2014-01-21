.class public Lcom/android/phone/Roaming;
.super Landroid/preference/PreferenceActivity;
.source "Roaming.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Roaming$1;,
        Lcom/android/phone/Roaming$MyHandler;
    }
.end annotation


# instance fields
.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field private mButtonRoamingGuard:Landroid/preference/PreferenceScreen;

.field private mButtonRoamingMode:Landroid/preference/ListPreference;

.field private mButtonRoamingSettings:Landroid/preference/PreferenceScreen;

.field private mHandler:Lcom/android/phone/Roaming$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamingMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/Roaming;->mRoamingMode:I

    .line 238
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/android/phone/Roaming;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/Roaming;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/Roaming;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 363
    const-string v0, "Roaming"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const v6, 0x7f060035

    const/4 v5, 0x1

    .line 81
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const-string v3, "Roaming"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 85
    iget-object v3, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 86
    .local v0, phoneType:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 87
    invoke-virtual {p0, v6}, Lcom/android/phone/Roaming;->addPreferencesFromResource(I)V

    .line 97
    :goto_0
    const-string v3, "system_select_home_only"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 98
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/phone/Roaming;->mRoamingMode:I

    .line 103
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/Roaming;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 105
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    new-instance v3, Lcom/android/phone/Roaming$MyHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/phone/Roaming$MyHandler;-><init>(Lcom/android/phone/Roaming;Lcom/android/phone/Roaming$1;)V

    iput-object v3, p0, Lcom/android/phone/Roaming;->mHandler:Lcom/android/phone/Roaming$MyHandler;

    .line 109
    const-string v3, "roaming_mode_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    .line 112
    const-string v3, "csc_chameleon_enable"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    const v4, 0x7f0800a9

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 115
    :cond_0
    const-string v3, "system_select_home_only_entry"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    const v4, 0x7f0800ab

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 118
    :cond_1
    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    const-string v3, "roaming_settings"

    iget v4, p0, Lcom/android/phone/Roaming;->mRoamingMode:I

    invoke-static {v3, v4}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingValueInt(Ljava/lang/String;I)I

    move-result v2

    .line 122
    .local v2, settingsRoamingMode:I
    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 124
    const-string v3, "roaming_settings_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingSettings:Landroid/preference/PreferenceScreen;

    .line 125
    const-string v3, "roaming_guard_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingGuard:Landroid/preference/PreferenceScreen;

    .line 131
    return-void

    .line 88
    .end local v1           #prefSet:Landroid/preference/PreferenceScreen;
    .end local v2           #settingsRoamingMode:I
    :cond_2
    if-eq v0, v5, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    .line 91
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/phone/Roaming;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 94
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    :cond_5
    iput v5, p0, Lcom/android/phone/Roaming;->mRoamingMode:I

    goto/16 :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 189
    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 192
    iget-object v4, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 193
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 194
    .local v0, buttonRoamingMode:I
    const-string v3, "roaming_settings"

    iget v4, p0, Lcom/android/phone/Roaming;->mRoamingMode:I

    invoke-static {v3, v4}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingValueInt(Ljava/lang/String;I)I

    move-result v1

    .line 196
    .local v1, settingsRoamingMode:I
    if-eq v0, v1, :cond_0

    .line 198
    packed-switch v0, :pswitch_data_0

    .line 220
    const/4 v2, 0x0

    .line 221
    .local v2, statusCdmaRoamingMode:I
    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 222
    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingGuard:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 226
    :goto_0
    const-string v3, "roaming_settings"

    invoke-static {v3, v0}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 228
    const-string v3, "Roaming"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCdmaRoamingPreference value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v3, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/Roaming;->mHandler:Lcom/android/phone/Roaming$MyHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/phone/Roaming$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 235
    .end local v0           #buttonRoamingMode:I
    .end local v1           #settingsRoamingMode:I
    .end local v2           #statusCdmaRoamingMode:I
    :cond_0
    return v6

    .line 200
    .restart local v0       #buttonRoamingMode:I
    .restart local v1       #settingsRoamingMode:I
    :pswitch_0
    const-string v3, "roam_setting_call_domestic"

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 202
    const-string v3, "roam_setting_data_domestic"

    invoke-static {v3, v5}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 203
    const-string v3, "roam_setting_call_international"

    invoke-static {v3, v5}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 204
    const-string v3, "roam_setting_data_international"

    invoke-static {v3, v5}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 206
    const-string v3, "roam_guard_call_domestic"

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 207
    const-string v3, "roam_guard_data_domestic"

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 208
    const-string v3, "roam_guard_call_international"

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 209
    const-string v3, "roam_guard_data_international"

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 210
    const-string v3, "roam_guard_sms_international"

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 212
    const/4 v2, 0x5

    .line 214
    .restart local v2       #statusCdmaRoamingMode:I
    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 215
    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingGuard:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 66
    const-string v1, "Roaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    if-ne p2, v1, :cond_0

    .line 69
    const-string v1, "Roaming"

    const-string v2, "onPreferenceTreeClick: preference == mButtonRoamingMode."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v1, "roaming_settings"

    iget v2, p0, Lcom/android/phone/Roaming;->mRoamingMode:I

    invoke-static {v1, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingValueInt(Ljava/lang/String;I)I

    move-result v0

    .line 72
    .local v0, cdmaRoamingMode:I
    iget-object v1, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 73
    const/4 v1, 0x1

    .line 76
    .end local v0           #cdmaRoamingMode:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 135
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 137
    const-string v3, "Roaming"

    const-string v6, "onResume"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lcom/android/phone/Roaming;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 146
    iget-object v3, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 147
    .local v0, phoneType:I
    if-ne v0, v7, :cond_1

    .line 148
    iget-object v3, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/Roaming;->mHandler:Lcom/android/phone/Roaming$MyHandler;

    invoke-virtual {v6, v7}, Lcom/android/phone/Roaming$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 158
    :goto_0
    const-string v3, "roaming_settings"

    iget v6, p0, Lcom/android/phone/Roaming;->mRoamingMode:I

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingValueInt(Ljava/lang/String;I)I

    move-result v2

    .line 159
    .local v2, settingsRoamingMode:I
    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 161
    if-ne v0, v7, :cond_6

    .line 162
    iget-object v6, p0, Lcom/android/phone/Roaming;->mButtonRoamingSettings:Landroid/preference/PreferenceScreen;

    if-ne v2, v4, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 163
    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingGuard:Landroid/preference/PreferenceScreen;

    if-ne v2, v4, :cond_5

    :goto_2
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 172
    :goto_3
    const-string v3, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 175
    .local v1, settingsNetworkMode:I
    if-ne v8, v1, :cond_0

    .line 176
    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 178
    .end local v1           #settingsNetworkMode:I
    :cond_0
    return-void

    .line 149
    .end local v2           #settingsRoamingMode:I
    :cond_1
    if-eq v0, v4, :cond_2

    if-eq v0, v8, :cond_2

    if-ne v0, v9, :cond_3

    .line 152
    :cond_2
    iget-object v3, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/Roaming;->mHandler:Lcom/android/phone/Roaming$MyHandler;

    invoke-virtual {v6, v7}, Lcom/android/phone/Roaming$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_0

    .line 155
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .restart local v2       #settingsRoamingMode:I
    :cond_4
    move v3, v5

    .line 162
    goto :goto_1

    :cond_5
    move v4, v5

    .line 163
    goto :goto_2

    .line 164
    :cond_6
    if-eq v0, v4, :cond_7

    if-eq v0, v8, :cond_7

    if-ne v0, v9, :cond_8

    .line 167
    :cond_7
    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_3

    .line 169
    :cond_8
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
