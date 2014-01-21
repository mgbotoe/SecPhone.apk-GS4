.class final Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "MSimPhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimPhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimPhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/MSimPhoneInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MSimPhoneInterfaceManager;Lcom/android/phone/MSimPhoneInterfaceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/MSimPhoneInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x1

    .line 150
    iget-object v7, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    invoke-virtual {v7}, Lcom/android/phone/MSimPhoneInterfaceManager;->getDefaultSubscription()I

    move-result v6

    .line 152
    .local v6, sub:I
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 287
    const-string v7, "MSimPhoneInterfaceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MainThreadHandler: unexpected message code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_0
    :pswitch_0
    return-void

    .line 154
    :pswitch_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 155
    .local v5, request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    iget-object v7, v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 156
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {v6}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 157
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    const-string v7, "MSimPhoneInterfaceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CMD_HANDLE_PIN_MMI: sub :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v7, v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v7}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 161
    monitor-enter v5

    .line 162
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 163
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 167
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    .end local v5           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 168
    .restart local v5       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    const/4 v7, 0x3

    invoke-virtual {p0, v7, v5}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 170
    .local v2, onCompleted:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    iget-object v7, v7, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7, v2}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto :goto_0

    .line 174
    .end local v2           #onCompleted:Landroid/os/Message;
    .end local v5           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 175
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 176
    .restart local v5       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_0

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 177
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v7, v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 183
    :goto_1
    monitor-enter v5

    .line 184
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 185
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v7

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v7

    .line 180
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1

    .line 189
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v5           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_4
    iget-object v7, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    #calls: Lcom/android/phone/MSimPhoneInterfaceManager;->answerRingingCallInternal()V
    invoke-static {v7}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$000(Lcom/android/phone/MSimPhoneInterfaceManager;)V

    goto/16 :goto_0

    .line 193
    :pswitch_5
    iget-object v7, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    #calls: Lcom/android/phone/MSimPhoneInterfaceManager;->silenceRingerInternal(I)V
    invoke-static {v7, v6}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$100(Lcom/android/phone/MSimPhoneInterfaceManager;I)V

    goto/16 :goto_0

    .line 197
    :pswitch_6
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 198
    .restart local v5       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    const/4 v1, 0x0

    .line 199
    .local v1, hungUp:Z
    iget-object v7, v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 200
    iget-object v7, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ending call on subscription ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$200(Lcom/android/phone/MSimPhoneInterfaceManager;Ljava/lang/String;)V

    .line 201
    iget-object v7, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    iget-object v7, v7, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v6}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 202
    .restart local v3       #phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 203
    .local v4, phoneType:I
    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    .line 206
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    .line 218
    :goto_2
    iget-object v8, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CMD_END_CALL: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v1, :cond_4

    const-string v7, "hung up!"

    :goto_3
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;Z)V
    invoke-static {v8, v7, v10}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$300(Lcom/android/phone/MSimPhoneInterfaceManager;Ljava/lang/String;Z)V

    .line 219
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 221
    monitor-enter v5

    .line 222
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 223
    monitor-exit v5

    goto/16 :goto_0

    :catchall_2
    move-exception v7

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v7

    .line 207
    :cond_1
    if-ne v4, v10, :cond_3

    .line 209
    const-string v7, "feature_chn_duos"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 210
    iget-object v7, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    iget-object v7, v7, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 211
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    goto :goto_2

    .line 213
    :cond_2
    iget-object v7, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    iget-object v7, v7, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    goto :goto_2

    .line 216
    :cond_3
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected phone type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 218
    :cond_4
    const-string v7, "no call to hang up"

    goto :goto_3

    .line 227
    .end local v1           #hungUp:Z
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    .end local v4           #phoneType:I
    .end local v5           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 228
    .restart local v5       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    const/16 v7, 0x8

    invoke-virtual {p0, v7, v5}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 229
    .restart local v2       #onCompleted:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    iget-object v8, v7, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v7, v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    check-cast v7, [B

    check-cast v7, [B

    invoke-interface {v8, v7, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 233
    .end local v2           #onCompleted:Landroid/os/Message;
    .end local v5           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 234
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 235
    .restart local v5       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    iput-object v0, v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 237
    monitor-enter v5

    .line 238
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 239
    monitor-exit v5

    goto/16 :goto_0

    :catchall_3
    move-exception v7

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v7

    .line 243
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v5           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 244
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    check-cast v7, [B

    invoke-virtual {v8, v7}, Lcom/android/phone/MSimPhoneInterfaceManager;->broadcastUnsolOemHookIntent([B)V

    goto/16 :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
