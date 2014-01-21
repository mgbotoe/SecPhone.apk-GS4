.class Lcom/android/phone/InCallTouchUi$5;
.super Ljava/lang/Object;
.source "InCallTouchUi.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallTouchUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallTouchUi;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallTouchUi;)V
    .locals 0
    .parameter

    .prologue
    .line 3450
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi$5;->this$0:Lcom/android/phone/InCallTouchUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .locals 9
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    const/16 v8, 0x8c

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 3452
    const/4 v2, 0x0

    .line 3453
    .local v2, stream:I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    .line 3454
    .local v0, bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    if-eqz v0, :cond_0

    .line 3455
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x6

    .line 3459
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi$5;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/InCallTouchUi;->access$300(Lcom/android/phone/InCallTouchUi;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 3460
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi$5;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/InCallTouchUi;->access$300(Lcom/android/phone/InCallTouchUi;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3461
    const-string v4, "InCallTouchUi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProgressChanged progress : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3463
    if-lez p2, :cond_1

    .line 3464
    add-int/lit8 p2, p2, -0x1

    .line 3465
    :cond_1
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi$5;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v4}, Lcom/android/phone/InCallTouchUi;->access$1300(Lcom/android/phone/InCallTouchUi;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v4

    if-nez v4, :cond_2

    .line 3466
    const-string v4, "InCallTouchUi"

    const-string v5, "Set force progress level 1 for call volume"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3467
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi$5;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v4}, Lcom/android/phone/InCallTouchUi;->access$1300(Lcom/android/phone/InCallTouchUi;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 3469
    :cond_2
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi$5;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/phone/InCallTouchUi;->access$1400(Lcom/android/phone/InCallTouchUi;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-eq v4, p2, :cond_3

    if-eqz p3, :cond_3

    .line 3470
    const-string v4, "InCallTouchUi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Touch setting volume level : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3471
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Touch setting volume level : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3472
    .local v1, description:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi$5;->this$0:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v4}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 3473
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi$5;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/phone/InCallTouchUi;->access$1400(Lcom/android/phone/InCallTouchUi;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v2, p2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3474
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi$5;->this$0:Lcom/android/phone/InCallTouchUi;

    iput-boolean v7, v3, Lcom/android/phone/InCallTouchUi;->mIschangedbyCall:Z

    .line 3476
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi$5;->this$0:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v3}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/InCallTouchUi$5;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/phone/InCallTouchUi;->access$1400(Lcom/android/phone/InCallTouchUi;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    if-ne p2, v3, :cond_5

    .line 3477
    const-string v3, "InCallTouchUi"

    const-string v4, "Extra vol on max touch"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi$5;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v3}, Lcom/android/phone/InCallTouchUi;->access$1300(Lcom/android/phone/InCallTouchUi;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v3

    const v4, 0x7f0202ea

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgressDrawable(I)V

    .line 3485
    .end local v1           #description:Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v2, v3

    .line 3455
    goto/16 :goto_0

    .line 3480
    .restart local v1       #description:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi$5;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v3}, Lcom/android/phone/InCallTouchUi;->access$1300(Lcom/android/phone/InCallTouchUi;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v3

    const v4, 0x7f0202e9

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgressDrawable(I)V

    goto :goto_1
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 3487
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 3490
    const-string v0, "InCallTouchUi"

    const-string v1, "onStopTrackingTouch : "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    return-void
.end method
