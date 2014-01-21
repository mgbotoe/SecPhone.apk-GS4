.class Lcom/android/phone/VtInCallButtonsView$2;
.super Ljava/lang/Object;
.source "VtInCallButtonsView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VtInCallButtonsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VtInCallButtonsView;


# direct methods
.method constructor <init>(Lcom/android/phone/VtInCallButtonsView;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/phone/VtInCallButtonsView$2;->this$0:Lcom/android/phone/VtInCallButtonsView;

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
    const/16 v8, 0x64

    const/4 v7, 0x0

    .line 499
    const-string v4, "VtInCallButtonsView"

    const-string v5, "[VideoCallVolumePanel] onProgressChanged"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/16 v3, 0xb

    .line 501
    .local v3, stream:I
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView$2;->this$0:Lcom/android/phone/VtInCallButtonsView;

    #getter for: Lcom/android/phone/VtInCallButtonsView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/phone/VtInCallButtonsView;->access$100(Lcom/android/phone/VtInCallButtonsView;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 502
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    .line 504
    .local v1, bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    if-eqz v1, :cond_0

    .line 505
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x6

    .line 509
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView$2;->this$0:Lcom/android/phone/VtInCallButtonsView;

    #getter for: Lcom/android/phone/VtInCallButtonsView;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/VtInCallButtonsView;->access$000(Lcom/android/phone/VtInCallButtonsView;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 510
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView$2;->this$0:Lcom/android/phone/VtInCallButtonsView;

    #getter for: Lcom/android/phone/VtInCallButtonsView;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/VtInCallButtonsView;->access$000(Lcom/android/phone/VtInCallButtonsView;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 511
    const-string v4, "VtInCallButtonsView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProgressChanged progress : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fromTouch : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    if-lez p2, :cond_1

    .line 514
    add-int/lit8 p2, p2, -0x1

    .line 515
    :cond_1
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView$2;->this$0:Lcom/android/phone/VtInCallButtonsView;

    #getter for: Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v4}, Lcom/android/phone/VtInCallButtonsView;->access$200(Lcom/android/phone/VtInCallButtonsView;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v4

    if-nez v4, :cond_2

    .line 516
    const-string v4, "VtInCallButtonsView"

    const-string v5, "Set force progress level 1 for call volume"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView$2;->this$0:Lcom/android/phone/VtInCallButtonsView;

    #getter for: Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v4}, Lcom/android/phone/VtInCallButtonsView;->access$200(Lcom/android/phone/VtInCallButtonsView;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 519
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-eq v4, p2, :cond_3

    if-eqz p3, :cond_3

    .line 520
    const-string v4, "VtInCallButtonsView"

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

    .line 521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Touch setting volume level : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, description:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView$2;->this$0:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v4}, Lcom/android/phone/VtInCallButtonsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 523
    invoke-virtual {v0, v3, p2, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 526
    .end local v2           #description:Ljava/lang/String;
    :cond_3
    return-void

    .line 505
    :cond_4
    const/16 v3, 0xb

    goto/16 :goto_0
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 528
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 531
    const-string v0, "VtInCallButtonsView"

    const-string v1, "onStopTrackingTouch : "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-void
.end method
