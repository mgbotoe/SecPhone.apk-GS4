.class final Lcom/android/phone/InCallQuickPanel$1;
.super Landroid/content/BroadcastReceiver;
.source "InCallQuickPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallQuickPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, action:Ljava/lang/String;
    const-string v12, "InCallQuickPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Action: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    .line 71
    .local v7, phoneApp:Lcom/android/phone/PhoneGlobals;
    iget-object v3, v7, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 72
    .local v3, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 74
    .local v4, currentCall:Lcom/android/internal/telephony/Call;
    const-string v12, "com.android.phone.SHOW_SCREEN"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 76
    const-string v12, "sec_product_feature_common_dsds_support"

    invoke-static {v12}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 77
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hasCSVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 78
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/PhoneGlobals;->createInVTCallIntent(Lcom/android/internal/telephony/Phone;)Landroid/content/Intent;

    move-result-object v11

    .line 89
    .local v11, showScreenIntent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {v7, v11}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    .line 159
    .end local v11           #showScreenIntent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 80
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/PhoneGlobals;->createInCallIntent(Lcom/android/internal/telephony/Phone;)Landroid/content/Intent;

    move-result-object v11

    .restart local v11       #showScreenIntent:Landroid/content/Intent;
    goto :goto_0

    .line 83
    .end local v11           #showScreenIntent:Landroid/content/Intent;
    :cond_2
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hasCSVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 84
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->createInVTCallIntent()Landroid/content/Intent;

    move-result-object v11

    .restart local v11       #showScreenIntent:Landroid/content/Intent;
    goto :goto_0

    .line 86
    .end local v11           #showScreenIntent:Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->createInCallIntent()Landroid/content/Intent;

    move-result-object v11

    .restart local v11       #showScreenIntent:Landroid/content/Intent;
    goto :goto_0

    .line 90
    .end local v11           #showScreenIntent:Landroid/content/Intent;
    :cond_4
    const-string v12, "com.android.phone.MUTE"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 91
    const-string v12, "feature_chn_duos"

    invoke-static {v12}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 92
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->getMute(Lcom/android/internal/telephony/Phone;)Z

    move-result v12

    if-nez v12, :cond_6

    const/4 v9, 0x1

    .line 93
    .local v9, requestedMuteState:Z
    :goto_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-static {v12, v9}, Lcom/android/phone/PhoneUtils;->setMute(Lcom/android/internal/telephony/Phone;Z)V

    .line 100
    :goto_3
    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->isShowingInVTCallScreen()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 101
    :cond_5
    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    goto :goto_1

    .line 92
    .end local v9           #requestedMuteState:Z
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 95
    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v12

    if-nez v12, :cond_8

    const/4 v9, 0x1

    .line 96
    .restart local v9       #requestedMuteState:Z
    :goto_4
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_3

    .line 95
    .end local v9           #requestedMuteState:Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_4

    .line 103
    :cond_9
    const-string v12, "com.android.phone.SPEAKER"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 104
    const-string v12, "audio"

    invoke-virtual {v7, v12}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 105
    .local v1, audioManager:Landroid/media/AudioManager;
    const-string v12, "support_folder_hardkey"

    invoke-static {v12}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 106
    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->isHardKeyboardOpened()Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 109
    const-string v12, "InCallQuickPanel"

    const-string v13, "mSpeakerButton disable by folder close status"

    invoke-static {v12, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 113
    :cond_a
    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v12

    if-nez v12, :cond_e

    const/4 v10, 0x1

    .line 114
    .local v10, requestedSpeakerState:Z
    :goto_5
    const-string v12, "common_volte_vt_kor"

    invoke-static {v12}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 115
    invoke-static {v10}, Lcom/android/phone/PhoneUtilsIms;->updateSpeakerState(Z)V

    .line 118
    :cond_b
    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    .line 119
    .local v2, bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    .line 120
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    .line 122
    :cond_c
    const/4 v12, 0x1

    invoke-static {v7, v10, v12}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 124
    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v12

    if-nez v12, :cond_d

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->isShowingInVTCallScreen()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 125
    :cond_d
    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    goto/16 :goto_1

    .line 113
    .end local v2           #bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    .end local v10           #requestedSpeakerState:Z
    :cond_e
    const/4 v10, 0x0

    goto :goto_5

    .line 128
    .end local v1           #audioManager:Landroid/media/AudioManager;
    :cond_f
    const-string v12, "com.android.phone.UNHOLD"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 129
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_1

    .line 130
    :cond_10
    const-string v12, "com.android.phone.END"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 131
    const/4 v8, 0x0

    .line 132
    .local v8, phoneType:I
    const-string v12, "feature_chn_duos"

    invoke-static {v12}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 133
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    .line 137
    :goto_6
    const/4 v12, 0x2

    if-ne v8, v12, :cond_12

    .line 138
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_1

    .line 135
    :cond_11
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    goto :goto_6

    .line 139
    :cond_12
    const/4 v12, 0x1

    if-eq v8, v12, :cond_13

    const/4 v12, 0x3

    if-eq v8, v12, :cond_13

    const/4 v12, 0x5

    if-ne v8, v12, :cond_14

    .line 141
    :cond_13
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_1

    .line 143
    :cond_14
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unexpected phone type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 145
    .end local v8           #phoneType:I
    :cond_15
    const-string v12, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 146
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v12, v13, :cond_17

    .line 147
    const-string v12, "notification"

    invoke-virtual {v7, v12}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 148
    .local v6, mNotificationManager:Landroid/app/NotificationManager;
    const-string v12, "com.android.phone"

    const/4 v13, 0x2

    invoke-virtual {v6, v12, v13}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v5

    .line 150
    .local v5, mNotificationInfo:Landroid/app/NotificationInfo;
    if-eqz v5, :cond_16

    .line 151
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_1

    .line 153
    :cond_16
    const-string v12, "InCallQuickPanel"

    const-string v13, "IN_CALL_NOTIFICATION is not registered yet.. ignoring updateInCallNotification()"

    invoke-static {v12, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 156
    .end local v5           #mNotificationInfo:Landroid/app/NotificationInfo;
    .end local v6           #mNotificationManager:Landroid/app/NotificationManager;
    :cond_17
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_1
.end method
