.class public Lcom/android/phone/callsettings/AutoRejectPreference;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "AutoRejectPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    }
.end annotation


# instance fields
.field private mAutoRejectMaxCount:I

.field private mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

.field private mListIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    .line 61
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/AutoRejectPreference;)[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/AutoRejectPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/AutoRejectPreference;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectPreference;->getValueFromIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/AutoRejectPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/AutoRejectPreference;->setAutoRejectMode(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/AutoRejectPreference;Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectPreference;->updateSummary(Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V

    return-void
.end method

.method private getAutoRejectMode(Ljava/lang/String;)I
    .locals 5
    .parameter "modeName"

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, autoRejectMode:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 139
    .local v2, prefs:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iget v4, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 141
    .local v1, isOn:Z
    if-nez v1, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, p1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getAutoRejectModeInfo(I)Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    .locals 2
    .parameter "mode"

    .prologue
    .line 100
    new-instance v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;-><init>(Lcom/android/phone/callsettings/AutoRejectPreference;Lcom/android/phone/callsettings/AutoRejectPreference$1;)V

    .line 101
    .local v0, modeInfo:Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    packed-switch p1, :pswitch_data_0

    .line 119
    :goto_0
    return-object v0

    .line 103
    :pswitch_0
    const-string v1, "autoreject_mode_preference_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    .line 104
    const-string v1, "autoreject_mode"

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    .line 105
    const-string v1, "autoreject_mode_enable_sharedpref"

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    .line 106
    iget-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 110
    :pswitch_1
    const-string v1, "autoreject_mode_preference_outgoing_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    .line 111
    const-string v1, "autoreject_outgoingcall_mode"

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    .line 112
    const-string v1, "autoreject_outgoingcall_mode_enable_sharedpref"

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    .line 113
    iget-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIndexFromValue(Ljava/lang/String;)I
    .locals 3
    .parameter "modeName"

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, index:I
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectPreference;->getAutoRejectMode(Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, current:I
    if-nez v0, :cond_1

    .line 185
    const/4 v1, 0x0

    .line 191
    :cond_0
    :goto_0
    return v1

    .line 186
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 187
    const/4 v1, 0x1

    goto :goto_0

    .line 188
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 189
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private getValueFromIndex(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 195
    const/4 v0, 0x2

    .line 196
    .local v0, value:I
    if-nez p1, :cond_1

    .line 197
    const/4 v0, 0x0

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 199
    const/4 v0, 0x1

    goto :goto_0

    .line 200
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 201
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 279
    const-string v0, "AutoRejectPreference"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method

.method private makeAutoRejectDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 207
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->getIndexFromValue(Ljava/lang/String;)I

    move-result v1

    .line 208
    .local v1, currentIndex:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0902ca

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090024

    new-instance v4, Lcom/android/phone/callsettings/AutoRejectPreference$2;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/AutoRejectPreference$2;-><init>(Lcom/android/phone/callsettings/AutoRejectPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080008

    new-instance v4, Lcom/android/phone/callsettings/AutoRejectPreference$1;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/AutoRejectPreference$1;-><init>(Lcom/android/phone/callsettings/AutoRejectPreference;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 232
    .local v0, autorejectDialog:Landroid/app/Dialog;
    return-object v0
.end method

.method private setAutoRejectMode(Ljava/lang/String;I)V
    .locals 4
    .parameter "rejectMode"
    .parameter "mode"

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 152
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 159
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    return-void

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private updateSummary(Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V
    .locals 6
    .parameter "rejectModeInfo"

    .prologue
    const/4 v5, 0x1

    .line 163
    const v3, 0x7f0902c1

    .line 164
    .local v3, res_id:I
    iget-object v4, p1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/AutoRejectPreference;->getAutoRejectMode(Ljava/lang/String;)I

    move-result v0

    .line 166
    .local v0, autorejectMode:I
    if-ne v0, v5, :cond_2

    .line 167
    const v3, 0x7f0902c0

    .line 171
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 172
    .local v2, prefs:Landroid/content/SharedPreferences;
    iget-object v4, p1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 174
    .local v1, isOn:Z
    if-nez v1, :cond_1

    .line 175
    const v3, 0x7f0902ad

    .line 177
    :cond_1
    iget-object v4, p1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/callsettings/AutoRejectBootReceiver;->updateAutoRejectNotification(Landroid/content/Context;)V

    .line 179
    return-void

    .line 168
    .end local v1           #isOn:Z
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 169
    const v3, 0x7f0902c1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 79
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const-string v1, "auto_reject_outgoingcall"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const v1, 0x7f060005

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->addPreferencesFromResource(I)V

    .line 83
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    new-array v1, v1, [Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    .line 84
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/AutoRejectPreference;->getAutoRejectModeInfo(I)Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    move-result-object v2

    aput-object v2, v1, v3

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/AutoRejectPreference;->getAutoRejectModeInfo(I)Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    move-result-object v2

    aput-object v2, v1, v4

    .line 92
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 93
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 97
    :cond_0
    return-void

    .line 86
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_1
    iput v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    .line 87
    const v1, 0x7f060004

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->addPreferencesFromResource(I)V

    .line 88
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    new-array v1, v1, [Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 236
    packed-switch p1, :pswitch_data_0

    .line 240
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 238
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->makeAutoRejectDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 260
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 261
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getActivity()Landroid/app/Activity;

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

    .line 266
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 267
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 270
    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/AutoRejectPreference;->startActivity(Landroid/content/Intent;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->finish()V

    .line 273
    const/4 v2, 0x1

    .line 275
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/AutoRejectPreference;->log(Ljava/lang/String;)V

    .line 71
    const-string v0, "ims_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autoreject_mode_for_volte"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    :cond_0
    return v1

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, index:I
    :goto_0
    iget v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    if-ge v0, v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    if-ne v2, p2, :cond_1

    .line 250
    :cond_0
    iget v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    if-eq v0, v2, :cond_2

    .line 251
    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    .line 252
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->showDialog(I)V

    .line 256
    :goto_1
    return v1

    .line 245
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 124
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 126
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    .local v0, arr$:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 127
    .local v2, info:Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->updateSummary(Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v2           #info:Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    :cond_0
    return-void
.end method
