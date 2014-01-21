.class public Lcom/android/phone/BluetoothVoIPService;
.super Landroid/app/Service;
.source "BluetoothVoIPService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothVoIPService$4;,
        Lcom/android/phone/BluetoothVoIPService$CallNumber;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z

.field static backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

.field static foregroundVoIPCall:Lcom/android/internal/telephony/Call$State;

.field public static mIsVoipActive:Z

.field static ringingVoIPCall:Lcom/android/internal/telephony/Call$State;


# instance fields
.field direction:I

.field index:I

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAudioPossible:Z

.field mBgndEarliestConnectionTime:J

.field private final mBinder:Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field mCallService:Lcom/android/phone/BluetoothPhoneService;

.field private mCallStartTime:J

.field private mCdmaCallsSwapped:Z

.field private mCdmaIsSecondCallActive:Z

.field private mClccTimestamps:[J

.field private mClccUsed:[Z

.field private mForegroundCallState:Lcom/android/internal/telephony/Call$State;

.field private mHandler:Landroid/os/Handler;

.field mNumActive:I

.field mNumHeld:I

.field private mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRingingCallState:Lcom/android/internal/telephony/Call$State;

.field private mRoam:Z

.field private mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mVoIPCall:I

.field private mVoIPCallheld:I

.field private mVoIPCallsetup:I

.field private mVoIPIgnoreRing:Z

.field private mVoIPPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mVoIPRingingNumber:Lcom/android/phone/BluetoothVoIPService$CallNumber;

.field private mVoIPRoam:I

.field private mVoIPStopRing:Z

.field private mWaitingForCallStart:Z

.field mode:I

.field mpty:Z

.field number:Ljava/lang/String;

.field status:I

.field type:I

.field voipInterfaceService:Landroid/os/IVoIPInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 60
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    if-lt v0, v1, :cond_0

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/BluetoothVoIPService;->DBG:Z

    .line 62
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/phone/BluetoothVoIPService;->VDBG:Z

    return-void

    :cond_0
    move v0, v2

    .line 60
    goto :goto_0

    :cond_1
    move v1, v2

    .line 62
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 75
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 76
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mVoIPPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 82
    iput-wide v2, p0, Lcom/android/phone/BluetoothVoIPService;->mCallStartTime:J

    .line 89
    iput-wide v2, p0, Lcom/android/phone/BluetoothVoIPService;->mBgndEarliestConnectionTime:J

    .line 91
    iput-boolean v1, p0, Lcom/android/phone/BluetoothVoIPService;->mRoam:Z

    .line 114
    iput-boolean v1, p0, Lcom/android/phone/BluetoothVoIPService;->mVoIPIgnoreRing:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/phone/BluetoothVoIPService;->mVoIPStopRing:Z

    .line 124
    iput-boolean v1, p0, Lcom/android/phone/BluetoothVoIPService;->mCdmaIsSecondCallActive:Z

    .line 125
    iput-boolean v1, p0, Lcom/android/phone/BluetoothVoIPService;->mCdmaCallsSwapped:Z

    .line 135
    iput v1, p0, Lcom/android/phone/BluetoothVoIPService;->index:I

    .line 136
    iput v1, p0, Lcom/android/phone/BluetoothVoIPService;->direction:I

    .line 137
    iput v1, p0, Lcom/android/phone/BluetoothVoIPService;->status:I

    .line 138
    iput v1, p0, Lcom/android/phone/BluetoothVoIPService;->mode:I

    .line 139
    iput-boolean v1, p0, Lcom/android/phone/BluetoothVoIPService;->mpty:Z

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->number:Ljava/lang/String;

    .line 141
    iput v1, p0, Lcom/android/phone/BluetoothVoIPService;->type:I

    .line 214
    new-instance v0, Lcom/android/phone/BluetoothVoIPService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothVoIPService$1;-><init>(Lcom/android/phone/BluetoothVoIPService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mHandler:Landroid/os/Handler;

    .line 480
    new-instance v0, Lcom/android/phone/BluetoothVoIPService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothVoIPService$2;-><init>(Lcom/android/phone/BluetoothVoIPService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 490
    new-instance v0, Lcom/android/phone/BluetoothVoIPService$3;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothVoIPService$3;-><init>(Lcom/android/phone/BluetoothVoIPService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/phone/BluetoothVoIPService;->VDBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothVoIPService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/BluetoothVoIPService;->updateVoIPServiceState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothVoIPService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/BluetoothVoIPService;->handleListCurrentCalls()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothVoIPService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/BluetoothVoIPService;->callStarted()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/phone/BluetoothVoIPService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/phone/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/BluetoothVoIPService;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/BluetoothVoIPService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized callStarted()V
    .locals 1

    .prologue
    .line 772
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/phone/BluetoothVoIPService;->mWaitingForCallStart:Z

    if-eqz v0, :cond_0

    .line 773
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothVoIPService;->mWaitingForCallStart:Z

    .line 775
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    :cond_0
    monitor-exit p0

    return-void

    .line 772
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static convertCallState(Lcom/android/internal/telephony/Call$State;)I
    .locals 4
    .parameter "callState"

    .prologue
    const/4 v0, 0x6

    .line 737
    sget-object v1, Lcom/android/phone/BluetoothVoIPService$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 755
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad call state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :goto_0
    :pswitch_0
    return v0

    .line 743
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 745
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 747
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 749
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 751
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 753
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    .line 737
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private handleListCurrentCalls()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->existValidCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    const-string v0, "BluetoothVoIPService"

    const-string v1, "There is no vaild VoIP Call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 400
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->getBTWatchDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    .line 371
    .local v8, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v8, :cond_2

    .line 373
    const-string v0, "BluetoothVoIPService"

    const-string v1, "connect watch device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    .end local v8           #device:Landroid/bluetooth/BluetoothDevice;
    :catch_0
    move-exception v9

    .line 395
    .local v9, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothVoIPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleListCurrentCalls exeption :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v0, "BluetoothVoIPService"

    const-string v1, "Send ok response finally"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const-string v6, ""

    move v1, v11

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    move v7, v11

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    goto :goto_0

    .line 379
    .restart local v8       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    :try_start_1
    const-string v0, "BluetoothVoIPService"

    const-string v1, "Try to handle List Current Calls"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    const/4 v0, 0x2

    if-ge v10, v0, :cond_1

    .line 381
    const-string v0, "BluetoothVoIPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to get call info of index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mCallService.mLastIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothVoIPService;->mCallService:Lcom/android/phone/BluetoothPhoneService;

    sget v2, Lcom/android/phone/BluetoothPhoneService;->mLastIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0, v10}, Landroid/os/IVoIPInterface;->getCallSessionInfo(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 383
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->getIndexForClcc()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mCallService:Lcom/android/phone/BluetoothPhoneService;

    sget v1, Lcom/android/phone/BluetoothPhoneService;->mLastIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/BluetoothVoIPService;->index:I

    .line 384
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->getDirectionForClcc()I

    move-result v0

    iput v0, p0, Lcom/android/phone/BluetoothVoIPService;->direction:I

    .line 385
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->getStatusForClcc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/BluetoothVoIPService;->convertToCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothVoIPService;->convertCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/BluetoothVoIPService;->status:I

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BluetoothVoIPService;->mode:I

    .line 387
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->getMptyForClcc()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothVoIPService;->mpty:Z

    .line 388
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->getNumberForClcc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->number:Ljava/lang/String;

    .line 389
    const/16 v0, 0x81

    iput v0, p0, Lcom/android/phone/BluetoothVoIPService;->type:I

    .line 391
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget v1, p0, Lcom/android/phone/BluetoothVoIPService;->index:I

    iget v2, p0, Lcom/android/phone/BluetoothVoIPService;->direction:I

    iget v3, p0, Lcom/android/phone/BluetoothVoIPService;->status:I

    iget v4, p0, Lcom/android/phone/BluetoothVoIPService;->mode:I

    iget-boolean v5, p0, Lcom/android/phone/BluetoothVoIPService;->mpty:Z

    iget-object v6, p0, Lcom/android/phone/BluetoothVoIPService;->number:Ljava/lang/String;

    iget v7, p0, Lcom/android/phone/BluetoothVoIPService;->type:I

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 380
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 782
    const-string v0, "BluetoothVoIPService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void
.end method

.method private updateVoIPServiceState()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method


# virtual methods
.method public changeVoIPStateToPhoneState(I)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 3
    .parameter "state"

    .prologue
    .line 353
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 354
    .local v0, s:Lcom/android/internal/telephony/PhoneConstants$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeVoIPStateToCallState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothVoIPService;->log(Ljava/lang/String;)V

    .line 355
    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    .line 356
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 360
    :cond_1
    :goto_0
    return-object v0

    .line 357
    :cond_2
    if-eqz p1, :cond_1

    .line 358
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0
.end method

.method public convertToCallState(I)Lcom/android/internal/telephony/Call$State;
    .locals 4
    .parameter "index"

    .prologue
    .line 403
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 405
    .local v0, state:Lcom/android/internal/telephony/Call$State;
    packed-switch p1, :pswitch_data_0

    .line 426
    :goto_0
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertToCallState : index("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), state("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-object v0

    .line 407
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 409
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 411
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 413
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 415
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 417
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 419
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 421
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 423
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public handleVoipCallStateChange()V
    .locals 26

    .prologue
    .line 252
    const/16 v25, 0x1

    .line 253
    .local v25, sendUpdate:Z
    const/4 v14, 0x0

    .line 255
    .local v14, callsSwitched:Z
    sget-object v17, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 257
    .local v17, mconvertCallState:Lcom/android/internal/telephony/Call$State;
    const/4 v11, 0x0

    .line 258
    .local v11, VoIPcall:I
    const/4 v13, 0x0

    .line 259
    .local v13, VoIPcallsetup:I
    const/4 v12, 0x0

    .line 260
    .local v12, VoIPcallheld:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothVoIPService;->mVoIPCallsetup:I

    move/from16 v24, v0

    .line 261
    .local v24, prevVoIPcallsetup:I
    const/4 v10, 0x0

    .line 262
    .local v10, VoIPState:I
    const/4 v7, 0x0

    .line 263
    .local v7, VoIPActiveFgCallState:I
    const/4 v8, 0x0

    .line 264
    .local v8, VoIPFirstActiveBgCallState:I
    const/4 v9, 0x0

    .line 265
    .local v9, VoIPFirstActiveRingingCallState:I
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/BluetoothVoIPService;->mIsVoipActive:Z

    .line 268
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->getState()I

    move-result v10

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->getActiveFgCallState()I

    move-result v7

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->getFirstActiveBgCallState()I

    move-result v8

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->getFirstActiveRingingCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 276
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/phone/BluetoothVoIPService;->changeVoIPStateToPhoneState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v18

    .line 277
    .local v18, newVoIPState:Lcom/android/internal/telephony/PhoneConstants$State;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/phone/BluetoothVoIPService;->convertToCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sput-object v1, Lcom/android/phone/BluetoothVoIPService;->foregroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    .line 278
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/phone/BluetoothVoIPService;->convertToCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sput-object v1, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    .line 279
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/phone/BluetoothVoIPService;->convertToCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sput-object v1, Lcom/android/phone/BluetoothVoIPService;->ringingVoIPCall:Lcom/android/internal/telephony/Call$State;

    .line 281
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleVoipCallStateChange() mPhone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "                  mFVoIPCall:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/BluetoothVoIPService;->foregroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), mBVoIPCall:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), mRVoIPCall:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/BluetoothVoIPService;->ringingVoIPCall:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "         mVoIPPhoneState:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothVoIPService;->mVoIPPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), newVoIPState:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "              mVoIPCall      :("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothVoIPService;->mVoIPCall:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), mVoIPCallsetup:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothVoIPService;->mVoIPCallsetup:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), mVoIPCallheld:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothVoIPService;->mVoIPCallheld:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothVoIPService;->mNumActive:I

    move/from16 v20, v0

    .line 288
    .local v20, oldNumActive:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothVoIPService;->mNumHeld:I

    move/from16 v21, v0

    .line 289
    .local v21, oldNumHeld:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothVoIPService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v23, v0

    .line 290
    .local v23, oldRingingCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothVoIPService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v19, v0

    .line 291
    .local v19, oldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothVoIPService;->mVoIPRingingNumber:Lcom/android/phone/BluetoothVoIPService$CallNumber;

    move-object/from16 v22, v0

    .line 295
    .local v22, oldRingNumber:Lcom/android/phone/BluetoothVoIPService$CallNumber;
    sget-object v1, Lcom/android/phone/BluetoothVoIPService;->ringingVoIPCall:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    .line 296
    sget-object v1, Lcom/android/phone/BluetoothVoIPService;->foregroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 301
    const-string v1, "BluetoothVoIPService"

    const-string v2, "handlePreciseCallStateChange. Call disconnecting, wait before update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    :goto_1
    return-void

    .line 272
    .end local v18           #newVoIPState:Lcom/android/internal/telephony/PhoneConstants$State;
    .end local v19           #oldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    .end local v20           #oldNumActive:I
    .end local v21           #oldNumHeld:I
    .end local v22           #oldRingNumber:Lcom/android/phone/BluetoothVoIPService$CallNumber;
    .end local v23           #oldRingingCallState:Lcom/android/internal/telephony/Call$State;
    :catch_0
    move-exception v16

    .line 273
    .local v16, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleVoipCallStateChange exeption :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 305
    .end local v16           #e:Landroid/os/RemoteException;
    .restart local v18       #newVoIPState:Lcom/android/internal/telephony/PhoneConstants$State;
    .restart local v19       #oldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v20       #oldNumActive:I
    .restart local v21       #oldNumHeld:I
    .restart local v22       #oldRingNumber:Lcom/android/phone/BluetoothVoIPService$CallNumber;
    .restart local v23       #oldRingingCallState:Lcom/android/internal/telephony/Call$State;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/phone/BluetoothVoIPService;->mNumActive:I

    .line 307
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoIPcall:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), VoIPcallsetup:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), VoIPcallheld:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newVoIPState:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), isBluetoothHeadsetConnected():("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAudioPossible:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/phone/BluetoothVoIPService;->mAudioPossible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNumActive("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothVoIPService;->mNumActive:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNumHeld("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothVoIPService;->mNumHeld:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRingingCallState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothVoIPService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mForegroundCallState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothVoIPService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVoIPRingingNumber("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothVoIPService;->mVoIPRingingNumber:Lcom/android/phone/BluetoothVoIPService$CallNumber;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    if-eq v1, v0, :cond_6

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothVoIPService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v17, v0

    .line 322
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    if-eq v1, v0, :cond_3

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothVoIPService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v17, v0

    .line 325
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothVoIPService;->mNumActive:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_4

    .line 326
    sget-object v17, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 329
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_0

    .line 330
    const-string v1, "BluetoothVoIPService"

    const-string v2, "phone state changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sget-object v1, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_7

    .line 332
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNumActive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothVoIPService;->mNumActive:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNumHeld: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothVoIPService;->mNumHeld:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mconvertCallState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->getBTWatchDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v15

    .line 334
    .local v15, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v15, :cond_0

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static/range {v17 .. v17}, Lcom/android/phone/BluetoothVoIPService;->convertCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v4

    const-string v5, ""

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    goto/16 :goto_1

    .line 305
    .end local v15           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 319
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothVoIPService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 337
    :cond_7
    sget-object v1, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_8

    .line 338
    const-string v1, "BluetoothVoIPService"

    const-string v2, "CS Call is Ringing, VoIP Call is Holding"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 340
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_9

    .line 341
    const-string v1, "BluetoothVoIPService"

    const-string v2, "CS Call is not Idle"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 344
    :cond_9
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNumActive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothVoIPService;->mNumActive:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNumHeld: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothVoIPService;->mNumHeld:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mconvertCallState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->getBTWatchDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v15

    .line 346
    .restart local v15       #device:Landroid/bluetooth/BluetoothDevice;
    if-nez v15, :cond_0

    .line 347
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothVoIPService;->mNumActive:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothVoIPService;->mNumHeld:I

    invoke-static/range {v17 .. v17}, Lcom/android/phone/BluetoothVoIPService;->convertCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BluetoothVoIPService;->mVoIPRingingNumber:Lcom/android/phone/BluetoothVoIPService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothVoIPService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/BluetoothVoIPService$CallNumber;->access$500(Lcom/android/phone/BluetoothVoIPService$CallNumber;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/BluetoothVoIPService;->mVoIPRingingNumber:Lcom/android/phone/BluetoothVoIPService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothVoIPService$CallNumber;->mType:I
    invoke-static {v6}, Lcom/android/phone/BluetoothVoIPService$CallNumber;->access$600(Lcom/android/phone/BluetoothVoIPService$CallNumber;)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    goto/16 :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 150
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 151
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 152
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 153
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 154
    sget-boolean v1, Lcom/android/phone/BluetoothVoIPService;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothVoIPService"

    const-string v2, "mAdapter null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    return-void

    .line 158
    :cond_1
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/phone/BluetoothVoIPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mPowerManager:Landroid/os/PowerManager;

    .line 159
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "BluetoothVoIPService:StartCall"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 161
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 163
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/phone/BluetoothVoIPService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v1, p0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 164
    const-string v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    .line 165
    new-instance v1, Lcom/android/phone/BluetoothPhoneService;

    invoke-direct {v1}, Lcom/android/phone/BluetoothPhoneService;-><init>()V

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mCallService:Lcom/android/phone/BluetoothPhoneService;

    .line 167
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 168
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    .line 169
    iput v4, p0, Lcom/android/phone/BluetoothVoIPService;->mNumActive:I

    .line 170
    iput v4, p0, Lcom/android/phone/BluetoothVoIPService;->mNumHeld:I

    .line 171
    new-instance v1, Lcom/android/phone/BluetoothVoIPService$CallNumber;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/android/phone/BluetoothVoIPService$CallNumber;-><init>(Lcom/android/phone/BluetoothVoIPService;Ljava/lang/String;ILcom/android/phone/BluetoothVoIPService$1;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mVoIPRingingNumber:Lcom/android/phone/BluetoothVoIPService$CallNumber;

    .line 172
    iput v4, p0, Lcom/android/phone/BluetoothVoIPService;->mVoIPRoam:I

    .line 174
    invoke-direct {p0}, Lcom/android/phone/BluetoothVoIPService;->updateVoIPServiceState()V

    .line 175
    invoke-virtual {p0}, Lcom/android/phone/BluetoothVoIPService;->handleVoipCallStateChange()V

    .line 177
    sget-boolean v1, Lcom/android/phone/BluetoothVoIPService;->VDBG:Z

    if-eqz v1, :cond_2

    const-string v1, "BluetoothVoIPService"

    const-string v2, "registerForServiceStateChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2
    new-array v1, v5, [J

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mClccTimestamps:[J

    .line 180
    new-array v1, v5, [Z

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mClccUsed:[Z

    .line 181
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mClccUsed:[Z

    aput-boolean v4, v1, v0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 198
    sget-boolean v0, Lcom/android/phone/BluetoothVoIPService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Stopping Bluetooth BluetoothVoIPService Service"

    invoke-static {v0}, Lcom/android/phone/BluetoothVoIPService;->log(Ljava/lang/String;)V

    .line 199
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 189
    const-string v0, "BluetoothVoIPService"

    const-string v1, "Stopping Bluetooth BluetoothVoIPService Service: device does not have BT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Lcom/android/phone/BluetoothVoIPService;->stopSelf()V

    .line 192
    :cond_0
    sget-boolean v0, Lcom/android/phone/BluetoothVoIPService;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothVoIPService"

    const-string v1, "BluetoothVoIPService started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_1
    return-void
.end method
