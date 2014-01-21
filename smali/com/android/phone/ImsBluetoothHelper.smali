.class public Lcom/android/phone/ImsBluetoothHelper;
.super Ljava/lang/Object;
.source "ImsBluetoothHelper.java"


# static fields
.field private static final DBG:Z

.field private static mImsCallSate:I

.field private static mImsRingingCallState:I

.field private static mInstance:Lcom/android/phone/ImsBluetoothHelper;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 30
    sget v2, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    if-lt v2, v0, :cond_0

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/ImsBluetoothHelper;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v1, "ImsBluetoothHelper"

    iput-object v1, p0, Lcom/android/phone/ImsBluetoothHelper;->LOG_TAG:Ljava/lang/String;

    .line 45
    const-string v1, "ImsBluetoothHelper()... "

    invoke-direct {p0, v1}, Lcom/android/phone/ImsBluetoothHelper;->log(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ImsBluetoothHelper;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    .line 49
    sput v2, Lcom/android/phone/ImsBluetoothHelper;->mImsCallSate:I

    .line 50
    sput v2, Lcom/android/phone/ImsBluetoothHelper;->mImsRingingCallState:I

    .line 52
    iget-object v1, p0, Lcom/android/phone/ImsBluetoothHelper;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-nez v1, :cond_0

    .line 53
    const-string v1, "mBluetoothPhone == null!!!returning!"

    invoke-direct {p0, v1}, Lcom/android/phone/ImsBluetoothHelper;->log(Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v1, "ImsBluetoothHelper - Going to bind to IMSBTService"

    invoke-direct {p0, v1}, Lcom/android/phone/ImsBluetoothHelper;->log(Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.ims.IMSBTService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/phone/ImsBluetoothHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    sget-object v0, Lcom/android/phone/ImsBluetoothHelper;->mInstance:Lcom/android/phone/ImsBluetoothHelper;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/android/phone/ImsBluetoothHelper;

    invoke-direct {v0, p0}, Lcom/android/phone/ImsBluetoothHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/ImsBluetoothHelper;->mInstance:Lcom/android/phone/ImsBluetoothHelper;

    .line 64
    :cond_0
    sget-object v0, Lcom/android/phone/ImsBluetoothHelper;->mInstance:Lcom/android/phone/ImsBluetoothHelper;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 95
    sget-boolean v0, Lcom/android/phone/ImsBluetoothHelper;->DBG:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/phone/ImsBluetoothHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public sendBTConnectedEvent()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public sendBTDisconnectedEvent()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method
