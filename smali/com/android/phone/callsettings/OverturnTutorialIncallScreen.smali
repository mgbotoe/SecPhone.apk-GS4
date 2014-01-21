.class public Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;
.super Landroid/app/Activity;
.source "OverturnTutorialIncallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;
    }
.end annotation


# static fields
.field private static final mOverturnDrawable:[I


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAnimationIndex:I

.field private mCallStateLayout:Landroid/view/View;

.field private mContinueRinging:Z

.field private mEndTutorial:Landroid/widget/FrameLayout;

.field private mEndTutorialAnimation:Landroid/view/animation/Animation;

.field private mImgView:Landroid/widget/ImageView;

.field private mIsForegroundActivity:Z

.field private mMainLayout:Landroid/view/View;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mOkGoodJobDialog:Landroid/app/AlertDialog$Builder;

.field private mOverturnHandler:Landroid/os/Handler;

.field private mPreviousMsg:I

.field private mRingerType:Z

.field private mRingtone:Landroid/media/Ringtone;

.field private mStartTutorial:Landroid/widget/FrameLayout;

.field private mStartTutorialAnimation:Landroid/view/animation/Animation;

.field private mTutorialDialogON:I

.field mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;

.field overturnMotionWidget:Lcom/android/phone/IncomingCallWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnDrawable:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xf9t 0x4t 0x2t 0x7ft
        0xfat 0x4t 0x2t 0x7ft
        0xfbt 0x4t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    iput v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I

    .line 72
    iput v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    .line 73
    iput-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingerType:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mContinueRinging:Z

    .line 76
    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    .line 77
    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    .line 78
    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOkGoodJobDialog:Landroid/app/AlertDialog$Builder;

    .line 80
    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 81
    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 83
    iput-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    .line 99
    new-instance v0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->stopAnimation()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->isForegroundActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->startIncomingSound()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mStartTutorial:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mEndTutorial:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mEndTutorialAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAnimationIndex:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->updateAnimation(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    return-void
.end method

.method private controlRing(Z)V
    .locals 4
    .parameter "mContinueRinging"

    .prologue
    .line 249
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 252
    .local v0, ringtoneUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_0

    .line 253
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    .line 257
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 258
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_2

    .line 259
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 260
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 269
    :cond_1
    :goto_0
    return-void

    .line 262
    :cond_2
    const-string v1, "OverturnTutorialIncallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playRingtones: failed to load ringtone from uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    goto :goto_0
.end method

.method private controlVibration()V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;

    .line 275
    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibrator Start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;->start()V

    .line 278
    :cond_0
    return-void
.end method

.method private isForegroundActivity()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method private startAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 438
    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 440
    iput v2, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAnimationIndex:I

    .line 441
    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->updateAnimation(I)V

    .line 443
    :cond_0
    return-void
.end method

.method private startIncomingSound()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 324
    iget-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingerType:Z

    if-ne v0, v1, :cond_0

    .line 325
    iput-boolean v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mContinueRinging:Z

    .line 326
    iget-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mContinueRinging:Z

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->controlRing(Z)V

    .line 330
    :goto_0
    return-void

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->controlVibration()V

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 447
    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 451
    :cond_0
    return-void
.end method

.method private stopRingingOrVibration()V
    .locals 3

    .prologue
    .line 292
    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop Ring or Vibration, mRingerType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingerType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingerType:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mContinueRinging:Z

    .line 295
    iget-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mContinueRinging:Z

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->controlRing(Z)V

    .line 300
    :goto_0
    return-void

    .line 297
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;

    .line 298
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0
.end method

.method private updateAnimation(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/16 v4, 0x14

    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, animation_size:I
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 421
    sget-object v1, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnDrawable:[I

    array-length v0, v1

    .line 422
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnDrawable:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 425
    :cond_0
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAnimationIndex:I

    .line 426
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 427
    iget v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAnimationIndex:I

    if-lt v1, v0, :cond_2

    .line 428
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAnimationIndex:I

    .line 429
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 434
    :cond_1
    :goto_0
    return-void

    .line 431
    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 305
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 306
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    .line 307
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 310
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 315
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 316
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    .line 318
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 321
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 456
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f050002

    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const v0, 0x7f040087

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->setContentView(I)V

    .line 136
    const v0, 0x7f0a0276

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMainLayout:Landroid/view/View;

    .line 137
    const v0, 0x7f0a0277

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mCallStateLayout:Landroid/view/View;

    .line 138
    const v0, 0x7f0a0279

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mStartTutorial:Landroid/widget/FrameLayout;

    .line 139
    const v0, 0x7f0a027a

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mEndTutorial:Landroid/widget/FrameLayout;

    .line 141
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibrator:Landroid/os/Vibrator;

    .line 142
    const v0, 0x7f0a0278

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallWidget;

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->overturnMotionWidget:Lcom/android/phone/IncomingCallWidget;

    .line 145
    const-string v0, "motion_recognition"

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 146
    new-instance v0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$2;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 172
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mStartTutorialAnimation:Landroid/view/animation/Animation;

    .line 180
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mStartTutorialAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 181
    invoke-virtual {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mEndTutorialAnimation:Landroid/view/animation/Animation;

    .line 183
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mStartTutorial:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mStartTutorialAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 184
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 337
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 338
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 339
    iget-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 340
    iput-object v8, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    .line 343
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 414
    :goto_0
    iget-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v6

    .line 345
    :sswitch_0
    const-string v6, "OverturnTutorialIncallScreen"

    const-string v7, "Get in the SHOW_TUTORIAL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 347
    .local v3, mContext:Landroid/content/Context;
    const-string v6, "layout_inflater"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 348
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040021

    invoke-virtual {v1, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 349
    .local v2, layout:Landroid/view/View;
    const v6, 0x7f0a00eb

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    .line 350
    const v6, 0x7f0a00ea

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 351
    .local v4, message:Landroid/widget/TextView;
    const v6, 0x7f090328

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 352
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 353
    const v6, 0x7f090329

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 354
    new-instance v5, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$3;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$3;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    .line 362
    .local v5, restartListener:Landroid/content/DialogInterface$OnClickListener;
    const v6, 0x7f09058d

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 363
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    .line 364
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    .line 365
    const/16 v6, 0x32

    iput v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    .line 366
    iget-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 367
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->startAnimation()V

    .line 368
    iget-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$4;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$4;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 384
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #layout:Landroid/view/View;
    .end local v3           #mContext:Landroid/content/Context;
    .end local v4           #message:Landroid/widget/TextView;
    .end local v5           #restartListener:Landroid/content/DialogInterface$OnClickListener;
    :sswitch_1
    const-string v6, "OverturnTutorialIncallScreen"

    const-string v7, "Get in the ShowOkGoodJob"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const v6, 0x7f09032d

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f09032c

    new-instance v8, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$6;

    invoke-direct {v8, p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$6;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f090170

    new-instance v8, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$5;

    invoke-direct {v8, p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$5;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 400
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    .line 401
    iget-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 402
    iget-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$7;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$7;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 343
    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_0
        0x28 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 232
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 242
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 234
    :pswitch_0
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->showDialog(I)V

    .line 235
    const/4 v0, 0x1

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 210
    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    .line 212
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    .line 213
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 216
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 189
    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(), mPreviousMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iput-boolean v3, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    .line 192
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 197
    :cond_0
    iget v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "UseRing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingerType:Z

    .line 200
    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRingerType in onResume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingerType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->startIncomingSound()V

    .line 203
    :cond_1
    return-void
.end method
