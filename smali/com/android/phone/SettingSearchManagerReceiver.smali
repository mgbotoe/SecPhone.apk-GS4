.class public Lcom/android/phone/SettingSearchManagerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingSearchManagerReceiver.java"


# static fields
.field private static final SETTINGINFO_URI:Landroid/net/Uri;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field values:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "content://com.sec.providers.settingsearch/searchinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/SettingSearchManagerReceiver;->SETTINGINFO_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    const-string v0, "SettingSearchManagerReceiver"

    iput-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    return-void
.end method

.method private addSearchInfoDB()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    const-string v0, "SettingSearchManagerReceiver"

    const-string v1, "addSearchInfoDB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB_NetworkSettings()V

    .line 89
    invoke-direct {p0, v2}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB_GeneralSettings(Z)V

    .line 90
    invoke-direct {p0, v2}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB_SoundSettings(Z)V

    .line 91
    invoke-direct {p0, v2}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB_VideoSettings(Z)V

    .line 92
    invoke-direct {p0, v2}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB_VoicemailSettings(Z)V

    .line 93
    invoke-direct {p0, v2}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB_SipSettings(Z)V

    .line 94
    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB_SubMenus()V

    .line 96
    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB_MenusExceptOPEN()V

    .line 98
    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->endInsert()V

    .line 99
    return-void
.end method

.method private addSearchInfoDB_GeneralSettings(Z)V
    .locals 5
    .parameter "isTablet"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 194
    if-eqz p1, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v1, "parentskey"

    const-string v2, "general_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_0
    const-string v0, "button_call_rejection_key"

    const v1, 0x7f0902be

    const v2, 0x7f0902bf

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 205
    const-string v0, "reject_message_preference"

    const v1, 0x7f0902db

    const v2, 0x7f0902dc

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 208
    const-string v0, "call_answer_preference"

    const v1, 0x7f0902eb

    const v2, 0x7f0902ec

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 211
    const-string v0, "no_receiver_in_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "no_proximity_sensor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    const-string v0, "proximity_sensor_preference"

    const v1, 0x7f09031e

    const v2, 0x7f09031f

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 216
    :cond_0
    const-string v0, "call_alert_preference"

    const v1, 0x7f0902e4

    const v2, 0x7f0902e5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 219
    const-string v0, "support_incomingcall_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    const-string v0, "call_popup_preference"

    const v1, 0x7f0902e9

    const v2, 0x7f0902ea

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 224
    :cond_1
    const-string v0, "callsettings_accessory"

    const v1, 0x7f0902fe

    const v2, 0x7f0902ff

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 227
    const-string v0, "button_more_expand_key"

    const v1, 0x7f09004e

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 229
    return-void

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v1, "parentskey"

    const-string v2, "Call settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addSearchInfoDB_MenusExceptOPEN()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 429
    iget-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v1, "parentskey"

    const-string v2, "Call settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v0, "tty_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const-string v0, "button_tty_mode_key"

    const v1, 0x7f090137

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 435
    :cond_0
    const-string v0, "hac_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    const-string v0, "button_hac_key"

    const v1, 0x7f0901c3

    const v2, 0x7f0901c4

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 440
    :cond_1
    const-string v0, "restrict_international_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    const-string v0, "toggle_internationalcall"

    const v1, 0x7f090371

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 445
    :cond_2
    const-string v0, "international_call_service"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    const-string v0, "intcallservice_preference"

    const v1, 0x7f0907bd

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 450
    :cond_3
    const-string v0, "block_data_during_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 451
    const-string v0, "voicecall_protection_preference"

    const v1, 0x7f09068f

    const v2, 0x7f090690

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 455
    :cond_4
    const-string v0, "instant_lettering"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 456
    const-string v0, "volte_instant_lettering_preference"

    const v1, 0x7f09075c

    const v2, 0x7f09075d

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 460
    :cond_5
    const-string v0, "ims_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, "sec_ap_vtonly"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 463
    const-string v0, "voicecall_type"

    const v1, 0x7f09074d

    const v2, 0x7f09074e

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 464
    const-string v0, "volte_noti_preference"

    const v1, 0x7f090758

    const v2, 0x7f090759

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 468
    :cond_7
    const-string v0, "hd_voice_network_prefer"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 469
    const-string v0, "kt_hd_voice_setting_preference"

    const v1, 0x7f090745

    const v2, 0x7f090746

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 473
    :cond_8
    const-string v0, "one_line_greeting"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 474
    const-string v0, "kt_oneline_greeting"

    const v1, 0x7f09074b

    const v2, 0x7f09074c

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 478
    :cond_9
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 479
    const-string v0, "button_kt_additional_service"

    const v1, 0x7f0905e0

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 484
    :cond_a
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 486
    const-string v0, "preset_image"

    const v1, 0x7f090286

    const v2, 0x7f090291

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 489
    const-string v0, "toggle_videocall"

    const v1, 0x7f0904ec

    const v2, 0x7f0904ed

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 492
    const-string v0, "capture_imageviwer_preference"

    const v1, 0x7f0904ee

    const v2, 0x7f0904ef

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 495
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 496
    const-string v0, "videocall_message"

    const v1, 0x7f0904f5

    const v2, 0x7f0904f6

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 500
    :cond_b
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 501
    :cond_c
    const-string v0, "toggle_videocall_speaker"

    const v1, 0x7f0904f7

    const v2, 0x7f0904f8

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 507
    :cond_d
    const-string v0, "hd_voice_network_prefer"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 508
    iget-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v1, "parentskey"

    const-string v2, "kt_hd_voice_setting_preference"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v0, "kt_hd_voice"

    const v1, 0x7f090747

    const v2, 0x7f090748

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 514
    const-string v0, "kt_hd_voice_lte_pref"

    const v1, 0x7f090749

    const v2, 0x7f09074a

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 519
    :cond_e
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 520
    iget-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v1, "parentskey"

    const-string v2, "button_kt_additional_service"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v0, "inbox_preference"

    const v1, 0x7f0905e1

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 526
    const-string v0, "callforwarding_conditional_preference"

    const v1, 0x7f0905e2

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 529
    const-string v0, "callforwarding_all_preference"

    const v1, 0x7f0905e3

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 532
    const-string v0, "callwaiting_preference"

    const v1, 0x7f0905e4

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 537
    :cond_f
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 538
    iget-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v1, "parentskey"

    const-string v2, "inbox_preference"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v0, "voicemail_preference"

    const v1, 0x7f090613

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 544
    const-string v0, "videomail_preference"

    const v1, 0x7f090614

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 547
    :cond_10
    return-void
