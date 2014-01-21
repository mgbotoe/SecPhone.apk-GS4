.class Lcom/android/phone/VtInCallButtonsView$1;
.super Landroid/os/Handler;
.source "VtInCallButtonsView.java"


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
    .line 92
    iput-object p1, p0, Lcom/android/phone/VtInCallButtonsView$1;->this$0:Lcom/android/phone/VtInCallButtonsView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 97
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 100
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 107
    const-string v0, "VtInCallButtonsView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView$1;->this$0:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0}, Lcom/android/phone/VtInCallButtonsView;->hideVolumePanel()V

    .line 103
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView$1;->this$0:Lcom/android/phone/VtInCallButtonsView;

    #getter for: Lcom/android/phone/VtInCallButtonsView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/VtInCallButtonsView;->access$000(Lcom/android/phone/VtInCallButtonsView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
