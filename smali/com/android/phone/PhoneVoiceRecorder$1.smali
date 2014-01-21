.class Lcom/android/phone/PhoneVoiceRecorder$1;
.super Landroid/os/Handler;
.source "PhoneVoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneVoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneVoiceRecorder;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneVoiceRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 90
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 92
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->displayToast(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/PhoneVoiceRecorder;->access$000(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/PhoneVoiceRecorder;->access$000(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$000(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/PhoneVoiceRecorder;->access$000(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    .line 101
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/PhoneVoiceRecorder;->access$000(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z
    invoke-static {v1}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 105
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v1}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecodingIcon()V

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mIsServiceAlive:Z
    invoke-static {v1}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v3, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 110
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mStateChangedRegistrantList:Landroid/os/RegistrantList;
    invoke-static {v1}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/RegistrantList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 115
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/PhoneVoiceRecorder;->access$000(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v1, v1, Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;

    if-nez v1, :cond_4

    .line 117
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/PhoneVoiceRecorder;->access$000(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_4

    .line 118
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v2, "srvcc handover VoiceRecording, reassign CallCard object."

    const/4 v3, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 119
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$000(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;

    .line 122
    :cond_4
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v1, v1, Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v1, v1, Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v1}, Lcom/android/phone/CallCard;->updateRecordTime()V

    goto/16 :goto_0

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_0
    .end sparse-switch
.end method
