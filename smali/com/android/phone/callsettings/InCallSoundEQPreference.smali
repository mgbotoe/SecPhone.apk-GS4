.class public Lcom/android/phone/callsettings/InCallSoundEQPreference;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "InCallSoundEQPreference.java"


# instance fields
.field private mVoiceCallEqListSetting:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/InCallSoundEQPreference;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/InCallSoundEQPreference;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 217
    const-string v0, "InCallSoundEQPreference"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 218
    return-void
.end method


# virtual methods
.method public isOffHook()Z
    .locals 4

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 159
    .local v1, result:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    .line 160
    .local v0, mCM:Lcom/android/internal/telephony/CallManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    .line 161
    const/4 v1, 0x1

    .line 164
    :cond_0
    return v1
.end method

.method protected makeEQDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 167
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f090021

    new-instance v3, Lcom/android/phone/callsettings/InCallSoundEQPreference$2;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference$2;-><init>(Lcom/android/phone/callsettings/InCallSoundEQPreference;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    const v2, 0x7f090024

    new-instance v3, Lcom/android/phone/callsettings/InCallSoundEQPreference$3;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference$3;-><init>(Lcom/android/phone/callsettings/InCallSoundEQPreference;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 180
    const v2, 0x7f09039b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 181
    const v2, 0x7f0903a6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 182
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 183
    .local v1, dialog:Landroid/app/AlertDialog;
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v2, 0x7f060024

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->addPreferencesFromResource(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 57
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "voicecall_eq_list_setting"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    .line 59
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 60
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 62
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;-><init>(Lcom/android/phone/callsettings/InCallSoundEQPreference;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 187
    packed-switch p1, :pswitch_data_0

    .line 191
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 189
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->makeEQDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1f7
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 196
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 204
    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->startActivity(Landroid/content/Intent;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->finish()V

    .line 207
    const/4 v2, 0x1

    .line 209
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 113
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 115
    iget-object v6, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    if-eqz v6, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hearing_revision"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    move v3, v4

    .line 118
    .local v3, useMySound:Z
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->getVoiceEqListValue()I

    move-result v1

    .line 119
    .local v1, eqListValue:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, eqListEntries:[Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hearing_diagnosis"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hearing_direction"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 124
    .local v2, hearingDirection:I
    if-ne v2, v8, :cond_4

    .line 125
    if-eq v1, v9, :cond_0

    if-ne v1, v10, :cond_1

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voicecall_eq_list_value"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    const/4 v1, 0x0

    .line 138
    .end local v2           #hearingDirection:I
    :cond_1
    :goto_1
    if-nez v1, :cond_6

    .line 139
    iget-object v6, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    const v7, 0x7f0903a4

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 144
    :goto_2
    iget-object v6, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->isOffHook()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 146
    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 152
    .end local v0           #eqListEntries:[Ljava/lang/String;
    .end local v1           #eqListValue:I
    .end local v3           #useMySound:Z
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v3, v5

    .line 116
    goto :goto_0

    .line 130
    .restart local v0       #eqListEntries:[Ljava/lang/String;
    .restart local v1       #eqListValue:I
    .restart local v2       #hearingDirection:I
    .restart local v3       #useMySound:Z
    :cond_4
    if-nez v2, :cond_5

    .line 131
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voicecall_eq_list_value"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    const/4 v1, 0x3

    goto :goto_1

    .line 133
    :cond_5
    if-ne v2, v4, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voicecall_eq_list_value"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    const/4 v1, 0x4

    goto :goto_1

    .line 141
    .end local v2           #hearingDirection:I
    :cond_6
    iget-object v6, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 148
    :cond_7
    iget-object v5, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_3
.end method
