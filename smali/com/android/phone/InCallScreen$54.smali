.class Lcom/android/phone/InCallScreen$54;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->DisplayWaitingCallDialogWhenDoNotHaveHoldingCall(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$answerCallType:I

.field final synthetic val$fgCall:Lcom/android/internal/telephony/Call;

.field final synthetic val$ringingCall:Lcom/android/internal/telephony/Call;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Call;ILcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9302
    iput-object p1, p0, Lcom/android/phone/InCallScreen$54;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$54;->val$ringingCall:Lcom/android/internal/telephony/Call;

    iput p3, p0, Lcom/android/phone/InCallScreen$54;->val$answerCallType:I

    iput-object p4, p0, Lcom/android/phone/InCallScreen$54;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "di"
    .parameter "pos"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 9304
    packed-switch p2, :pswitch_data_0

    .line 9361
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/phone/InCallScreen$54;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v6, v6, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/InCallScreen$54;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v6, v6, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v6}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9362
    const-string v6, "voice_call_recording_second_call_ongoing"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 9363
    iget-object v6, p0, Lcom/android/phone/InCallScreen$54;->this$0:Lcom/android/phone/InCallScreen;

    const-string v7, "2nd answerCall - stop recording"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 9364
    iget-object v6, p0, Lcom/android/phone/InCallScreen$54;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v6, v6, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v6}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    .line 9367
    :cond_1
    return-void

    .line 9306
    :pswitch_0
    iget-object v6, p0, Lcom/android/phone/InCallScreen$54;->val$ringingCall:Lcom/android/internal/telephony/Call;

    iget v7, p0, Lcom/android/phone/InCallScreen$54;->val$answerCallType:I

    invoke-static {v6, v7}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;I)Z

    .line 9307
    iget-object v6, p0, Lcom/android/phone/InCallScreen$54;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I
    invoke-static {v6, v8}, Lcom/android/phone/InCallScreen;->access$6202(Lcom/android/phone/InCallScreen;I)I

    goto :goto_0

    .line 9310
    :pswitch_1
    const-string v6, "vzw_volte_ui"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 9311
    iget-object v6, p0, Lcom/android/phone/InCallScreen$54;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v7, p0, Lcom/android/phone/InCallScreen$54;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    #setter for: Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I
    invoke-static {v6, v7}, Lcom/android/phone/InCallScreen;->access$6302(Lcom/android/phone/InCallScreen;I)I

    .line 9312
    iget-object v6, p0, Lcom/android/phone/InCallScreen$54;->this$0:Lcom/android/phone/InCallScreen;

    iget v7, p0, Lcom/android/phone/InCallScreen$54;->val$answerCallType:I

    iput v7, v6, Lcom/android/phone/InCallScreen;->mRingingAcceptCallType:I

    .line 9315
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/InCallScreen$54;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 9316
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9318
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v5           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 9319
    .local v4, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "InCallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Call hangup: caught "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9321
    .end local v4           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_2
    iget-object v6, p0, Lcom/android/phone/InCallScreen$54;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAnswerCallAfterThisDisconnect =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/InCallScreen$54;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$6300(Lcom/android/phone/InCallScreen;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 9328
    :goto_2
    :try_start_1
    iget-object v6, p0, Lcom/android/phone/InCallScreen$54;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "com.movial.ipphone.IPPhone"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 9329
    iget-object v6, p0, Lcom/android/phone/InCallScreen$54;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v7, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I
    invoke-static {v6, v7}, Lcom/android/phone/InCallScreen;->access$6202(Lcom/android/phone/InCallScreen;I)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9343
    :cond_3
    :goto_3
    const-string v6, "automatic_answering_machine"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9344
    iget-object v6, p0, Lcom/android/phone/InCallScreen$54;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v1

    .line 9345
    .local v1, call:Lcom/android/phone/InCallScreen;
    if-eqz v1, :cond_0

    .line 9346
    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v2

    .line 9347
    .local v2, callCard:Lcom/android/phone/CallCard;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/phone/CallCard;->isAutoAnswered()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9348
    invoke-virtual {v2}, Lcom/android/phone/CallCard;->stopCallCardAnimationForMemoRecording()V

    .line 9349
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAutoAnsweringMode()Z

    move-result v6

    if-nez v6, :cond_4

    .line 9350
    iget-object v6, p0, Lcom/android/phone/InCallScreen$54;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/android/phone/PhoneUtils;->setAutoAnsweringMode(Lcom/android/phone/PhoneGlobals;Z)V

    .line 9351
    :cond_4
    iget-object v6, p0, Lcom/android/phone/InCallScreen$54;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->playGuidance(Lcom/android/phone/PhoneGlobals;)V

    .line 9352
    invoke-virtual {v2, v9}, Lcom/android/phone/CallCard;->setGuidanceMsgPlaying(Z)V

    goto/16 :goto_0

    .line 9323
    .end local v1           #call:Lcom/android/phone/InCallScreen;
    .end local v2           #callCard:Lcom/android/phone/CallCard;
    :cond_5
    iget-object v6, p0, Lcom/android/phone/InCallScreen$54;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto :goto_2

    .line 9331
    :catch_1
    move-exception v3

    .line 9332
    .local v3, e:Ljava/lang/ClassNotFoundException;
    iget-object v6, p0, Lcom/android/phone/InCallScreen$54;->this$0:Lcom/android/phone/InCallScreen;

    const-string v7, "IPPhone doesn\'t exists"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v6, v7, v9}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    goto :goto_3

    .line 9304
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
