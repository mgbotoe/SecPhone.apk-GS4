.class Lcom/android/phone/VoiceAndVideoCallTutorial$4;
.super Landroid/os/Handler;
.source "VoiceAndVideoCallTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VoiceAndVideoCallTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;


# direct methods
.method constructor <init>(Lcom/android/phone/VoiceAndVideoCallTutorial;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$4;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 392
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 410
    :pswitch_0
    const-string v0, "VoiceAndVideoCallTutorial: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :goto_0
    return-void

    .line 394
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$4;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$1008(Lcom/android/phone/VoiceAndVideoCallTutorial;)I

    .line 395
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$4;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #calls: Lcom/android/phone/VoiceAndVideoCallTutorial;->dispCallDuration()V
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$1100(Lcom/android/phone/VoiceAndVideoCallTutorial;)V

    .line 396
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$4;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    iget-object v0, v0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 399
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$4;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #calls: Lcom/android/phone/VoiceAndVideoCallTutorial;->runVoiceCallAnimation()V
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$1200(Lcom/android/phone/VoiceAndVideoCallTutorial;)V

    goto :goto_0

    .line 402
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$4;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #calls: Lcom/android/phone/VoiceAndVideoCallTutorial;->callActiveScreenSettings()V
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$1300(Lcom/android/phone/VoiceAndVideoCallTutorial;)V

    goto :goto_0

    .line 405
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$4;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$000(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 406
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$4;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    iget-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$4;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->nextstep:I
    invoke-static {v1}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$200(Lcom/android/phone/VoiceAndVideoCallTutorial;)I

    move-result v1

    #calls: Lcom/android/phone/VoiceAndVideoCallTutorial;->setReultSetting(I)V
    invoke-static {v0, v1}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$300(Lcom/android/phone/VoiceAndVideoCallTutorial;I)V

    .line 407
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$4;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    invoke-virtual {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->finish()V

    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
