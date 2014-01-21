.class public Lcom/android/phone/RoamingSettings;
.super Landroid/preference/PreferenceActivity;
.source "RoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RoamingSettings$RoamHandler;
    }
.end annotation


# instance fields
.field private mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field private mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamHandler:Lcom/android/phone/RoamingSettings$RoamHandler;

.field private mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 504
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/RoamingSettings;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/RoamingSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/RoamingSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/RoamingSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/phone/RoamingSettings;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-static {p0}, Lcom/android/phone/RoamingSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/RoamingSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private domesticCdmaDataRoamingSettingTreeClick()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    const-string v0, "RoamingSettings"

    const-string v1, "domesticCdmaDataRoamingSettingTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090475

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901e0

    new-instance v2, Lcom/android/phone/RoamingSettings$4;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$4;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901e1

    new-instance v2, Lcom/android/phone/RoamingSettings$3;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$3;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 182
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    :cond_2
    const-string v0, "domestic_cdma_data_roaming_setting_extra"

    invoke-direct {p0, v0}, Lcom/android/phone/RoamingSettings;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_3
    invoke-direct {p0, v2, v4}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    .line 199
    :cond_4
    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 200
    invoke-direct {p0, v4, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 201
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V

    .line 203
    :cond_5
    invoke-direct {p0, v2, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 204
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private domesticCdmaVoiceRoamingSettingTreeClick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    const-string v0, "RoamingSettings"

    const-string v1, "domesticCdmaVoiceRoamingSettingTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090474

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901e0

    new-instance v2, Lcom/android/phone/RoamingSettings$2;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$2;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901e1

    new-instance v2, Lcom/android/phone/RoamingSettings$1;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$1;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 139
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 142
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V

    .line 143
    const/4 v0, 0x2

    invoke-direct {p0, v0, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 144
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private internationalCdmaDataRoamingSettingTreeClick()V
    .locals 5

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 243
    const-string v0, "RoamingSettings"

    const-string v1, "internationalCdmaDataRoamingSettingTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090476

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901e0

    new-instance v2, Lcom/android/phone/RoamingSettings$8;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$8;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901e1

    new-instance v2, Lcom/android/phone/RoamingSettings$7;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$7;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 275
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    :cond_2
    const-string v0, "international_cdma_data_roaming_setting_extra"

    invoke-direct {p0, v0}, Lcom/android/phone/RoamingSettings;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_3
    invoke-direct {p0, v2, v4}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    .line 292
    :cond_4
    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 293
    const/4 v0, 0x3

    invoke-direct {p0, v0, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 294
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V

    .line 296
    :cond_5
    invoke-direct {p0, v2, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 297
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private internationalCdmaVoiceRoamingSettingTreeClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 210
    const-string v0, "RoamingSettings"

    const-string v1, "internationalCdmaVoiceRoamingSettingTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090474

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901e0

    new-instance v2, Lcom/android/phone/RoamingSettings$6;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$6;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901e1

    new-instance v2, Lcom/android/phone/RoamingSettings$5;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$5;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 231
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 234
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V

    .line 235
    const/4 v0, 0x4

    invoke-direct {p0, v0, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 236
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private internationalGsmDataRoamingSettingTreeClick()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 306
    const-string v0, "RoamingSettings"

    const-string v1, "internationalGsmDataRoamingSettingTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "international_gsm_data_roaming_setting_extra"

    invoke-direct {p0, v0}, Lcom/android/phone/RoamingSettings;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V

    .line 316
    :goto_0
    return-void

    .line 311
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    .line 314
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    goto :goto_0
.end method

.method private internationalGsmVoiceRoamingSettingTreeClick()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 634
    const-string v0, "RoamingSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-void
.end method

.method private sendDataRoamingGuardBroadcast(Ljava/lang/String;)V
    .locals 2
    .parameter "dataRoamingSettingsExtra"

    .prologue
    .line 376
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_DIALOG_DATA_ROAMING_GUARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, broadcastIntent:Landroid/content/Intent;
    const-string v1, "roaming_setting_guard_data_only"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    const-string v1, "data_roaming_settings_extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 382
    return-void
.end method

.method private setCdmaRoaming()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 607
    const-string v3, "roam_setting_call_domestic"

    invoke-static {v3, v4}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 608
    .local v0, domesticRoamCall:Z
    const-string v3, "roam_setting_call_international"

    invoke-static {v3, v4}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    .line 612
    .local v1, internationalRoamCall:Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 613
    const/4 v2, 0x5

    .line 622
    .local v2, statusCdmaRoamingMode:I
    :goto_0
    const-string v3, "RoamingSettings"

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

    .line 623
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/RoamingSettings;->mRoamHandler:Lcom/android/phone/RoamingSettings$RoamHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/phone/RoamingSettings$RoamHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 624
    return-void

    .line 614
    .end local v2           #statusCdmaRoamingMode:I
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 615
    const/4 v2, 0x6

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_0

    .line 616
    .end local v2           #statusCdmaRoamingMode:I
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 617
    const/4 v2, 0x7

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_0

    .line 619
    .end local v2           #statusCdmaRoamingMode:I
    :cond_2
    const/16 v2, 0x8

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_0
.end method

.method private setCheckSecureSettingRoamValue(II)V
    .locals 3
    .parameter "keyType"
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 348
    packed-switch p1, :pswitch_data_0

    .line 373
    :goto_0
    :pswitch_0
    return-void

    .line 350
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-eqz p2, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 351
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 350
    goto :goto_1

    .line 355
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-eqz p2, :cond_1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 356
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 355
    goto :goto_2

    .line 360
    :pswitch_3
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-eqz p2, :cond_2

    :goto_3
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 361
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 360
    goto :goto_3

    .line 365
    :pswitch_4
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-eqz p2, :cond_3

    :goto_4
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 365
    goto :goto_4

    .line 369
    :pswitch_5
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-eqz p2, :cond_4

    :goto_5
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 370
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 369
    goto :goto_5

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private setPreferenceEnabledPhoneType()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 385
    const-string v2, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 389
    .local v1, settingsNetworkMode:I
    const/16 v2, 0xa

    if-ne v2, v1, :cond_1

    .line 390
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 391
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 392
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 393
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 394
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 395
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 413
    .end local v1           #settingsNetworkMode:I
    :cond_0
    :goto_0
    return-void

    .line 397
    .restart local v1       #settingsNetworkMode:I
    :cond_1
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 398
    .local v0, phoneType:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 399
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 400
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 401
    :cond_2
    if-eq v0, v5, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    .line 404
    :cond_3
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 405
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 406
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 407
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 409
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setSecureSettingRoamValue(II)V
    .locals 1
    .parameter "keyType"
    .parameter "value"

    .prologue
    .line 319
    packed-switch p1, :pswitch_data_0

    .line 345
    :goto_0
    :pswitch_0
    return-void

    .line 321
    :pswitch_1
    const-string v0, "roam_setting_call_domestic"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 322
    const-string v0, "roam_guard_call_domestic"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 326
    :pswitch_2
    const-string v0, "roam_setting_data_domestic"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 327
    const-string v0, "roam_guard_data_domestic"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 331
    :pswitch_3
    const-string v0, "roam_setting_call_international"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 332
    const-string v0, "roam_guard_call_international"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 336
    :pswitch_4
    const-string v0, "roam_setting_data_international"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 337
    const-string v0, "roam_guard_data_international"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 341
    :pswitch_5
    const-string v0, "sprint_gsm_data_roaming"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 342
    const-string v0, "sprint_gsm_data_guard"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 627
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 628
    const-string v0, "RoamingSettings"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 630
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setPreferenceEnabledPhoneType()V

    .line 631
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 417
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 418
    const-string v1, "RoamingSettings"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const v1, 0x7f06003b

    invoke-virtual {p0, v1}, Lcom/android/phone/RoamingSettings;->addPreferencesFromResource(I)V

    .line 422
    invoke-virtual {p0}, Lcom/android/phone/RoamingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 424
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    new-instance v1, Lcom/android/phone/RoamingSettings$RoamHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/RoamingSettings$RoamHandler;-><init>(Lcom/android/phone/RoamingSettings;Lcom/android/phone/RoamingSettings$1;)V

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mRoamHandler:Lcom/android/phone/RoamingSettings$RoamHandler;

    .line 426
    const-string v1, "domestic_cdma_voice_roaming_settings_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    .line 427
    const-string v1, "domestic_cdma_data_roaming_settings_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    .line 428
    const-string v1, "international_cdma_voice_roaming_settings_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    .line 429
    const-string v1, "international_cdma_data_roaming_settings_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    .line 430
    const-string v1, "international_gsm_voice_roaming_settings_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    .line 431
    const-string v1, "international_gsm_data_roaming_settings_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    .line 433
    const-string v1, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 435
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 436
    const-string v1, "international_gsm_category_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 443
    :goto_0
    const-string v1, "roaming_setting_guard_data_only"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 445
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 447
    :cond_0
    return-void

    .line 438
    :cond_1
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 439
    const-string v1, "domestic_cdma_category_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f09072f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 440
    const-string v1, "international_cdma_category_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f090731

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 99
    const-string v0, "RoamingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 102
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->domesticCdmaVoiceRoamingSettingTreeClick()V

    .line 114
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 104
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->domesticCdmaDataRoamingSettingTreeClick()V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 106
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->internationalCdmaVoiceRoamingSettingTreeClick()V

    goto :goto_0

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 108
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->internationalCdmaDataRoamingSettingTreeClick()V

    goto :goto_0

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 110
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->internationalGsmVoiceRoamingSettingTreeClick()V

    goto :goto_0

    .line 111
    :cond_5
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->internationalGsmDataRoamingSettingTreeClick()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 451
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 452
    const-string v0, "RoamingSettings"

    const-string v3, "onResume"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 456
    invoke-virtual {p0}, Lcom/android/phone/RoamingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 459
    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/phone/RoamingSettings;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 460
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 464
    const-string v0, "RoamingSettings"

    const-string v3, "MDM: Roaming Data is disabled"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 466
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 467
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 468
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 470
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 471
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 472
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 485
    :goto_0
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v2, "sprint_gsm_voice_roaming"

    invoke-static {v2, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 486
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v2, "sprint_gsm_data_roaming"

    invoke-static {v2, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 488
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setPreferenceEnabledPhoneType()V

    .line 489
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_setting_data_domestic"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 476
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v0, "roam_setting_data_domestic_forced"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 477
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_setting_data_international"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 478
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v0, "roam_setting_data_international_forced"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 479
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_setting_call_domestic"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 480
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v0, "roam_setting_call_domestic_forced"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 481
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_setting_call_international"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 482
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_setting_call_international_forced"

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 476
    goto :goto_1

    :cond_4
    move v0, v2

    .line 478
    goto :goto_2

    :cond_5
    move v0, v2

    .line 480
    goto :goto_3
.end method
