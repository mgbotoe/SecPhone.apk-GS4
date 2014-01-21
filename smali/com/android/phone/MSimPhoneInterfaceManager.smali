.class public Lcom/android/phone/MSimPhoneInterfaceManager;
.super Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;
.source "MSimPhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimPhoneInterfaceManager$1;,
        Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;,
        Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;,
        Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    }
.end annotation


# static fields
.field private static DBG_ENG:Z

.field private static sInstance:Lcom/android/phone/MSimPhoneInterfaceManager;


# instance fields
.field mApp:Lcom/android/phone/PhoneGlobals;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 89
    const-string v2, "nfc.trace.mode"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    const-string v2, "ro.debuggable"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sput-boolean v0, Lcom/android/phone/MSimPhoneInterfaceManager;->DBG_ENG:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "app"
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    .line 353
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;-><init>()V

    .line 354
    iput-object p1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 355
    iput-object p2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 356
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 357
    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/MSimPhoneInterfaceManager;Lcom/android/phone/MSimPhoneInterfaceManager$1;)V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    .line 358
    const-string v0, "MSimPhoneInterfaceManager"

    const-string v1, " Registering for UNSOL OEM HOOK Responses to deliver external apps"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setOnUnsolOemHookExtApp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 360
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->publish()V

    .line 361
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MSimPhoneInterfaceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->answerRingingCallInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MSimPhoneInterfaceManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->silenceRingerInternal(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/MSimPhoneInterfaceManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/MSimPhoneInterfaceManager;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private answerRingingCallInternal()V
    .locals 5

    .prologue
    .line 519
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 520
    .local v2, hasRingingCall:Z
    if-eqz v2, :cond_0

    .line 521
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 522
    .local v0, hasActiveCall:Z
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 523
    .local v1, hasHoldingCall:Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 529
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v4, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 539
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    :cond_0
    :goto_0
    return-void

    .line 534
    .restart local v0       #hasActiveCall:Z
    .restart local v1       #hasHoldingCall:Z
    :cond_1
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0
.end method

.method private createTelUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 899
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 900
    const/4 v1, 0x0

    .line 905
    :goto_0
    return-object v1

    .line 903
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 904
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private enforceCallPermission()V
    .locals 3

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "android.permission.CALL_PHONE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    return-void
.end method

.method private enforceModifyPermission()V
    .locals 3

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    return-void
.end method

.method private enforceReadPermission()V
    .locals 3

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    return-void
.end method

.method private getDataSubscription()I
    .locals 1

    .prologue
    .line 1176
    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->getDataSubscription()I

    move-result v0

    return v0
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 372
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {p1}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method static init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/MSimPhoneInterfaceManager;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 342
    const-class v1, Lcom/android/phone/PhoneInterfaceManager;

    monitor-enter v1

    .line 343
    :try_start_0
    sget-object v0, Lcom/android/phone/MSimPhoneInterfaceManager;->sInstance:Lcom/android/phone/MSimPhoneInterfaceManager;

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManager;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/MSimPhoneInterfaceManager;->sInstance:Lcom/android/phone/MSimPhoneInterfaceManager;

    .line 348
    :goto_0
    sget-object v0, Lcom/android/phone/MSimPhoneInterfaceManager;->sInstance:Lcom/android/phone/MSimPhoneInterfaceManager;

    monitor-exit v1

    return-object v0

    .line 346
    :cond_0
    const-string v0, "MSimPhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MSimPhoneInterfaceManager;->sInstance:Lcom/android/phone/MSimPhoneInterfaceManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 909
    const-string v0, "MSimPhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 3
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 913
    const-string v0, "MSimPhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MsimPhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 914
    return-void
.end method

.method private publish()V
    .locals 2

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 366
    const-string v0, "phone_msim"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 367
    return-void
.end method

.method private sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "command"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 299
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v3}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 300
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 303
    :cond_0
    new-instance v1, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    invoke-direct {v1, p2, p3}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 304
    .local v1, request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 305
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 308
    monitor-enter v1

    .line 309
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 311
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v2

    goto :goto_0

    .line 316
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    iget-object v2, v1, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 316
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private sendRequestAsync(I)V
    .locals 1
    .parameter "command"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->sendEmptyMessage(I)Z

    .line 335
    return-void
.end method

