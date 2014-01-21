.class public Lcom/android/phone/RcsContentObserver;
.super Landroid/database/ContentObserver;
.source "RcsContentObserver.java"


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mInCallUi:Lcom/android/phone/InCallTouchUi;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/phone/InCallTouchUi;Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V
    .locals 3
    .parameter "handler"
    .parameter "mInCallTouchUi"
    .parameter "context"
    .parameter "callManager"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 37
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RcsContentObserver() - inCallTouchUi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 40
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RcsContentObserver;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/RcsContentObserver;->mRegistered:Z

    .line 42
    iput-object p3, p0, Lcom/android/phone/RcsContentObserver;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/phone/RcsContentObserver;->mInCallUi:Lcom/android/phone/InCallTouchUi;

    .line 44
    iput-object p4, p0, Lcom/android/phone/RcsContentObserver;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x1

    .line 68
    sget-object v1, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onChange()"

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 69
    if-nez p1, :cond_0

    .line 72
    sget-object v1, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v2, "calling update on buttons"

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/android/phone/RcsContentObserver;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v0

    .line 75
    .local v0, inCallScreen:Lcom/android/phone/InCallScreen;
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 80
    :cond_1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 81
    return-void
.end method

.method public registerSelfAsObserver(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "cr"

    .prologue
    const/4 v2, 0x1

    .line 59
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerSelfAsObserver()"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 60
    iget-boolean v0, p0, Lcom/android/phone/RcsContentObserver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 61
    iput-boolean v2, p0, Lcom/android/phone/RcsContentObserver;->mRegistered:Z

    .line 62
    sget-object v0, Lcom/android/phone/RcsTransferConstants;->INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    :cond_0
    return-void
.end method

.method public unregisterSelfAsObseverAndCloseCursor()V
    .locals 4

    .prologue
    .line 49
    sget-object v1, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v2, "unregisterSelfAsObseverAndCloseCursor()"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 51
    iget-boolean v1, p0, Lcom/android/phone/RcsContentObserver;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/RcsContentObserver;->mRegistered:Z

    .line 53
    iget-object v1, p0, Lcom/android/phone/RcsContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 54
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 56
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method
