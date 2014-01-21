.class public Lcom/android/phone/InVTCallState;
.super Ljava/lang/Object;
.source "InVTCallState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InVTCallState$InVTCallInitStatus;,
        Lcom/android/phone/InVTCallState$InVTCallScreenMode;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/phone/InVTCallState;


# instance fields
.field isFarEndRecord:Z

.field protected isMediaShareEnabled:Z

.field isNearEndRecord:Z

.field isShowMe:Z

.field isSurfaceViewSwipe:Z

.field mCapturedLocalFile:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected mDPM:Landroid/app/admin/DevicePolicyManager;

.field mDtmfString:Ljava/lang/String;

.field mDualCameraEnabledTime:J

.field mInVTCallScreenMode:Lcom/android/phone/InVTCallState$InVTCallScreenMode;

.field mIsFarFrameReady:Z

.field mIsFirstVideoFrameDecoded:Z

.field mIsHandAdaptEnabled:Z

.field mIsNearEndTransparent:Z

.field mIsNoDataFromModem:Z

.field mIsRequestedAudioFocus:Z

.field mIsVTCallStarted:Z

.field protected mMShareIntentSent:Z

.field private mPendingCallStatusCode:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

.field protected mRP:Landroid/app/enterprise/RestrictionPolicy;

.field mRecordTimeFarEnd:J

.field mRecordTimeNearEnd:J

.field mRecordingFileName:Ljava/lang/String;

.field previewEffectState:Lcom/android/phone/PreviewEffectState;

.field showDialpad:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 146
    sget-object v1, Lcom/android/phone/InVTCallState$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallState$InVTCallScreenMode;

    iput-object v1, p0, Lcom/android/phone/InVTCallState;->mInVTCallScreenMode:Lcom/android/phone/InVTCallState$InVTCallScreenMode;

    .line 152
    iput-object v3, p0, Lcom/android/phone/InVTCallState;->previewEffectState:Lcom/android/phone/PreviewEffectState;

    .line 157
    iput-boolean v2, p0, Lcom/android/phone/InVTCallState;->showDialpad:Z

    .line 162
    iput-boolean v2, p0, Lcom/android/phone/InVTCallState;->mIsFirstVideoFrameDecoded:Z

    .line 172
    iput-object v3, p0, Lcom/android/phone/InVTCallState;->mDtmfString:Ljava/lang/String;

    .line 174
    iput-boolean v2, p0, Lcom/android/phone/InVTCallState;->isFarEndRecord:Z

    .line 175
    iput-boolean v2, p0, Lcom/android/phone/InVTCallState;->isNearEndRecord:Z

    .line 184
    iput-object v3, p0, Lcom/android/phone/InVTCallState;->mRecordingFileName:Ljava/lang/String;

    .line 191
    iput-boolean v2, p0, Lcom/android/phone/InVTCallState;->isSurfaceViewSwipe:Z

    .line 194
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/InVTCallState;->isShowMe:Z

    .line 196
    iput-object v3, p0, Lcom/android/phone/InVTCallState;->mCapturedLocalFile:Ljava/lang/String;

    .line 197
    iput-boolean v2, p0, Lcom/android/phone/InVTCallState;->mIsFarFrameReady:Z

    .line 198
    iput-boolean v2, p0, Lcom/android/phone/InVTCallState;->mIsNoDataFromModem:Z

    .line 200
    iput-boolean v2, p0, Lcom/android/phone/InVTCallState;->mIsNearEndTransparent:Z

    .line 202
    iput-boolean v2, p0, Lcom/android/phone/InVTCallState;->mIsRequestedAudioFocus:Z

    .line 203
    iput-boolean v2, p0, Lcom/android/phone/InVTCallState;->mIsHandAdaptEnabled:Z

    .line 204
    iput-boolean v2, p0, Lcom/android/phone/InVTCallState;->mIsVTCallStarted:Z

    .line 207
    iput-boolean v2, p0, Lcom/android/phone/InVTCallState;->isMediaShareEnabled:Z

    .line 208
    iput-boolean v2, p0, Lcom/android/phone/InVTCallState;->mMShareIntentSent:Z

    .line 213
    iput-object v3, p0, Lcom/android/phone/InVTCallState;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 214
    iput-object v3, p0, Lcom/android/phone/InVTCallState;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    .line 297
    sget-object v1, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    iput-object v1, p0, Lcom/android/phone/InVTCallState;->mPendingCallStatusCode:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    .line 83
    iput-object p1, p0, Lcom/android/phone/InVTCallState;->mContext:Landroid/content/Context;

    .line 84
    iget-object v1, p0, Lcom/android/phone/InVTCallState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PreviewEffectState;->init(Landroid/content/Context;)Lcom/android/phone/PreviewEffectState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallState;->previewEffectState:Lcom/android/phone/PreviewEffectState;

    .line 86
    iget-object v1, p0, Lcom/android/phone/InVTCallState;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 87
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v1, p0, Lcom/android/phone/InVTCallState;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/phone/InVTCallState;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallState;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    .line 90
    :cond_0
    return-void
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/InVTCallState;
    .locals 4
    .parameter

    .prologue
    .line 68
    const-class v1, Lcom/android/phone/InVTCallState;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/android/phone/InVTCallState;->sInstance:Lcom/android/phone/InVTCallState;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/phone/InVTCallState;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/InVTCallState;->sInstance:Lcom/android/phone/InVTCallState;

    .line 74
    :goto_0
    sget-object v0, Lcom/android/phone/InVTCallState;->sInstance:Lcom/android/phone/InVTCallState;

    monitor-exit v1

    return-object v0

    .line 72
    :cond_0
    const-string v0, "InVTCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/InVTCallState;->sInstance:Lcom/android/phone/InVTCallState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearPendingCallStatusCode()V
    .locals 1

    .prologue
    .line 347
    sget-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    iput-object v0, p0, Lcom/android/phone/InVTCallState;->mPendingCallStatusCode:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    .line 348
    return-void
