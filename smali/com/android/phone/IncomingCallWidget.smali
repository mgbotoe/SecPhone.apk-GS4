.class public Lcom/android/phone/IncomingCallWidget;
.super Landroid/widget/RelativeLayout;
.source "IncomingCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IncomingCallWidget$Handle;,
        Lcom/android/phone/IncomingCallWidget$OnTriggerListener;
    }
.end annotation


# instance fields
.field private final AIRMOTION_SCALE_SIZE_SWEEP1:F

.field private final AIRMOTION_SCALE_SIZE_SWEEP2:F

.field private final EMERGENCY_CALLBACK_MODE:Ljava/lang/String;

.field private final ENLARGED_DESCRIPTION_TEXT_SIZE:I

.field private final IN_CALL_SCREEN:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private final VIBRATE_LONG:J

.field private final VIBRATE_SHORT:J

.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mGrabbedState:I

.field private mIsTracking:Z

.field public mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

.field private mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

.field public mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 63
    const-string v0, "IncomingCallWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->LOG_TAG:Ljava/lang/String;

    .line 65
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/IncomingCallWidget;->VIBRATE_SHORT:J

    .line 67
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/IncomingCallWidget;->VIBRATE_LONG:J

    .line 69
    const v0, 0x3f266666

    iput v0, p0, Lcom/android/phone/IncomingCallWidget;->AIRMOTION_SCALE_SIZE_SWEEP1:F

    .line 71
    const v0, 0x3f4f5c29

    iput v0, p0, Lcom/android/phone/IncomingCallWidget;->AIRMOTION_SCALE_SIZE_SWEEP2:F

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IncomingCallWidget;->mGrabbedState:I

    .line 89
    const-string v0, "EmergencyCallbackMode"

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->EMERGENCY_CALLBACK_MODE:Ljava/lang/String;

    .line 91
    const-string v0, "InCallScreen"

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->IN_CALL_SCREEN:Ljava/lang/String;

    .line 93
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/phone/IncomingCallWidget;->ENLARGED_DESCRIPTION_TEXT_SIZE:I

    .line 97
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget;->mContext:Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget;->init()V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const-string v0, "IncomingCallWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->LOG_TAG:Ljava/lang/String;

    .line 65
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/IncomingCallWidget;->VIBRATE_SHORT:J

    .line 67
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/IncomingCallWidget;->VIBRATE_LONG:J

    .line 69
    const v0, 0x3f266666

    iput v0, p0, Lcom/android/phone/IncomingCallWidget;->AIRMOTION_SCALE_SIZE_SWEEP1:F

    .line 71
    const v0, 0x3f4f5c29

    iput v0, p0, Lcom/android/phone/IncomingCallWidget;->AIRMOTION_SCALE_SIZE_SWEEP2:F

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IncomingCallWidget;->mGrabbedState:I

    .line 89
    const-string v0, "EmergencyCallbackMode"

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->EMERGENCY_CALLBACK_MODE:Ljava/lang/String;

    .line 91
    const-string v0, "InCallScreen"

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->IN_CALL_SCREEN:Ljava/lang/String;

    .line 93
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/phone/IncomingCallWidget;->ENLARGED_DESCRIPTION_TEXT_SIZE:I

    .line 103
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget;->mContext:Landroid/content/Context;

    .line 104
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget;->init()V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const-string v0, "IncomingCallWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->LOG_TAG:Ljava/lang/String;

    .line 65
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/IncomingCallWidget;->VIBRATE_SHORT:J

    .line 67
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/IncomingCallWidget;->VIBRATE_LONG:J

    .line 69
    const v0, 0x3f266666

    iput v0, p0, Lcom/android/phone/IncomingCallWidget;->AIRMOTION_SCALE_SIZE_SWEEP1:F

    .line 71
    const v0, 0x3f4f5c29

    iput v0, p0, Lcom/android/phone/IncomingCallWidget;->AIRMOTION_SCALE_SIZE_SWEEP2:F

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IncomingCallWidget;->mGrabbedState:I

    .line 89
    const-string v0, "EmergencyCallbackMode"

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->EMERGENCY_CALLBACK_MODE:Ljava/lang/String;

    .line 91
    const-string v0, "InCallScreen"

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->IN_CALL_SCREEN:Ljava/lang/String;

    .line 93
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/phone/IncomingCallWidget;->ENLARGED_DESCRIPTION_TEXT_SIZE:I

    .line 109
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget;->mContext:Landroid/content/Context;

    .line 110
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget;->init()V

    .line 111
    return-void
.end method

