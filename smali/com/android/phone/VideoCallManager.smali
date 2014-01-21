.class public Lcom/android/phone/VideoCallManager;
.super Ljava/lang/Object;
.source "VideoCallManager.java"


# static fields
.field private static sVideoCallManager:Lcom/android/phone/VideoCallManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    .line 83
    const-string v1, "Instantiating VideoCallManager"

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallManager;->log(Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/android/phone/VideoCallManager;->mContext:Landroid/content/Context;

    .line 87
    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    iput-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    new-instance v2, Lcom/android/phone/IMSMediaStateListener;

    iget-object v3, p0, Lcom/android/phone/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/phone/IMSMediaStateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->registerForMediaStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/VideoCallManager;->createDefaultImages()V

    .line 97
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method private createDefaultImage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .parameter "defaultImagePath"
    .parameter "resId"
    .parameter "newfileName"

    .prologue
    .line 639
    iget-object v7, p0, Lcom/android/phone/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 640
    .local v6, resources:Landroid/content/res/Resources;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 641
    .local v1, defaultFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    .line 642
    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 643
    .local v3, image:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 645
    .local v5, os:Ljava/io/OutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/phone/VideoCallManager;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual {v7, p3, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 646
    const/16 v7, 0x2000

    new-array v0, v7, [B

    .line 647
    .local v0, bufArray:[B
    const/4 v4, 0x0

    .line 649
    .local v4, imageLength:I
    :cond_0
    if-eqz v3, :cond_1

    .line 650
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 652
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/VideoCallManager;->log(Ljava/lang/String;)V

    .line 653
    if-lez v4, :cond_2

    .line 654
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 656
    :cond_2
    if-gtz v4, :cond_0

    .line 661
    if-eqz v5, :cond_3

    .line 662
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 664
    :cond_3
    if-eqz v3, :cond_4

    .line 665
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 671
    .end local v0           #bufArray:[B
    .end local v4           #imageLength:I
    :cond_4
    :goto_0
    const/4 v5, 0x0

    .line 674
    .end local v3           #image:Ljava/io/InputStream;
    .end local v5           #os:Ljava/io/OutputStream;
    :cond_5
    const/4 v1, 0x0

    .line 675
    return-void

    .line 667
    .restart local v0       #bufArray:[B
    .restart local v3       #image:Ljava/io/InputStream;
    .restart local v4       #imageLength:I
    .restart local v5       #os:Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 668
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 657
    .end local v0           #bufArray:[B
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #imageLength:I
    :catch_1
    move-exception v2

    .line 658
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 661
    if-eqz v5, :cond_6

    .line 662
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 664
    :cond_6
    if-eqz v3, :cond_4

    .line 665
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 667
    :catch_2
    move-exception v2

    .line 668
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 660
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 661
    if-eqz v5, :cond_7

    .line 662
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 664
    :cond_7
    if-eqz v3, :cond_8

    .line 665
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 669
    :cond_8
    :goto_1
    throw v7

    .line 667
    :catch_3
    move-exception v2

    .line 668
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private createDefaultImages()V
    .locals 3

    .prologue
    .line 631
    const-string v0, "data/data/com.android.phone/files/preset_defaultimage_qcif.jpg"

    const v1, 0x7f0202a8

    const-string v2, "preset_defaultimage_qcif.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/VideoCallManager;->createDefaultImage(Ljava/lang/String;ILjava/lang/String;)V

    .line 632
    const-string v0, "data/data/com.android.phone/files/preset_defaultimage_vga.jpg"

    const v1, 0x7f0202a9

    const-string v2, "preset_defaultimage_vga.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/VideoCallManager;->createDefaultImage(Ljava/lang/String;ILjava/lang/String;)V

    .line 633
    const-string v0, "data/data/com.android.phone/files/preset_defaultimage_vga_land.jpg"

    const v1, 0x7f0202aa

    const-string v2, "preset_defaultimage_vga_land.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/VideoCallManager;->createDefaultImage(Ljava/lang/String;ILjava/lang/String;)V

    .line 634
    const-string v0, "data/data/com.android.phone/files/video_call_capture_vga.jpg"

    const v1, 0x7f02067f

    const-string v2, "video_call_capture_vga.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/VideoCallManager;->createDefaultImage(Ljava/lang/String;ILjava/lang/String;)V

    .line 635
    const-string v0, "data/data/com.android.phone/files/video_call_capture_qcif.jpg"

    const v1, 0x7f02067e

    const-string v2, "video_call_capture_qcif.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/VideoCallManager;->createDefaultImage(Ljava/lang/String;ILjava/lang/String;)V

    .line 636
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/phone/VideoCallManager;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 106
    const-class v1, Lcom/android/phone/VideoCallManager;

    monitor-enter v1

    :try_start_0
    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "common_volte_vt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 117
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    .line 110
    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/phone/VideoCallManager;->sVideoCallManager:Lcom/android/phone/VideoCallManager;

    if-nez v2, :cond_2

    .line 111
    new-instance v2, Lcom/android/phone/VideoCallManager;

    invoke-direct {v2, p0}, Lcom/android/phone/VideoCallManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/phone/VideoCallManager;->sVideoCallManager:Lcom/android/phone/VideoCallManager;

    .line 114
    :cond_2
    sget-object v2, Lcom/android/phone/VideoCallManager;->sVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v2, v2, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v2, :cond_0

    .line 117
    sget-object v0, Lcom/android/phone/VideoCallManager;->sVideoCallManager:Lcom/android/phone/VideoCallManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 696
    const-string v0, "VideoCallManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    return-void
.end method


# virtual methods
.method public captureSurfaceImage(Z)V
    .locals 7
    .parameter "isNearEnd"

    .prologue
    .line 574
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 575
    .local v0, activeCall:Lcom/android/internal/telephony/Call;
    const/4 v1, 0x0

    .line 577
    .local v1, callType:I
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 578
    const/16 v1, 0xa

    .line 593
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v5, p1, v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->captureSurfaceImage(ZI)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :goto_1
    if-nez p1, :cond_0

    .line 599
    const-string v4, "data/data/com.android.phone/files/video_call_capture_qcif.jpg"

    .line 600
    .local v4, imagePath:Ljava/lang/String;
    const-string v3, "QCIF"

    .line 602
    .local v3, frameSize:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 603
    const-string v3, "QCIF"

    .line 604
    const-string v4, "data/data/com.android.phone/files/video_call_capture_qcif.jpg"

    .line 623
    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    const/16 v6, 0x100

    invoke-virtual {v5, v4, v6, v3}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->sendStillImage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_1 .. :try_end_1} :catch_1

    .line 628
    .end local v3           #frameSize:Ljava/lang/String;
    .end local v4           #imagePath:Ljava/lang/String;
    :cond_0
    :goto_3
    return-void

    .line 579
    :cond_1
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQVGAVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 580
    const/16 v1, 0x9

    goto :goto_0

    .line 583
    :cond_2
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 584
    const/4 v1, 0x6

    goto :goto_0

    .line 585
    :cond_3
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 586
    const/4 v1, 0x7

    goto :goto_0

    .line 588
    :cond_4
    const-string v5, "captureSurfaceImage can not be executed"

    invoke-direct {p0, v5}, Lcom/android/phone/VideoCallManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 594
    :catch_0
    move-exception v2

    .line 595
    .local v2, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v2}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_1

    .line 605
    .end local v2           #e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    .restart local v3       #frameSize:Ljava/lang/String;
    .restart local v4       #imagePath:Ljava/lang/String;
    :cond_5
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQVGAVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 606
    const-string v3, "QVGA"

    .line 607
    const-string v4, "data/data/com.android.phone/files/video_call_capture_qcif.jpg"

    goto :goto_2

    .line 611
    :cond_6
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 612
    const-string v3, "VGA"

    .line 613
    const-string v4, "data/data/com.android.phone/files/video_call_capture_vga.jpg"

    goto :goto_2

    .line 614
    :cond_7
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 615
    const-string v3, "VGALAND"

    .line 616
    const-string v4, "data/data/com.android.phone/files/video_call_capture_qcif.jpg"

    goto :goto_2

    .line 618
    :cond_8
    const-string v5, "sendStillImage can not be executed"

    invoke-direct {p0, v5}, Lcom/android/phone/VideoCallManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 624
    :catch_1
    move-exception v2

    .line 625
    .restart local v2       #e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v2}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_3
.end method

.method public closeCamera()V
    .locals 2

    .prologue
    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->closeCamera()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getBackCameraId()I
    .locals 3

    .prologue
    .line 342
    const/4 v1, 0x0

    .line 345
    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getBackCameraId()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 350
    :goto_0
    return v1

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCameraDirection()I
    .locals 3

    .prologue
    .line 462
    const/4 v1, 0x0

    .line 465
    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getCameraDirection()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 470
    :goto_0
    return v1

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 312
    const/4 v1, 0x0

    .line 315
    .local v1, result:Landroid/hardware/Camera$Parameters;
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getCameraParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 320
    :goto_0
    return-object v1

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;
    .locals 3

    .prologue
    .line 376
    const/4 v1, 0x0

    .line 379
    .local v1, result:Lcom/samsung/commonimsinterface/imscommon/CameraState;
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 384
    :goto_0
    return-object v1

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getFrontCameraId()I
    .locals 3

    .prologue
    .line 359
    const/4 v1, 0x0

    .line 362
    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getFrontCameraId()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 367
    :goto_0
    return v1

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNegotiatedFPS()I
    .locals 3

    .prologue
    .line 190
    const/4 v1, 0x0

    .line 193
    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getNegotiatedFPS()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 198
    :goto_0
    return v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNegotiatedHeight()I
    .locals 3

    .prologue
    .line 160
    const/4 v1, 0x0

    .line 163
    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getNegotiatedHeight()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 168
    :goto_0
    return v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNegotiatedWidth()I
    .locals 3

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 178
    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getNegotiatedWidth()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 183
    :goto_0
    return v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNumberOfCameras()I
    .locals 3

    .prologue
    .line 227
    const/4 v1, 0x0

    .line 230
    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getNumberOfCameras()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 235
    :goto_0
    return v1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method holdVideo()V
    .locals 2

    .prologue
    .line 680
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->holdVideo()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :goto_0
    return-void

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public mediaDeInit()V
    .locals 2

    .prologue
    .line 136
    const-string v1, "mediaDeInit"

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallManager;->log(Ljava/lang/String;)V

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->mediaDeInit()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public mediaInit()V
    .locals 2

    .prologue
    .line 124
    const-string v1, "mediaInit"

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallManager;->log(Ljava/lang/String;)V

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->mediaInit()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized openCamera(I)Z
    .locals 3
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 246
    monitor-enter p0

    const/4 v1, 0x0

    .line 249
    .local v1, result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v2, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->openCamera(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 254
    :goto_0
    monitor-exit p0

    return v1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 246
    .end local v0           #e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method resumeVideo()V
    .locals 2

    .prologue
    .line 689
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->resumeVideo()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :goto_0
    return-void

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendLiveVideo()V
    .locals 2

    .prologue
    .line 564
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->sendLiveVideo()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :goto_0
    return-void

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendStillImage()V
    .locals 8

    .prologue
    .line 507
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsExt;->getValidCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 509
    .local v5, validCall:Lcom/android/internal/telephony/Call;
    const-string v2, "data/data/com.android.phone/files/preset_defaultimage.jpg"

    .line 510
    .local v2, imagePath:Ljava/lang/String;
    const-string v1, "QCIF"

    .line 512
    .local v1, frameSize:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preset_name"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 513
    .local v4, preset_Name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preset_path"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 516
    .local v3, presetImageSrc:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 517
    const-string v1, "QCIF"

    .line 518
    const-string v2, "data/data/com.android.phone/files/preset_defaultimage_qcif.jpg"

    .line 542
    :goto_0
    if-eqz v4, :cond_1

    const-string v6, "photo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "Default"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 543
    :cond_0
    if-eqz v3, :cond_1

    .line 544
    move-object v2, v3

    .line 548
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v6, v6, Lcom/android/phone/InVTCallState;->mCapturedLocalFile:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 549
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v2, v6, Lcom/android/phone/InVTCallState;->mCapturedLocalFile:Ljava/lang/String;

    .line 553
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    const/16 v7, 0x100

    invoke-virtual {v6, v2, v7, v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->sendStillImage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :goto_1
    return-void

    .line 519
    :cond_3
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 520
    const-string v1, "VGA"

    .line 521
    const-string v2, "data/data/com.android.phone/files/preset_defaultimage_vga.jpg"

    goto :goto_0

    .line 522
    :cond_4
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 523
    const-string v6, "feature_skt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 524
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 525
    const-string v1, "QCIF"

    .line 526
    const-string v2, "data/data/com.android.phone/files/preset_defaultimage_qcif.jpg"

    goto :goto_0

    .line 528
    :cond_5
    const-string v1, "VGA"

    .line 529
    const-string v2, "data/data/com.android.phone/files/preset_defaultimage_vga.jpg"

    goto :goto_0

    .line 532
    :cond_6
    const-string v1, "VGALAND"

    .line 533
    const-string v2, "data/data/com.android.phone/files/preset_defaultimage_vga_land.jpg"

    goto :goto_0

    .line 536
    :cond_7
    const-string v6, "sendStillImage can not be executed"

    invoke-direct {p0, v6}, Lcom/android/phone/VideoCallManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_1
.end method

.method setCameraDisplayOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setCameraDisplayOrientation(I)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "parameters"

    .prologue
    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDisplay(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surfaceTexture"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setDisplay(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public setFarEndSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surfaceTexture"

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public setIsMediaReadyToReceivePreview(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setIsMediaReadyToReceivePreview(Z)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public startCameraPreview(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surfaceTexture"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->startCameraPreview(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopCameraPreview()V
    .locals 2

    .prologue
    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->stopCameraPreview()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchCamera()V
    .locals 2

    .prologue
    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-virtual {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->switchCamera()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method
