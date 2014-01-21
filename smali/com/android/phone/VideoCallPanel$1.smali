.class Lcom/android/phone/VideoCallPanel$1;
.super Landroid/os/Handler;
.source "VideoCallPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VideoCallPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VideoCallPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/VideoCallPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const v6, 0x7f090768

    const v5, 0x7f090431

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 230
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/VideoCallPanel;->access$000(Lcom/android/phone/VideoCallPanel;Ljava/lang/String;)V

    .line 232
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 234
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    #calls: Lcom/android/phone/VideoCallPanel;->swipeVideoSurfaces()V
    invoke-static {v0}, Lcom/android/phone/VideoCallPanel;->access$100(Lcom/android/phone/VideoCallPanel;)V

    goto :goto_0

    .line 238
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/VideoCallPanel;->access$200(Lcom/android/phone/VideoCallPanel;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 241
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/VideoCallPanel;->access$200(Lcom/android/phone/VideoCallPanel;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 244
    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/VideoCallPanel;->access$200(Lcom/android/phone/VideoCallPanel;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 247
    :sswitch_4
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/VideoCallPanel;->access$200(Lcom/android/phone/VideoCallPanel;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 250
    :sswitch_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iput-boolean v3, v0, Lcom/android/phone/InVTCallState;->mIsFarFrameReady:Z

    .line 251
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    #calls: Lcom/android/phone/VideoCallPanel;->hidePreparingDisplayAnim()V
    invoke-static {v0}, Lcom/android/phone/VideoCallPanel;->access$300(Lcom/android/phone/VideoCallPanel;)V

    .line 252
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    #calls: Lcom/android/phone/VideoCallPanel;->updateVtIncallButton()V
    invoke-static {v0}, Lcom/android/phone/VideoCallPanel;->access$400(Lcom/android/phone/VideoCallPanel;)V

    goto/16 :goto_0

    .line 257
    :sswitch_6
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    const-string v1, "CAMERA FIRST FRAME READY!!"

    #calls: Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/VideoCallPanel;->access$000(Lcom/android/phone/VideoCallPanel;Ljava/lang/String;)V

    .line 258
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;
    invoke-static {v0}, Lcom/android/phone/VideoCallPanel;->access$500(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;
    invoke-static {v0}, Lcom/android/phone/VideoCallPanel;->access$500(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;
    invoke-static {v0}, Lcom/android/phone/VideoCallPanel;->access$500(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/TextureView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    #calls: Lcom/android/phone/VideoCallPanel;->updateVtIncallButton()V
    invoke-static {v0}, Lcom/android/phone/VideoCallPanel;->access$400(Lcom/android/phone/VideoCallPanel;)V

    goto/16 :goto_0

    .line 267
    :sswitch_7
    sput-boolean v4, Lcom/android/phone/VtInCallButtonsView;->mIsSwitchCameraClicked:Z

    .line 268
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    #calls: Lcom/android/phone/VideoCallPanel;->updateVtIncallButton()V
    invoke-static {v0}, Lcom/android/phone/VideoCallPanel;->access$400(Lcom/android/phone/VideoCallPanel;)V

    goto/16 :goto_0

    .line 271
    :sswitch_8
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    const-string v1, "CAMERA START FAILED!!"

    #calls: Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/VideoCallPanel;->access$000(Lcom/android/phone/VideoCallPanel;Ljava/lang/String;)V

    .line 272
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    #calls: Lcom/android/phone/VideoCallPanel;->handleCameraStartFail()V
    invoke-static {v0}, Lcom/android/phone/VideoCallPanel;->access$600(Lcom/android/phone/VideoCallPanel;)V

    goto/16 :goto_0

    .line 276
    :sswitch_9
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$1;->this$0:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->displayFpsAndBitrate()V

    goto/16 :goto_0

    .line 232
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xca -> :sswitch_2
        0xcb -> :sswitch_3
        0xcc -> :sswitch_4
        0xcd -> :sswitch_5
        0xce -> :sswitch_7
        0xcf -> :sswitch_8
        0xd0 -> :sswitch_6
        0x3f2 -> :sswitch_9
    .end sparse-switch
.end method
