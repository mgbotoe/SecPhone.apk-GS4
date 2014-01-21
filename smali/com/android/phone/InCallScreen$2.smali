.class Lcom/android/phone/InCallScreen$2;
.super Landroid/os/Handler;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .parameter "msg"

    .prologue
    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Handler : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mIsDestroyed:Z
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$500(Lcom/android/phone/InCallScreen;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Handler: ignoring message "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "; we\'re destroyed!"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 1179
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    const-string v24, "feature_srvcc_kor"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSecImsCallStateSrvcc()Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x6c

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "This is SEC IMS Call State - return"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 734
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Handler: handling message "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " while not in foreground"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 744
    :cond_3
    const-string v24, "ims_rcs"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v24

    if-nez v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v24

    if-nez v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v24

    if-nez v24, :cond_4

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v25 .. v25}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v27, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/phone/InCallScreen;->getFrgndCallContactName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v24 .. v26}, Lcom/android/phone/RcsShare;->disconnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    sparse-switch v24, :sswitch_data_0

    .line 1176
    const-string v24, "InCallScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mHandler: unexpected message: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 756
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 761
    :sswitch_1
    const-string v24, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->invalidateOptionsMenu()V

    .line 763
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    #calls: Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 767
    :sswitch_2
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v10

    .line 768
    .local v10, icCM:Lcom/android/phone/IMSConferenceCallMgr;
    if-eqz v10, :cond_6

    .line 769
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/phone/IMSConferenceCallMgr;->setDirectConfCall(Z)V

    .line 772
    :cond_6
    const-string v24, "support_fwim"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 774
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/phone/InCallScreen;->m_Fwim_Receiver:Landroid/content/BroadcastReceiver;
    invoke-static/range {v25 .. v25}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Landroid/content/BroadcastReceiver;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    #calls: Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$1100(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    .line 780
    const-string v24, "ims_rcs"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    new-instance v25, Landroid/content/Intent;

    const-string v26, "com.samsung.rcs.intent.action.END_SHARING_SERVICE_DIALOG"

    invoke-direct/range {v25 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 784
    :cond_8
    const-string v24, "voice_call_recording"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mOptionMenu:Landroid/view/Menu;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Landroid/view/Menu;

    move-result-object v24

    if-eqz v24, :cond_0

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "close menu"

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mOptionMenu:Landroid/view/Menu;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Landroid/view/Menu;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/view/Menu;->close()V

    goto/16 :goto_0

    .line 775
    :catch_0
    move-exception v7

    .line 776
    .local v7, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "m_Fwim_Receiver not register"

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    goto :goto_1

    .line 802
    .end local v7           #e:Ljava/lang/Exception;
    .end local v10           #icCM:Lcom/android/phone/IMSConferenceCallMgr;
    :sswitch_3
    const-string v24, "common_volte_vt_kor"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "Received EVENT_HEADSET_PLUG_STATE_CHANGED event"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    .line 805
    .local v9, fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    .line 806
    .local v18, rCall:Lcom/android/internal/telephony/Call;
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v24

    if-nez v24, :cond_9

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 807
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v24

    if-nez v24, :cond_a

    .line 808
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v24

    sget-boolean v25, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_a

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    sget-boolean v25, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 818
    .end local v9           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v18           #rCall:Lcom/android/internal/telephony/Call;
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)V

    .line 825
    const-string v24, "tablet_device"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->invalidateOptionsMenu()V

    .line 828
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallTouchUi;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallTouchUi;->refreshAudioModePopup()V

    goto/16 :goto_0

    .line 812
    .restart local v9       #fgCall:Lcom/android/internal/telephony/Call;
    .restart local v18       #rCall:Lcom/android/internal/telephony/Call;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_2

    .line 839
    .end local v9           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v18           #rCall:Lcom/android/internal/telephony/Call;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->onMMICancel()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 848
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->dismissMmiStartedDialog()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;)V

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/MmiCode;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    #calls: Lcom/android/phone/InCallScreen;->onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/MmiCode;)V

    goto/16 :goto_0

    .line 853
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-char v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v26

    #calls: Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/InCallScreen;->access$1700(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    .line 856
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "Handler: POST_ON_DIAL_CHARS msg ignore because incallscreen not in foreground"

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 861
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 865
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$1900(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 869
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2000(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 873
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "REQUEST_UPDATE_BLUETOOTH_INDICATION..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 879
    const-string v24, "common_volte_vt_kor"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v24

    if-eqz v24, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v24

    if-nez v24, :cond_f

    .line 881
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v24

    if-nez v24, :cond_f

    .line 882
    const-string v24, "InCallScreen"

    const-string v25, "During Call BT or EarPhone is not connected, then switch on the speaker. "

    invoke-static/range {v24 .. v25}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v24

    if-eqz v24, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v24

    if-eqz v24, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_f

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v24

    sget-boolean v25, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    sget-boolean v25, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 892
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallTouchUi;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallTouchUi;->refreshAudioModePopup()V

    goto/16 :goto_0

    .line 899
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "Received PHONE_CDMA_CALL_WAITING event ..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 903
    .local v6, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v6, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingAutoRejectedCall:Z

    move/from16 v24, v0

    if-nez v24, :cond_10

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)V

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v25 .. v25}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mOptionMenu:Landroid/view/Menu;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Landroid/view/Menu;

    move-result-object v24

    if-eqz v24, :cond_10

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mOptionMenu:Landroid/view/Menu;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Landroid/view/Menu;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/view/Menu;->close()V

    .line 913
    :cond_10
    const-string v24, " disable_notification_in_waiting_call_ringing"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->updateExpandedViewState()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2200(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 919
    .end local v6           #cn:Lcom/android/internal/telephony/Connection;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/OtaUtils;->onOtaCloseSpcNotice()V

    goto/16 :goto_0

    .line 925
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/OtaUtils;->onOtaCloseFailureNotice()V

    goto/16 :goto_0

    .line 931
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2300(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v24

    if-eqz v24, :cond_0

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "- DISMISSING mPausePromptDialog."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2300(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->dismiss()V

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$2302(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 939
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/phone/InCallUiState;->providerInfoVisible:Z

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v24

    if-eqz v24, :cond_0

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v25 .. v25}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_0

    .line 945
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 948
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    #calls: Lcom/android/phone/InCallScreen;->updateScreenOrientation(Landroid/content/res/Configuration;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$2500(Lcom/android/phone/InCallScreen;Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    .line 952
    :sswitch_12
    const-string v24, "ims_auto_call_test"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/android/phone/InCallScreen;->isCallInProgress:Z
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$2602(Lcom/android/phone/InCallScreen;Z)Z

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x67

    #calls: Lcom/android/phone/InCallScreen;->broadCastForAutoTest(I)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$2700(Lcom/android/phone/InCallScreen;I)V

    .line 956
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->onIncomingRing()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2800(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 960
    :sswitch_13
    const-string v24, "support_fwim"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 961
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    move-object/from16 v0, v24

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/Connection;

    .line 963
    .local v5, c:Lcom/android/internal/telephony/Connection;
    if-eqz v5, :cond_0

    .line 964
    const/16 v19, 0x0

    .line 965
    .local v19, rejectCheck:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v5}, Lcom/android/phone/PhoneUtils;->isAutoRejectCall(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z

    move-result v19

    .line 967
    const/16 v24, 0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->onNewRingingConnection()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2900(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 970
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->onDefensiveNewRingingConnection()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3000(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 974
    .end local v5           #c:Lcom/android/internal/telephony/Connection;
    .end local v19           #rejectCheck:Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->onNewRingingConnection()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2900(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 980
    :sswitch_14
    const-string v24, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->isFirstEmergencyCall:Z
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$3102(Lcom/android/phone/InCallScreen;Z)Z

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->emergencyNetwork:I
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3200(Lcom/android/phone/InCallScreen;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v25 .. v25}, Lcom/android/phone/InCallScreen;->access$3300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 983
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/CallController;->retryEmergencyCall()V

    goto/16 :goto_0

    .line 989
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "ecmp state changed "

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 990
    const-string v24, "ims_volte"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 991
    const-string v24, "true"

    const-string v25, "persist.sys.ims.reg"

    const-string v26, "false"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "ims registered"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v24

    const/16 v25, 0x97

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 995
    :cond_14
    const-string v24, "common_volte"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 996
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "ims registered"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v24

    const/16 v25, 0x97

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1004
    :sswitch_16
    const-string v24, "sec_product_feature_common_dsds_support"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1b

    .line 1005
    const/16 v20, 0x0

    .line 1006
    .local v20, simId:I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/CallController;->getIntentOfOriginCall()Landroid/content/Intent;

    move-result-object v11

    .line 1007
    .local v11, intent:Landroid/content/Intent;
    const-string v24, "simId"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 1008
    const-string v24, "simId"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 1013
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "EVENT_SERVICE_STATE_CHANGED simId:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SIM_SLOT_1 : ServiceState "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/ServiceState;->getState()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SIM_SLOT_2 : ServiceState "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget-object v26, v26, v27

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/ServiceState;->getState()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 1017
    if-nez v20, :cond_15

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/ServiceState;->getState()I

    move-result v24

    if-nez v24, :cond_0

    .line 1019
    :cond_15
    const/16 v24, 0x1

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/ServiceState;->getState()I

    move-result v24

    if-nez v24, :cond_0

    .line 1042
    .end local v11           #intent:Landroid/content/Intent;
    .end local v20           #simId:I
    :cond_16
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v24

    const/16 v25, 0x97

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v24

    const/16 v25, 0x97

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 1045
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mFlightModeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3500(Lcom/android/phone/InCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v24

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mFlightModeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3500(Lcom/android/phone/InCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "STATE_IN_SERVICE : start call "

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 1047
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3602(Z)Z

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mFlightModeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3500(Lcom/android/phone/InCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mFlightModeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$3502(Lcom/android/phone/InCallScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1050
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/CallController;->getIntentOfOriginCall()Landroid/content/Intent;

    move-result-object v11

    .line 1052
    .restart local v11       #intent:Landroid/content/Intent;
    if-eqz v11, :cond_0

    .line 1053
    const-string v24, "common_volte"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_19

    const-string v24, "android.phone.extra.CALL_TYPE"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_19

    .line 1054
    const-string v24, "common_volte_vt_kor"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 1056
    :try_start_1
    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v16

    .line 1057
    .local v16, number:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "STATE_IN_SERVICE : start call number "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static/range {v24 .. v26}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 1058
    if-eqz v16, :cond_18

    .line 1059
    new-instance v12, Landroid/content/Intent;

    const-string v24, "android.intent.action.CALL_PRIVILEGED"

    const-string v25, "tel"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v11           #intent:Landroid/content/Intent;
    .local v12, intent:Landroid/content/Intent;
    move-object v11, v12

    .line 1065
    .end local v12           #intent:Landroid/content/Intent;
    .end local v16           #number:Ljava/lang/String;
    .restart local v11       #intent:Landroid/content/Intent;
    :cond_18
    :goto_4
    const-string v24, "videocall"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1067
    :cond_19
    const/high16 v24, 0x1000

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1068
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1010
    .restart local v20       #simId:I
    :cond_1a
    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->getDefaultSimForVoiceCalls()I

    move-result v20

    goto/16 :goto_3

    .line 1023
    .end local v11           #intent:Landroid/content/Intent;
    .end local v20           #simId:I
    :cond_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/telephony/ServiceState;

    .line 1024
    .local v22, state:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/CallController;->getIntentOfOriginCall()Landroid/content/Intent;

    move-result-object v11

    .line 1025
    .restart local v11       #intent:Landroid/content/Intent;
    const/4 v4, 0x0

    .line 1026
    .local v4, bOutgoingPSVT:Z
    if-eqz v11, :cond_1c

    .line 1027
    const-string v24, "common_volte"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1c

    const-string v24, "android.phone.extra.CALL_TYPE"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1c

    .line 1029
    const/4 v4, 0x1

    .line 1032
    :cond_1c
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getState()I

    move-result v24

    if-nez v24, :cond_0

    .line 1035
    if-eqz v4, :cond_16

    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v24

    if-nez v24, :cond_16

    goto/16 :goto_0

    .line 1061
    .end local v4           #bOutgoingPSVT:Z
    .end local v22           #state:Landroid/telephony/ServiceState;
    :catch_1
    move-exception v8

    .line 1062
    .local v8, ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "VoiceMailNumberMissingException: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1075
    .end local v8           #ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    .end local v11           #intent:Landroid/content/Intent;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Z

    move-result v24

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "statusbar"

    invoke-virtual/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/StatusBarManager;

    .line 1077
    .local v23, statusBar:Landroid/app/StatusBarManager;
    invoke-virtual/range {v23 .. v23}, Landroid/app/StatusBarManager;->showCallView()V

    goto/16 :goto_0

    .line 1082
    .end local v23           #statusBar:Landroid/app/StatusBarManager;
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #calls: Lcom/android/phone/InCallScreen;->internalHangup()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 1088
    :sswitch_1a
    const-string v24, "InCallScreen"

    const-string v25, "videocall received modifyCall request"

    invoke-static/range {v24 .. v25}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->closeOptionsMenu()V

    .line 1090
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1091
    .local v3, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3700(Lcom/android/phone/InCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v24

    if-eqz v24, :cond_1d

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->onOpenCloseDialpad()V

    .line 1093
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/Connection;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    #calls: Lcom/android/phone/InCallScreen;->handleModifyCallRequest(Lcom/android/internal/telephony/Connection;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$3800(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    .line 1097
    .end local v3           #ar:Landroid/os/AsyncResult;
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mUpgradeDialog:Landroid/app/AlertDialog;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3900(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v24

    if-eqz v24, :cond_1e

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mUpgradeDialog:Landroid/app/AlertDialog;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3900(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->dismiss()V

    .line 1101
    :cond_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    .line 1103
    .local v17, r:Landroid/os/AsyncResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_20

    .line 1105
    :try_start_2
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [I

    check-cast v24, [I

    const/16 v25, 0x2

    aget v21, v24, v25

    .line 1107
    .local v21, sipError:I
    const/16 v24, 0x456

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_1f

    .line 1108
    const v24, 0x7f09076d

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtils;->displayToast(I)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 1112
    .end local v21           #sipError:I
    :catch_2
    move-exception v8

    .line 1113
    .local v8, ex:Ljava/lang/IndexOutOfBoundsException;
    const-string v24, "InCallScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "modify call exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1110
    .end local v8           #ex:Ljava/lang/IndexOutOfBoundsException;
    .restart local v21       #sipError:I
    :cond_1f
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "modify call fail: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1114
    .end local v21           #sipError:I
    :catch_3
    move-exception v14

    .line 1115
    .local v14, nex:Ljava/lang/NullPointerException;
    const-string v24, "InCallScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "modify call exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1119
    .end local v14           #nex:Ljava/lang/NullPointerException;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "videocall: IMS Modify call request to RIL returned without exception"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v15, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    .line 1124
    .local v15, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v15}, Lcom/android/phone/CallNotifier;->saveSwitchedLog()V

    .line 1126
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 1127
    .local v13, newCallType:I
    if-nez v13, :cond_23

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$3700(Lcom/android/phone/InCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v24

    if-eqz v24, :cond_21

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->onOpenCloseDialpad()V

    .line 1130
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/android/phone/InCallScreen;->mIsForegroundActivityForProximity:Z
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$4002(Lcom/android/phone/InCallScreen;Z)Z

    .line 1131
    const v24, 0x7f09076f

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    .line 1150
    :cond_22
    :goto_5
    const-string v24, "service_mirrorcall"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    #calls: Lcom/android/phone/InCallScreen;->broadcastMirrorCallAppIntentCallState(I)V
    invoke-static {v0, v13}, Lcom/android/phone/InCallScreen;->access$4100(Lcom/android/phone/InCallScreen;I)V

    goto/16 :goto_0

    .line 1132
    :cond_23
    const/16 v24, 0x3

    move/from16 v0, v24

    if-ne v13, v0, :cond_22

    .line 1133
    const-string v24, "common_volte_vt"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_26

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mIsForegroundActivityForProximity:Z
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$4002(Lcom/android/phone/InCallScreen;Z)Z

    .line 1135
    const-string v24, "vi_animation"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_24

    .line 1136
    invoke-static {}, Lcom/android/phone/CallAnimation;->clearAnimation()V

    .line 1138
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v24

    if-nez v24, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v24

    if-nez v24, :cond_25

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v24

    sget-boolean v25, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_25

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    sget-boolean v25, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1143
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v25 .. v25}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    goto/16 :goto_5

    .line 1145
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_22

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto/16 :goto_5

    .line 1158
    .end local v13           #newCallType:I
    .end local v15           #notifier:Lcom/android/phone/CallNotifier;
    .end local v17           #r:Landroid/os/AsyncResult;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mModifyCallPromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$4200(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v24

    if-eqz v24, :cond_0

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mModifyCallPromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$4200(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_27

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v15, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    .line 1161
    .restart local v15       #notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v15}, Lcom/android/phone/CallNotifier;->playUpgradeTimeoutTone()V

    .line 1163
    .end local v15           #notifier:Lcom/android/phone/CallNotifier;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const-string v25, "- DISMISSING mModifyCallPromptDialog."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mModifyCallPromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$4200(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->dismiss()V

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mModifyCallPromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v24 .. v25}, Lcom/android/phone/InCallScreen;->access$4202(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1170
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z
    invoke-static/range {v24 .. v24}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 1171
    const-string v24, "InCallScreen"

    const-string v25, "- TURN_ON_SCREEN_FOR_NEW_INCOMING"

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1172
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->forceWakeUpScreen()V

    goto/16 :goto_0

    .line 752
    :sswitch_data_0
    .sparse-switch
        0x34 -> :sswitch_5
        0x35 -> :sswitch_4
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_6
        0x6a -> :sswitch_7
        0x6b -> :sswitch_8
        0x6c -> :sswitch_9
        0x6e -> :sswitch_0
        0x72 -> :sswitch_a
        0x73 -> :sswitch_b
        0x76 -> :sswitch_c
        0x77 -> :sswitch_d
        0x78 -> :sswitch_e
        0x79 -> :sswitch_f
        0x7a -> :sswitch_10
        0x7b -> :sswitch_12
        0x7c -> :sswitch_13
        0x7d -> :sswitch_1a
        0x7e -> :sswitch_1b
        0x7f -> :sswitch_1c
        0x82 -> :sswitch_14
        0x96 -> :sswitch_16
        0x97 -> :sswitch_17
        0x98 -> :sswitch_11
        0x99 -> :sswitch_15
        0xa0 -> :sswitch_18
        0xaa -> :sswitch_19
        0xbe -> :sswitch_1d
    .end sparse-switch
.end method
