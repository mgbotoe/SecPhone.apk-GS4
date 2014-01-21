.class public Lcom/android/phone/callsettings/AccessorySettings;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "AccessorySettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private fromSettingSearch:Z

.field private mAnsweringTimeList:Landroid/preference/ListPreference;

.field private mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field prefSet:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/AccessorySettings;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AccessorySettings;->updateAutoAnswerMemo(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/AccessorySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private confirmSelectionDialog(Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "prefs"

    .prologue
    .line 218
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 219
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 220
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090309

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 221
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0908f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 222
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/callsettings/AccessorySettings$1;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/callsettings/AccessorySettings$1;-><init>(Lcom/android/phone/callsettings/AccessorySettings;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 228
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/callsettings/AccessorySettings$2;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/AccessorySettings$2;-><init>(Lcom/android/phone/callsettings/AccessorySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 239
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 240
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 300
    const-string v0, "EarsetSettings"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void
.end method

.method private setSystemSettingsForAutoAnswer(Z)V
    .locals 3
    .parameter "isChecked"

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "answeringmode_auto_mode"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 247
    return-void

    .line 246
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAutoAnswerMemo(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "prefs"

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "callsettings_answer_memo"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->onGoingAnswerMemo(Z)V

    .line 206
    return-void
.end method


# virtual methods
.method public autoAnsweringInit()V
    .locals 9

    .prologue
    .line 133
    iget-object v6, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_0

    .line 134
    sget-boolean v6, Lcom/android/phone/callsettings/AccessorySettings;->mOpenDetailMenu:Z

    if-eqz v6, :cond_2

    sget v6, Lcom/android/phone/callsettings/AccessorySettings;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    sget-object v6, Lcom/android/phone/callsettings/AccessorySettings;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/phone/callsettings/AccessorySettings;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v7, "automatic_answer_preference"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 135
    iget-object v6, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    sget-boolean v7, Lcom/android/phone/callsettings/AccessorySettings;->mCheckValue:Z

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 136
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/phone/callsettings/AccessorySettings;->fromSettingSearch:Z

    .line 145
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "answeringmode_auto_time"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 149
    .local v3, waitingTime:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080044

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, waitingTimeValue:[Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, waitingTimeString:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_1

    .line 153
    aget-object v6, v5, v0

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 161
    :cond_1
    iget-object v6, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAnsweringTimeList:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 162
    return-void

    .line 138
    .end local v0           #i:I
    .end local v3           #waitingTime:I
    .end local v4           #waitingTimeString:Ljava/lang/String;
    .end local v5           #waitingTimeValue:[Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 139
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v6, "automatic_answering_enable_sharedpref"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 142
    .local v1, isOn:Z
    iget-object v6, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 156
    .end local v1           #isOn:Z
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    .restart local v0       #i:I
    .restart local v3       #waitingTime:I
    .restart local v4       #waitingTimeString:Ljava/lang/String;
    .restart local v5       #waitingTimeValue:[Ljava/lang/String;
    :cond_3
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_4

    .line 157
    const/4 v3, 0x2

    .line 158
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "answeringmode_auto_time"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const/high16 v1, 0x7f06

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AccessorySettings;->addPreferencesFromResource(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/AccessorySettings;->prefSet:Landroid/preference/PreferenceScreen;

    .line 78
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/AccessorySettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 79
    const-string v1, "automatic_answer_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AccessorySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    .line 80
    const-string v1, "automatic_answer_timer_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AccessorySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAnsweringTimeList:Landroid/preference/ListPreference;

    .line 83
    const-string v1, "sec_ap_vtonly"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "feature_cpvolte_qc"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/phone/callsettings/AccessorySettings;->prefSet:Landroid/preference/PreferenceScreen;

    const-string v2, "callsettings_bt_type"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/AccessorySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 90
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 92
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 94
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 282
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 296
    .local v0, itemId:I
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    .line 117
    iget-object v0, p0, Lcom/android/phone/callsettings/AccessorySettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 118
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x2

    .line 173
    iget-object v4, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 175
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 176
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "automatic_answering_enable_sharedpref"

    iget-object v5, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    const-string v4, "automatic_answering_enable_sharedpref"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 183
    .local v2, isChecked:Z
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "callsettings_answer_memo"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 184
    .local v0, ansMemo:I
    if-eqz v2, :cond_0

    if-eq v0, v6, :cond_0

    .line 185
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/AccessorySettings;->confirmSelectionDialog(Landroid/content/SharedPreferences;)V

    .line 190
    .end local v0           #ansMemo:I
    .end local v2           #isChecked:Z
    :cond_0
    const-string v4, "ims_volte"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "set_system_setting_for_auto_answer"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 191
    :cond_1
    iget-object v4, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/AccessorySettings;->setSystemSettingsForAutoAnswer(Z)V

    .line 194
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    iput-boolean v2, p0, Lcom/android/phone/callsettings/AccessorySettings;->fromSettingSearch:Z

    .line 100
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->outgoingBTInit()V

    .line 101
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->autoAnsweringInit()V

    .line 102
    iget-object v0, p0, Lcom/android/phone/callsettings/AccessorySettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 103
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 105
    iget-boolean v0, p0, Lcom/android/phone/callsettings/AccessorySettings;->fromSettingSearch:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/callsettings/AccessorySettings;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/phone/callsettings/AccessorySettings;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is called by SettingSearch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/AccessorySettings;->log(Ljava/lang/String;)V

    .line 107
    sput-boolean v2, Lcom/android/phone/callsettings/AccessorySettings;->mOpenDetailMenu:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/phone/callsettings/AccessorySettings;->fromSettingSearch:Z

    .line 109
    sget-object v0, Lcom/android/phone/callsettings/AccessorySettings;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v1, "automatic_answer_preference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/phone/callsettings/AccessorySettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/callsettings/AccessorySettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 113
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 251
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSharedPreferenceChanged : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/AccessorySettings;->log(Ljava/lang/String;)V

    .line 253
    const-string v6, "callsettings_bt_condition"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 254
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, outgoing_condition_index:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 257
    .local v2, outgoing_condition:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bluetooth_headset_call_condition"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    const v6, 0x7f08000f

    invoke-virtual {p0, p2, v6, v2}, Lcom/android/phone/callsettings/AccessorySettings;->updateBTSummary(Ljava/lang/String;II)V

    .line 263
    .end local v2           #outgoing_condition:I
    .end local v3           #outgoing_condition_index:Ljava/lang/String;
    :cond_0
    const-string v6, "callsettings_bt_type"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 264
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, outgoing_type_index:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 267
    .local v4, outgoing_type:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bluetooth_headset_call_type"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 269
    const v6, 0x7f080010

    invoke-virtual {p0, p2, v6, v4}, Lcom/android/phone/callsettings/AccessorySettings;->updateBTSummary(Ljava/lang/String;II)V

    .line 273
    .end local v4           #outgoing_type:I
    .end local v5           #outgoing_type_index:Ljava/lang/String;
    :cond_1
    const-string v6, "automatic_answer_timer_preference"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 274
    const/4 v6, 0x0

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, auto_time_index:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 276
    .local v0, auto_time:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "answeringmode_auto_time"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    .end local v0           #auto_time:I
    .end local v1           #auto_time_index:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public outgoingBTInit()V
    .locals 5

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_headset_call_condition"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 123
    .local v0, btCondition:I
    const-string v2, "callsettings_bt_condition"

    const v3, 0x7f08000f

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/phone/callsettings/AccessorySettings;->updateBTSummary(Ljava/lang/String;II)V

    .line 125
    iget-object v2, p0, Lcom/android/phone/callsettings/AccessorySettings;->prefSet:Landroid/preference/PreferenceScreen;

    const-string v3, "callsettings_bt_type"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_headset_call_type"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 128
    .local v1, btType:I
    const-string v2, "callsettings_bt_type"

    const v3, 0x7f080010

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/phone/callsettings/AccessorySettings;->updateBTSummary(Ljava/lang/String;II)V

    .line 130
    .end local v1           #btType:I
    :cond_0
    return-void
.end method

.method public updateBTSummary(Ljava/lang/String;II)V
    .locals 3
    .parameter "key"
    .parameter "stringArray"
    .parameter "index"

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, summaryString:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/AccessorySettings;->prefSet:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 167
    .local v0, options:Landroid/preference/Preference;
    aget-object v2, v1, p3

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method