.method private showCallScreenInternal(ZZ)Z
    .locals 9
    .parameter "specifyInitialDialpadState"
    .parameter "initialDialpadState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 421
    sget-boolean v7, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v7, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v5

    .line 426
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/phone/MSimPhoneInterfaceManager;->isIdle(I)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0, v6}, Lcom/android/phone/MSimPhoneInterfaceManager;->isIdle(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 430
    invoke-virtual {p0, v5}, Lcom/android/phone/MSimPhoneInterfaceManager;->isIdle(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 431
    const/4 v4, 0x0

    .line 436
    .local v4, sub:I
    :goto_1
    const-string v7, "ims_volte"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 437
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isOffhookSecIms()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 438
    const-string v7, "showCallScreen"

    invoke-static {v7, v5}, Lcom/android/phone/PhoneUtilsExt;->invokeSecImsInterface(Ljava/lang/String;Z)Ljava/lang/Object;

    move v5, v6

    .line 439
    goto :goto_0

    .line 433
    .end local v4           #sub:I
    :cond_2
    const/4 v4, 0x1

    .restart local v4       #sub:I
    goto :goto_1

    .line 444
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 447
    .local v0, callingId:J
    if-eqz p1, :cond_4

    .line 451
    :try_start_0
    invoke-static {p2}, Lcom/android/phone/PhoneGlobals;->createInCallIntent(Z)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 460
    .local v3, intent:Landroid/content/Intent;
    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5, v3}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 470
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v6

    .line 472
    goto :goto_0

    .line 456
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->createInCallIntent()Landroid/content/Intent;

    move-result-object v3

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 461
    :catch_0
    move-exception v2

    .line 466
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "MSimPhoneInterfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showCallScreenInternal: transition to InCallScreen failed; intent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 470
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private silenceRingerInternal(I)V
    .locals 2
    .parameter "subscription"

    .prologue
    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "silenceRingerInternal: subscription:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    const-string v0, "silenceRingerInternal: silencing..."

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 572
    :cond_0
    return-void
.end method


# virtual methods
.method public answerRingingCall(I)V
    .locals 1
    .parameter "subscription"

    .prologue
    .line 497
    const-string v0, "answerRingingCall..."

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 501
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 502
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequestAsync(I)V

    .line 503
    return-void
.end method

.method public broadcastUnsolOemHookIntent([B)V
    .locals 3
    .parameter "payload"

    .prologue
    .line 321
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "payload"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 323
    const-string v1, "MSimPhoneInterfaceManager"

    const-string v2, "Broadcasting intent ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    .line 325
    return-void
.end method

.method public call(Ljava/lang/String;I)V
    .locals 4
    .parameter "number"
    .parameter "subscription"

    .prologue
    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 406
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceCallPermission()V

    .line 408
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, url:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 417
    :goto_0
    return-void

    .line 413
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 414
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "subscription"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 415
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 416
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public cancelMissedCallsNotification(I)V
    .locals 1
    .parameter "subscription"

    .prologue
    .line 754
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 755
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->cancelMissedCallNotification()V

    .line 756
    return-void
.end method

.method public dial(Ljava/lang/String;I)V
    .locals 5
    .parameter "number"
    .parameter "subscription"

    .prologue
    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dial: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 385
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, url:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    .line 392
    .local v1, state:Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v3, :cond_0

    .line 393
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 394
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 395
    const-string v3, "subscription"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 733
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableDataConnectivity()Z
    .locals 3

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 738
    iget-object v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 740
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 741
    const/4 v1, 0x1

    return v1
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 728
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableDataConnectivity()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 719
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 720
    iget-object v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 722
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 723
    return v3
.end method

.method public endCall(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceCallPermission()V

    .line 493
    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getActivePhoneType(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 925
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 833
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :goto_0
    return-object v4

    .line 835
    :catch_0
    move-exception v0

    .line 839
    .local v0, e:Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCallState(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 759
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 969
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 982
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 993
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocation(I)Landroid/os/Bundle;
    .locals 6
    .parameter "subscription"

    .prologue
    const/4 v5, 0x0

    .line 774
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 784
    .local v0, data:Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 785
    return-object v0

    .line 776
    .end local v0           #data:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 780
    .local v1, e:Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 1

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v0

    return v0
.end method

.method public getDataNetworkType(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1194
    const/4 v0, 0x0

    return v0
.end method

.method public getDataState()I
    .locals 1

    .prologue
    .line 763
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v0

    return v0
.end method

.method public getDefaultSimForVoiceCalls()I
    .locals 2

    .prologue
    .line 1149
    const-string v0, "persist.radio.calldefault.simid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDefaultSubscription()I
    .locals 1

    .prologue
    .line 1084
    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method public getIccFdnAvailable(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 863
    const/4 v0, 0x1

    return v0
.end method

.method public getIccFdnEnabled(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 859
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    return v0
.end method

.method public getIccPin1RetryCount(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 828
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v0

    return v0
.end method

.method public getIccPin2RetryCount(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 848
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPuk1RetryCount(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 852
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPuk2RetryCount(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 856
    const/4 v0, 0x0

    return v0
.end method

.method public getLteOnCdmaMode(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1123
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getNetworkState(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    .line 1180
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1181
    .local v0, retvalue:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkState subscription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", retvalue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 1182
    return v0
.end method

.method public getNetworkType(I)I
    .locals 2
    .parameter "subscription"

    .prologue
    .line 1028
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 1029
    .local v0, radiotech:I
    packed-switch v0, :pswitch_data_0

    .line 1060
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1031
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1033
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 1035
    :pswitch_2
    const/4 v1, 0x3

    goto :goto_0

    .line 1037
    :pswitch_3
    const/16 v1, 0x8

    goto :goto_0

    .line 1039
    :pswitch_4
    const/16 v1, 0x9

    goto :goto_0

    .line 1041
    :pswitch_5
    const/16 v1, 0xa

    goto :goto_0

    .line 1044
    :pswitch_6
    const/4 v1, 0x4

    goto :goto_0

    .line 1046
    :pswitch_7
    const/4 v1, 0x7

    goto :goto_0

    .line 1048
    :pswitch_8
    const/4 v1, 0x5

    goto :goto_0

    .line 1050
    :pswitch_9
    const/4 v1, 0x6

    goto :goto_0

    .line 1052
    :pswitch_a
    const/16 v1, 0xc

    goto :goto_0

    .line 1054
    :pswitch_b
    const/16 v1, 0xe

    goto :goto_0

    .line 1056
    :pswitch_c
    const/16 v1, 0xd

    goto :goto_0

    .line 1058
    :pswitch_d
    const/16 v1, 0xf

    goto :goto_0

    .line 1029
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getPreferredDataSubscription()I
    .locals 1

    .prologue
    .line 1102
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferredVoiceSubscription()I
    .locals 1

    .prologue
    .line 1093
    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->getVoiceSubscription()I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCount(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1014
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkType(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1191
    const/4 v0, 0x0

    return v0
.end method

.method public handlePinMmi(Ljava/lang/String;I)Z
    .locals 2
    .parameter "dialString"
    .parameter "subscription"

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 750
    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasIccCard(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1075
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isDataRoamingEnabled(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    .line 1186
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    .line 1187
    .local v0, retvalue:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataRoamingEnabled subscription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", retvalue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 1188
    return v0
.end method

.method public isIdle(I)Z
    .locals 2
    .parameter "subscription"

    .prologue
    .line 583
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOffhook(I)Z
    .locals 2
    .parameter "subscription"

    .prologue
    .line 575
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRadioOn(I)Z
    .locals 2
    .parameter "subscription"

    .prologue
    .line 702
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRinging(I)Z
    .locals 2
    .parameter "subscription"

    .prologue
    .line 579
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimPinEnabled(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 587
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceReadPermission()V

    .line 588
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneGlobals;->isSimPinEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSimPukLocked(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceReadPermission()V

    .line 593
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneGlobals;->isSimPukLocked(I)Z

    move-result v0

    return v0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public setDefaultSimForVoiceCalls(I)I
    .locals 4
    .parameter "SimNumber"

    .prologue
    const/4 v3, 0x1

    .line 1152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultSimForVoiceCalls:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 1154
    const-string v1, "persist.radio.calldefault.simid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1158
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sec_product_feature_common_dsds_support"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v3, p1, :cond_0

    .line 1159
    const-string v1, "simId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1164
    :goto_0
    iget-object v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    .line 1165
    return v3

    .line 1161
    :cond_0
    const-string v1, "simId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setPreferredDataSubscription(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    .line 1111
    const/16 v0, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setRadio(ZI)Z
    .locals 3
    .parameter "turnOn"
    .parameter "subscription"

    .prologue
    const/4 v1, 0x1

    .line 711
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 712
    invoke-direct {p0, p2}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    move v0, v1

    :goto_0
    if-eq v0, p1, :cond_0

    .line 713
    invoke-virtual {p0, p2}, Lcom/android/phone/MSimPhoneInterfaceManager;->toggleRadioOnOff(I)V

    .line 715
    :cond_0
    return v1

    .line 712
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showCallScreen()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 477
    invoke-direct {p0, v0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->showCallScreenInternal(ZZ)Z

    move-result v0

    return v0
.end method

.method public showCallScreenWithDialpad(Z)Z
    .locals 1
    .parameter "showDialpad"

    .prologue
    .line 484
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->showCallScreenInternal(ZZ)Z

    move-result v0

    return v0
.end method

.method public silenceRinger()V
    .locals 2

    .prologue
    .line 544
    const-string v0, "silenceRinger..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;Z)V

    .line 549
    const-string v0, "ims_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRingingSecIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    const-string v0, "silenceRinger"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->invokeSecImsInterface(Ljava/lang/String;Z)Ljava/lang/Object;

    .line 557
    :goto_0
    return-void

    .line 555
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 556
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequestAsync(I)V

    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;I)Z
    .locals 2
    .parameter "pin"
    .parameter "subscription"

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 598
    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;

    invoke-direct {p0, p2}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 599
    .local v0, checkSimPin:Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;
    invoke-virtual {v0}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->start()V

    .line 600
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplyPinReportResult(Ljava/lang/String;I)I
    .locals 1
    .parameter "pin"
    .parameter "subscription"

    .prologue
    .line 1168
    const/4 v0, -0x1

    return v0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .parameter "puk"
    .parameter "pin"
    .parameter "subscription"

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 605
    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;

    invoke-direct {p0, p3}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 606
    .local v0, checkSimPuk:Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;
    invoke-virtual {v0}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->start()V

    .line 607
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "puk"
    .parameter "pin"
    .parameter "subscription"

    .prologue
    .line 1172
    const/4 v0, -0x1

    return v0
.end method

.method public toggleRadioOnOff(I)V
    .locals 2
    .parameter "subscription"

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 707
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->isRadioOn(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 708
    return-void

    .line 707
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateServiceLocation(I)V
    .locals 1
    .parameter "subscription"

    .prologue
    .line 698
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 699
    return-void
.end method
