.class public Lcom/android/phone/callsettings/SoundSettingFragment;
.super Lcom/android/phone/CallFeaturesSetting;
.source "SoundSettingFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;-><init>()V

    return-void
.end method


# virtual methods
.method protected initializeSettings()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SoundSettingFragment;->initGeneralSetting(Z)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/SoundSettingFragment;->initSoundSetting(Z)V

    .line 35
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SoundSettingFragment;->initVideoSetting(Z)V

    .line 36
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SoundSettingFragment;->initVoicemailSetting(Z)V

    .line 37
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SoundSettingFragment;->initVoipSetting(Z)V

    .line 38
    return-void
.end method
