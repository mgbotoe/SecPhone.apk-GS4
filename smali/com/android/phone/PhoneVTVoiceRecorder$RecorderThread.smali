.class Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;
.super Ljava/lang/Thread;
.source "PhoneVTVoiceRecorder.java"

# interfaces
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneVTVoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread$FileEndWithFilter;
    }
.end annotation


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mHiddenFilePath:Ljava/lang/String;

.field private mLastSavedFileUri:Landroid/net/Uri;

.field private mSaveFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/PhoneVTVoiceRecorder;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneVTVoiceRecorder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 210
    iput-object p1, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 211
    iput-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    .line 212
    iput-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    .line 213
    iput-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    .line 214
    iput-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mLastSavedFileUri:Landroid/net/Uri;

    .line 506
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneVTVoiceRecorder;Lcom/android/phone/PhoneVTVoiceRecorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;-><init>(Lcom/android/phone/PhoneVTVoiceRecorder;)V

    return-void
.end method

.method private buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "prefix"
    .parameter "num"

    .prologue
    .line 452
    const/16 v1, 0xa

    if-ge p2, v1, :cond_0

    .line 453
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

    .line 459
    .local v0, t:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 454
    .end local v0           #t:Ljava/lang/String;
    :cond_0
    const/16 v1, 0x64

    if-ge p2, v1, :cond_1

    .line 455
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

    .line 457
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
    .line 503
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
    .line 480
    if-nez p1, :cond_1

    .line 481
    const/4 p1, 0x0

    .line 499
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 483
    .restart local p1
    :cond_1
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$900(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$900(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$900(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 489
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 490
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 492
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 493
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 494
    .local v0, c:C
    invoke-direct {p0, v0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->isPhoneNumberChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 495
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 499
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
    .line 296
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->releaseMediaRecorder()V

    .line 298
    iget-object v1, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 299
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 302
    .end local v0           #f:Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mIsRecording:Z
    invoke-static {v1, v2}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$302(Lcom/android/phone/PhoneVTVoiceRecorder;Z)Z

    .line 303
    iget-object v1, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v2, "RecorderThread : cancelRecording"

    const/4 v3, 0x1

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V

    .line 304
    return-void
.end method

.method public checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .parameter "title"
    .parameter "context"

    .prologue
    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, dir:Ljava/io/File;
    const/4 v2, 0x0

    .line 466
    .local v2, files:[Ljava/io/File;
    new-instance v1, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread$FileEndWithFilter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".amr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread$FileEndWithFilter;-><init>(Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;Ljava/lang/String;)V

    .line 468
    .local v1, filenameFilter:Ljava/io/FilenameFilter;
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    sget-object v3, Lcom/android/phone/PhoneVTVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 470
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 471
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 474
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 476
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
    .line 425
    iget-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v4, "createNewFileName()"

    const/4 v5, 0x1

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .local v0, fileName:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    iget-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$1000(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 431
    iget-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$1000(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    iget-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createNewFileName() getCallerNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$1000(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$800(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 437
    :goto_0
    const/4 v1, 0x1

    .line 438
    .local v1, num:I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, prefix:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    .line 441
    iget-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 442
    add-int/lit8 v1, v1, 0x1

    .line 443
    goto :goto_1

    .line 434
    .end local v1           #num:I
    .end local v2           #prefix:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    iget-object v3, v3, Lcom/android/phone/PhoneVTVoiceRecorder;->callerNumber:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    iget-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createNewFileName() callerNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    iget-object v5, v5, Lcom/android/phone/PhoneVTVoiceRecorder;->callerNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$800(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    goto :goto_0

    .line 447
    .restart local v1       #num:I
    .restart local v2       #prefix:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    return-object v3
.end method

.method public onError(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

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

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V

    .line 393
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 394
    return-void
.end method

.method public onInfo(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 4
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v3, 0x1

    .line 398
    packed-switch p2, :pswitch_data_0

    .line 410
    :goto_0
    return-void

    .line 400
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max duration reached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V

    .line 401
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->stopRecording()Z

    goto :goto_0

    .line 404
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max filesize reached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V

    .line 405
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->stopRecording()Z

    goto :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public prepareRecording()Z
    .locals 9

    .prologue
    const-wide/16 v7, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 237
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->releaseMediaRecorder()V

    .line 238
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 240
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/android/phone/PhoneVTVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, callRecordingDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 242
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/phone/PhoneVTVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".videocall"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    .line 244
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    new-instance v5, Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;-><init>()V

    #setter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4, v5}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$502(Lcom/android/phone/PhoneVTVoiceRecorder;Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 246
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    .line 247
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    .line 248
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->getAvailableStorage()J
    invoke-static {v5}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$600(Lcom/android/phone/PhoneVTVoiceRecorder;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxFileSize(J)V

    .line 250
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const v5, 0x2ca2068

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 251
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 252
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/16 v5, 0x2fa8

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 253
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioChannels(I)V

    .line 254
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/16 v5, 0x1f40

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSamplingRate(I)V

    .line 255
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncoder(I)V

    .line 256
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setDurationInterval(I)V

    .line 257
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const-wide/16 v5, 0x300

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    .line 259
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->prepare()V

    .line 261
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 262
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 263
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v5, "RecorderThread : prepareRecording"

    const/4 v6, 0x1

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 273
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 274
    :goto_0
    return v2

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, e:Ljava/lang/IllegalStateException;
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RecorderThread : Illegal State Exception Occured"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v2}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V

    .line 266
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    move v2, v3

    .line 267
    goto :goto_0

    .line 268
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 269
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RecorderThread : Error occured while SecMediaRecorder Prepare()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v2}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V

    .line 270
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    move v2, v3

    .line 271
    goto :goto_0
.end method

.method public releaseMediaRecorder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 413
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v1, "RecorderThread : releaseMediaRecorder..."

    const/4 v2, 0x1

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V

    .line 415
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 417
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 418
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->reset()V

    .line 419
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 420
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #setter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0, v3}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$502(Lcom/android/phone/PhoneVTVoiceRecorder;Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 422
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v1, "RecorderThread : run"

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V

    .line 218
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->prepareRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->startRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$200(Lcom/android/phone/PhoneVTVoiceRecorder;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #setter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mIsPreparing:Z
    invoke-static {v0, v2}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$402(Lcom/android/phone/PhoneVTVoiceRecorder;Z)Z

    .line 233
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v1, "RecorderThread : startRecording failed"

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V

    .line 226
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #setter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mIsRecording:Z
    invoke-static {v0, v2}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$302(Lcom/android/phone/PhoneVTVoiceRecorder;Z)Z

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v1, "RecorderThread : prepareRecording failed"

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V

    .line 230
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #setter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mIsRecording:Z
    invoke-static {v0, v2}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$302(Lcom/android/phone/PhoneVTVoiceRecorder;Z)Z

    goto :goto_0
.end method

.method public startRecording()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 279
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 289
    iget-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #setter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mIsRecording:Z
    invoke-static {v3, v2}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$302(Lcom/android/phone/PhoneVTVoiceRecorder;Z)Z

    .line 290
    iget-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    #setter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mStartRecordTime:J
    invoke-static {v3, v4, v5}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$702(Lcom/android/phone/PhoneVTVoiceRecorder;J)J

    .line 291
    iget-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v4, "RecorderThread : startRecording"

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v2}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V

    .line 292
    :goto_0
    return v2

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 282
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    move v2, v3

    .line 283
    goto :goto_0

    .line 284
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 285
    .local v1, re:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 286
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    move v2, v3

    .line 287
    goto :goto_0
.end method

.method public stopRecording()Z
    .locals 17

    .prologue
    .line 309
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v12}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->stop()V

    .line 310
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const/4 v13, 0x0

    #setter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mIsRecording:Z
    invoke-static {v12, v13}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$302(Lcom/android/phone/PhoneVTVoiceRecorder;Z)Z

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->releaseMediaRecorder()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v13, "RecorderThread : stopRecording"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->createNewFileName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    .line 319
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/android/phone/PhoneVTVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".amr"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    .line 321
    const/4 v4, 0x0

    .line 322
    .local v4, hiddenFile:Ljava/io/File;
    const/4 v9, 0x0

    .line 324
    .local v9, saveFile:Ljava/io/File;
    :try_start_1
    new-instance v8, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v8}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 325
    .local v8, retriever:Landroid/media/MediaMetadataRetriever;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 327
    const/4 v11, 0x0

    .line 328
    .local v11, value:Ljava/lang/String;
    const/16 v12, 0x9

    invoke-virtual {v8, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    .line 329
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 330
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v2, v12

    .line 332
    .local v2, fileDuration:J
    const-wide/16 v12, 0x3e8

    cmp-long v12, v2, v12

    if-gez v12, :cond_0

    .line 333
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v13, "RecorderThread : fileDuration > 1000, failed to save record"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    const/4 v12, 0x0

    .line 388
    .end local v2           #fileDuration:J
    .end local v4           #hiddenFile:Ljava/io/File;
    .end local v8           #retriever:Landroid/media/MediaMetadataRetriever;
    .end local v9           #saveFile:Ljava/io/File;
    .end local v11           #value:Ljava/lang/String;
    :goto_0
    return v12

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mRecorder.stop() - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$800(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 315
    const/4 v12, 0x0

    goto :goto_0

    .line 337
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #fileDuration:J
    .restart local v4       #hiddenFile:Ljava/io/File;
    .restart local v8       #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v9       #saveFile:Ljava/io/File;
    .restart local v11       #value:Ljava/lang/String;
    :cond_0
    :try_start_2
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 338
    .end local v4           #hiddenFile:Ljava/io/File;
    .local v5, hiddenFile:Ljava/io/File;
    :try_start_3
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 339
    .end local v9           #saveFile:Ljava/io/File;
    .local v10, saveFile:Ljava/io/File;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 340
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v13, "RecorderThread : Hidden file doesn\'t exist"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 342
    const/4 v12, 0x0

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 345
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v13, "RecorderThread : Save file doesn\'t exist"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 347
    const/4 v12, 0x0

    goto :goto_0

    .line 349
    :cond_2
    invoke-virtual {v5, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    .line 350
    .local v7, resMove:Z
    if-nez v7, :cond_3

    .line 351
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v13, "RecorderThread : resMove failed"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 353
    const/4 v12, 0x0

    goto :goto_0

    .line 355
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

    .line 356
    .restart local v1       #e:Ljava/lang/Exception;
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

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

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 358
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 360
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #hiddenFile:Ljava/io/File;
    .end local v9           #saveFile:Ljava/io/File;
    .restart local v2       #fileDuration:J
    .restart local v5       #hiddenFile:Ljava/io/File;
    .restart local v7       #resMove:Z
    .restart local v8       #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v10       #saveFile:Ljava/io/File;
    .restart local v11       #value:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v13, "RecorderThread : Recording file created"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V

    .line 362
    :try_start_5
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 363
    .local v6, mediaStore:Landroid/content/ContentValues;
    const-string v12, "title"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v12, "mime_type"

    const-string v13, "audio/amr"

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v12, "_data"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v12, "duration"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 367
    const-string v12, "_size"

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 368
    const-string v12, "date_modified"

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 369
    const-string v12, "is_sound"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVTVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v12}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$900(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v13, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mLastSavedFileUri:Landroid/net/Uri;

    .line 371
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mLastSavedFileUri:Landroid/net/Uri;

    if-nez v12, :cond_6

    .line 372
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v13, "RecorderThread : Content Resolver insert failed"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 374
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 375
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 377
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 379
    .end local v6           #mediaStore:Landroid/content/ContentValues;
    :catch_2
    move-exception v1

    .line 380
    .restart local v1       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

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

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 382
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 383
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 385
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 387
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v6       #mediaStore:Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    const-string v13, "RecorderThread : Recording saved"

    #calls: Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/PhoneVTVoiceRecorder;->access$800(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V

    .line 388
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 355
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
