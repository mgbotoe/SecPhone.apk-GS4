.class final Lcom/android/phone/PhoneUtils$18;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->guidanceBeepSoundPlay(Lcom/android/phone/PhoneGlobals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0
    .parameter

    .prologue
    .line 8701
    iput-object p1, p0, Lcom/android/phone/PhoneUtils$18;->val$app:Lcom/android/phone/PhoneGlobals;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 9
    .parameter "mp"

    .prologue
    .line 8703
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8704
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 8706
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 8707
    const/4 p1, 0x0

    .line 8708
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$1402(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 8710
    iget-object v5, p0, Lcom/android/phone/PhoneUtils$18;->val$app:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v0

    .line 8711
    .local v0, call:Lcom/android/phone/InCallScreen;
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v1

    .line 8712
    .local v1, callCard:Lcom/android/phone/CallCard;
    invoke-virtual {v1}, Lcom/android/phone/CallCard;->showAnswerMemoRecordingPhoto()V

    .line 8713
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v4

    .line 8715
    .local v4, recorder:Lcom/android/phone/AnsweringMemoRecorder;
    invoke-virtual {v4}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8716
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 8717
    .local v2, currentTime:J
    invoke-virtual {v4}, Lcom/android/phone/AnsweringMemoRecorder;->getStartRecordTime()J

    move-result-wide v5

    sub-long v5, v2, v5

    const-wide/16 v7, 0x3e8

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 8718
    invoke-virtual {v4}, Lcom/android/phone/AnsweringMemoRecorder;->stopRecord()V

    .line 8724
    .end local v2           #currentTime:J
    :cond_1
    :goto_0
    return-void

    .line 8720
    :cond_2
    invoke-virtual {v4}, Lcom/android/phone/AnsweringMemoRecorder;->canStartRecording()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8721
    invoke-virtual {v4}, Lcom/android/phone/AnsweringMemoRecorder;->startRecord()V

    goto :goto_0
.end method
