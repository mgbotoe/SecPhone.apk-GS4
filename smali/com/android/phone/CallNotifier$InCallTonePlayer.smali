.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# instance fields
.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 1
    .parameter
    .parameter "toneId"

    .prologue
    .line 4850
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 4851
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4852
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 4853
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 4854
    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 4858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "InCallTonePlayer.run (toneId = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")..."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 4860
    const/16 v20, 0x0

    .line 4863
    .local v20, toneType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    .line 4864
    .local v11, phoneType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v8

    .line 4865
    .local v8, nCallType:Lcom/android/internal/telephony/Call$CallType;
    sget-object v24, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    move-object/from16 v0, v24

    if-ne v8, v0, :cond_0

    const/4 v3, 0x1

    .line 4866
    .local v3, bIsVolteCall:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "nCallType = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", bIsVolteCall = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 4868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->acquirePartialWakeLock()V

    .line 4871
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_VoiceCall_TunnigCallWaitingToneAs"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v22

    .line 4874
    .local v22, tunningCallWaitingTone:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 5007
    :pswitch_0
    new-instance v24, Ljava/lang/IllegalArgumentException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Bad toneId: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 4865
    .end local v3           #bIsVolteCall:Z
    .end local v22           #tunningCallWaitingTone:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 4876
    .restart local v3       #bIsVolteCall:Z
    .restart local v22       #tunningCallWaitingTone:I
    :pswitch_1
    const/16 v20, 0x16

    .line 4877
    if-lez v22, :cond_a

    .line 4878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 4879
    const/16 v21, 0x50

    .line 4886
    .local v21, toneVolume:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "InCallTonePlayer: WAITING :"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 4887
    const-string v24, "gsm.operator.iso-country"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4888
    .local v4, countryCode:Ljava/lang/String;
    const-string v24, "ca"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 4889
    .local v6, isCountryCan:Ljava/lang/Boolean;
    const-string v24, "dcm_callwait_tone_long_feature"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 4893
    const/16 v18, 0x5208

    .line 5010
    .end local v4           #countryCode:Ljava/lang/String;
    .end local v6           #isCountryCan:Ljava/lang/Boolean;
    .local v18, toneLengthMillis:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "InCallTonePlayer.run (toneType="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", toneVolume="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", toneLengthMillis="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 5018
    const/4 v7, 0x0

    .line 5019
    .local v7, isVideoCall:Z
    :try_start_0
    const-string v24, "feature_chn_duos"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_16

    .line 5020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v7

    .line 5024
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v24

    if-eqz v24, :cond_1a

    .line 5025
    if-eqz v7, :cond_18

    .line 5026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z

    move-result v24

    if-eqz v24, :cond_17

    const/16 v16, 0x6

    .line 5039
    .local v16, stream:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "InCallTonePlayer: stream :"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 5041
    const-string v24, "common_volte"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    const/16 v24, 0x5

    move/from16 v0, v24

    if-ne v11, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v24, v0

    const/16 v25, 0xc

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 5044
    const-wide/16 v24, 0x190

    invoke-static/range {v24 .. v25}, Landroid/os/SystemClock;->sleep(J)V

    .line 5047
    :cond_1
    new-instance v17, Landroid/media/ToneGenerator;

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5069
    .end local v16           #stream:I
    .local v17, toneGenerator:Landroid/media/ToneGenerator;
    :goto_5
    const/4 v9, 0x1

    .line 5070
    .local v9, needToStopTone:Z
    const/4 v10, 0x0

    .line 5072
    .local v10, okToPlayTone:Z
    if-eqz v17, :cond_7

    .line 5073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v13

    .line 5074
    .local v13, ringerMode:I
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v11, v0, :cond_21

    .line 5075
    const/16 v24, 0x5d

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_1c

    .line 5076
    if-eqz v13, :cond_2

    const/16 v24, 0x1

    move/from16 v0, v24

    if-eq v13, v0, :cond_2

    .line 5078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "- InCallTonePlayer: start playing call tone="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 5079
    const/4 v10, 0x1

    .line 5080
    const/4 v9, 0x0

    .line 5107
    :cond_2
    :goto_6
    const-string v24, "custom_waiting_tone"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 5108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "volume_waiting_tone"

    const/16 v26, 0x2

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 5109
    .local v12, rate:I
    const/high16 v23, 0x3f80

    .line 5110
    .local v23, volFloat:F
    const-wide/high16 v24, 0x4000

    add-int/lit8 v26, v12, -0x2

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v23, v0

    .line 5111
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v24, v0

    const/16 v25, 0x10

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v24, v0

    const/16 v25, 0x11

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 5116
    :cond_3
    :try_start_1
    const-string v19, "situation=15;device=0"

    .line 5117
    .local v19, toneSituation:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    mul-float v14, v24, v23

    .line 5118
    .local v14, situationVolume:F
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/media/ToneGenerator;->setVolume(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5125
    .end local v12           #rate:I
    .end local v14           #situationVolume:F
    .end local v19           #toneSituation:Ljava/lang/String;
    .end local v23           #volFloat:F
    :cond_4
    :goto_7
    const-string v24, "use_situation_gain_for_ringbacktones"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 5126
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v24, v0

    const/16 v25, 0xc

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 5128
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v24

    const-string v25, "situation=12"

    invoke-virtual/range {v24 .. v25}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    .line 5129
    .restart local v14       #situationVolume:F
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/media/ToneGenerator;->setVolume(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 5136
    .end local v14           #situationVolume:F
    :cond_5
    :goto_8
    monitor-enter p0

    .line 5137
    if-eqz v10, :cond_6

    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 5138
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 5139
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5141
    add-int/lit8 v24, v18, 0x14

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    :try_start_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    .line 5147
    :goto_9
    if-eqz v9, :cond_6

    .line 5148
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Landroid/media/ToneGenerator;->stopTone()V

    .line 5152
    :cond_6
    invoke-virtual/range {v17 .. v17}, Landroid/media/ToneGenerator;->release()V

    .line 5153
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 5154
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5157
    .end local v13           #ringerMode:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->releasePartialWakeLock()V

    .line 5173
    const-string v24, "feature_chn_duos"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_22

    .line 5174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v15

    .line 5178
    .local v15, state:Lcom/android/internal/telephony/PhoneConstants$State;
    :goto_a
    sget-object v24, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v24

    if-ne v15, v0, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v24, v0

    const/16 v25, 0xc

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    .line 5179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "InCallTonePlayer:calling resetAudioStateAfterDisconnect  + "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 5180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 5182
    :cond_8
    return-void

    .line 4881
    .end local v7           #isVideoCall:Z
    .end local v9           #needToStopTone:Z
    .end local v10           #okToPlayTone:Z
    .end local v15           #state:Lcom/android/internal/telephony/PhoneConstants$State;
    .end local v17           #toneGenerator:Landroid/media/ToneGenerator;
    .end local v18           #toneLengthMillis:I
    .end local v21           #toneVolume:I
    :cond_9
    move/from16 v21, v22

    .restart local v21       #toneVolume:I
    goto/16 :goto_1

    .line 4884
    .end local v21           #toneVolume:I
    :cond_a
    const/16 v21, 0x50

    .restart local v21       #toneVolume:I
    goto/16 :goto_1

    .line 4894
    .restart local v4       #countryCode:Ljava/lang/String;
    .restart local v6       #isCountryCan:Ljava/lang/Boolean;
    :cond_b
    const-string v24, "feature_can_bmc"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_c

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 4895
    const v18, 0x7fffffeb

    .restart local v18       #toneLengthMillis:I
    goto/16 :goto_2

    .line 4898
    .end local v18           #toneLengthMillis:I
    :cond_c
    const/16 v18, 0x1db0

    .line 4900
    .restart local v18       #toneLengthMillis:I
    goto/16 :goto_2

    .line 4902
    .end local v4           #countryCode:Ljava/lang/String;
    .end local v6           #isCountryCan:Ljava/lang/Boolean;
    .end local v18           #toneLengthMillis:I
    .end local v21           #toneVolume:I
    :pswitch_2
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v11, v0, :cond_d

    const/16 v24, 0x5

    move/from16 v0, v24

    if-ne v11, v0, :cond_10

    .line 4904
    :cond_d
    const/16 v20, 0x60

    .line 4905
    const-string v24, "feature_kdi"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 4906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 4907
    const/16 v21, 0x50

    .line 4914
    .restart local v21       #toneVolume:I
    :goto_b
    const/16 v18, 0x3e8

    .restart local v18       #toneLengthMillis:I
    goto/16 :goto_2

    .line 4909
    .end local v18           #toneLengthMillis:I
    .end local v21           #toneVolume:I
    :cond_e
    const/16 v21, 0x32

    .restart local v21       #toneVolume:I
    goto :goto_b

    .line 4912
    .end local v21           #toneVolume:I
    :cond_f
    const/16 v21, 0x32

    .restart local v21       #toneVolume:I
    goto :goto_b

    .line 4915
    .end local v21           #toneVolume:I
    :cond_10
    const/16 v24, 0x1

    move/from16 v0, v24

    if-eq v11, v0, :cond_11

    const/16 v24, 0x3

    move/from16 v0, v24

    if-eq v11, v0, :cond_11

    const/16 v24, 0x5

    move/from16 v0, v24

    if-ne v11, v0, :cond_12

    .line 4918
    :cond_11
    const/16 v20, 0x11

    .line 4919
    const/16 v21, 0x50

    .line 4920
    .restart local v21       #toneVolume:I
    const/16 v18, 0x1194

    .restart local v18       #toneLengthMillis:I
    goto/16 :goto_2

    .line 4922
    .end local v18           #toneLengthMillis:I
    .end local v21           #toneVolume:I
    :cond_12
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unexpected phone type: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 4926
    :pswitch_3
    const/16 v20, 0x12

    .line 4927
    const/16 v21, 0x50

    .line 4928
    .restart local v21       #toneVolume:I
    const/16 v18, 0xfa0

    .line 4929
    .restart local v18       #toneLengthMillis:I
    goto/16 :goto_2

    .line 4932
    .end local v18           #toneLengthMillis:I
    .end local v21           #toneVolume:I
    :pswitch_4
    const/16 v20, 0x1b

    .line 4933
    const/16 v21, 0x50

    .line 4934
    .restart local v21       #toneVolume:I
    const/16 v18, 0xc8

    .line 4935
    .restart local v18       #toneLengthMillis:I
    goto/16 :goto_2

    .line 4937
    .end local v18           #toneLengthMillis:I
    .end local v21           #toneVolume:I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 4939
    const/16 v20, 0x5d

    .line 4940
    const/16 v21, 0x50

    .line 4941
    .restart local v21       #toneVolume:I
    const/16 v18, 0x2ee

    .restart local v18       #toneLengthMillis:I
    goto/16 :goto_2

    .line 4943
    .end local v18           #toneLengthMillis:I
    .end local v21           #toneVolume:I
    :cond_13
    const/16 v20, 0x1b

    .line 4944
    const/16 v21, 0x50

    .line 4945
    .restart local v21       #toneVolume:I
    const/16 v18, 0xc8

    .line 4947
    .restart local v18       #toneLengthMillis:I
    goto/16 :goto_2

    .line 4949
    .end local v18           #toneLengthMillis:I
    .end local v21           #toneVolume:I
    :pswitch_6
    const/16 v20, 0x56

    .line 4950
    const/16 v21, 0x50

    .line 4951
    .restart local v21       #toneVolume:I
    const/16 v18, 0x1388

    .line 4952
    .restart local v18       #toneLengthMillis:I
    goto/16 :goto_2

    .line 4954
    .end local v18           #toneLengthMillis:I
    .end local v21           #toneVolume:I
    :pswitch_7
    const/16 v20, 0x26

    .line 4955
    const/16 v21, 0x50

    .line 4956
    .restart local v21       #toneVolume:I
    const/16 v18, 0xfa0

    .line 4957
    .restart local v18       #toneLengthMillis:I
    goto/16 :goto_2

    .line 4959
    .end local v18           #toneLengthMillis:I
    .end local v21           #toneVolume:I
    :pswitch_8
    const/16 v20, 0x25

    .line 4960
    const/16 v21, 0x32

    .line 4961
    .restart local v21       #toneVolume:I
    const/16 v18, 0x1f4

    .line 4962
    .restart local v18       #toneLengthMillis:I
    goto/16 :goto_2

    .line 4965
    .end local v18           #toneLengthMillis:I
    .end local v21           #toneVolume:I
    :pswitch_9
    const/16 v20, 0x5f

    .line 4966
    const/16 v21, 0x32

    .line 4967
    .restart local v21       #toneVolume:I
    const/16 v18, 0x177

    .line 4968
    .restart local v18       #toneLengthMillis:I
    goto/16 :goto_2

    .line 4970
    .end local v18           #toneLengthMillis:I
    .end local v21           #toneVolume:I
    :pswitch_a
    const/16 v20, 0x57

    .line 4971
    const/16 v21, 0x32

    .line 4972
    .restart local v21       #toneVolume:I
    const/16 v18, 0x1388

    .line 4973
    .restart local v18       #toneLengthMillis:I
    goto/16 :goto_2

    .line 4975
    .end local v18           #toneLengthMillis:I
    .end local v21           #toneVolume:I
    :pswitch_b
    const-string v24, "volte_cdma_ringback_tone"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 4976
    const/16 v20, 0x23

    .line 4982
    :goto_c
    const/16 v21, 0x50

    .line 4984
    .restart local v21       #toneVolume:I
    const v18, 0x7fffffeb

    .line 4985
    .restart local v18       #toneLengthMillis:I
    goto/16 :goto_2

    .line 4977
    .end local v18           #toneLengthMillis:I
    .end local v21           #toneVolume:I
    :cond_14
    const-string v24, "feature_kor"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_15

    .line 4978
    const/16 v20, 0x23

    goto :goto_c

    .line 4980
    :cond_15
    const/16 v20, 0x17

    goto :goto_c

    .line 4987
    :pswitch_c
    const/16 v20, 0x15

    .line 4988
    const/16 v21, 0x50

    .line 4989
    .restart local v21       #toneVolume:I
    const/16 v18, 0xfa0

    .line 4990
    .restart local v18       #toneLengthMillis:I
    goto/16 :goto_2

    .line 4992
    .end local v18           #toneLengthMillis:I
    .end local v21           #toneVolume:I
    :pswitch_d
    const/16 v20, 0x19

    .line 4993
    const/16 v21, 0x32

    .line 4994
    .restart local v21       #toneVolume:I
    const/16 v18, 0x3e8

    .line 4995
    .restart local v18       #toneLengthMillis:I
    goto/16 :goto_2

    .line 4997
    .end local v18           #toneLengthMillis:I
    .end local v21           #toneVolume:I
    :pswitch_e
    const/16 v20, 0x63

    .line 4998
    const/16 v21, 0x50

    .line 4999
    .restart local v21       #toneVolume:I
    const/16 v18, 0x258

    .line 5000
    .restart local v18       #toneLengthMillis:I
    goto/16 :goto_2

    .line 5002
    .end local v18           #toneLengthMillis:I
    .end local v21           #toneVolume:I
    :pswitch_f
    const/16 v20, 0x64

    .line 5003
    const/16 v21, 0x32

    .line 5004
    .restart local v21       #toneVolume:I
    const/16 v18, 0x154

    .line 5005
    .restart local v18       #toneLengthMillis:I
    goto/16 :goto_2

    .line 5022
    .restart local v7       #isVideoCall:Z
    :cond_16
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v7

    goto/16 :goto_3

    .line 5026
    :cond_17
    const/16 v16, 0xb

    goto/16 :goto_4

    .line 5029
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v24

    if-eqz v24, :cond_19

    const/16 v16, 0x6

    .restart local v16       #stream:I
    :goto_d
    goto/16 :goto_4

    .end local v16           #stream:I
    :cond_19
    const/16 v16, 0x0

    goto :goto_d

    .line 5033
    :cond_1a
    if-eqz v7, :cond_1b

    .line 5034
    const/16 v16, 0xb

    .restart local v16       #stream:I
    goto/16 :goto_4

    .line 5036
    .end local v16           #stream:I
    :cond_1b
    const/16 v16, 0x0

    .restart local v16       #stream:I
    goto/16 :goto_4

    .line 5049
    .end local v16           #stream:I
    :catch_0
    move-exception v5

    .line 5050
    .local v5, e:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 5052
    const/16 v17, 0x0

    .restart local v17       #toneGenerator:Landroid/media/ToneGenerator;
    goto/16 :goto_5

    .line 5082
    .end local v5           #e:Ljava/lang/RuntimeException;
    .restart local v9       #needToStopTone:Z
    .restart local v10       #okToPlayTone:Z
    .restart local v13       #ringerMode:I
    :cond_1c
    const/16 v24, 0x60

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_1d

    const/16 v24, 0x26

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_1d

    const/16 v24, 0x27

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_1d

    const/16 v24, 0x25

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_1d

    const/16 v24, 0x5f

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e

    .line 5087
    :cond_1d
    if-eqz v13, :cond_2

    .line 5088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 5089
    const/4 v10, 0x1

    .line 5090
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 5092
    :cond_1e
    const/16 v24, 0x57

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_1f

    const/16 v24, 0x56

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_20

    .line 5094
    :cond_1f
    if-eqz v13, :cond_2

    const/16 v24, 0x1

    move/from16 v0, v24

    if-eq v13, v0, :cond_2

    .line 5096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 5097
    const/4 v10, 0x1

    .line 5098
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 5101
    :cond_20
    const/4 v10, 0x1

    goto/16 :goto_6

    .line 5104
    :cond_21
    const/4 v10, 0x1

    goto/16 :goto_6

    .line 5119
    .restart local v12       #rate:I
    .restart local v23       #volFloat:F
    :catch_1
    move-exception v5

    .line 5120
    .local v5, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CUSTOM_WAITING_TONE: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_7

    .line 5130
    .end local v5           #e:Ljava/lang/Exception;
    .end local v12           #rate:I
    .end local v23           #volFloat:F
    :catch_2
    move-exception v5

    .line 5131
    .restart local v5       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "USE_SITUATION_GAIN_FOR_RINGBACKTONES: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_8

    .line 5142
    .end local v5           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 5143
    .local v5, e:Ljava/lang/InterruptedException;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "InCallTonePlayer stopped: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_9

    .line 5154
    .end local v5           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v24

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v24

    .line 5176
    .end local v13           #ringerMode:I
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v15

    .restart local v15       #state:Lcom/android/internal/telephony/PhoneConstants$State;
    goto/16 :goto_a

    .line 4874
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public stopTone()V
    .locals 2

    .prologue
    .line 5185
    monitor-enter p0

    .line 5186
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5187
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 5189
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 5190
    monitor-exit p0

    .line 5191
    return-void

    .line 5190
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
