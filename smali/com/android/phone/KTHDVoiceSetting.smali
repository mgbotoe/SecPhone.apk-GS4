.class public Lcom/android/phone/KTHDVoiceSetting;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "KTHDVoiceSetting.java"


# instance fields
.field private fromSettingSearch:Z

.field private mHDVoiceChecked:Landroid/preference/CheckBoxPreference;

.field private mLTENetworkChecked:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 199
    const-string v0, "KTHDVoiceSetting"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "string"
    .parameter "always"

    .prologue
    .line 203
    const-string v0, "KTHDVoiceSetting"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 204
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v1, 0x7f06002a

    invoke-virtual {p0, v1}, Lcom/android/phone/KTHDVoiceSetting;->addPreferencesFromResource(I)V

    .line 67
    const-string v1, "kt_hd_voice"

    invoke-virtual {p0, v1}, Lcom/android/phone/KTHDVoiceSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/CheckBoxPreference;

    .line 68
    const-string v1, "kt_hd_voice_lte_pref"

    invoke-virtual {p0, v1}, Lcom/android/phone/KTHDVoiceSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    .line 70
    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 71
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 75
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 183
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 194
    .local v0, itemId:I
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 128
    iget-object v7, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_b

    .line 129
    iget-object v7, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    .line 130
    .local v4, value:Z
    const/4 v1, 0x0

    .line 131
    .local v1, isVolteSupported:Z
    const-string v7, "ims_volte"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 132
    const-string v7, "persist.sys.ims.volte_supported"

    const-string v9, "-1"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4

    move v1, v5

    .line 136
    :cond_0
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isVolteSupported = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/KTHDVoiceSetting;->log(Ljava/lang/String;)V

    .line 138
    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v9, 0x7f090756

    invoke-static {v7, v9, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 140
    :cond_1
    if-eqz v1, :cond_6

    .line 141
    iget-object v7, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 145
    :goto_1
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setHDVoiceNetworkPref(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "hd_voice_network_pref"

    invoke-static {v7, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 148
    .local v2, net_pref:I
    if-eqz v4, :cond_7

    if-nez v2, :cond_7

    .line 149
    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "voicecall_type"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    :goto_2
    const-string v7, "interworking_hd_voice_by_intent"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 155
    if-eqz v4, :cond_9

    if-ne v2, v5, :cond_9

    move v3, v6

    .line 156
    .local v3, type:I
    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.HD_VOICE_CHANGED"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, intent:Landroid/content/Intent;
    const-string v8, "enable"

    if-nez v3, :cond_a

    move v7, v5

    :goto_4
    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    .line 159
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendBroadcast HD_VOICE_CHANGED - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v3, :cond_2

    move v6, v5

    :cond_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lcom/android/phone/KTHDVoiceSetting;->log(Ljava/lang/String;Z)V

    .line 178
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #isVolteSupported:Z
    .end local v2           #net_pref:I
    .end local v3           #type:I
    .end local v4           #value:Z
    :cond_3
    :goto_5
    return v5

    .restart local v1       #isVolteSupported:Z
    .restart local v4       #value:Z
    :cond_4
    move v1, v6

    .line 132
    goto/16 :goto_0

    .line 133
    :cond_5
    const-string v7, "common_volte"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 134
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isVoLTESettingEnabled()Z

    move-result v1

    goto/16 :goto_0

    .line 143
    :cond_6
    iget-object v7, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 151
    .restart local v2       #net_pref:I
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_type"

    if-eqz v4, :cond_8

    move v7, v6

    :goto_6
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_8
    move v7, v5

    goto :goto_6

    :cond_9
    move v3, v5

    .line 155
    goto :goto_3

    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v3       #type:I
    :cond_a
    move v7, v6

    .line 157
    goto :goto_4

    .line 163
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #isVolteSupported:Z
    .end local v2           #net_pref:I
    .end local v3           #type:I
    .end local v4           #value:Z
    :cond_b
    iget-object v7, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_11

    .line 164
    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "hd_voice_network_pref"

    iget-object v7, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_d

    move v7, v5

    :goto_7
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "voicecall_type"

    iget-object v7, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_e

    move v7, v6

    :goto_8
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    const-string v7, "interworking_hd_voice_by_intent"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 168
    iget-object v7, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_f

    move v3, v6

    .line 169
    .restart local v3       #type:I
    :goto_9
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.HD_VOICE_CHANGED"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v8, "enable"

    if-nez v3, :cond_10

    move v7, v5

    :goto_a
    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendBroadcast HD_VOICE_CHANGED - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v3, :cond_c

    move v6, v5

    :cond_c
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lcom/android/phone/KTHDVoiceSetting;->log(Ljava/lang/String;Z)V

    goto/16 :goto_5

    .end local v0           #intent:Landroid/content/Intent;
    .end local v3           #type:I
    :cond_d
    move v7, v6

    .line 164
    goto :goto_7

    :cond_e
    move v7, v8

    .line 165
    goto :goto_8

    :cond_f
    move v3, v5

    .line 168
    goto :goto_9

    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v3       #type:I
    :cond_10
    move v7, v6

    .line 170
    goto :goto_a

    .line 178
    .end local v0           #intent:Landroid/content/Intent;
    .end local v3           #type:I
    :cond_11
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto/16 :goto_5
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 78
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 80
    iput-boolean v5, p0, Lcom/android/phone/KTHDVoiceSetting;->fromSettingSearch:Z

    .line 82
    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voicecall_type"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 83
    .local v0, hd_voice:I
    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hd_voice_network_pref"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 84
    .local v3, lte_network_pref:I
    const/4 v1, 0x1

    .line 85
    .local v1, isLTENetworkAvaliable:Z
    const/4 v2, 0x0

    .line 86
    .local v2, isVolteSupported:Z
    const-string v6, "ims_volte"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 87
    const-string v6, "persist.sys.ims.volte_supported"

    const-string v7, "-1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    move v2, v4

    .line 91
    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isVolteSupported = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/KTHDVoiceSetting;->log(Ljava/lang/String;)V

    .line 93
    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_1

    .line 94
    sget-boolean v6, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenu:Z

    if-eqz v6, :cond_6

    sget v6, Lcom/android/phone/KTHDVoiceSetting;->mSettingValue:I

    if-eq v6, v8, :cond_6

    sget-object v6, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v6, :cond_6

    sget-object v6, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v7, "kt_hd_voice"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 95
    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/CheckBoxPreference;

    sget-boolean v7, Lcom/android/phone/KTHDVoiceSetting;->mCheckValue:Z

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 96
    iput-boolean v4, p0, Lcom/android/phone/KTHDVoiceSetting;->fromSettingSearch:Z

    .line 102
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_2

    .line 103
    sget-boolean v6, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenu:Z

    if-eqz v6, :cond_8

    sget v6, Lcom/android/phone/KTHDVoiceSetting;->mSettingValue:I

    if-eq v6, v8, :cond_8

    sget-object v6, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v6, :cond_8

    sget-object v6, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v7, "kt_hd_voice_lte_pref"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 104
    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    sget-boolean v7, Lcom/android/phone/KTHDVoiceSetting;->mCheckValue:Z

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 105
    iput-boolean v4, p0, Lcom/android/phone/KTHDVoiceSetting;->fromSettingSearch:Z

    .line 113
    :cond_2
    :goto_2
    const-string v6, "KTHDVoiceSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fromSettingSearch = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/phone/KTHDVoiceSetting;->fromSettingSearch:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 114
    iget-boolean v6, p0, Lcom/android/phone/KTHDVoiceSetting;->fromSettingSearch:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is called by SettingSearch"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/android/phone/KTHDVoiceSetting;->log(Ljava/lang/String;Z)V

    .line 116
    sput-boolean v5, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenu:Z

    .line 117
    iput-boolean v5, p0, Lcom/android/phone/KTHDVoiceSetting;->fromSettingSearch:Z

    .line 118
    sget-object v4, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v5, "kt_hd_voice"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 119
    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/KTHDVoiceSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 125
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v2, v5

    .line 87
    goto/16 :goto_0

    .line 88
    :cond_5
    const-string v6, "common_volte"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 89
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isVoLTESettingEnabled()Z

    move-result v2

    goto/16 :goto_0

    .line 98
    :cond_6
    iget-object v7, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/CheckBoxPreference;

    if-ne v0, v4, :cond_7

    move v6, v5

    :goto_4
    invoke-virtual {v7, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_7
    move v6, v4

    goto :goto_4

    .line 107
    :cond_8
    iget-object v7, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    if-lez v3, :cond_9

    move v6, v4

    :goto_5
    invoke-virtual {v7, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 108
    if-eqz v2, :cond_a

    if-eq v0, v4, :cond_a

    move v1, v4

    .line 109
    :goto_6
    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_9
    move v6, v5

    .line 107
    goto :goto_5

    :cond_a
    move v1, v5

    .line 108
    goto :goto_6

    .line 120
    :cond_b
    sget-object v4, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v5, "kt_hd_voice_lte_pref"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 121
    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/KTHDVoiceSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_3
.end method
