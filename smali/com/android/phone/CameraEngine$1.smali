.class Lcom/android/phone/CameraEngine$1;
.super Landroid/os/Handler;
.source "CameraEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CameraEngine;


# direct methods
.method constructor <init>(Lcom/android/phone/CameraEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/phone/CameraEngine$1;->this$0:Lcom/android/phone/CameraEngine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-static {}, Lcom/android/phone/CameraEngine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CameraEngine$1;->this$0:Lcom/android/phone/CameraEngine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage :: msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/CameraEngine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CameraEngine;->access$100(Lcom/android/phone/CameraEngine;Ljava/lang/String;)V

    .line 84
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CameraEngine$1;->this$0:Lcom/android/phone/CameraEngine;

    #calls: Lcom/android/phone/CameraEngine;->isNeedUpdate()Z
    invoke-static {v0}, Lcom/android/phone/CameraEngine;->access$200(Lcom/android/phone/CameraEngine;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/android/phone/CameraEngine$1;->this$0:Lcom/android/phone/CameraEngine;

    #getter for: Lcom/android/phone/CameraEngine;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/CameraEngine;->access$300(Lcom/android/phone/CameraEngine;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/phone/CameraEngine$1;->this$0:Lcom/android/phone/CameraEngine;

    #getter for: Lcom/android/phone/CameraEngine;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/CameraEngine;->access$300(Lcom/android/phone/CameraEngine;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 89
    iget-object v0, p0, Lcom/android/phone/CameraEngine$1;->this$0:Lcom/android/phone/CameraEngine;

    #setter for: Lcom/android/phone/CameraEngine;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v0, v3}, Lcom/android/phone/CameraEngine;->access$302(Lcom/android/phone/CameraEngine;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CameraEngine$1;->this$0:Lcom/android/phone/CameraEngine;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090861

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/phone/CameraEngine;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/phone/CameraEngine;->access$302(Lcom/android/phone/CameraEngine;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 92
    iget-object v0, p0, Lcom/android/phone/CameraEngine$1;->this$0:Lcom/android/phone/CameraEngine;

    #getter for: Lcom/android/phone/CameraEngine;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/CameraEngine;->access$300(Lcom/android/phone/CameraEngine;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 93
    iget-object v0, p0, Lcom/android/phone/CameraEngine$1;->this$0:Lcom/android/phone/CameraEngine;

    iget-object v0, v0, Lcom/android/phone/CameraEngine;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CameraEngine$1;->this$0:Lcom/android/phone/CameraEngine;

    #getter for: Lcom/android/phone/CameraEngine;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/CameraEngine;->access$300(Lcom/android/phone/CameraEngine;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/phone/CameraEngine$1;->this$0:Lcom/android/phone/CameraEngine;

    #getter for: Lcom/android/phone/CameraEngine;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/CameraEngine;->access$300(Lcom/android/phone/CameraEngine;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 97
    iget-object v0, p0, Lcom/android/phone/CameraEngine$1;->this$0:Lcom/android/phone/CameraEngine;

    #setter for: Lcom/android/phone/CameraEngine;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v0, v3}, Lcom/android/phone/CameraEngine;->access$302(Lcom/android/phone/CameraEngine;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