.end method

.method public getPendingCallStatusCode()Lcom/android/phone/InVTCallState$InVTCallInitStatus;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/phone/InVTCallState;->mPendingCallStatusCode:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    return-object v0
.end method

.method public hasPendingCallStatusCode()Z
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/phone/InVTCallState;->mPendingCallStatusCode:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    sget-object v1, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPendingCallStatusCode(Lcom/android/phone/InVTCallState$InVTCallInitStatus;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/phone/InVTCallState;->mPendingCallStatusCode:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    sget-object v1, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    if-eq v0, v1, :cond_0

    .line 330
    const-string v0, "InVTCallState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPendingCallStatusCode: setting new code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but a previous code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallState;->mPendingCallStatusCode:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was already pending!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    iput-object p1, p0, Lcom/android/phone/InVTCallState;->mPendingCallStatusCode:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    .line 335
    return-void
.end method

.method protected updateStateForDisconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    iput-boolean v1, p0, Lcom/android/phone/InVTCallState;->showDialpad:Z

    .line 94
    iput-boolean v1, p0, Lcom/android/phone/InVTCallState;->mIsFirstVideoFrameDecoded:Z

    .line 95
    iput-object v2, p0, Lcom/android/phone/InVTCallState;->mDtmfString:Ljava/lang/String;

    .line 96
    iput-boolean v1, p0, Lcom/android/phone/InVTCallState;->isFarEndRecord:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/phone/InVTCallState;->isNearEndRecord:Z

    .line 98
    iput-object v2, p0, Lcom/android/phone/InVTCallState;->mRecordingFileName:Ljava/lang/String;

    .line 99
    iput-boolean v1, p0, Lcom/android/phone/InVTCallState;->isSurfaceViewSwipe:Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallState;->isShowMe:Z

    .line 101
    iput-object v2, p0, Lcom/android/phone/InVTCallState;->mCapturedLocalFile:Ljava/lang/String;

    .line 102
    iput-boolean v1, p0, Lcom/android/phone/InVTCallState;->mIsNoDataFromModem:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/phone/InVTCallState;->mIsNearEndTransparent:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/phone/InVTCallState;->mIsVTCallStarted:Z

    .line 105
    return-void
.end method
