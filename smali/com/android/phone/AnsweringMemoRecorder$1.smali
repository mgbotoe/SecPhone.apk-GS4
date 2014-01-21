.class Lcom/android/phone/AnsweringMemoRecorder$1;
.super Landroid/os/Handler;
.source "AnsweringMemoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AnsweringMemoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AnsweringMemoRecorder;


# direct methods
.method constructor <init>(Lcom/android/phone/AnsweringMemoRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 104
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToast(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    iget-object v1, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/AnsweringMemoRecorder;->mCallCard:Lcom/android/phone/CallCard;

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    .line 113
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mIsRecording:Z
    invoke-static {v0}, Lcom/android/phone/AnsweringMemoRecorder;->access$100(Lcom/android/phone/AnsweringMemoRecorder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    invoke-virtual {v0}, Lcom/android/phone/AnsweringMemoRecorder;->stopRecodingIcon()V

    goto :goto_0

    .line 121
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    const-string v1, "AnsweringMemoRecorder INFO_DURATION_PROGRESS - "

    iget-object v2, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v2}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v2

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 122
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    iget-object v0, v0, Lcom/android/phone/AnsweringMemoRecorder;->mCallCard:Lcom/android/phone/CallCard;

    if-nez v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    const-string v1, "srvcc handover VoiceRecording, reassign CallCard object."

    const/4 v2, 0x1

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 125
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    iget-object v1, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/AnsweringMemoRecorder;->mCallCard:Lcom/android/phone/CallCard;

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    iget-object v0, v0, Lcom/android/phone/AnsweringMemoRecorder;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_4

    .line 129
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    iget-object v0, v0, Lcom/android/phone/AnsweringMemoRecorder;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->updateMemoRecordTime()V

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    iget-object v0, v0, Lcom/android/phone/AnsweringMemoRecorder;->mCallCardCoveredDialog:Lcom/android/phone/CallCardCoveredDialog;

    if-nez v0, :cond_5

    .line 133
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_5

    .line 134
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    iget-object v1, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getCallCardCoveredDialogScreen()Lcom/android/phone/CallCardCoveredDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/AnsweringMemoRecorder;->mCallCardCoveredDialog:Lcom/android/phone/CallCardCoveredDialog;

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    iget-object v0, v0, Lcom/android/phone/AnsweringMemoRecorder;->mCallCardCoveredDialog:Lcom/android/phone/CallCardCoveredDialog;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$1;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    iget-object v0, v0, Lcom/android/phone/AnsweringMemoRecorder;->mCallCardCoveredDialog:Lcom/android/phone/CallCardCoveredDialog;

    invoke-virtual {v0}, Lcom/android/phone/CallCardCoveredDialog;->updateMemoRecordTime()V

    goto/16 :goto_0

    .line 102
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_0
    .end sparse-switch
.end method
