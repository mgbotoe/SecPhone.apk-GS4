.class Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;
.super Ljava/lang/Thread;
.source "AnsweringMemoRecorder.java"

# interfaces
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AnsweringMemoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AnsweringMemoRecorder$RecorderThread$FileEndWithFilter;
    }
.end annotation


# instance fields
.field private mAnswerMemoSaveUri:Landroid/net/Uri;

.field private mFileName:Ljava/lang/String;

.field private mHiddenFilePath:Ljava/lang/String;

.field private mSaveFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/AnsweringMemoRecorder;


# direct methods
.method private constructor <init>(Lcom/android/phone/AnsweringMemoRecorder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 271
    iput-object p1, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 272
    iput-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    .line 273
    iput-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    .line 274
    iput-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    .line 275
    iput-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mAnswerMemoSaveUri:Landroid/net/Uri;

    .line 601
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/AnsweringMemoRecorder;Lcom/android/phone/AnsweringMemoRecorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;-><init>(Lcom/android/phone/AnsweringMemoRecorder;)V

    return-void
.end method

.method private buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "prefix"
    .parameter "num"

    .prologue
    .line 552
    const/16 v1, 0xa

    if-ge p2, v1, :cond_0

    .line 553
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

    .line 559
    .local v0, t:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 554
    .end local v0           #t:Ljava/lang/String;
    :cond_0
    const/16 v1, 0x64

    if-ge p2, v1, :cond_1

    .line 555
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

    .line 557
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
    .line 598
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
    .line 575
    if-nez p1, :cond_1

    .line 576
    const/4 p1, 0x0

    .line 594
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 578
    .restart local p1
    :cond_1
    iget-object v4, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 584
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 585
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 587
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 588
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 589
    .local v0, c:C
    invoke-direct {p0, v0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->isPhoneNumberChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 590
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 587
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 594
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
    const/4 v2, 0x0

    .line 367
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->releaseMediaRecorder()V

    .line 368
    iget-object v1, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iput-boolean v2, v1, Lcom/android/phone/InCallScreen;->isAnswermemoRecording:Z

    .line 369
    iget-object v1, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 371
    iget-object v1, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 372
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 375
    .end local v0           #f:Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #setter for: Lcom/android/phone/AnsweringMemoRecorder;->mIsRecording:Z
    invoke-static {v1, v2}, Lcom/android/phone/AnsweringMemoRecorder;->access$102(Lcom/android/phone/AnsweringMemoRecorder;Z)Z

    .line 376
    iget-object v1, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    const-string v2, "RecorderThread : cancelRecording"

    const/4 v3, 0x1

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 377
    return-void
.end method

.method public checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .parameter "title"
    .parameter "context"

    .prologue
    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, dir:Ljava/io/File;
    const/4 v2, 0x0

    .line 565
    .local v2, files:[Ljava/io/File;
    new-instance v1, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread$FileEndWithFilter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".amr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread$FileEndWithFilter;-><init>(Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;Ljava/lang/String;)V

    .line 566
    .local v1, filenameFilter:Ljava/io/FilenameFilter;
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    sget-object v3, Lcom/android/phone/AnsweringMemoRecorder;->ANSWER_MEMO_PHONE_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 568
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 570
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 571
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
    .locals 6

    .prologue
    .line 522
    iget-object v3, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    const-string v4, "createNewFileName()"

    const/4 v5, 0x1

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    .local v0, fileName:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0908d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    iget-object v3, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mCallerNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/AnsweringMemoRecorder;->access$900(Lcom/android/phone/AnsweringMemoRecorder;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 528
    iget-object v3, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mCallerNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/AnsweringMemoRecorder;->access$900(Lcom/android/phone/AnsweringMemoRecorder;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    iget-object v3, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createNewFileName() mCallerNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mCallerNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/AnsweringMemoRecorder;->access$900(Lcom/android/phone/AnsweringMemoRecorder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/AnsweringMemoRecorder;->access$1100(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;)V

    .line 537
    :goto_0
    const/4 v1, 0x1

    .line 538
    .local v1, num:I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, prefix:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    .line 541
    iget-object v3, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 542
    add-int/lit8 v1, v1, 0x1

    .line 543
    goto :goto_1

    .line 530
    .end local v1           #num:I
    .end local v2           #prefix:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/AnsweringMemoRecorder;->access$1300(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 531
    iget-object v3, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/AnsweringMemoRecorder;->access$1300(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    iget-object v3, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createNewFileName() getCallerNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/AnsweringMemoRecorder;->access$1300(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/AnsweringMemoRecorder;->access$1100(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;)V

    goto :goto_0

    .line 534
    :cond_1
    iget-object v3, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 547
    .restart local v1       #num:I
    .restart local v2       #prefix:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    return-object v3
.end method

.method public onError(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

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

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 486
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->cancelRecording()V

    .line 487
    return-void
.end method

.method public onInfo(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 4
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v3, 0x1

    .line 491
    sparse-switch p2, :sswitch_data_0

    .line 507
    :goto_0
    return-void

    .line 493
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max duration reached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 494
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->stopRecording()Z

    goto :goto_0

    .line 497
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max filesize reached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 498
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->stopRecording()Z

    goto :goto_0

    .line 501
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #setter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecordedDurationMSec:I
    invoke-static {v0, p3}, Lcom/android/phone/AnsweringMemoRecorder;->access$1202(Lcom/android/phone/AnsweringMemoRecorder;I)I

    .line 502
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/AnsweringMemoRecorder;->access$400(Lcom/android/phone/AnsweringMemoRecorder;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 491
    :sswitch_data_0
    .sparse-switch
        0x320 -> :sswitch_0
        0x321 -> :sswitch_1
        0x385 -> :sswitch_2
    .end sparse-switch
.end method

.method public prepareRecording()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x64

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 302
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->releaseMediaRecorder()V

    .line 303
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 305
    new-instance v2, Ljava/io/File;

    sget-object v5, Lcom/android/phone/AnsweringMemoRecorder;->ANSWER_MEMO_PHONE_PATH:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    .local v2, memoRecordingDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 307
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 308
    .local v0, dirCreated:Z
    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RecorderThread : answerMemoDir dirCreated = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v3}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 310
    .end local v0           #dirCreated:Z
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/phone/AnsweringMemoRecorder;->ANSWER_MEMO_PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".answermemo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    .line 311
    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    if-nez v5, :cond_1

    .line 312
    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    new-instance v6, Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;-><init>()V

    #setter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5, v6}, Lcom/android/phone/AnsweringMemoRecorder;->access$602(Lcom/android/phone/AnsweringMemoRecorder;Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 315
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    .line 316
    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    .line 317
    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->getAvailableStorage()J
    invoke-static {v6}, Lcom/android/phone/AnsweringMemoRecorder;->access$700(Lcom/android/phone/AnsweringMemoRecorder;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxFileSize(J)V

    .line 319
    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    const v6, 0x2ca2068

    invoke-virtual {v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 320
    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 321
    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    const/16 v6, 0x2fa8

    invoke-virtual {v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 322
    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioChannels(I)V

    .line 323
    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    const/16 v6, 0x1f40

    invoke-virtual {v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSamplingRate(I)V

    .line 324
    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncoder(I)V

    .line 325
    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setDurationInterval(I)V

    .line 326
    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    const-wide/16 v6, 0x300

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    .line 328
    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->prepare()V

    .line 330
    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 331
    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 332
    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    const-string v6, "RecorderThread : prepareRecording"

    const/4 v7, 0x1

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v7}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 346
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 347
    :goto_0
    return v3

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException : Illegal State Exception Occured"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v3}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 335
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->cancelRecording()V

    move v3, v4

    .line 336
    goto :goto_0

    .line 337
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 338
    .local v1, e:Ljava/lang/IllegalStateException;
    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RecorderThread : Illegal State Exception Occured"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v3}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 339
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->cancelRecording()V

    move v3, v4

    .line 340
    goto :goto_0

    .line 341
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 342
    .local v1, e:Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RecorderThread : Error occured while SecMediaRecorder Prepare()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v3}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 343
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->cancelRecording()V

    move v3, v4

    .line 344
    goto :goto_0
.end method

.method public releaseMediaRecorder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 510
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    const-string v1, "RecorderThread : releaseMediaRecorder..."

    const/4 v2, 0x1

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 512
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 514
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 515
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->reset()V

    .line 516
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 517
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #setter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0, v3}, Lcom/android/phone/AnsweringMemoRecorder;->access$602(Lcom/android/phone/AnsweringMemoRecorder;Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 519
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 278
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    const-string v1, "RecorderThread : run"

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 279
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->prepareRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->startRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    const-string v0, "feature_wake_lock_during_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneGlobals$WakeState;->PARTIAL:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->requestVoiceRecordingWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/AnsweringMemoRecorder;->access$400(Lcom/android/phone/AnsweringMemoRecorder;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #setter for: Lcom/android/phone/AnsweringMemoRecorder;->mIsPreparing:Z
    invoke-static {v0, v2}, Lcom/android/phone/AnsweringMemoRecorder;->access$502(Lcom/android/phone/AnsweringMemoRecorder;Z)Z

    .line 298
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    const-string v1, "RecorderThread : startRecording failed"

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 291
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #setter for: Lcom/android/phone/AnsweringMemoRecorder;->mIsRecording:Z
    invoke-static {v0, v2}, Lcom/android/phone/AnsweringMemoRecorder;->access$102(Lcom/android/phone/AnsweringMemoRecorder;Z)Z

    goto :goto_0

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    const-string v1, "RecorderThread : prepareRecording failed"

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 295
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #setter for: Lcom/android/phone/AnsweringMemoRecorder;->mIsRecording:Z
    invoke-static {v0, v2}, Lcom/android/phone/AnsweringMemoRecorder;->access$102(Lcom/android/phone/AnsweringMemoRecorder;Z)Z

    goto :goto_0
.end method

.method public startRecording()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 352
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v2}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->start()V

    .line 353
    iget-object v2, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v2}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/phone/InCallScreen;->isAnswermemoRecording:Z

    .line 354
    iget-object v2, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v2}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    iget-object v2, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #setter for: Lcom/android/phone/AnsweringMemoRecorder;->mIsRecording:Z
    invoke-static {v2, v1}, Lcom/android/phone/AnsweringMemoRecorder;->access$102(Lcom/android/phone/AnsweringMemoRecorder;Z)Z

    .line 361
    iget-object v2, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    #setter for: Lcom/android/phone/AnsweringMemoRecorder;->mStartRecordTime:J
    invoke-static {v2, v3, v4}, Lcom/android/phone/AnsweringMemoRecorder;->access$802(Lcom/android/phone/AnsweringMemoRecorder;J)J

    .line 362
    iget-object v2, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    const-string v3, "RecorderThread : startRecording"

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v1}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 363
    :goto_0
    return v1

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 357
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->cancelRecording()V

    .line 358
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopRecording()Z
    .locals 15

    .prologue
    .line 382
    :try_start_0
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v12}, Lcom/android/phone/AnsweringMemoRecorder;->access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->stop()V

    .line 383
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    const/4 v13, 0x0

    #setter for: Lcom/android/phone/AnsweringMemoRecorder;->mIsRecording:Z
    invoke-static {v12, v13}, Lcom/android/phone/AnsweringMemoRecorder;->access$102(Lcom/android/phone/AnsweringMemoRecorder;Z)Z

    .line 384
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->releaseMediaRecorder()V

    .line 385
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v12}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v12

    iget-object v12, v12, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/phone/InCallScreen;->isAnswermemoRecording:Z

    .line 386
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v12}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 387
    const-string v12, "feature_wake_lock_during_call_recording"

    invoke-static {v12}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 389
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v12}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v12

    sget-object v13, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v12, v13}, Lcom/android/phone/PhoneGlobals;->requestVoiceRecordingWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_0
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    const-string v13, "RecorderThread : stopRecording"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 401
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->createNewFileName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    .line 402
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/android/phone/AnsweringMemoRecorder;->ANSWER_MEMO_PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".amr"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    .line 404
    const/4 v5, 0x0

    .line 405
    .local v5, hiddenFile:Ljava/io/File;
    const/4 v9, 0x0

    .line 407
    .local v9, saveFile:Ljava/io/File;
    :try_start_1
    new-instance v8, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v8}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 408
    .local v8, retriever:Landroid/media/MediaMetadataRetriever;
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 410
    const/4 v11, 0x0

    .line 411
    .local v11, value:Ljava/lang/String;
    const/16 v12, 0x9

    invoke-virtual {v8, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    .line 412
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 413
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v3, v12

    .line 415
    .local v3, fileDuration:J
    const-wide/16 v12, 0x3e8

    cmp-long v12, v3, v12

    if-gez v12, :cond_2

    .line 416
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    const-string v13, "RecorderThread : fileDuration > 1000, failed to save record"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 417
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->cancelRecording()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 418
    const/4 v12, 0x0

    .line 481
    .end local v3           #fileDuration:J
    .end local v5           #hiddenFile:Ljava/io/File;
    .end local v8           #retriever:Landroid/media/MediaMetadataRetriever;
    .end local v9           #saveFile:Ljava/io/File;
    .end local v11           #value:Ljava/lang/String;
    :goto_0
    return v12

    .line 391
    :catch_0
    move-exception v2

    .line 392
    .local v2, e:Ljava/lang/IllegalStateException;
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RecorderThread : mRecorder.stop() - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 393
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->cancelRecording()V

    .line 394
    const-string v12, "feature_wake_lock_during_call_recording"

    invoke-static {v12}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 396
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v12}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v12

    sget-object v13, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v12, v13}, Lcom/android/phone/PhoneGlobals;->requestVoiceRecordingWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 398
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 420
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .restart local v3       #fileDuration:J
    .restart local v5       #hiddenFile:Ljava/io/File;
    .restart local v8       #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v9       #saveFile:Ljava/io/File;
    .restart local v11       #value:Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v6, Ljava/io/File;

    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 421
    .end local v5           #hiddenFile:Ljava/io/File;
    .local v6, hiddenFile:Ljava/io/File;
    :try_start_3
    new-instance v10, Ljava/io/File;

    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 422
    .end local v9           #saveFile:Ljava/io/File;
    .local v10, saveFile:Ljava/io/File;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    .line 423
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    const-string v13, "RecorderThread : Hidden file doesn\'t exist"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 424
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->cancelRecording()V

    .line 425
    const/4 v12, 0x0

    goto :goto_0

    .line 427
    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 428
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    const-string v13, "RecorderThread : Save file doesn\'t exist"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 429
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->cancelRecording()V

    .line 430
    const/4 v12, 0x0

    goto :goto_0

    .line 432
    :cond_4
    invoke-virtual {v6, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    .line 433
    .local v7, resMove:Z
    if-nez v7, :cond_5

    .line 434
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    const-string v13, "RecorderThread : resMove failed"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 435
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->cancelRecording()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 436
    const/4 v12, 0x0

    goto :goto_0

    .line 438
    .end local v3           #fileDuration:J
    .end local v6           #hiddenFile:Ljava/io/File;
    .end local v7           #resMove:Z
    .end local v8           #retriever:Landroid/media/MediaMetadataRetriever;
    .end local v10           #saveFile:Ljava/io/File;
    .end local v11           #value:Ljava/lang/String;
    .restart local v5       #hiddenFile:Ljava/io/File;
    .restart local v9       #saveFile:Ljava/io/File;
    :catch_1
    move-exception v2

    .line 439
    .local v2, e:Ljava/lang/IllegalArgumentException;
    :goto_1
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RecorderThread : error occurred while moving temp file"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 440
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->cancelRecording()V

    .line 441
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 443
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v5           #hiddenFile:Ljava/io/File;
    .end local v9           #saveFile:Ljava/io/File;
    .restart local v3       #fileDuration:J
    .restart local v6       #hiddenFile:Ljava/io/File;
    .restart local v7       #resMove:Z
    .restart local v8       #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v10       #saveFile:Ljava/io/File;
    .restart local v11       #value:Ljava/lang/String;
    :cond_5
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    const-string v13, "RecorderThread : Recording file created"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 446
    :try_start_5
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 447
    .local v0, answermemoContent:Landroid/content/ContentValues;
    const-string v12, "memo_contact_name"

    iget-object v13, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mCallerNumber:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/phone/AnsweringMemoRecorder;->access$900(Lcom/android/phone/AnsweringMemoRecorder;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    iget-object v13, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mCallerNumber:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/phone/AnsweringMemoRecorder;->access$900(Lcom/android/phone/AnsweringMemoRecorder;)Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->getContactDisplayName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/phone/AnsweringMemoRecorder;->access$1000(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, displayName:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mCallerNumber:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/phone/AnsweringMemoRecorder;->access$900(Lcom/android/phone/AnsweringMemoRecorder;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_8

    .line 450
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v12}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090006

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 454
    :cond_6
    :goto_2
    const-string v12, "memo_display_name"

    invoke-virtual {v0, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v12, "memo_create_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 456
    const-string v12, "memo_duration"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 457
    const-string v12, "memo_heard"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 458
    const-string v12, "memo_data"

    iget-object v13, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v12, "memo_mime_type"

    const-string v13, "audio/amr"

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v12, "memo_size"

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 461
    const-string v12, "memo_deleted"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 462
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v12}, Lcom/android/phone/AnsweringMemoRecorder;->access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/android/phone/AnswerMemo$Memos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v13, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    iput-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mAnswerMemoSaveUri:Landroid/net/Uri;

    .line 463
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RecorderThread : mAnswerMemoSaveUri "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mAnswerMemoSaveUri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/AnsweringMemoRecorder;->access$1100(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;)V

    .line 464
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mAnswerMemoSaveUri:Landroid/net/Uri;

    if-nez v12, :cond_a

    .line 465
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    const-string v13, "RecorderThread : Content Resolver insert failed"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 466
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->cancelRecording()V

    .line 467
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    if-eqz v12, :cond_7

    .line 468
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 470
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 451
    :cond_8
    if-eqz v1, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 452
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    #getter for: Lcom/android/phone/AnsweringMemoRecorder;->mCallerNumber:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/phone/AnsweringMemoRecorder;->access$900(Lcom/android/phone/AnsweringMemoRecorder;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v1

    goto/16 :goto_2

    .line 472
    .end local v0           #answermemoContent:Landroid/content/ContentValues;
    .end local v1           #displayName:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 473
    .local v2, e:Ljava/lang/Exception;
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RecorderThread : error occurred while input data to provider "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/AnsweringMemoRecorder;->access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V

    .line 474
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->cancelRecording()V

    .line 475
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    if-eqz v12, :cond_9

    .line 476
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 478
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 480
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #answermemoContent:Landroid/content/ContentValues;
    .restart local v1       #displayName:Ljava/lang/String;
    :cond_a
    iget-object v12, p0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnsweringMemoRecorder;

    const-string v13, "RecorderThread : Recording saved"

    #calls: Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/AnsweringMemoRecorder;->access$1100(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;)V

    .line 481
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 438
    .end local v0           #answermemoContent:Landroid/content/ContentValues;
    .end local v1           #displayName:Ljava/lang/String;
    .end local v7           #resMove:Z
    .end local v10           #saveFile:Ljava/io/File;
    .restart local v9       #saveFile:Ljava/io/File;
    :catch_3
    move-exception v2

    move-object v5, v6

    .end local v6           #hiddenFile:Ljava/io/File;
    .restart local v5       #hiddenFile:Ljava/io/File;
    goto/16 :goto_1

    .end local v5           #hiddenFile:Ljava/io/File;
    .end local v9           #saveFile:Ljava/io/File;
    .restart local v6       #hiddenFile:Ljava/io/File;
    .restart local v10       #saveFile:Ljava/io/File;
    :catch_4
    move-exception v2

    move-object v9, v10

    .end local v10           #saveFile:Ljava/io/File;
    .restart local v9       #saveFile:Ljava/io/File;
    move-object v5, v6

    .end local v6           #hiddenFile:Ljava/io/File;
    .restart local v5       #hiddenFile:Ljava/io/File;
    goto/16 :goto_1
.end method
