.class Lcom/android/phone/InCallScreen$59;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->handleModifyCallRequest(Lcom/android/internal/telephony/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$callType:I

.field final synthetic val$conn:Lcom/android/internal/telephony/Connection;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11287
    iput-object p1, p0, Lcom/android/phone/InCallScreen$59;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$59;->val$conn:Lcom/android/internal/telephony/Connection;

    iput p3, p0, Lcom/android/phone/InCallScreen$59;->val$callType:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v8, 0x3

    .line 11289
    iget-object v4, p0, Lcom/android/phone/InCallScreen$59;->this$0:Lcom/android/phone/InCallScreen;

    const-string v5, "handle MODIFY_CALL_PROMPT_CONFIRMED, proceed..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 11291
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/InCallScreen$59;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/InCallScreen$59;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v4}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 11293
    .local v0, currentTime:J
    iget-object v4, p0, Lcom/android/phone/InCallScreen$59;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v4}, Lcom/android/phone/PhoneVoiceRecorder;->getStartRecordTime()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 11294
    iget-object v4, p0, Lcom/android/phone/InCallScreen$59;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v4}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    .line 11296
    .end local v0           #currentTime:J
    :cond_0
    iget-object v4, p0, Lcom/android/phone/InCallScreen$59;->val$conn:Lcom/android/internal/telephony/Connection;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->acceptConnectionTypeChange(Lcom/android/internal/telephony/Connection;)V

    .line 11297
    const-string v4, "service_mirrorcall"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 11298
    iget-object v4, p0, Lcom/android/phone/InCallScreen$59;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v5, 0x3

    #calls: Lcom/android/phone/InCallScreen;->broadcastMirrorCallAppIntentCallState(I)V
    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->access$4100(Lcom/android/phone/InCallScreen;I)V

    .line 11300
    :cond_1
    iget v4, p0, Lcom/android/phone/InCallScreen$59;->val$callType:I

    if-ne v4, v8, :cond_5

    .line 11301
    const-string v4, "common_volte_vt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 11302
    iget-object v4, p0, Lcom/android/phone/InCallScreen$59;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v5, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mIsForegroundActivityForProximity:Z
    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->access$4002(Lcom/android/phone/InCallScreen;Z)Z

    .line 11303
    const-string v4, "vi_animation"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11304
    invoke-static {}, Lcom/android/phone/CallAnimation;->clearAnimation()V

    .line 11306
    :cond_2
    iget-object v4, p0, Lcom/android/phone/InCallScreen$59;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/InCallScreen$59;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v4

    if-nez v4, :cond_3

    .line 11307
    iget-object v4, p0, Lcom/android/phone/InCallScreen$59;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v4

    sget-boolean v5, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    if-eq v4, v5, :cond_3

    .line 11308
    iget-object v4, p0, Lcom/android/phone/InCallScreen$59;->this$0:Lcom/android/phone/InCallScreen;

    sget-boolean v5, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 11311
    :cond_3
    iget-object v4, p0, Lcom/android/phone/InCallScreen$59;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen$59;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 11317
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/android/phone/InCallScreen$59;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v3, v4, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    .line 11318
    .local v3, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->saveSwitchedLog()V

    .line 11319
    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->stopUpgradeRequestTone()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11327
    .end local v3           #notifier:Lcom/android/phone/CallNotifier;
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen$59;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mModifyCallPromptDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$4200(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 11328
    iget-object v4, p0, Lcom/android/phone/InCallScreen$59;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mModifyCallPromptDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$4200(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 11330
    :cond_6
    return-void

    .line 11313
    :cond_7
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen$59;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 11314
    iget-object v4, p0, Lcom/android/phone/InCallScreen$59;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 11322
    :catch_0
    move-exception v2

    .line 11323
    .local v2, e:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "InCallScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception invoking acceptConnectionTypeChange "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
