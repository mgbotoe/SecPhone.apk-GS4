.class Lcom/android/phone/VE_ContentManager$1;
.super Landroid/os/Handler;
.source "VE_ContentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VE_ContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VE_ContentManager;


# direct methods
.method constructor <init>(Lcom/android/phone/VE_ContentManager;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x4

    .line 314
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x11e6

    if-ge v1, v2, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    iget v2, p1, Landroid/os/Message;->what:I

    #calls: Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$000(Lcom/android/phone/VE_ContentManager;I)V

    .line 318
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 497
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 498
    return-void

    .line 320
    :sswitch_0
    const-string v1, "VE_ContentManager"

    const-string v2, "start get download content file size info"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->getDownloadContentSize_Runnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/phone/VE_ContentManager;->access$100(Lcom/android/phone/VE_ContentManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 325
    :sswitch_1
    const-string v1, "VE_ContentManager"

    const-string v2, "get download content file size info fail"

    invoke-static {v5, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :sswitch_2
    const-string v1, "VE_ContentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get download content file size info done, mDownloadFile_Size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I
    invoke-static {v3}, Lcom/android/phone/VE_ContentManager;->access$200(Lcom/android/phone/VE_ContentManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->check_FreeMemory()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$300(Lcom/android/phone/VE_ContentManager;)V

    goto :goto_0

    .line 336
    :sswitch_3
    const-string v1, "VE_ContentManager"

    const-string v2, "start download content file"

    invoke-static {v5, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->download_Content_Runnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/phone/VE_ContentManager;->access$400(Lcom/android/phone/VE_ContentManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 341
    :sswitch_4
    const-string v1, "VE_ContentManager"

    const-string v2, "no enough memory for save content file"

    invoke-static {v5, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I
    invoke-static {v2}, Lcom/android/phone/VE_ContentManager;->access$200(Lcom/android/phone/VE_ContentManager;)I

    move-result v2

    #calls: Lcom/android/phone/VE_ContentManager;->removeContent(I)V
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$500(Lcom/android/phone/VE_ContentManager;I)V

    goto :goto_0

    .line 344
    :cond_2
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 345
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I
    invoke-static {v2}, Lcom/android/phone/VE_ContentManager;->access$200(Lcom/android/phone/VE_ContentManager;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    #calls: Lcom/android/phone/VE_ContentManager;->removeContent(I)V
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$500(Lcom/android/phone/VE_ContentManager;I)V

    goto/16 :goto_0

    .line 347
    :cond_3
    const/4 v1, 0x5

    const-string v2, "VE_ContentManager"

    const-string v3, "unknown feature"

    invoke-static {v1, v2, v3}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    const/16 v2, 0x63

    #calls: Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$000(Lcom/android/phone/VE_ContentManager;I)V

    goto/16 :goto_0

    .line 353
    :sswitch_5
    const-string v1, "VE_ContentManager"

    const-string v2, "download content fail"

    invoke-static {v5, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/VE_ContentManager;->access$600(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/VE_ContentManager;->deleteContentFile(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$700(Lcom/android/phone/VE_ContentManager;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 358
    :sswitch_6
    const-string v1, "VE_ContentManager"

    const-string v2, "download content done"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/VE_ContentManager;->access$600(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I
    invoke-static {v3}, Lcom/android/phone/VE_ContentManager;->access$200(Lcom/android/phone/VE_ContentManager;)I

    move-result v3

    #calls: Lcom/android/phone/VE_ContentManager;->insertContentDB(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/VE_ContentManager;->access$800(Lcom/android/phone/VE_ContentManager;Ljava/lang/String;I)V

    .line 360
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->initAmfPlayer()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$900(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_0

    .line 364
    :sswitch_7
    const-string v1, "VE_ContentManager"

    const-string v2, "content exist"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->initAmfPlayer()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$900(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_0

    .line 369
    :sswitch_8
    const-string v1, "VE_ContentManager"

    const-string v2, "codec load complete"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->initBuffer()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1000(Lcom/android/phone/VE_ContentManager;)V

    .line 371
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->sendMsgToIncallscreenReadyToPlay()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1100(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_0

    .line 375
    :sswitch_9
    const-string v1, "VE_ContentManager"

    const-string v2, "codec load faild"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->removeUnusualContent()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1200(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_0

    .line 380
    :sswitch_a
    const-string v1, "VE_ContentManager"

    const-string v2, "wait incallscreen created"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 384
    :sswitch_b
    const-string v1, "VE_ContentManager"

    const-string v2, "is skm file format"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->sendMsgToIncallscreenReadyToPlay()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1100(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_0

    .line 390
    :sswitch_c
    const-string v1, "VE_ContentManager"

    const-string v2, "download content fail and disconnect"

    invoke-static {v5, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/VE_ContentManager;->access$600(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/VE_ContentManager;->deleteContentFile(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$700(Lcom/android/phone/VE_ContentManager;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 395
    :sswitch_d
    const-string v1, "VE_ContentManager"

    const-string v2, "download content done and disconnect"

    invoke-static {v5, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/VE_ContentManager;->access$600(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I
    invoke-static {v3}, Lcom/android/phone/VE_ContentManager;->access$200(Lcom/android/phone/VE_ContentManager;)I

    move-result v3

    #calls: Lcom/android/phone/VE_ContentManager;->insertContentDB(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/VE_ContentManager;->access$800(Lcom/android/phone/VE_ContentManager;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 400
    :sswitch_e
    const-string v1, "VE_ContentManager"

    const-string v2, "CLASS_STATE_MEDIAPLAY_ERROR"

    invoke-static {v5, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 402
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 403
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 404
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 405
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #setter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1, v3}, Lcom/android/phone/VE_ContentManager;->access$1302(Lcom/android/phone/VE_ContentManager;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    .line 407
    :cond_4
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->sendMsgToIncallscreenMediaError()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1400(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_0

    .line 410
    :sswitch_f
    const-string v1, "VE_ContentManager"

    const-string v2, "CLASS_STATE_INIT_JPG_COMPLETE"

    invoke-static {v5, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->sendMsgToIncallscreenReadyToPlay()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1100(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_0

    .line 415
    :sswitch_10
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1500(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "skm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1500(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 416
    :cond_5
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->start_Play_SKM()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1600(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_0

    .line 417
    :cond_6
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1500(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "am3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1500(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "amf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 418
    :cond_7
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->start_Play_AM3()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1700(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_0

    .line 419
    :cond_8
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1500(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1500(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    :cond_9
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->start_Play_JPG()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1800(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_0

    .line 426
    :sswitch_11
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #setter for: Lcom/android/phone/VE_ContentManager;->ExitProgram:Z
    invoke-static {v1, v7}, Lcom/android/phone/VE_ContentManager;->access$1902(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 427
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #setter for: Lcom/android/phone/VE_ContentManager;->isIncallscreenReady:Z
    invoke-static {v1, v6}, Lcom/android/phone/VE_ContentManager;->access$2002(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 428
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #setter for: Lcom/android/phone/VE_ContentManager;->mIsPlayerCompleted:Z
    invoke-static {v1, v7}, Lcom/android/phone/VE_ContentManager;->access$2102(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 430
    const/4 v1, 0x4

    :try_start_0
    const-string v2, "VE_ContentManager"

    const-string v3, "stop play content"

    invoke-static {v1, v2, v3}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/VE_ContentManager;->isPlayThread_Run:Z
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$2202(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 432
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/VE_ContentManager;->isBufferingThread_Run:Z
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$2302(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 434
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$2402(Lcom/android/phone/VE_ContentManager;Ljava/lang/String;)Ljava/lang/String;

    .line 436
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z
    invoke-static {v2}, Lcom/android/phone/VE_ContentManager;->access$2600(Lcom/android/phone/VE_ContentManager;)Z

    move-result v2

    #setter for: Lcom/android/phone/VE_ContentManager;->isStopPlayContent:Z
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$2502(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 438
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$2700(Lcom/android/phone/VE_ContentManager;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 439
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$2700(Lcom/android/phone/VE_ContentManager;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    :cond_a
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 443
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 444
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 445
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 446
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 447
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 448
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$1302(Lcom/android/phone/VE_ContentManager;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    .line 452
    :cond_b
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$2800(Lcom/android/phone/VE_ContentManager;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 453
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$2800(Lcom/android/phone/VE_ContentManager;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :cond_c
    :goto_1
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    const/16 v2, 0x63

    #calls: Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$000(Lcom/android/phone/VE_ContentManager;I)V

    goto/16 :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "VE_ContentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HANDLE_MSG_STOP_PLAY event has NullPointerException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 462
    .end local v0           #e:Ljava/lang/NullPointerException;
    :sswitch_12
    const-string v1, "VE_ContentManager"

    const-string v2, "pause play content"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #setter for: Lcom/android/phone/VE_ContentManager;->isOnPause:Z
    invoke-static {v1, v7}, Lcom/android/phone/VE_ContentManager;->access$2902(Lcom/android/phone/VE_ContentManager;Z)Z

    goto/16 :goto_0

    .line 467
    :sswitch_13
    const-string v1, "VE_ContentManager"

    const-string v2, "resume play content"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #setter for: Lcom/android/phone/VE_ContentManager;->isOnPause:Z
    invoke-static {v1, v6}, Lcom/android/phone/VE_ContentManager;->access$2902(Lcom/android/phone/VE_ContentManager;Z)Z

    goto/16 :goto_0

    .line 472
    :sswitch_14
    const-string v1, "VE_ContentManager"

    const-string v2, "incallscreen is ready"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #setter for: Lcom/android/phone/VE_ContentManager;->isIncallscreenReady:Z
    invoke-static {v1, v7}, Lcom/android/phone/VE_ContentManager;->access$2002(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 475
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$2400(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 476
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->doCheck()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$3000(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_0

    .line 481
    :sswitch_15
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$2700(Lcom/android/phone/VE_ContentManager;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    iget-object v2, v2, Lcom/android/phone/VE_ContentManager;->mBitmapData:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 485
    :sswitch_16
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mIsPlayerCompleted:Z
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$2100(Lcom/android/phone/VE_ContentManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 486
    const-string v1, "VE_ContentManager"

    const-string v2, "do not receive onPrepared()"

    invoke-static {v5, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 488
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 489
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 490
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 491
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #setter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1, v3}, Lcom/android/phone/VE_ContentManager;->access$1302(Lcom/android/phone/VE_ContentManager;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    .line 493
    :cond_d
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->sendMsgToIncallscreenMediaError()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1400(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_0

    .line 318
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_2
        0x66 -> :sswitch_1
        0x68 -> :sswitch_3
        0x69 -> :sswitch_4
        0x6a -> :sswitch_6
        0x6b -> :sswitch_5
        0x6c -> :sswitch_7
        0x6d -> :sswitch_8
        0x6e -> :sswitch_9
        0x70 -> :sswitch_a
        0x71 -> :sswitch_b
        0x72 -> :sswitch_c
        0x73 -> :sswitch_d
        0x74 -> :sswitch_e
        0x75 -> :sswitch_f
        0xc8 -> :sswitch_15
        0x12c -> :sswitch_16
        0x11eb -> :sswitch_10
        0x11ec -> :sswitch_11
        0x11ed -> :sswitch_12
        0x11ee -> :sswitch_13
        0x11ef -> :sswitch_14
    .end sparse-switch
.end method
