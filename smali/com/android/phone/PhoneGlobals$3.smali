.class Lcom/android/phone/PhoneGlobals$3;
.super Landroid/os/Handler;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 743
    const-string v18, "PhoneApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Handler : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    .line 1254
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 752
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 762
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const/high16 v19, 0x7f0c

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 764
    const-string v18, "PhoneApp"

    const-string v19, "Ignoring EVENT_SIM_NETWORK_LOCKED event; not showing \'SIM network unlock\' PIN entry screen"

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 768
    :cond_1
    const-string v18, "nck_block_feature"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v18, "1"

    const-string v19, "ril.perso_nwk_puk"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 771
    const-string v18, "PhoneApp"

    const-string v19, "network perm blocked, do not show sim depersonal panel"

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 777
    :cond_2
    const-string v18, "show_icc_ndp"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 778
    const-string v18, "PhoneApp"

    const-string v19, "show sim depersonal panel"

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    new-instance v8, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;)V

    .line 781
    .local v8, ndpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    invoke-virtual {v8}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto :goto_0

    .line 789
    .end local v8           #ndpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    :sswitch_3
    const-string v18, "PhoneApp"

    const-string v19, "show sim service provider depersonal panel"

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const-string v18, "show_icc_ndp"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 791
    new-instance v13, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v13, v0, v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;Z)V

    .line 793
    .local v13, spdpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    invoke-virtual {v13}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto/16 :goto_0

    .line 802
    .end local v13           #spdpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    :sswitch_4
    const-string v18, "PhoneApp"

    const-string v19, "- updating in-call notification from handler..."

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 807
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto/16 :goto_0

    .line 811
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto/16 :goto_0

    .line 816
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    sget-boolean v18, Lcom/android/phone/PhoneGlobals;->mIsInitiatedMMI:Z

    if-eqz v18, :cond_0

    .line 817
    const-string v18, "PhoneApp"

    const-string v19, "keep MMI_INITIATE event"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->mMmiInitMsg:Landroid/os/AsyncResult;

    goto/16 :goto_0

    .line 823
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #calls: Lcom/android/phone/PhoneGlobals;->onMMIComplete(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$200(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 827
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #calls: Lcom/android/phone/PhoneGlobals;->onMMICompleteSecondary(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$300(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 831
    :sswitch_a
    const-string v18, "sec_product_feature_common_dsds_support"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 832
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 833
    .local v4, arg:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/Phone;

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_0

    .line 835
    .end local v4           #arg:Landroid/os/AsyncResult;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_0

    .line 840
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_0

    .line 844
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #calls: Lcom/android/phone/PhoneGlobals;->onSSInfo(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$400(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 849
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #calls: Lcom/android/phone/PhoneGlobals;->onSSInfoSecondary(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$500(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 857
    :sswitch_e
    const-string v18, "feature_srvcc_kor"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 858
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSecImsCallStateSrvcc()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 859
    const-string v18, "PhoneApp"

    const-string v19, "EVENT_WIRED_HEADSET_PLUG : break"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 863
    :cond_4
    const-string v18, "feature_chn_duos"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 865
    :cond_5
    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 872
    .local v9, phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    :goto_1
    sget-object v18, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v18

    if-ne v9, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v18

    if-nez v18, :cond_9

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v18

    if-nez v18, :cond_10

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 880
    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 882
    :cond_6
    const-string v18, "extra_volume"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 886
    :cond_7
    sget-boolean v18, Lcom/android/phone/PhoneGlobals;->mIsDockConnected:Z

    if-eqz v18, :cond_f

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 892
    :goto_2
    const-string v18, "support_folder_hardkey"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/PhoneGlobals;->mIsHardKeyboardOpen:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->access$600(Lcom/android/phone/PhoneGlobals;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 896
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    .line 913
    :goto_3
    const-string v18, "headset_highest_priority_for_call"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 917
    :cond_9
    sget-object v18, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v18

    if-ne v9, v0, :cond_a

    .line 918
    const-string v18, "headset_highest_priority_for_call"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    const-string v18, "support_incomingcall_multi_window"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v18

    if-eqz v18, :cond_a

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v18

    if-nez v18, :cond_13

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->setAcceptViaSpeakerBtn(Z)V

    .line 926
    :cond_a
    const-string v18, "feature_chn_duos"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/PhoneGlobals;->getRinger(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/Ringer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/Ringer;->updateHeadsetRingtoneState()V

    .line 933
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 935
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    .line 937
    const-string v18, "feature_att"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    const-string v18, "feature_tmo"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 939
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v18

    if-nez v18, :cond_c

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I
    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->access$700(Lcom/android/phone/PhoneGlobals;)I

    move-result v18

    if-eqz v18, :cond_c

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "preferred_tty_mode"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I
    invoke-static/range {v18 .. v19}, Lcom/android/phone/PhoneGlobals;->access$702(Lcom/android/phone/PhoneGlobals;I)I

    .line 947
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->access$800(Lcom/android/phone/PhoneGlobals;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 948
    const/16 v18, 0xe

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals$3;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals$3;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 867
    .end local v9           #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    .restart local v9       #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    goto/16 :goto_1

    .line 869
    .end local v9           #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    .restart local v9       #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    goto/16 :goto_1

    .line 889
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 903
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 904
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 906
    :cond_11
    const-string v18, "extra_volume"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 910
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    goto/16 :goto_3

    .line 921
    :cond_13
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 929
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/Ringer;->updateHeadsetRingtoneState()V

    goto/16 :goto_5

    .line 956
    .end local v9           #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    const-string v19, "READY"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->access$900(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v18

    if-eqz v18, :cond_15

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->access$900(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->finish()V

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v19}, Lcom/android/phone/PhoneGlobals;->access$902(Lcom/android/phone/PhoneGlobals;Landroid/app/Activity;)Landroid/app/Activity;

    .line 964
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->access$1000(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->access$1000(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/ProgressDialog;->dismiss()V

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v19}, Lcom/android/phone/PhoneGlobals;->access$1002(Lcom/android/phone/PhoneGlobals;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 978
    :sswitch_10
    const/4 v6, 0x0

    .line 979
    .local v6, inDockMode:Z
    sget v18, Lcom/android/phone/PhoneGlobals;->mDockState:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_16

    sget v18, Lcom/android/phone/PhoneGlobals;->mDockState:I

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_16

    sget v18, Lcom/android/phone/PhoneGlobals;->mDockState:I

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_17

    .line 984
    :cond_16
    const/4 v6, 0x1

    .line 986
    :cond_17
    const-string v18, "PhoneApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "received EVENT_DOCK_STATE_CHANGED. Phone inDock = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const-string v18, "audio_separate_deskdock_path"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 990
    const-string v18, "PhoneApp"

    const-string v19, "setParameter - DeskDockIPC"

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    const-string v19, "audio"

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 992
    .local v5, audioManager:Landroid/media/AudioManager;
    if-eqz v6, :cond_1a

    .line 993
    sget v18, Lcom/android/phone/PhoneGlobals;->mDockState:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    .line 994
    const-string v18, "DeskDockIPC=on"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1001
    .end local v5           #audioManager:Landroid/media/AudioManager;
    :cond_18
    :goto_6
    const-string v18, "not_spk_auto_changed_in_dock"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 1003
    if-eqz v6, :cond_19

    sget v18, Lcom/android/phone/PhoneGlobals;->mDockState:I

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1006
    :cond_19
    const-string v18, "feature_srvcc_kor"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 1007
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSecImsCallStateSrvcc()Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 1008
    const-string v18, "PhoneApp"

    const-string v19, "EVENT_DOCK_STATE_CHANGED : break"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 997
    .restart local v5       #audioManager:Landroid/media/AudioManager;
    :cond_1a
    const-string v18, "DeskDockIPC=off"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_6

    .line 1013
    .end local v5           #audioManager:Landroid/media/AudioManager;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    .line 1014
    .restart local v9       #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v18, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v18

    if-ne v9, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1016
    const-string v18, "restore_spk_unplugged_dock"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1f

    .line 1017
    if-eqz v6, :cond_1e

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1025
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1c

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->requestUpdateDockUi()V

    .line 1028
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1d

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->requestUpdateDockUi()V

    .line 1031
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    goto/16 :goto_0

    .line 1020
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto :goto_7

    .line 1023
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v6, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_7

    .line 1038
    .end local v6           #inDockMode:Z
    .end local v9           #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v18

    if-eqz v18, :cond_20

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I
    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->access$700(Lcom/android/phone/PhoneGlobals;)I

    move-result v15

    .line 1043
    .local v15, ttyMode:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x10

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v15, v1}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1041
    .end local v15           #ttyMode:I
    :cond_20
    const/4 v15, 0x0

    .restart local v15       #ttyMode:I
    goto :goto_8

    .line 1047
    .end local v15           #ttyMode:I
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    #calls: Lcom/android/phone/PhoneGlobals;->handleQueryTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$1100(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1051
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    #calls: Lcom/android/phone/PhoneGlobals;->handleSetTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$1200(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1054
    :sswitch_14
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    goto/16 :goto_0

    .line 1057
    :sswitch_15
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/phone/PhoneGlobals;->mIsScreenOn:Z

    .line 1058
    const-string v18, "raft"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1059
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    goto/16 :goto_0

    .line 1063
    :sswitch_16
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/phone/PhoneGlobals;->mIsScreenOn:Z

    .line 1064
    const-string v18, "raft"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_21

    .line 1065
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    .line 1068
    :cond_21
    const-string v18, "reject_call_with_message_drawer_while_in_secure_lock_pending"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_22

    .line 1069
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->clearRejectCallWithMessagePendingList()V

    .line 1070
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/PhoneGlobals;->mMmiState:Lcom/android/internal/telephony/MmiCode$State;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->access$1300(Lcom/android/phone/PhoneGlobals;)Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isShowingMmiDialog()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/PhoneGlobals;->mMmiState:Lcom/android/internal/telephony/MmiCode$State;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->access$1300(Lcom/android/phone/PhoneGlobals;)Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1072
    const-string v18, "PhoneApp"

    const-string v19, "endInCallScreenSession..."

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto/16 :goto_0

    .line 1078
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "surface_palm_touch"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 1080
    .local v17, val:I
    const-string v18, "PhoneApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "EVENT_PALM_DOWN : value = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    if-lez v17, :cond_0

    .line 1082
    const-string v18, "feature_multisim"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_24

    .line 1083
    const/4 v12, 0x0

    .local v12, simSlot:I
    :goto_9
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_0

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    aget-object v18, v18, v12

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    move-object/from16 v18, v0

    aget-object v18, v18, v12

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v18

    if-eqz v18, :cond_23

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    move-object/from16 v18, v0

    aget-object v18, v18, v12

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_0

    .line 1083
    :cond_23
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 1089
    .end local v12           #simSlot:I
    :cond_24
    const-string v18, "sec_product_feature_common_dsds_support"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_26

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v18

    if-eqz v18, :cond_25

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_0

    .line 1092
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_0

    .line 1095
    :cond_26
    const-string v18, "feature_chn_duos"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_27

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/PhoneGlobals;->getNotifier(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/CallNotifier;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/PhoneGlobals;->getNotifier(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/CallNotifier;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_0

    .line 1100
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_0

    .line 1109
    .end local v17           #val:I
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->checkCurrentAudioPath()V

    goto/16 :goto_0

    .line 1115
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/BluetoothHeadset;->isDualHfConnected()Z

    move-result v18

    if-eqz v18, :cond_28

    const-string v14, "DUAL"

    .line 1117
    .local v14, state:Ljava/lang/String;
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v18, v0

    const-string v19, "DUAL"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v14}, Lcom/android/phone/PhoneUtilsCommon;->sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1116
    .end local v14           #state:Ljava/lang/String;
    :cond_28
    const-string v14, "SINGLE"

    goto :goto_a

    .line 1123
    :sswitch_1a
    const-string v18, "PhoneApp"

    const-string v19, "mHandler: EVENT_QC_ACQUIRE_CALL"

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/phone/PhoneGlobals;->sRestrictedCallForQC:Z

    goto/16 :goto_0

    .line 1129
    :sswitch_1b
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVideoCallType()Z

    move-result v18

    if-nez v18, :cond_0

    sget-boolean v18, Lcom/android/phone/PhoneGlobals;->mIsDockConnected:Z

    if-nez v18, :cond_0

    .line 1130
    const-string v18, "PhoneApp"

    const-string v19, "VE: mHandler: HANDLE_MSG_READY_PLAY"

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v18

    if-eqz v18, :cond_29

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/CallCard;->enableVisualExpression(Z)V

    .line 1134
    :cond_29
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getHandler()Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x11eb

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1138
    :sswitch_1c
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVideoCallType()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1139
    const-string v18, "PhoneApp"

    const-string v19, "VE: mHandler: HANDLE_MSG_STOP_PLAY"

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getHandler()Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x11ec

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/CallCard;->enableVisualExpression(Z)V

    goto/16 :goto_0

    .line 1147
    :sswitch_1d
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVideoCallType()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1148
    const-string v18, "PhoneApp"

    const-string v19, "VE: mHandler: HANDLE_MSG_MEDIA_ERROR"

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getHandler()Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x11ec

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/CallCard;->enableVisualExpression(Z)V

    goto/16 :goto_0

    .line 1157
    :sswitch_1e
    const-string v18, "ManualSelectionReceiver"

    const-string v19, "Selection Automatic Done "

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1160
    :sswitch_1f
    const-string v18, "PhoneApp"

    const-string v19, "EVENT_GET_PREFERRED_NETWORK "

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const-string v18, "feature_lgt"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1162
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1163
    .local v3, ar:Landroid/os/AsyncResult;
    const/16 v16, 0x0

    .line 1164
    .local v16, type:I
    if-nez v3, :cond_2a

    .line 1165
    const-string v18, "PhoneApp"

    const-string v19, "ar is null...."

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1168
    :cond_2a
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_2b

    .line 1169
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [I

    check-cast v18, [I

    const/16 v19, 0x0

    aget v16, v18, v19

    .line 1170
    const-string v18, "PhoneApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "get preferred network type="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    packed-switch v16, :pswitch_data_0

    .line 1185
    const-string v18, "ril.roaming.networkmode"

    const-string v19, "AUTO"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    :goto_b
    const-string v18, "PhoneApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "handleGetPreferredNetworkTypeResponse  set to = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "ril.roaming.networkmode"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1173
    :cond_2b
    const-string v18, "PhoneApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "get preferred network type, exception="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1179
    :pswitch_0
    const-string v18, "ril.roaming.networkmode"

    const-string v19, "GSM"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1182
    :pswitch_1
    const-string v18, "ril.roaming.networkmode"

    const-string v19, "WCDMA"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1194
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v16           #type:I
    :sswitch_20
    const-string v18, "ril.ICC2_TYPE"

    const-string v19, "0"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2c

    const-string v18, "ril.ICC2_TYPE"

    const-string v19, "0"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2d

    .line 1196
    :cond_2c
    const-string v18, "PhoneApp"

    const-string v19, "check network 2"

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 1200
    :cond_2d
    const-string v18, "PhoneApp"

    const-string v19, "check network 1"

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 1206
    :sswitch_21
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->access$1400()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1207
    const-string v18, "PhoneApp"

    const-string v19, " EVENT_DATA_ROAM_ACCESS Show Toast"

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->ShowDataRoamingToast()V

    .line 1209
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->access$1402(Z)Z

    goto/16 :goto_0

    .line 1213
    :sswitch_22
    const-string v18, "PhoneApp"

    const-string v19, " EVENT_DATA_ROAMING_DENY Notify!"

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/NotificationMgr;->showAllowDataAccess()V

    goto/16 :goto_0

    .line 1218
    :sswitch_23
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Boolean;

    .line 1219
    .local v11, set:Ljava/lang/Boolean;
    const-string v18, "PhoneApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "EVENT_SET_PS_CHANNEL :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/phone/PhoneGlobals;->setChannel(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 1224
    .end local v11           #set:Ljava/lang/Boolean;
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    .line 1225
    .local v10, serviceState:I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/PhoneGlobals;->isGlobalPopupDisplay()Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->access$1500(Lcom/android/phone/PhoneGlobals;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1226
    const-string v18, "PhoneApp"

    const-string v19, "GlobalNetworkSelectAlertDialog is start"

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    new-instance v7, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1228
    .local v7, intent:Landroid/content/Intent;
    const-string v18, "com.android.phone"

    const-string v19, "com.android.phone.GlobalNetworkSelectAlertDialog"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1229
    const/high16 v18, 0x1000

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1235
    .end local v7           #intent:Landroid/content/Intent;
    .end local v10           #serviceState:I
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x24

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-eqz v18, :cond_2e

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x24

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 1237
    :cond_2e
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->getDataRoamingGuardInstance()Lcom/android/phone/DataRoamingGuard;

    move-result-object v18

    if-nez v18, :cond_0

    .line 1238
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingDataRoaming()V

    goto/16 :goto_0

    .line 1242
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/PhoneGlobals;->handleCallStateChanged()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->access$1600(Lcom/android/phone/PhoneGlobals;)V

    goto/16 :goto_0

    .line 1246
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x1b

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-eqz v18, :cond_2f

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x1b

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 1248
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/PhoneGlobals;->handleShowInCallScreen()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->access$1700(Lcom/android/phone/PhoneGlobals;)V

    goto/16 :goto_0

    .line 745
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_e
        0x8 -> :sswitch_f
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_6
        0xc -> :sswitch_0
        0xd -> :sswitch_10
        0xe -> :sswitch_11
        0xf -> :sswitch_12
        0x10 -> :sswitch_13
        0x11 -> :sswitch_1
        0x12 -> :sswitch_1a
        0x14 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x1a -> :sswitch_1e
        0x1b -> :sswitch_27
        0x1d -> :sswitch_23
        0x1e -> :sswitch_19
        0x1f -> :sswitch_2
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_24
        0x24 -> :sswitch_25
        0x28 -> :sswitch_26
        0x33 -> :sswitch_7
        0x34 -> :sswitch_8
        0x35 -> :sswitch_a
        0x3e -> :sswitch_9
        0x3f -> :sswitch_b
        0x46 -> :sswitch_c
        0x47 -> :sswitch_d
        0x2bc -> :sswitch_1f
        0x11ea -> :sswitch_1b
        0x11ec -> :sswitch_1c
        0x11f1 -> :sswitch_1d
    .end sparse-switch

    .line 1177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