.method static synthetic access$1002(Lcom/android/phone/IncomingCallWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/IncomingCallWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/phone/IncomingCallWidget;->dispatchTriggerEvent(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/IncomingCallWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/phone/IncomingCallWidget;->setGrabbedState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/IncomingCallWidget;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .parameter "whichHandle"

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTriggerEvent : whichHandle - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 223
    const-wide/16 v0, 0x28

    invoke-direct {p0, v0, v1}, Lcom/android/phone/IncomingCallWidget;->vibrate(J)V

    .line 224
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/IncomingCallWidget$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 227
    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 114
    const-string v0, "init"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;Z)V

    .line 115
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 116
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 119
    new-instance v0, Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/android/phone/IncomingCallWidget$Handle;-><init>(Lcom/android/phone/IncomingCallWidget;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    .line 120
    new-instance v0, Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/android/phone/IncomingCallWidget$Handle;-><init>(Lcom/android/phone/IncomingCallWidget;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    .line 121
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 1392
    const-string v0, "IncomingCallWidget"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1393
    return-void
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 234
    iget v0, p0, Lcom/android/phone/IncomingCallWidget;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    .line 235
    iput p1, p0, Lcom/android/phone/IncomingCallWidget;->mGrabbedState:I

    .line 236
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

    iget v1, p0, Lcom/android/phone/IncomingCallWidget;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/phone/IncomingCallWidget$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 240
    :cond_0
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mVibrator:Landroid/os/Vibrator;

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    monitor-exit p0

    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clearAirMotionAnimation()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget$Handle;->clearAirMotionAnimation()V

    .line 133
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 1388
    const-string v0, "IncomingCallWidget"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 310
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 313
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 316
    .local v1, action:I
    packed-switch v1, :pswitch_data_0

    .line 328
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/phone/IncomingCallWidget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 329
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 331
    .end local v1           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 332
    return v4

    .line 318
    .restart local v1       #action:I
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 321
    :pswitch_2
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 324
    :pswitch_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 340
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 343
    .local v1, action:I
    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 344
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 346
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/IncomingCallWidget;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 347
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 349
    .end local v1           #action:I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    .line 350
    const/4 v2, 0x1

    return v2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v6, 0x1

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 263
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 264
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 267
    .local v4, y:F
    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v7, v3, v4}, Lcom/android/phone/IncomingCallWidget$Handle;->isHandleSelected(FF)Z

    move-result v1

    .line 270
    .local v1, leftHit:Z
    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v7, v3, v4}, Lcom/android/phone/IncomingCallWidget$Handle;->isHandleSelected(FF)Z

    move-result v2

    .line 272
    .local v2, rightHit:Z
    iget-boolean v7, p0, Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z

    if-nez v7, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 304
    :goto_0
    return v5

    .line 276
    :cond_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v5, v6

    .line 304
    goto :goto_0

    .line 278
    :pswitch_0
    const-wide/16 v7, 0x1e

    invoke-direct {p0, v7, v8}, Lcom/android/phone/IncomingCallWidget;->vibrate(J)V

    .line 279
    iput-boolean v6, p0, Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z

    .line 280
    if-eqz v1, :cond_3

    .line 281
    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v7, v6}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 282
    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v7, v9}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 283
    invoke-direct {p0, v6}, Lcom/android/phone/IncomingCallWidget;->setGrabbedState(I)V

    .line 285
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->shouldAcceptByTapping()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "easy_interaction"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 288
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/phone/IncomingCallWidget;->dispatchTriggerEvent(I)V

    goto :goto_1

    .line 290
    :cond_3
    if-eqz v2, :cond_1

    .line 291
    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v7, v6}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 292
    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v7, v9}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 293
    invoke-direct {p0, v9}, Lcom/android/phone/IncomingCallWidget;->setGrabbedState(I)V

    .line 295
    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "easy_interaction"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 296
    invoke-direct {p0, v9}, Lcom/android/phone/IncomingCallWidget;->dispatchTriggerEvent(I)V

    goto :goto_1

    .line 276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 244
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 245
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget$Handle;->tabletMakeLayout()V

    .line 247
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget$Handle;->tabletMakeLayout()V

    .line 252
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget$Handle;->makeLayout()V

    .line 250
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget$Handle;->makeLayout()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x5208

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 360
    iget-boolean v3, p0, Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z

    if-eqz v3, :cond_0

    .line 361
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 363
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 400
    .end local v0           #action:I
    :cond_0
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z

    if-nez v3, :cond_1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    move v2, v1

    :cond_3
    :goto_0
    return v2

    .line 365
    .restart local v0       #action:I
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget$Handle;->getState()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 366
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 367
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v1, p1}, Lcom/android/phone/IncomingCallWidget$Handle;->tabletProcessMoveEvent(Landroid/view/MotionEvent;)V

    .line 371
    :goto_1
    const-string v1, "enable_integrator_haptic"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 372
    const-string v1, "[namyi]performHapticFeedback(HapticFeedbackConstants.SCROLLER_SCROLL);"

    invoke-virtual {p0, v1}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0, v4}, Lcom/android/phone/IncomingCallWidget;->performHapticFeedback(I)Z

    goto :goto_0

    .line 369
    :cond_4
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v1, p1}, Lcom/android/phone/IncomingCallWidget$Handle;->processMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 375
    :cond_5
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget$Handle;->getState()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 376
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 377
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v1, p1}, Lcom/android/phone/IncomingCallWidget$Handle;->tabletProcessMoveEvent(Landroid/view/MotionEvent;)V

    .line 381
    :goto_2
    const-string v1, "enable_integrator_haptic"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 382
    const-string v1, "[namyi]performHapticFeedback(HapticFeedbackConstants.SCROLLER_SCROLL);"

    invoke-virtual {p0, v1}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0, v4}, Lcom/android/phone/IncomingCallWidget;->performHapticFeedback(I)Z

    goto :goto_0

    .line 379
    :cond_6
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v1, p1}, Lcom/android/phone/IncomingCallWidget$Handle;->processMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 391
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z

    .line 392
    iget-object v3, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v3, v1}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 393
    iget-object v3, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v3, v1}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 394
    invoke-direct {p0, v1}, Lcom/android/phone/IncomingCallWidget;->setGrabbedState(I)V

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v0, v1, v1}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(IZ)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v0, v1, v1}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(IZ)V

    .line 207
    :cond_1
    return-void
.end method

.method public setLeftHintText(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 190
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/phone/IncomingCallWidget$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

    .line 215
    return-void
.end method

.method public setRightHintText(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 194
    return-void
.end method

.method public startAirMotionAnimation(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    #calls: Lcom/android/phone/IncomingCallWidget$Handle;->startAirMotionAnimation(I)V
    invoke-static {v0, p1}, Lcom/android/phone/IncomingCallWidget$Handle;->access$000(Lcom/android/phone/IncomingCallWidget$Handle;I)V

    .line 127
    :cond_0
    return-void
.end method
