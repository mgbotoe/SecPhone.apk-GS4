.class public Lcom/android/phone/callsettings/CallTypeSelectForBarring;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallTypeSelectForBarring.java"


# static fields
.field public static mSimId:I


# instance fields
.field private mVideoCall:Landroid/preference/PreferenceScreen;

.field private mVoiceCall:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 56
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const-string v3, "feature_chn_duos_gsm_gsm"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "feature_marvell_dsds"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "sec_product_feature_common_dsds_support"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 62
    .local v1, arg:Landroid/os/Bundle;
    if-eqz v1, :cond_6

    .line 63
    const-string v3, "CallSettingTab"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mSimId:I

    .line 64
    const-string v3, "CallTypeSelectForBarring"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSimId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    const-string v3, "CallTypeSelectForBarring"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSimId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v1           #arg:Landroid/os/Bundle;
    :cond_2
    const v3, 0x7f06000b

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->addPreferencesFromResource(I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 73
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const-string v3, "button_voicecall"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mVoiceCall:Landroid/preference/PreferenceScreen;

    .line 74
    const-string v3, "button_videocall"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mVideoCall:Landroid/preference/PreferenceScreen;

    .line 76
    iget-object v3, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mVideoCall:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_4

    const-string v3, "video_call_disable"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "feature_chn_duos_gsm_gsm"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget v3, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mSimId:I

    if-ne v3, v6, :cond_4

    .line 78
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mVideoCall:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 80
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 81
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_5

    .line 83
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 85
    :cond_5
    return-void

    .line 66
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v2           #prefSet:Landroid/preference/PreferenceScreen;
    .restart local v1       #arg:Landroid/os/Bundle;
    :cond_6
    sget v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    sput v3, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mSimId:I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 119
    .local v0, itemId:I
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method
