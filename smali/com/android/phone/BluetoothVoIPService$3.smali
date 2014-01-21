.class Lcom/android/phone/BluetoothVoIPService$3;
.super Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;
.source "BluetoothVoIPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothVoIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothVoIPService;

.field final voipInf:Landroid/os/IVoIPInterface;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothVoIPService;)V
    .locals 1
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;-><init>()V

    .line 491
    const-string v0, "voip"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    return-void
.end method


# virtual methods
.method public answerCall()Z
    .locals 4

    .prologue
    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, res:Z
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothVoIPService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    if-eqz v1, :cond_1

    .line 498
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPIncoming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 503
    :cond_1
    :goto_0
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "answerCall : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return v0

    .line 502
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public cdmaSetSecondCallState(Z)V
    .locals 4
    .parameter "state"

    .prologue
    .line 668
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothVoIPService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothVoIPService;->access$900(Lcom/android/phone/BluetoothVoIPService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 670
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothVoIPService;->access$900(Lcom/android/phone/BluetoothVoIPService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 671
    return-void
.end method

.method public cdmaSwapSecondCallState()V
    .locals 4

    .prologue
    .line 662
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothVoIPService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothVoIPService;->access$900(Lcom/android/phone/BluetoothVoIPService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 664
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothVoIPService;->access$900(Lcom/android/phone/BluetoothVoIPService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 665
    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothVoIPService;->access$800(Lcom/android/phone/BluetoothVoIPService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothVoIPService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothVoIPService;->access$800(Lcom/android/phone/BluetoothVoIPService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothVoIPService;->access$800(Lcom/android/phone/BluetoothVoIPService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothVoIPService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothVoIPService;->access$800(Lcom/android/phone/BluetoothVoIPService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleVoipCallStateChange()V
    .locals 4

    .prologue
    .line 681
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothVoIPService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v1, "shiks"

    const-string v2, "handleVoipCallStateChange in mBinder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothVoIPService;->access$900(Lcom/android/phone/BluetoothVoIPService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 684
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothVoIPService;->access$900(Lcom/android/phone/BluetoothVoIPService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 685
    return-void
.end method

.method public hangupCall()Z
    .locals 4

    .prologue
    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, res:Z
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothVoIPService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 518
    :cond_0
    :goto_0
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hangupCall : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return v0

    .line 516
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isExistVoipCall()Z
    .locals 2

    .prologue
    .line 688
    sget-object v0, Lcom/android/phone/BluetoothVoIPService;->foregroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/phone/BluetoothVoIPService;->ringingVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 689
    :cond_0
    const-string v0, "BluetoothVoIPService"

    const-string v1, "VoIP Call exist!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v0, 0x1

    .line 694
    :goto_0
    return v0

    .line 693
    :cond_1
    const-string v0, "BluetoothVoIPService"

    const-string v1, "VoIP Call doesn\'t exist!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoipHolding()Z
    .locals 2

    .prologue
    .line 698
    sget-object v0, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 699
    const-string v0, "BluetoothVoIPService"

    const-string v1, "Voip Call is holding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v0, 0x1

    .line 703
    :goto_0
    return v0

    .line 702
    :cond_0
    const-string v0, "BluetoothVoIPService"

    const-string v1, "Voip Call is not holding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listCurrentCalls()Z
    .locals 4

    .prologue
    .line 642
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothVoIPService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothVoIPService;->access$900(Lcom/android/phone/BluetoothVoIPService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 644
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothVoIPService;->access$900(Lcom/android/phone/BluetoothVoIPService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 645
    const/4 v1, 0x1

    return v1
.end method

.method public processChld(I)Z
    .locals 8
    .parameter "chld"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 530
    iget-object v5, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    const-string v6, "android.permission.MODIFY_PHONE_STATE"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/phone/BluetoothVoIPService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v5, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothVoIPService;->access$800(Lcom/android/phone/BluetoothVoIPService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 535
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    const/4 v1, 0x0

    .line 537
    .local v1, result:Z
    if-nez p1, :cond_5

    .line 538
    const-string v3, "BluetoothVoIPService"

    const-string v4, "Process AT+CHLD=0 for VoIP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v3, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/BluetoothVoIPService;->access$800(Lcom/android/phone/BluetoothVoIPService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_3

    .line 541
    sget-object v3, Lcom/android/phone/BluetoothVoIPService;->ringingVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    sget-object v3, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_1

    .line 543
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    if-eqz v3, :cond_1

    .line 544
    iget-object v3, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v3}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v3

    if-nez v3, :cond_1

    .line 545
    iget-object v3, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v3}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_1
    :goto_0
    move v4, v1

    .line 628
    :cond_2
    :goto_1
    return v4

    .line 548
    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "BluetoothVoIPService"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 552
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_3
    sget-object v3, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/BluetoothVoIPService;->access$800(Lcom/android/phone/BluetoothVoIPService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 553
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    move v4, v1

    .line 554
    goto :goto_1

    .line 557
    :cond_4
    sget-object v3, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/BluetoothVoIPService;->access$800(Lcom/android/phone/BluetoothVoIPService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 559
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    if-eqz v3, :cond_1

    .line 560
    iget-object v3, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v3}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v3

    if-nez v3, :cond_1

    .line 561
    iget-object v3, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v3}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    move v4, v1

    .line 562
    goto :goto_1

    .line 565
    :catch_1
    move-exception v0

    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v3, "BluetoothVoIPService"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_5
    if-ne p1, v3, :cond_b

    .line 570
    const-string v5, "BluetoothVoIPService"

    const-string v6, "Process AT+CHLD=1 for VoIP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v5, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothVoIPService;->access$800(Lcom/android/phone/BluetoothVoIPService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v6, :cond_7

    .line 573
    sget-object v3, Lcom/android/phone/BluetoothVoIPService;->foregroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_6

    .line 575
    :try_start_2
    iget-object v3, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    if-eqz v3, :cond_6

    .line 576
    iget-object v3, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v3}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v3

    if-nez v3, :cond_6

    .line 577
    iget-object v3, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v3}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    :cond_6
    :goto_2
    move v4, v1

    .line 582
    goto/16 :goto_1

    .line 580
    :catch_2
    move-exception v0

    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v3, "BluetoothVoIPService"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 585
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_7
    sget-object v5, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_a

    iget-object v5, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothVoIPService;->access$800(Lcom/android/phone/BluetoothVoIPService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 587
    :try_start_3
    iget-object v5, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    if-eqz v5, :cond_8

    .line 588
    iget-object v5, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v5}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v5

    if-nez v5, :cond_8

    .line 589
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v5}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v5

    if-eqz v5, :cond_9

    move v1, v3

    :cond_8
    :goto_3
    move v4, v1

    .line 593
    goto/16 :goto_1

    :cond_9
    move v1, v4

    .line 589
    goto :goto_3

    .line 592
    :catch_3
    move-exception v0

    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v3, "BluetoothVoIPService"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 596
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_a
    sget-object v3, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/BluetoothVoIPService;->access$800(Lcom/android/phone/BluetoothVoIPService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 597
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    move v4, v1

    .line 599
    goto/16 :goto_1

    .line 602
    :cond_b
    const/4 v5, 0x2

    if-ne p1, v5, :cond_11

    .line 603
    const-string v5, "BluetoothVoIPService"

    const-string v6, "Process AT+CHLD=2 for VoIP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v5, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothVoIPService;->access$800(Lcom/android/phone/BluetoothVoIPService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v6, :cond_10

    iget-object v5, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    if-eqz v5, :cond_10

    .line 607
    :try_start_4
    sget-object v5, Lcom/android/phone/BluetoothVoIPService;->ringingVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_c

    .line 608
    iget-object v5, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v5}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z

    move-result v1

    .line 610
    :cond_c
    sget-object v5, Lcom/android/phone/BluetoothVoIPService;->foregroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_e

    .line 611
    if-nez v1, :cond_d

    iget-object v5, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v5}, Landroid/os/IVoIPInterface;->holdVoIPCall()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_d
    move v4, v3

    goto/16 :goto_1

    .line 613
    :cond_e
    sget-object v5, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_2

    .line 614
    iget-object v5, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v5}, Landroid/os/IVoIPInterface;->resumeVoIPCall()Z

    move-result v1

    .line 615
    if-nez v1, :cond_f

    iget-object v5, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v5}, Landroid/os/IVoIPInterface;->resumeVoIPCall()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v5

    if-eqz v5, :cond_2

    :cond_f
    move v4, v3

    goto/16 :goto_1

    .line 617
    :catch_4
    move-exception v0

    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v3, "BluetoothVoIPService"

    const-string v5, "RemoteException"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 619
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_10
    const-string v3, "BluetoothVoIPService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CS Call and VoIP Call cannot swap or voipInf is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BluetoothVoIPService$3;->voipInf:Landroid/os/IVoIPInterface;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 623
    :cond_11
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    .line 624
    const-string v3, "BluetoothVoIPService"

    const-string v5, "Process AT+CHLD=3 for VoIP"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v3, "BluetoothVoIPService"

    const-string v5, "VoIP Call doesn\'t support adding a held call"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public queryPhoneState()Z
    .locals 4

    .prologue
    .line 649
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothVoIPService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothVoIPService;->access$900(Lcom/android/phone/BluetoothVoIPService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 651
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    #getter for: Lcom/android/phone/BluetoothVoIPService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothVoIPService;->access$900(Lcom/android/phone/BluetoothVoIPService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 652
    const/4 v1, 0x1

    return v1
.end method

.method public sendDtmf(I)Z
    .locals 4
    .parameter "dtmf"

    .prologue
    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, res:Z
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothVoIPService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v1, "BluetoothVoIPService"

    const-string v2, "sendDtmf : VoIP does not support DTMF"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return v0
.end method

.method public updateBtHandsfreeAfterRadioTechnologyChange()V
    .locals 3

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService$3;->this$0:Lcom/android/phone/BluetoothVoIPService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothVoIPService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-static {}, Lcom/android/phone/BluetoothVoIPService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothVoIPService"

    const-string v1, "updateBtHandsfreeAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_0
    return-void
.end method
