.class public Lcom/android/phone/callsettings/UsCdmaCallForwarding;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "UsCdmaCallForwarding.java"


# instance fields
.field private mActivatePreferences:Landroid/preference/PreferenceScreen;

.field private mDeactivatePreferences:Landroid/preference/PreferenceScreen;

.field private mNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/UsCdmaCallForwarding;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/UsCdmaCallForwarding;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/callsettings/UsCdmaCallForwarding;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 176
    const-string v0, "UsCdmaCallForwarding"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 177
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 63
    const-string v1, "onCreate"

    invoke-direct {p0, v1, v3}, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->log(Ljava/lang/String;Z)V

    .line 64
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v1, 0x7f060044

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->addPreferencesFromResource(I)V

    .line 67
    const-string v1, "us_cdma_call_forwarding_activate_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->mActivatePreferences:Landroid/preference/PreferenceScreen;

    .line 68
    const-string v1, "us_cdma_call_forwarding_deactivate_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->mDeactivatePreferences:Landroid/preference/PreferenceScreen;

    .line 70
    iget-object v1, p0, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->mActivatePreferences:Landroid/preference/PreferenceScreen;

    new-instance v2, Lcom/android/phone/callsettings/UsCdmaCallForwarding$1;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/UsCdmaCallForwarding$1;-><init>(Lcom/android/phone/callsettings/UsCdmaCallForwarding;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 77
    iget-object v1, p0, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->mDeactivatePreferences:Landroid/preference/PreferenceScreen;

    new-instance v2, Lcom/android/phone/callsettings/UsCdmaCallForwarding$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/UsCdmaCallForwarding$2;-><init>(Lcom/android/phone/callsettings/UsCdmaCallForwarding;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 90
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 94
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const/high16 v8, 0x104

    const/4 v7, 0x1

    .line 110
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090681

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p0}, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090682

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v7

    .line 117
    .local v2, mEntries:[Ljava/lang/CharSequence;
    const v3, 0x7f090684

    .line 118
    .local v3, titleId:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateDialog id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->log(Ljava/lang/String;Z)V

    .line 119
    packed-switch p1, :pswitch_data_0

    .line 165
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 168
    .local v1, dialog:Landroid/app/AlertDialog;
    return-object v1

    .line 121
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :pswitch_0
    const v3, 0x7f090680

    .line 122
    new-instance v4, Lcom/android/phone/callsettings/UsCdmaCallForwarding$4;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/UsCdmaCallForwarding$4;-><init>(Lcom/android/phone/callsettings/UsCdmaCallForwarding;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/callsettings/UsCdmaCallForwarding$3;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/UsCdmaCallForwarding$3;-><init>(Lcom/android/phone/callsettings/UsCdmaCallForwarding;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 144
    :pswitch_1
    const v3, 0x7f090680

    .line 145
    new-instance v4, Lcom/android/phone/callsettings/UsCdmaCallForwarding$6;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/UsCdmaCallForwarding$6;-><init>(Lcom/android/phone/callsettings/UsCdmaCallForwarding;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/callsettings/UsCdmaCallForwarding$5;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/UsCdmaCallForwarding$5;-><init>(Lcom/android/phone/callsettings/UsCdmaCallForwarding;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "onPause"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->log(Ljava/lang/String;Z)V

    .line 105
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    .line 106
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "onResume"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->log(Ljava/lang/String;Z)V

    .line 99
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 100
    return-void
.end method
