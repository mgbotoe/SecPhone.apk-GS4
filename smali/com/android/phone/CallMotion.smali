.class public Lcom/android/phone/CallMotion;
.super Ljava/lang/Object;
.source "CallMotion.java"


# static fields
.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionType:I

.field mNotiFlash:Lcom/sec/android/hardware/SecHardwareInterface;

.field private mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

.field private mRinger:Lcom/android/phone/Ringer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "motionType"

    .prologue
    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/phone/CallMotion$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallMotion$1;-><init>(Lcom/android/phone/CallMotion;)V

    iput-object v0, p0, Lcom/android/phone/CallMotion;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 149
    iput-object p1, p0, Lcom/android/phone/CallMotion;->mContext:Landroid/content/Context;

    .line 150
    iput p2, p0, Lcom/android/phone/CallMotion;->mMotionType:I

    .line 151
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    .line 153
    iget-object v0, p0, Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallMotion;->mRinger:Lcom/android/phone/Ringer;

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallMotion;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/phone/CallMotion;->mMotionType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallMotion;)Lcom/android/phone/Ringer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/CallMotion;->mRinger:Lcom/android/phone/Ringer;

    return-object v0
.end method


# virtual methods
.method startMotionCatch()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 158
    const-string v0, "CallMotion"

    const-string v1, "startMotionCatch"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 159
    sget-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/phone/CallMotion;->mContext:Landroid/content/Context;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 163
    :cond_0
    sget-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/CallMotion;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 164
    return-void
.end method

.method stopMotionCatch()V
    .locals 3

    .prologue
    .line 167
    const-string v0, "CallMotion"

    const-string v1, "stopMotionCatch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 169
    sget-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/CallMotion;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 171
    :cond_0
    return-void
.end method
