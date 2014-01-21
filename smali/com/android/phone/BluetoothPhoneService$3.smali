.class Lcom/android/phone/BluetoothPhoneService$3;
.super Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .parameter

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public answerCall()Z
    .locals 3

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method public cdmaSetSecondCallState(Z)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1065
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1067
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1068
    return-void
.end method

.method public cdmaSwapSecondCallState()V
    .locals 4

    .prologue
    .line 1059
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1061
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1062
    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1007
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1019
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phoneMgrs:[Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSimForVoiceCalls()I

    move-result v1

    .line 1020
    .local v1, simID:I
    if-nez v1, :cond_1

    .line 1021
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 1022
    .local v0, operatorName:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$1400()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMSLOT1 operatorName:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    .line 1030
    .end local v1           #simID:I
    :cond_0
    :goto_0
    return-object v0

    .line 1024
    .end local v0           #operatorName:Ljava/lang/String;
    .restart local v1       #simID:I
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 1025
    .restart local v0       #operatorName:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$1400()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMSLOT2 operatorName:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    goto :goto_0

    .line 1028
    .end local v0           #operatorName:Ljava/lang/String;
    .end local v1           #simID:I
    :cond_2
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #operatorName:Ljava/lang/String;
    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

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
    .line 1034
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hangupCall()Z
    .locals 3

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 820
    :goto_0
    return v0

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_0

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 817
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_0

    .line 820
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listCurrentCalls()Z
    .locals 4

    .prologue
    .line 1039
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1041
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1042
    const/4 v1, 0x1

    return v1
.end method

.method public declared-synchronized processChld(I)Z
    .locals 13
    .parameter "chld"

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 843
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v10, "android.permission.MODIFY_PHONE_STATE"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 845
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 846
    .local v4, phoneType:I
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 847
    .local v5, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 848
    .local v1, backgroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 849
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    iget-object v9, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v9, :cond_0

    .line 850
    const-string v9, "BluetoothPhoneService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "chld=2; CONF -> THRWAY ; when 2nd call is incomming; app.cdmaPhoneCallState.IsThreeWayCallOrigStateDialing() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_0
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    .line 855
    .local v2, isGeneric:Z
    const-string v9, "BluetoothPhoneService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isGeneric = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    if-nez p1, :cond_2

    .line 858
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 859
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 1002
    :goto_0
    monitor-exit p0

    return v7

    .line 861
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    goto :goto_0

    .line 863
    :cond_2
    if-ne p1, v7, :cond_c

    .line 864
    if-ne v4, v12, :cond_6

    .line 865
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 867
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "CHLD:1 Callwaiting Answer call"

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    .line 868
    :cond_3
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 843
    .end local v0           #app:Lcom/android/phone/PhoneGlobals;
    .end local v1           #backgroundCall:Lcom/android/internal/telephony/Call;
    .end local v2           #isGeneric:Z
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    .end local v4           #phoneType:I
    .end local v5           #ringingCall:Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 873
    .restart local v0       #app:Lcom/android/phone/PhoneGlobals;
    .restart local v1       #backgroundCall:Lcom/android/internal/telephony/Call;
    .restart local v2       #isGeneric:Z
    .restart local v3       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #phoneType:I
    .restart local v5       #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "CHLD:1 Hangup Call"

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    .line 874
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0

    .line 877
    :cond_6
    if-ne v4, v7, :cond_b

    .line 881
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 882
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    move-result v7

    goto :goto_0

    .line 883
    :cond_7
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 884
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    goto :goto_0

    .line 885
    :cond_8
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 886
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    goto/16 :goto_0

    .line 887
    :cond_9
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 888
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    goto/16 :goto_0

    :cond_a
    move v7, v8

    .line 890
    goto/16 :goto_0

    .line 893
    :cond_b
    const-string v7, "BluetoothPhoneService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bad phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 894
    goto/16 :goto_0

    .line 896
    :cond_c
    if-ne p1, v12, :cond_1b

    .line 897
    if-ne v4, v12, :cond_17

    .line 903
    const-string v9, "feature_lgt"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 904
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 905
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_d

    const-string v8, "CHLD:2 Callwaiting Answer call"

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    .line 906
    :cond_d
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 907
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 909
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/phone/BluetoothPhoneService$3;->cdmaSetSecondCallState(Z)V

    goto/16 :goto_0

    .line 911
    :cond_e
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v9

    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v9, v10, :cond_16

    iget-object v9, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v9, :cond_16

    iget-object v9, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v9

    if-nez v9, :cond_16

    .line 915
    if-eqz v2, :cond_10

    .line 917
    invoke-virtual {p0}, Lcom/android/phone/BluetoothPhoneService$3;->cdmaSwapSecondCallState()V

    .line 919
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, "CHLD:2 Swap Calls; is Generic"

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    .line 920
    :cond_f
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 923
    :cond_10
    const-string v8, "BluetoothPhoneService"

    const-string v9, "CHLD:2 Swap Calls is not Generic"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 928
    :cond_11
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 929
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "CHLD:2 Callwaiting Answer call"

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    .line 930
    :cond_12
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 931
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 933
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/phone/BluetoothPhoneService$3;->cdmaSetSecondCallState(Z)V

    goto/16 :goto_0

    .line 935
    :cond_13
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v9

    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v9, v10, :cond_16

    iget-object v9, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v9, :cond_16

    iget-object v9, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v9

    if-nez v9, :cond_16

    .line 939
    if-eqz v2, :cond_15

    .line 941
    invoke-virtual {p0}, Lcom/android/phone/BluetoothPhoneService$3;->cdmaSwapSecondCallState()V

    .line 943
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_14

    const-string v8, "CHLD:2 Swap Calls; is Generic"

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    .line 944
    :cond_14
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 947
    :cond_15
    const-string v8, "BluetoothPhoneService"

    const-string v9, "CHLD:2 Swap Calls is not Generic"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 952
    :cond_16
    const-string v7, "BluetoothPhoneService"

    const-string v9, "CDMA fail to do hold active and accept held"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 953
    goto/16 :goto_0

    .line 954
    :cond_17
    if-ne v4, v7, :cond_1a

    .line 955
    const-string v9, "feature_lgt"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v9

    if-nez v9, :cond_19

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v9

    if-nez v9, :cond_19

    .line 957
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v7

    if-eqz v7, :cond_18

    const-string v7, "CHLD:2 do not work - don\'t support change to hold call if has only foregroundCall"

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    :cond_18
    move v7, v8

    .line 958
    goto/16 :goto_0

    .line 960
    :cond_19
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 963
    :cond_1a
    const-string v7, "BluetoothPhoneService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 964
    goto/16 :goto_0

    .line 966
    :cond_1b
    const/4 v9, 0x3

    if-ne p1, v9, :cond_23

    .line 967
    if-ne v4, v12, :cond_20

    .line 968
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v6

    .line 971
    .local v6, state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v9, :cond_1e

    .line 972
    if-eqz v2, :cond_1c

    .line 973
    const-string v8, "BluetoothPhoneService"

    const-string v9, "CHLD:3 Merge Calls is Generic"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 976
    :cond_1c
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1d

    const-string v8, "CHLD:3 Merge Calls is not Generic"

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    .line 977
    :cond_1d
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto/16 :goto_0

    .line 980
    :cond_1e
    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v7, :cond_1f

    move v7, v8

    .line 984
    goto/16 :goto_0

    .line 986
    :cond_1f
    const-string v7, "BluetoothPhoneService"

    const-string v9, "GSG no call to add conference"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 987
    goto/16 :goto_0

    .line 988
    .end local v6           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_20
    if-ne v4, v7, :cond_22

    .line 989
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    if-eqz v9, :cond_21

    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v9

    if-eqz v9, :cond_21

    .line 990
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto/16 :goto_0

    .line 993
    :cond_21
    const-string v7, "BluetoothPhoneService"

    const-string v9, "GSG no call to merge"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 994
    goto/16 :goto_0

    .line 997
    :cond_22
    const-string v7, "BluetoothPhoneService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 998
    goto/16 :goto_0

    .line 1001
    :cond_23
    const-string v7, "BluetoothPhoneService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bad CHLD value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v7, v8

    .line 1002
    goto/16 :goto_0
.end method

.method public queryPhoneState()Z
    .locals 4

    .prologue
    .line 1046
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1048
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1049
    const/4 v1, 0x1

    return v1
.end method

.method public sendDtmf(I)Z
    .locals 6
    .parameter "dtmf"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 824
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDtmf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    .line 830
    :cond_0
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 831
    int-to-char v2, p1

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, s:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v4, v5}, Lcom/android/internal/telephony/CallManager;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)Z

    move-result v0

    .line 836
    .end local v1           #s:Ljava/lang/String;
    .local v0, ret:Z
    :goto_0
    return v0

    .line 834
    .end local v0           #ret:Z
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    int-to-char v3, p1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallManager;->sendDtmf(C)Z

    move-result v0

    .restart local v0       #ret:Z
    goto :goto_0
.end method

.method public updateBtHandsfreeAfterRadioTechnologyChange()V
    .locals 3

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothPhoneService"

    const-string v1, "updateBtHandsfreeAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #calls: Lcom/android/phone/BluetoothPhoneService;->updateBtPhoneStateAfterRadioTechnologyChange()V
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1600(Lcom/android/phone/BluetoothPhoneService;)V

    .line 1056
    return-void
.end method
