.class Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;
.super Ljava/lang/Thread;
.source "PhoneVoiceRecorder.java"

# interfaces
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneVoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;
    }
.end annotation


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mHiddenFilePath:Ljava/lang/String;

.field private mLastSavedFileUri:Landroid/net/Uri;

.field private mSaveFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/PhoneVoiceRecorder;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneVoiceRecorder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 267
    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 268
    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    .line 269
    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    .line 270
    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    .line 271
    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mLastSavedFileUri:Landroid/net/Uri;

    .line 590
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneVoiceRecorder;Lcom/android/phone/PhoneVoiceRecorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;-><init>(Lcom/android/phone/PhoneVoiceRecorder;)V

    return-void
.end method

.method private buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "prefix"
    .parameter "num"

    .prologue
    .line 536
    const/16 v1, 0xa

    if-ge p2, v1, :cond_0

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, t:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 538
    .end local v0           #t:Ljava/lang/String;
    :cond_0
    const/16 v1, 0x64

    if-ge p2, v1, :cond_1

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #t:Ljava/lang/String;
    goto :goto_0

    .line 541
    .end local v0           #t:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #t:Ljava/lang/String;
    goto :goto_0
.end method

.method private isPhoneNumberChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 587
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 564
    if-nez p1, :cond_1

    .line 565
    const/4 p1, 0x0

    .line 583
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 567
    .restart local p1
    :cond_1
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$000(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$000(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$000(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 573
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 574
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 576
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 577
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 578
    .local v0, c:C
    invoke-direct {p0, v0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->isPhoneNumberChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 579
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 576
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 583
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public cancelRecording()V
    .locals 4

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->releaseMediaRecorder()V

    .line 360
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 361
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 364
    .end local v0           #f:Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z
    invoke-static {v1, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$102(Lcom/android/phone/PhoneVoiceRecorder;Z)Z

    .line 365
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v2, "RecorderThread : cancelRecording"

    const/4 v3, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 366
    return-void
.end method

.method public checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .parameter "title"
    .parameter "context"

    .prologue
    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, dir:Ljava/io/File;
    const/4 v2, 0x0

    .line 550
    .local v2, files:[Ljava/io/File;
    new-instance v1, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".amr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;-><init>(Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;Ljava/lang/String;)V

    .line 552
    .local v1, filenameFilter:Ljava/io/FilenameFilter;
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    sget-object v3, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 554
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 555
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 558
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 560
    if-eqz v2, :cond_1

    array-length v3, v2

    if-nez v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public createNewFileName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 500
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v5, "createNewFileName()"

    const/4 v6, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    .local v0, fileName:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$000(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0903ae

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$1300(Lcom/android/phone/PhoneVoiceRecorder;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 506
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$1300(Lcom/android/phone/PhoneVoiceRecorder;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createNewFileName() mCallerNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/PhoneVoiceRecorder;->access$1300(Lcom/android/phone/PhoneVoiceRecorder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/PhoneVoiceRecorder;->access$1100(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;)V

    .line 515
    :goto_0
    const-string v4, "feature_chn_duos_cdma_gsm"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 516
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mSimNum:I
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$1500(Lcom/android/phone/PhoneVoiceRecorder;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getSIMName(I)Ljava/lang/String;

    move-result-object v3

    .line 518
    .local v3, simID:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 519
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .end local v3           #simID:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    .line 522
    .local v1, num:I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, prefix:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    .line 525
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 526
    add-int/lit8 v1, v1, 0x1

    .line 527
    goto :goto_1

    .line 508
    .end local v1           #num:I
    .end local v2           #prefix:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$1400(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 509
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$1400(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createNewFileName() getCallerNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/PhoneVoiceRecorder;->access$1400(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/PhoneVoiceRecorder;->access$1100(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :cond_2
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$000(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 531
    .restart local v1       #num:I
    .restart local v2       #prefix:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    return-object v4
.end method

.method public onError(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 464
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 465
    return-void
.end method

.method public onInfo(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 4
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v3, 0x1

    .line 469
    sparse-switch p2, :sswitch_data_0

    .line 485
    :goto_0
    return-void

    .line 471
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max duration reached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 472
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->stopRecording()Z

    goto :goto_0

    .line 475
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max filesize reached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 476
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->stopRecording()Z

    goto :goto_0

    .line 479
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecordedDurationMSec:I
    invoke-static {v0, p3}, Lcom/android/phone/PhoneVoiceRecorder;->access$1202(Lcom/android/phone/PhoneVoiceRecorder;I)I

    .line 480
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$600(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 469
    :sswitch_data_0
    .sparse-switch
        0x320 -> :sswitch_0
        0x321 -> :sswitch_1
        0x385 -> :sswitch_2
    .end sparse-switch
.end method

.method public prepareRecording()Z
    .locals 9

    .prologue
    const-wide/16 v7, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 298
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->releaseMediaRecorder()V

    .line 299
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 301
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, callRecordingDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 303
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".voicecall"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    .line 304
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    if-nez v4, :cond_1

    .line 305
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v5, Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;-><init>()V

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4, v5}, Lcom/android/phone/PhoneVoiceRecorder;->access$802(Lcom/android/phone/PhoneVoiceRecorder;Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 308
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    .line 309
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    .line 310
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->getAvailableStorage()J
    invoke-static {v5}, Lcom/android/phone/PhoneVoiceRecorder;->access$900(Lcom/android/phone/PhoneVoiceRecorder;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxFileSize(J)V

    .line 312
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const v5, 0x2ca2068

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 313
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 314
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/16 v5, 0x2fa8

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 315
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioChannels(I)V

    .line 316
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/16 v5, 0x1f40

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSamplingRate(I)V

    .line 317
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncoder(I)V

    .line 318
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setDurationInterval(I)V

    .line 319
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const-wide/16 v5, 0x300

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    .line 321
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->prepare()V

    .line 323
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 324
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 325
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v5, "RecorderThread : prepareRecording"

    const/4 v6, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 335
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 336
    :goto_0
    return v2

    .line 326
    :catch_0
    move-exception v1

    .line 327
    .local v1, e:Ljava/lang/IllegalStateException;
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RecorderThread : Illegal State Exception Occured"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 328
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    move v2, v3

    .line 329
    goto :goto_0

    .line 330
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 331
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RecorderThread : Error occured while SecMediaRecorder Prepare()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 332
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    move v2, v3

    .line 333
    goto :goto_0
.end method

.method public releaseMediaRecorder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 488
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v1, "RecorderThread : releaseMediaRecorder..."

    const/4 v2, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 490
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 492
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 493
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->reset()V

    .line 494
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 495
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0, v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$802(Lcom/android/phone/PhoneVoiceRecorder;Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 497
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v1, "RecorderThread : run"

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 275
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->prepareRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->startRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    const-string v0, "feature_wake_lock_during_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$000(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneGlobals$WakeState;->PARTIAL:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->requestVoiceRecordingWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$600(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 293
    :goto_0
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mIsPreparing:Z
    invoke-static {v0, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$702(Lcom/android/phone/PhoneVoiceRecorder;Z)Z

    .line 294
    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v1, "RecorderThread : startRecording failed"

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 287
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z
    invoke-static {v0, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$102(Lcom/android/phone/PhoneVoiceRecorder;Z)Z

    goto :goto_0

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v1, "RecorderThread : prepareRecording failed"

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 291
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z
    invoke-static {v0, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$102(Lcom/android/phone/PhoneVoiceRecorder;Z)Z

    goto :goto_0
.end method

.method public startRecording()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 341
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 351
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z
    invoke-static {v3, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$102(Lcom/android/phone/PhoneVoiceRecorder;Z)Z

    .line 352
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J
    invoke-static {v3, v4, v5}, Lcom/android/phone/PhoneVoiceRecorder;->access$1002(Lcom/android/phone/PhoneVoiceRecorder;J)J

    .line 353
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v4, "RecorderThread : startRecording"

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 354
    :goto_0
    return v2

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 344
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    move v2, v3

    .line 345
    goto :goto_0

    .line 346
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 347
    .local v1, re:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 348
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    move v2, v3

    .line 349
    goto :goto_0
.end method

.method public stopRecording()Z
    .locals 17

    .prologue
    .line 371
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v12}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->stop()V

    .line 372
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const/4 v13, 0x0

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z
    invoke-static {v12, v13}, Lcom/android/phone/PhoneVoiceRecorder;->access$102(Lcom/android/phone/PhoneVoiceRecorder;Z)Z

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->releaseMediaRecorder()V

    .line 375
    const-string v12, "feature_wake_lock_during_call_recording"

    invoke-static {v12}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 377
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v12}, Lcom/android/phone/PhoneVoiceRecorder;->access$000(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v12

    sget-object v13, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v12, v13}, Lcom/android/phone/PhoneGlobals;->requestVoiceRecordingWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v13, "RecorderThread : stopRecording"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->createNewFileName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    .line 390
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".amr"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    .line 392
    const/4 v4, 0x0

    .line 393
    .local v4, hiddenFile:Ljava/io/File;
    const/4 v9, 0x0

    .line 395
    .local v9, saveFile:Ljava/io/File;
    :try_start_1
    new-instance v8, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v8}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 396
    .local v8, retriever:Landroid/media/MediaMetadataRetriever;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 398
    const/4 v11, 0x0

    .line 399
    .local v11, value:Ljava/lang/String;
    const/16 v12, 0x9

    invoke-virtual {v8, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    .line 400
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 401
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v2, v12

    .line 403
    .local v2, fileDuration:J
    const-wide/16 v12, 0x3e8

    cmp-long v12, v2, v12

    if-gez v12, :cond_2

    .line 404
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v13, "RecorderThread : fileDuration > 1000, failed to save record"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 406
    const/4 v12, 0x0

    .line 459
    .end local v2           #fileDuration:J
    .end local v4           #hiddenFile:Ljava/io/File;
    .end local v8           #retriever:Landroid/media/MediaMetadataRetriever;
    .end local v9           #saveFile:Ljava/io/File;
    .end local v11           #value:Ljava/lang/String;
    :goto_0
    return v12

    .line 379
    :catch_0
    move-exception v1

    .line 380
    .local v1, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RecorderThread : mRecorder.stop() - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 382
    const-string v12, "feature_wake_lock_during_call_recording"

    invoke-static {v12}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 384
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v12}, Lcom/android/phone/PhoneVoiceRecorder;->access$000(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v12

    sget-object v13, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v12, v13}, Lcom/android/phone/PhoneGlobals;->requestVoiceRecordingWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 386
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 408
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #fileDuration:J
    .restart local v4       #hiddenFile:Ljava/io/File;
    .restart local v8       #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v9       #saveFile:Ljava/io/File;
    .restart local v11       #value:Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 409
    .end local v4           #hiddenFile:Ljava/io/File;
    .local v5, hiddenFile:Ljava/io/File;
    :try_start_3
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 410
    .end local v9           #saveFile:Ljava/io/File;
    .local v10, saveFile:Ljava/io/File;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    .line 411
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v13, "RecorderThread : Hidden file doesn\'t exist"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 413
    const/4 v12, 0x0

    goto :goto_0

    .line 415
    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 416
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v13, "RecorderThread : Save file doesn\'t exist"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 418
    const/4 v12, 0x0

    goto :goto_0

    .line 420
    :cond_4
    invoke-virtual {v5, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    .line 421
    .local v7, resMove:Z
    if-nez v7, :cond_5

    .line 422
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v13, "RecorderThread : resMove failed"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 424
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 426
    .end local v2           #fileDuration:J
    .end local v5           #hiddenFile:Ljava/io/File;
    .end local v7           #resMove:Z
    .end local v8           #retriever:Landroid/media/MediaMetadataRetriever;
    .end local v10           #saveFile:Ljava/io/File;
    .end local v11           #value:Ljava/lang/String;
    .restart local v4       #hiddenFile:Ljava/io/File;
    .restart local v9       #saveFile:Ljava/io/File;
    :catch_1
    move-exception v1

    .line 427
    .restart local v1       #e:Ljava/lang/Exception;
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RecorderThread : error occurred while moving temp file"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 429
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 431
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #hiddenFile:Ljava/io/File;
    .end local v9           #saveFile:Ljava/io/File;
    .restart local v2       #fileDuration:J
    .restart local v5       #hiddenFile:Ljava/io/File;
    .restart local v7       #resMove:Z
    .restart local v8       #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v10       #saveFile:Ljava/io/File;
    .restart local v11       #value:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v13, "RecorderThread : Recording file created"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 433
    :try_start_5
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 434
    .local v6, mediaStore:Landroid/content/ContentValues;
    const-string v12, "title"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v12, "mime_type"

    const-string v13, "audio/amr"

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v12, "_data"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v12, "duration"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 438
    const-string v12, "_size"

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 439
    const-string v12, "date_modified"

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 440
    const-string v12, "is_sound"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v12}, Lcom/android/phone/PhoneVoiceRecorder;->access$000(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v13, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mLastSavedFileUri:Landroid/net/Uri;

    .line 442
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mLastSavedFileUri:Landroid/net/Uri;

    if-nez v12, :cond_8

    .line 443
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v13, "RecorderThread : Content Resolver insert failed"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 445
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    if-eqz v12, :cond_6

    .line 446
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 448
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 450
    .end local v6           #mediaStore:Landroid/content/ContentValues;
    :catch_2
    move-exception v1

    .line 451
    .restart local v1       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RecorderThread : error occurred while input data to MediaStore"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 453
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    if-eqz v12, :cond_7

    .line 454
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 456
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 458
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v6       #mediaStore:Landroid/content/ContentValues;
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v13, "RecorderThread : Recording saved"

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/PhoneVoiceRecorder;->access$1100(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;)V

    .line 459
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 426
    .end local v6           #mediaStore:Landroid/content/ContentValues;
    .end local v7           #resMove:Z
    .end local v10           #saveFile:Ljava/io/File;
    .restart local v9       #saveFile:Ljava/io/File;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5           #hiddenFile:Ljava/io/File;
    .restart local v4       #hiddenFile:Ljava/io/File;
    goto/16 :goto_1

    .end local v4           #hiddenFile:Ljava/io/File;
    .end local v9           #saveFile:Ljava/io/File;
    .restart local v5       #hiddenFile:Ljava/io/File;
    .restart local v10       #saveFile:Ljava/io/File;
    :catch_4
    move-exception v1

    move-object v9, v10

    .end local v10           #saveFile:Ljava/io/File;
    .restart local v9       #saveFile:Ljava/io/File;
    move-object v4, v5

    .end local v5           #hiddenFile:Ljava/io/File;
    .restart local v4       #hiddenFile:Ljava/io/File;
    goto/16 :goto_1
.end method
