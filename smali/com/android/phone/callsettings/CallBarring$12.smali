.class Lcom/android/phone/callsettings/CallBarring$12;
.super Landroid/os/Handler;
.source "CallBarring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/CallBarring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallBarring;)V
    .locals 0
    .parameter

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring$12;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 1198
    const-string v1, "CallBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage() msg.what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1200
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$12;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/CallBarring;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1201
    const-string v1, "CallBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNetworkServiceHandler() Fragment finished. Ignore handler message :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg.what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1224
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1208
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ServiceState;

    .line 1209
    .local v0, state:Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 1210
    const-string v1, "mNetworkServiceHandler: network available for queries."

    #calls: Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->access$2100(Ljava/lang/String;)V

    .line 1212
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$12;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/CallBarring;->access$100(Lcom/android/phone/callsettings/CallBarring;Ljava/lang/String;)V

    .line 1214
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$12;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #getter for: Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->access$2200(Lcom/android/phone/callsettings/CallBarring;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$12;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #getter for: Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->access$1400(Lcom/android/phone/callsettings/CallBarring;)Landroid/os/Handler;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    goto :goto_0

    .line 1220
    .end local v0           #state:Landroid/telephony/ServiceState;
    :sswitch_1
    const-string v1, "mNetworkServiceHandler: cancel query requested."

    #calls: Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->access$2100(Ljava/lang/String;)V

    .line 1221
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$12;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #calls: Lcom/android/phone/callsettings/CallBarring;->dismissCallWaiting()V
    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->access$2300(Lcom/android/phone/callsettings/CallBarring;)V

    goto :goto_0

    .line 1206
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x258 -> :sswitch_1
    .end sparse-switch
.end method
