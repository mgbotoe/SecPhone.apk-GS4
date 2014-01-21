.class Lcom/android/phone/InVTCallScreen$4;
.super Landroid/content/BroadcastReceiver;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1490
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v10, 0x83

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1493
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1494
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1495
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v6, "HandSet Pluged in Broadcast received"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1503
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x67

    const-string v7, "state"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v5, v6, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    .line 1505
    .local v4, message:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1537
    .end local v4           #message:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1506
    :cond_1
    const-string v5, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1507
    const-string v5, "coverType"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1508
    const-string v5, "coverType"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1509
    .local v3, isCoverType:I
    const-string v5, "InVTCallScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive isCoverType :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1511
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->app:Lcom/android/phone/PhoneGlobals;
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$6800(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->isSViewCoverType()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1515
    .end local v3           #isCoverType:I
    :cond_2
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1516
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1517
    :cond_3
    const-string v5, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1518
    const-string v5, "volume_panel"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1519
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->IsItPossibleShowVolumePanel()Z
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v5

    if-ne v5, v9, :cond_0

    .line 1520
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    .line 1521
    .local v1, bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InVTCallScreen;->isInVTCallScreenTopActivity()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1522
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->showVolumePanel()V
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$7000(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1527
    .end local v1           #bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :cond_4
    const-string v5, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1528
    const-string v5, "dual_recording_to_single"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1529
    .local v2, changeToSingleCamera:Z
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIOP level changed, change to single camera? : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v9}, Lcom/android/phone/InVTCallScreen;->access$000(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;Z)V

    .line 1530
    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v5, v5, Lcom/android/phone/InVTCallScreen;->isDualCameraStarted:Z

    if-eqz v5, :cond_0

    .line 1531
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    const v7, 0x7f0903ee

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v5, v6}, Lcom/android/phone/InVTCallScreen;->access$7102(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1532
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$7100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1533
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v5, v8}, Lcom/android/phone/InVTCallScreen;->updateDualCameraLayout(Z)V

    .line 1534
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v5, v8}, Lcom/android/phone/InVTCallScreen;->requestDualCamera(Z)V

    goto/16 :goto_0
.end method
