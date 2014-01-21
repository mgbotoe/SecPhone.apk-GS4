.class public Lcom/android/phone/PhoneVoiceRecorder;
.super Ljava/lang/Object;
.source "PhoneVoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;
    }
.end annotation


# static fields
.field public static final PHONE_PATH:Ljava/lang/String;

.field private static sMe:Lcom/android/phone/PhoneVoiceRecorder;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field public mCallCard:Lcom/android/phone/CallCard;

.field private mCallerNumber:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInfoDurationRegistrantList:Landroid/os/RegistrantList;

.field private mIsPreparing:Z

.field private mIsRecording:Z

.field private mIsServiceAlive:Z

.field private mRecordedDurationMSec:I

.field private mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

.field private mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

.field private mSimNum:I

.field private mStartRecordTime:J

.field private mStateChangedRegistrantList:Landroid/os/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Sounds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "PhoneVoiceRecorder"

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->LOG_TAG:Ljava/lang/String;

    .line 57
    iput-wide v4, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J

    .line 58
    iput v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecordedDurationMSec:I

    .line 59
    iput-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;

    .line 60
    iput v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mSimNum:I

    .line 62
    iput-boolean v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsPreparing:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    .line 64
    iput-boolean v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsServiceAlive:Z

    .line 66
    iput-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mInfoDurationRegistrantList:Landroid/os/RegistrantList;

    .line 67
    iput-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStateChangedRegistrantList:Landroid/os/RegistrantList;

    .line 88
    new-instance v0, Lcom/android/phone/PhoneVoiceRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneVoiceRecorder$1;-><init>(Lcom/android/phone/PhoneVoiceRecorder;)V

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    .line 77
    const-string v0, "PhoneVoiceRecorder Create"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 78
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 79
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 80
    iput-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    .line 81
    iput-boolean v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsPreparing:Z

    .line 82
    iput-boolean v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    .line 83
    iput-wide v4, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J

    .line 84
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mInfoDurationRegistrantList:Landroid/os/RegistrantList;

    .line 85
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStateChangedRegistrantList:Landroid/os/RegistrantList;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneVoiceRecorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/PhoneVoiceRecorder;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/phone/PhoneVoiceRecorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/phone/PhoneVoiceRecorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecordedDurationMSec:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/PhoneVoiceRecorder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/PhoneVoiceRecorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mSimNum:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneVoiceRecorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsServiceAlive:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/RegistrantList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStateChangedRegistrantList:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/PhoneVoiceRecorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsPreparing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/PhoneVoiceRecorder;Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/phone/PhoneVoiceRecorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder;->getAvailableStorage()J

    move-result-wide v0

    return-wide v0
.end method

.method private checkAvailableStorage()Z
    .locals 6

    .prologue
    .line 253
    const-wide/32 v2, 0xa00000

    .line 254
    .local v2, LOW_STORAGE_THRESHOLD:J
    const-wide/32 v0, 0x10000000

    .line 256
    .local v0, HIGH_STORAGE_THRESHOLD:J
    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder;->getAvailableStorage()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    const/4 v4, 0x1

    .line 257
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getAvailableStorage()J
    .locals 6

    .prologue
    .line 261
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, storageDirectory:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvailableStorage. storageDirectory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 263
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method public static getInstance()Lcom/android/phone/PhoneVoiceRecorder;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/android/phone/PhoneVoiceRecorder;->sMe:Lcom/android/phone/PhoneVoiceRecorder;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/android/phone/PhoneVoiceRecorder;

    invoke-direct {v0}, Lcom/android/phone/PhoneVoiceRecorder;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneVoiceRecorder;->sMe:Lcom/android/phone/PhoneVoiceRecorder;

    .line 141
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneVoiceRecorder;->sMe:Lcom/android/phone/PhoneVoiceRecorder;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 644
    const-string v0, "PhoneVoiceRecorder"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 648
    const-string v0, "PhoneVoiceRecorder"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 649
    return-void
.end method


# virtual methods
.method public canStartRecording()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsPreparing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkMediaScannerRunning(Landroid/content/ContentResolver;)Z
    .locals 11
    .parameter "cr"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 223
    const-string v0, "checkMediaScannerRunning()"

    invoke-direct {p0, v0, v10}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 224
    const/4 v8, 0x0

    .line 225
    .local v8, result:Z
    if-nez p1, :cond_0

    move v0, v8

    .line 241
    :goto_0
    return v0

    .line 228
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "volume"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 231
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 232
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_1

    .line 233
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 234
    const-string v0, "external"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 236
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v8

    .line 241
    goto :goto_0

    .line 238
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .local v7, ex:Ljava/lang/UnsupportedOperationException;
    move v0, v9

    .line 239
    goto :goto_0
.end method

.method public checkSDCardMount()Z
    .locals 3

    .prologue
    .line 245
    const-string v1, "checkMediaScannerRunning()"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, result:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 249
    return v0
.end method

.method public getRecordTime()J
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecordedDurationMSec:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getStartRecordTime()J
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J

    return-wide v0
.end method

.method public isVoiceRecording()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    return v0
.end method

.method public registerForInfoStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStateChangedRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 633
    return-void
.end method

.method public setCallerNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;

    .line 621
    return-void
.end method

.method public setServiceAlive(Z)V
    .locals 0
    .parameter "alive"

    .prologue
    .line 624
    iput-boolean p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsServiceAlive:Z

    .line 625
    return-void
.end method

.method public startRecord()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 161
    const-string v0, "startRecord"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 162
    iget-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    if-nez v0, :cond_5

    .line 164
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneVoiceRecorder;->checkMediaScannerRunning(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "checkMediaScannerRunning failed"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 166
    const v0, 0x7f0903b1

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    .line 195
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder;->checkSDCardMount()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    const-string v0, "checkSDCardMount failed"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 171
    const v0, 0x7f0903b2

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_0

    .line 174
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder;->checkAvailableStorage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    const-string v0, "checkAvailableStorage failed"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 176
    const v0, 0x7f0903af

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_0

    .line 179
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsPreparing:Z

    if-eqz v0, :cond_3

    .line 180
    const-string v0, "Call recording is already running - ignore"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 183
    :cond_3
    iput-boolean v1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsPreparing:Z

    .line 185
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v0

    iput v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mSimNum:I

    .line 188
    :cond_4
    new-instance v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;-><init>(Lcom/android/phone/PhoneVoiceRecorder;Lcom/android/phone/PhoneVoiceRecorder$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    .line 189
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->start()V

    .line 190
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecord() mCallerNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_5
    const-string v0, "Call recording is already running - ignore"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public stopRecodingIcon()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    .line 611
    :cond_1
    return-void
.end method

.method public stopRecord()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 198
    const-string v1, "stopRecord"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 199
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    if-eqz v1, :cond_0

    .line 200
    const-string v1, "stopRecording"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 201
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    invoke-virtual {v1}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->stopRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v5, v4, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 204
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    :goto_0
    iput-object v6, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    .line 212
    iput v4, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecordedDurationMSec:I

    .line 214
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iput-boolean v4, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsPreparing:Z

    .line 215
    iput-boolean v4, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    .line 216
    iput-object v6, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;

    .line 217
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    return-void

    .line 206
    :cond_1
    const-string v1, "stopRecording failed"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 207
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v5, v4, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 209
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public unregisterForInfoStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStateChangedRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 641
    return-void
.end method

.method public updateRecodingIcon()V
    .locals 2

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 617
    :cond_0
    return-void
.end method
