.class Lcom/android/phone/CdmaCallWaitingSetting$1;
.super Landroid/os/Handler;
.source "CdmaCallWaitingSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaCallWaitingSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaCallWaitingSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaCallWaitingSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/phone/CdmaCallWaitingSetting$1;->this$0:Lcom/android/phone/CdmaCallWaitingSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 358
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 360
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ServiceState;

    .line 361
    .local v0, state:Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 362
    invoke-static {}, Lcom/android/phone/CdmaCallWaitingSetting;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "mNetworkServiceHandler: network available for queries."

    #calls: Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/CdmaCallWaitingSetting;->access$100(Ljava/lang/String;)V

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting$1;->this$0:Lcom/android/phone/CdmaCallWaitingSetting;

    #getter for: Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/CdmaCallWaitingSetting;->access$300(Lcom/android/phone/CdmaCallWaitingSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting$1;->this$0:Lcom/android/phone/CdmaCallWaitingSetting;

    #getter for: Lcom/android/phone/CdmaCallWaitingSetting;->mNetworkServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/CdmaCallWaitingSetting;->access$200(Lcom/android/phone/CdmaCallWaitingSetting;)Landroid/os/Handler;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    goto :goto_0

    .line 369
    .end local v0           #state:Landroid/telephony/ServiceState;
    :sswitch_1
    invoke-static {}, Lcom/android/phone/CdmaCallWaitingSetting;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mNetworkServiceHandler: cancel query requested."

    #calls: Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/CdmaCallWaitingSetting;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x258 -> :sswitch_1
    .end sparse-switch
.end method
