.class public Lcom/android/phone/callsettings/CallAlert;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallAlert.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private fromSettingSearch:Z

.field private mAlertsOnCallPreference:Landroid/preference/CheckBoxPreference;

.field private mAnswerVibPreference:Landroid/preference/CheckBoxPreference;

.field private mConnectTonePreference:Landroid/preference/CheckBoxPreference;

.field private mEndTonePreference:Landroid/preference/CheckBoxPreference;

.field private mEndVibPreference:Landroid/preference/CheckBoxPreference;

.field private mMinuteMinderPeference:Landroid/preference/CheckBoxPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "isAlways"

    .prologue
    .line 246
    const-string v0, "CallAlert"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 247
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->addPreferencesFromResource(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 67
    const-string v1, "answer_vibration_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mAnswerVibPreference:Landroid/preference/CheckBoxPreference;

    .line 68
    const-string v1, "end_vibration_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mEndVibPreference:Landroid/preference/CheckBoxPreference;

    .line 71
    const-string v1, "connect_tone_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mConnectTonePreference:Landroid/preference/CheckBoxPreference;

    .line 72
    const-string v1, "minute_minder_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mMinuteMinderPeference:Landroid/preference/CheckBoxPreference;

    .line 73
    const-string v1, "end_tone_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mEndTonePreference:Landroid/preference/CheckBoxPreference;

    .line 76
    const-string v1, "alertoncall_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mAlertsOnCallPreference:Landroid/preference/CheckBoxPreference;

    .line 78
    const-string v1, "mics_kor_common"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mAlertsOnCallPreference:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0902e8

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "single_lte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mAnswerVibPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallAlert;->mAnswerVibPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    :cond_1
    const-string v1, "feature_kdi"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallAlert;->mAnswerVibPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 91
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_3

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 95
    :cond_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 225
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 238
    .local v0, itemId:I
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    .line 185
    iget-object v0, p0, Lcom/android/phone/callsettings/CallAlert;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 186
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 98
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 99
    iput-boolean v5, p0, Lcom/android/phone/callsettings/CallAlert;->fromSettingSearch:Z

    .line 102
    iget-object v6, p0, Lcom/android/phone/callsettings/CallAlert;->mAnswerVibPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_0

    .line 103
    sget-boolean v6, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenu:Z

    if-eqz v6, :cond_7

    sget v6, Lcom/android/phone/callsettings/CallAlert;->mSettingValue:I

    if-eq v6, v8, :cond_7

    sget-object v6, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v7, "answer_vibration_preference"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 104
    iget-object v6, p0, Lcom/android/phone/callsettings/CallAlert;->mAnswerVibPreference:Landroid/preference/CheckBoxPreference;

    sget-boolean v7, Lcom/android/phone/callsettings/CallAlert;->mCheckValue:Z

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 105
    iput-boolean v4, p0, Lcom/android/phone/callsettings/CallAlert;->fromSettingSearch:Z

    .line 113
    :goto_0
    const-string v6, "cdma_call_alert_enable"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 114
    iget-object v6, p0, Lcom/android/phone/callsettings/CallAlert;->mAnswerVibPreference:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f090319

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 115
    iget-object v6, p0, Lcom/android/phone/callsettings/CallAlert;->mAnswerVibPreference:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f09031b

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 118
    :cond_0
    iget-object v6, p0, Lcom/android/phone/callsettings/CallAlert;->mEndVibPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_1

    .line 119
    sget-boolean v6, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenu:Z

    if-eqz v6, :cond_9

    sget v6, Lcom/android/phone/callsettings/CallAlert;->mSettingValue:I

    if-eq v6, v8, :cond_9

    sget-object v6, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v6, :cond_9

    sget-object v6, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v7, "end_vibration_preference"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 120
    iget-object v6, p0, Lcom/android/phone/callsettings/CallAlert;->mEndVibPreference:Landroid/preference/CheckBoxPreference;

    sget-boolean v7, Lcom/android/phone/callsettings/CallAlert;->mCheckValue:Z

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 121
    iput-boolean v4, p0, Lcom/android/phone/callsettings/CallAlert;->fromSettingSearch:Z

    .line 131
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/phone/callsettings/CallAlert;->mConnectTonePreference:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_2

    .line 132
    sget-boolean v6, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenu:Z

    if-eqz v6, :cond_b

    sget v6, Lcom/android/phone/callsettings/CallAlert;->mSettingValue:I

    if-eq v6, v8, :cond_b

    sget-object v6, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v6, :cond_b

    sget-object v6, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v7, "connect_tone_preference"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 133
    iget-object v6, p0, Lcom/android/phone/callsettings/CallAlert;->mConnectTonePreference:Landroid/preference/CheckBoxPreference;

    sget-boolean v7, Lcom/android/phone/callsettings/CallAlert;->mCheckValue:Z

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 134
    iput-boolean v4, p0, Lcom/android/phone/callsettings/CallAlert;->fromSettingSearch:Z

    .line 141
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/android/phone/callsettings/CallAlert;->mMinuteMinderPeference:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_3

    .line 142
    sget-boolean v6, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenu:Z

    if-eqz v6, :cond_d

    sget v6, Lcom/android/phone/callsettings/CallAlert;->mSettingValue:I

    if-eq v6, v8, :cond_d

    sget-object v6, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v6, :cond_d

    sget-object v6, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v7, "minute_minder_preference"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 143
    iget-object v6, p0, Lcom/android/phone/callsettings/CallAlert;->mMinuteMinderPeference:Landroid/preference/CheckBoxPreference;

    sget-boolean v7, Lcom/android/phone/callsettings/CallAlert;->mCheckValue:Z

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 144
    iput-boolean v4, p0, Lcom/android/phone/callsettings/CallAlert;->fromSettingSearch:Z

    .line 151
    :cond_3
    :goto_3
    iget-object v6, p0, Lcom/android/phone/callsettings/CallAlert;->mEndTonePreference:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_4

    .line 152
    sget-boolean v6, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenu:Z

    if-eqz v6, :cond_f

    sget v6, Lcom/android/phone/callsettings/CallAlert;->mSettingValue:I

    if-eq v6, v8, :cond_f

    sget-object v6, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v6, :cond_f

    sget-object v6, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v7, "end_tone_preference"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 153
    iget-object v6, p0, Lcom/android/phone/callsettings/CallAlert;->mEndTonePreference:Landroid/preference/CheckBoxPreference;

    sget-boolean v7, Lcom/android/phone/callsettings/CallAlert;->mCheckValue:Z

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 154
    iput-boolean v4, p0, Lcom/android/phone/callsettings/CallAlert;->fromSettingSearch:Z

    .line 163
    :cond_4
    :goto_4
    iget-object v6, p0, Lcom/android/phone/callsettings/CallAlert;->mAlertsOnCallPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_5

    .line 164
    sget-boolean v6, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenu:Z

    if-eqz v6, :cond_11

    sget v6, Lcom/android/phone/callsettings/CallAlert;->mSettingValue:I

    if-eq v6, v8, :cond_11

    sget-object v6, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v6, :cond_11

    sget-object v6, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v7, "alertoncall_preference"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 165
    iget-object v6, p0, Lcom/android/phone/callsettings/CallAlert;->mAlertsOnCallPreference:Landroid/preference/CheckBoxPreference;

    sget-boolean v7, Lcom/android/phone/callsettings/CallAlert;->mCheckValue:Z

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 166
    iput-boolean v4, p0, Lcom/android/phone/callsettings/CallAlert;->fromSettingSearch:Z

    .line 173
    :cond_5
    :goto_5
    iget-object v6, p0, Lcom/android/phone/callsettings/CallAlert;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 175
    iget-boolean v6, p0, Lcom/android/phone/callsettings/CallAlert;->fromSettingSearch:Z

    if-eqz v6, :cond_6

    sget-object v6, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 176
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is called by SettingSearch"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/android/phone/callsettings/CallAlert;->log(Ljava/lang/String;Z)V

    .line 177
    sput-boolean v5, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenu:Z

    .line 178
    iput-boolean v5, p0, Lcom/android/phone/callsettings/CallAlert;->fromSettingSearch:Z

    .line 179
    iget-object v4, p0, Lcom/android/phone/callsettings/CallAlert;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v5, Lcom/android/phone/callsettings/CallAlert;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/callsettings/CallAlert;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 181
    :cond_6
    return-void

    .line 107
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "call_answer_vib"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_8

    move v0, v4

    .line 110
    .local v0, alertSetting:Z
    :goto_6
    iget-object v6, p0, Lcom/android/phone/callsettings/CallAlert;->mAnswerVibPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .end local v0           #alertSetting:Z
    :cond_8
    move v0, v5

    .line 107
    goto :goto_6

    .line 123
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "call_end_vib"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_a

    move v0, v4

    .line 126
    .restart local v0       #alertSetting:Z
    :goto_7
    iget-object v6, p0, Lcom/android/phone/callsettings/CallAlert;->mEndVibPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .end local v0           #alertSetting:Z
    :cond_a
    move v0, v5

    .line 123
    goto :goto_7

    .line 136
    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "call_conn_tone"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_c

    move v1, v4

    .line 138
    .local v1, callconntone:Z
    :goto_8
    iget-object v6, p0, Lcom/android/phone/callsettings/CallAlert;->mConnectTonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    .end local v1           #callconntone:Z
    :cond_c
    move v1, v5

    .line 136
    goto :goto_8

    .line 146
    :cond_d
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "min_minder"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_e

    move v3, v4

    .line 148
    .local v3, minminder:Z
    :goto_9
    iget-object v6, p0, Lcom/android/phone/callsettings/CallAlert;->mMinuteMinderPeference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_3

    .end local v3           #minminder:Z
    :cond_e
    move v3, v5

    .line 146
    goto :goto_9

    .line 156
    :cond_f
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "call_end_tone"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_10

    move v2, v4

    .line 158
    .local v2, callendtone:Z
    :goto_a
    iget-object v6, p0, Lcom/android/phone/callsettings/CallAlert;->mEndTonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_4

    .end local v2           #callendtone:Z
    :cond_10
    move v2, v5

    .line 156
    goto :goto_a

    .line 168
    :cond_11
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "alertoncall_mode"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_12

    move v0, v4

    .line 169
    .restart local v0       #alertSetting:Z
    :goto_b
    iget-object v6, p0, Lcom/android/phone/callsettings/CallAlert;->mAlertsOnCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_5

    .end local v0           #alertSetting:Z
    :cond_12
    move v0, v5

    .line 168
    goto :goto_b
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 190
    const-string v4, "answer_vibration_preference"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    .line 192
    .local v1, state:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_answer_vib"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    .end local v1           #state:I
    :cond_0
    const-string v4, "end_vibration_preference"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 196
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    move v1, v2

    .line 197
    .restart local v1       #state:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_end_vib"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    .end local v1           #state:I
    :cond_1
    const-string v4, "connect_tone_preference"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 203
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    move v1, v2

    .line 204
    .restart local v1       #state:I
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_conn_tone"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    .end local v1           #state:I
    :cond_2
    const-string v4, "minute_minder_preference"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 208
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    move v1, v2

    .line 209
    .restart local v1       #state:I
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "min_minder"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    .end local v1           #state:I
    :cond_3
    const-string v4, "end_tone_preference"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 213
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    move v1, v2

    .line 214
    .restart local v1       #state:I
    :goto_4
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_end_tone"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    .end local v1           #state:I
    :cond_4
    const-string v4, "alertoncall_preference"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 219
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_b

    move v0, v2

    .line 220
    .local v0, alertState:I
    :goto_5
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "alertoncall_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    .end local v0           #alertState:I
    :cond_5
    return-void

    :cond_6
    move v1, v3

    .line 191
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 196
    goto :goto_1

    :cond_8
    move v1, v3

    .line 203
    goto :goto_2

    :cond_9
    move v1, v3

    .line 208
    goto :goto_3

    :cond_a
    move v1, v3

    .line 213
    goto :goto_4

    :cond_b
    move v0, v3

    .line 219
    goto :goto_5
.end method
