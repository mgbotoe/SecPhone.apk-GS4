.class Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;
.super Landroid/os/Handler;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier$UpgradeTonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier$UpgradeTonePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 5228
    iput-object p1, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;->this$1:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0x67

    const/16 v5, 0x64

    const/16 v4, 0x32

    const/16 v3, 0xb

    const/16 v2, 0x65

    .line 5230
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 5272
    :cond_0
    :goto_0
    return-void

    .line 5232
    :pswitch_0
    const-string v0, "UpgradeTonePlayer"

    const-string v1, "Single BEEP"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5233
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;->this$1:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

    new-instance v1, Landroid/media/ToneGenerator;

    invoke-direct {v1, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    #setter for: Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->access$1902(Lcom/android/phone/CallNotifier$UpgradeTonePlayer;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    .line 5234
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;->this$1:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

    #getter for: Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->access$1900(Lcom/android/phone/CallNotifier$UpgradeTonePlayer;)Landroid/media/ToneGenerator;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 5235
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 5239
    :pswitch_1
    const-string v0, "UpgradeTonePlayer"

    const-string v1, "First BEEP"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5240
    invoke-virtual {p0, v2}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;->sendEmptyMessage(I)Z

    .line 5241
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;->this$1:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

    #getter for: Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mEventTime:J
    invoke-static {v0}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->access$2000(Lcom/android/phone/CallNotifier$UpgradeTonePlayer;)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;->sendEmptyMessageAtTime(IJ)Z

    .line 5242
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;->this$1:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

    const/16 v1, 0x66

    #setter for: Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mToneState:I
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->access$2102(Lcom/android/phone/CallNotifier$UpgradeTonePlayer;I)I

    goto :goto_0

    .line 5246
    :pswitch_2
    const-string v0, "UpgradeTonePlayer"

    const-string v1, "Stop tone"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5247
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;->this$1:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

    #getter for: Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->access$1900(Lcom/android/phone/CallNotifier$UpgradeTonePlayer;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5248
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;->this$1:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

    #getter for: Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->access$1900(Lcom/android/phone/CallNotifier$UpgradeTonePlayer;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 5249
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;->this$1:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

    #getter for: Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->access$1900(Lcom/android/phone/CallNotifier$UpgradeTonePlayer;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 5250
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;->this$1:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->access$1902(Lcom/android/phone/CallNotifier$UpgradeTonePlayer;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    goto :goto_0

    .line 5255
    :pswitch_3
    const-string v0, "UpgradeTonePlayer"

    const-string v1, "Second BEEP"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5256
    invoke-virtual {p0, v2}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;->sendEmptyMessage(I)Z

    .line 5257
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;->this$1:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

    #setter for: Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mToneState:I
    invoke-static {v0, v6}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->access$2102(Lcom/android/phone/CallNotifier$UpgradeTonePlayer;I)I

    goto :goto_0

    .line 5261
    :pswitch_4
    const-string v0, "UpgradeTonePlayer"

    const-string v1, "Time out BEEP"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5262
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;->this$1:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

    new-instance v1, Landroid/media/ToneGenerator;

    invoke-direct {v1, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    #setter for: Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->access$1902(Lcom/android/phone/CallNotifier$UpgradeTonePlayer;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    .line 5263
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;->this$1:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

    #getter for: Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->access$1900(Lcom/android/phone/CallNotifier$UpgradeTonePlayer;)Landroid/media/ToneGenerator;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 5264
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;->sendEmptyMessageDelayed(IJ)Z

    .line 5265
    const-wide/16 v0, 0x1d6

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;->sendEmptyMessageDelayed(IJ)Z

    .line 5266
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;->this$1:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

    const/16 v1, 0x68

    #setter for: Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mToneState:I
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->access$2102(Lcom/android/phone/CallNotifier$UpgradeTonePlayer;I)I

    goto/16 :goto_0

    .line 5230
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