.end method

.method private addSearchInfoDB_NetworkSettings()V
    .locals 8

    .prologue
    const v7, 0x7f090098

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 139
    iget-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v1, "parentskey"

    const-string v2, "mobile_network_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    const-string v0, "button_data_enabled_key"

    const v1, 0x7f09090d

    const v2, 0x7f09090e

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 149
    :goto_0
    const-string v0, "setting_search_vzw"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 150
    const-string v0, "global_data_roaming_access_key"

    const v1, 0x7f0906ae

    const v2, 0x7f0906b0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 158
    :goto_1
    const-string v0, "button_apn_key"

    const v1, 0x7f090048

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 161
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 162
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "button_prefer_networkmode_key"

    const v1, 0x7f090909

    const v2, 0x7f09090a

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 174
    :cond_0
    :goto_2
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 175
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    const-string v0, "button_carrier_sel_key"

    const v1, 0x7f09090b

    const v2, 0x7f09090c

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 183
    :cond_1
    :goto_3
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    const-string v0, "button_prefer_networkmode_key"

    const v1, 0x7f09090f

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 188
    :cond_2
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    const-string v0, "button_prefer_networkmode_key"

    const v1, 0x7f090049

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 191
    :cond_3
    return-void

    .line 145
    :cond_4
    const-string v0, "button_data_enabled_key"

    const v1, 0x7f0904e1

    const v2, 0x7f0900ad

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto :goto_0

    .line 151
    :cond_5
    const-string v0, "national_roaming_mode_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 152
    const-string v0, "button_roaming_key"

    const v1, 0x7f0900ae

    const v2, 0x7f0900af

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto :goto_1

    .line 154
    :cond_6
    const-string v0, "button_roaming_key"

    const v1, 0x7f0900ae

    const v2, 0x7f0900af

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_1

    .line 165
    :cond_7
    const-string v0, "setting_search_vzw"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "network_mode_automatic_cdma_lte_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "network_mode_cdma_lte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 168
    :cond_8
    const-string v0, "preferred_network_mode_key"

    invoke-direct {p0, v0, v7, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_2

    .line 170
    :cond_9
    const-string v0, "button_prefer_networkmode_key"

    invoke-direct {p0, v0, v7, v4, v6}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_2

    .line 179
    :cond_a
    const-string v0, "button_carrier_sel_key"

    const v1, 0x7f09004c

    const v2, 0x7f090093

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto :goto_3
.end method

.method private addSearchInfoDB_SipSettings(Z)V
    .locals 4
    .parameter "isTablet"

    .prologue
    const/4 v3, -0x1

    .line 302
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 305
    :cond_0
    if-eqz p1, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v1, "parentskey"

    const-string v2, "sip_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :goto_1
    const-string v0, "sip_account_settings_key"

    const v1, 0x7f0901f3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 316
    const-string v0, "sip_call_options_key"

    const v1, 0x7f0901f6

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v1, "parentskey"

    const-string v2, "Call settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private addSearchInfoDB_SoundSettings(Z)V
    .locals 5
    .parameter "isTablet"

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    .line 232
    if-eqz p1, :cond_4

    .line 233
    iget-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v1, "parentskey"

    const-string v2, "sound_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :goto_0
    const-string v0, "button_ringtone_keytone_key"

    const v1, 0x7f09027d

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 243
    iget-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    :cond_0
    const-string v0, "callsettings_incallsound_eqlist_pref"

    const v1, 0x7f090833

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    const-string v0, "button_noise_reduction_key"

    const v1, 0x7f090516

    const v2, 0x7f090517

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 253
    :cond_2
    const-string v0, "extra_ringer"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    const-string v0, "extra_ringtone_preference"

    const v1, 0x7f090322

    const v2, 0x7f090323

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 257
    :cond_3
    return-void

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v1, "parentskey"

    const-string v2, "Call settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addSearchInfoDB_SubMenus()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, -0x1

    const/4 v6, 0x2

    .line 322
    iget-object v2, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v3, "parentskey"

    const-string v4, "button_call_rejection_key"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v2, "autoreject_mode_preference_key"

    const v3, 0x7f0902ca

    invoke-direct {p0, v2, v3, v7, v8}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 328
    const-string v2, "black_list_preference"

    const v3, 0x7f0902c8

    const v4, 0x7f0902c9

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 332
    iget-object v2, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v3, "parentskey"

    const-string v4, "call_answer_preference"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v2, "hw_home_key"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    const-string v2, "anykey_mode_preference"

    const v3, 0x7f0902ed

    const v4, 0x7f0902ee

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 340
    :cond_0
    const-string v2, "barge_in"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    .line 342
    .local v0, mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    iget-boolean v2, v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v2, :cond_1

    .line 343
    const-string v2, "voice_cmd_preference"

    const v3, 0x7f0902f4

    const v4, 0x7f0902f5

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 348
    .end local v0           #mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    :cond_1
    const-string v2, "powerkey_end_preference"

    const v3, 0x7f0902ef

    const v4, 0x7f0902f0

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 352
    iget-object v2, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v3, "parentskey"

    const-string v4, "call_alert_preference"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v2, "answer_vibration_preference"

    const v3, 0x7f090318

    const v4, 0x7f09031a

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 358
    const-string v2, "end_vibration_preference"

    const v3, 0x7f09031c

    const v4, 0x7f09031d

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 361
    const-string v2, "connect_tone_preference"

    const v3, 0x7f090314

    invoke-direct {p0, v2, v3, v7, v6}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 364
    const-string v2, "minute_minder_preference"

    const v3, 0x7f090315

    invoke-direct {p0, v2, v3, v7, v6}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 367
    const-string v2, "end_tone_preference"

    const v3, 0x7f090316

    invoke-direct {p0, v2, v3, v7, v6}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 370
    const-string v2, "alertoncall_preference"

    const v3, 0x7f0902e6

    const v4, 0x7f0902e7

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 374
    iget-object v2, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v3, "parentskey"

    const-string v4, "callsettings_accessory"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v2, "automatic_answer_preference"

    const v3, 0x7f090309

    const v4, 0x7f09030a

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 380
    const-string v2, "automatic_answer_timer_preference"

    const v3, 0x7f09030b

    const v4, 0x7f09030c

    invoke-direct {p0, v2, v3, v4, v8}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 383
    const-string v2, "callsettings_bt_condition"

    const v3, 0x7f090302

    const v4, 0x7f090306

    invoke-direct {p0, v2, v3, v4, v8}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 392
    iget-object v2, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v3, "parentskey"

    const-string v4, "button_ringtone_keytone_key"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v2, "callsettings_device_ringtone"

    const v3, 0x7f09027e

    invoke-direct {p0, v2, v3, v7, v8}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 398
    const-string v2, "callsettings_device_vibration"

    const v3, 0x7f09027f

    invoke-direct {p0, v2, v3, v7, v8}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 401
    iget-object v2, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 402
    .local v1, vibrator:Landroid/os/Vibrator;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 403
    const-string v2, "callsettings_vibrate_when_ringing"

    const v3, 0x7f090281

    invoke-direct {p0, v2, v3, v7, v6}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 407
    :cond_2
    const-string v2, "callsettings_keytones"

    const v3, 0x7f090282

    const v4, 0x7f090283

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 411
    iget-object v2, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v3, "parentskey"

    const-string v4, "button_voicemail_setting_key"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v2, "button_voicemail_key"

    const v3, 0x7f090181

    invoke-direct {p0, v2, v3, v7, v8}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 418
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 419
    iget-object v2, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v3, "parentskey"

    const-string v4, "sip_account_settings_key"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v2, "sip_receive_calls_key"

    const v3, 0x7f0901f4

    const v4, 0x7f0901f5

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 425
    :cond_3
    return-void
.end method

.method private addSearchInfoDB_VideoSettings(Z)V
    .locals 0
    .parameter "isTablet"

    .prologue
    .line 261
    return-void
.end method

.method private addSearchInfoDB_VoicemailSettings(Z)V
    .locals 5
    .parameter "isTablet"

    .prologue
    const/4 v4, 0x3

    const/4 v3, -0x1

    .line 280
    if-eqz p1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v1, "parentskey"

    const-string v2, "voicemail_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :goto_0
    const-string v0, "button_voicemail_provider_key"

    const v1, 0x7f0901e5

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 291
    const-string v0, "button_voicemail_setting_key"

    const v1, 0x7f0901e3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 294
    const-string v0, "button_voicemail_notification_ringtone_key"

    const v1, 0x7f090279

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 297
    const-string v0, "button_voicemail_notification_vibrate_key"

    const v1, 0x7f090277

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 299
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v1, "parentskey"

    const-string v2, "Call settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addSearchInfoDBforTablet()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 103
    const-string v0, "SettingSearchManagerReceiver"

    const-string v1, "addSearchInfoDB for Tablet"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB_NetworkSettings()V

    .line 108
    iget-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v1, "parentskey"

    const-string v2, "Call settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "general_settings"

    const v1, 0x7f09004d

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 114
    const-string v0, "sound_settings"

    const v1, 0x7f09027c

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 117
    const-string v0, "video_settings"

    const v1, 0x7f090290

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 120
    const-string v0, "voicemail_settings"

    const v1, 0x7f09004a

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 123
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "sip_settings"

    const v1, 0x7f0901f0

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    .line 128
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB_GeneralSettings(Z)V

    .line 129
    invoke-direct {p0, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB_SoundSettings(Z)V

    .line 130
    invoke-direct {p0, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB_VideoSettings(Z)V

    .line 131
    invoke-direct {p0, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB_VoicemailSettings(Z)V

    .line 132
    invoke-direct {p0, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB_SipSettings(Z)V

    .line 133
    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB_SubMenus()V

    .line 135
    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->endInsert()V

    .line 136
    return-void
.end method

.method private endInsert()V
    .locals 3

    .prologue
    .line 77
    const-string v1, "SettingSearchManagerReceiver"

    const-string v2, "endInsert"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.settings.FINISH_SEARCHDB_EXTRA_APPS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method private putValues(Ljava/lang/String;III)V
    .locals 4
    .parameter "id"
    .parameter "titleId"
    .parameter "summaryID"
    .parameter "type"

    .prologue
    .line 58
    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "id_key"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "title"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "title_res_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "summary"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "summary_res_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "icon_res_id"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "menu_type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "package_name"

    const-string v3, "com.android.phone"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/SettingSearchManagerReceiver;->SETTINGINFO_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SettingSearchManagerReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putValues : exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    if-nez p2, :cond_1

    .line 36
    const-string v1, "SettingSearchManagerReceiver"

    const-string v2, "onReceive - intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iput-object p1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    .line 41
    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 42
    const-string v1, "SettingSearchManagerReceiver"

    const-string v2, "The device does not support Voice call..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, action:Ljava/lang/String;
    const-string v1, "SettingSearchManagerReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v1, "android.settings.INSERT_SEARCHDB_EXTRA_APPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {}, Lcom/android/phone/PhoneFeature;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDBforTablet()V

    goto :goto_0

    .line 53
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB()V

    goto :goto_0
.end method
