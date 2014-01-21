.class public Lcom/android/phone/IncomingCallRejectWidget;
.super Landroid/widget/RelativeLayout;
.source "IncomingCallRejectWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IncomingCallRejectWidget$Handle;
    }
.end annotation


# instance fields
.field private final AIRMOTION_SCALE_SIZE_SWEEP1:F

.field private final AIRMOTION_SCALE_SIZE_SWEEP2:F

.field private final DEVICE_DENSITY:F

.field private final LOG_TAG:Ljava/lang/String;

.field private final VIBRATE_LONG:J

.field private final VIBRATE_SHORT:J

.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mGrabbedState:I

.field private mIsTracking:Z

.field private mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

.field public mRejectHandle:Lcom/android/phone/IncomingCallRejectWidget$Handle;

.field private mTriggerDispatched:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const-string v0, "IncomingCallRejectWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->LOG_TAG:Ljava/lang/String;

    .line 55
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->VIBRATE_SHORT:J

    .line 57
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->VIBRATE_LONG:J

    .line 59
    const v0, 0x3f266666

    iput v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->AIRMOTION_SCALE_SIZE_SWEEP1:F

    .line 61
    const v0, 0x3f4f5c29

    iput v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->AIRMOTION_SCALE_SIZE_SWEEP2:F

    .line 69
    iput v2, p0, Lcom/android/phone/IncomingCallRejectWidget;->mGrabbedState:I

    .line 77
    iput-boolean v2, p0, Lcom/android/phone/IncomingCallRejectWidget;->mTriggerDispatched:Z

    .line 79
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->DEVICE_DENSITY:F

    .line 83
    iput-object p1, p0, Lcom/android/phone/IncomingCallRejectWidget;->mContext:Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Lcom/android/phone/IncomingCallRejectWidget;->init()V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const-string v0, "IncomingCallRejectWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->LOG_TAG:Ljava/lang/String;

    .line 55
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->VIBRATE_SHORT:J

    .line 57
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->VIBRATE_LONG:J

    .line 59
    const v0, 0x3f266666

    iput v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->AIRMOTION_SCALE_SIZE_SWEEP1:F

    .line 61
    const v0, 0x3f4f5c29

    iput v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->AIRMOTION_SCALE_SIZE_SWEEP2:F

    .line 69
    iput v2, p0, Lcom/android/phone/IncomingCallRejectWidget;->mGrabbedState:I

    .line 77
    iput-boolean v2, p0, Lcom/android/phone/IncomingCallRejectWidget;->mTriggerDispatched:Z

    .line 79
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->DEVICE_DENSITY:F

    .line 89
    iput-object p1, p0, Lcom/android/phone/IncomingCallRejectWidget;->mContext:Landroid/content/Context;

    .line 90
    invoke-direct {p0}, Lcom/android/phone/IncomingCallRejectWidget;->init()V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const-string v0, "IncomingCallRejectWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->LOG_TAG:Ljava/lang/String;

    .line 55
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->VIBRATE_SHORT:J

    .line 57
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->VIBRATE_LONG:J

    .line 59
    const v0, 0x3f266666

    iput v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->AIRMOTION_SCALE_SIZE_SWEEP1:F

    .line 61
    const v0, 0x3f4f5c29

    iput v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->AIRMOTION_SCALE_SIZE_SWEEP2:F

    .line 69
    iput v2, p0, Lcom/android/phone/IncomingCallRejectWidget;->mGrabbedState:I

    .line 77
    iput-boolean v2, p0, Lcom/android/phone/IncomingCallRejectWidget;->mTriggerDispatched:Z

    .line 79
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->DEVICE_DENSITY:F

    .line 95
    iput-object p1, p0, Lcom/android/phone/IncomingCallRejectWidget;->mContext:Landroid/content/Context;

    .line 96
    invoke-direct {p0}, Lcom/android/phone/IncomingCallRejectWidget;->init()V

    .line 97
    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/IncomingCallRejectWidget;)Landroid/util/DisplayMetrics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/phone/IncomingCallRejectWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/phone/IncomingCallRejectWidget;->mIsTracking:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/phone/IncomingCallRejectWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/phone/IncomingCallRejectWidget;->dispatchTriggerEvent(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/IncomingCallRejectWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/phone/IncomingCallRejectWidget;->setGrabbedState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/IncomingCallRejectWidget;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/phone/IncomingCallRejectWidget;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .parameter "whichHandle"

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTriggerEvent : whichHandle - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallRejectWidget;->log(Ljava/lang/String;)V

    .line 212
    iget-boolean v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->mTriggerDispatched:Z

    if-nez v0, :cond_1

    .line 213
    const-string v0, "Triggering the receive call event for the first time"

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallRejectWidget;->log(Ljava/lang/String;)V

    .line 214
    const-wide/16 v0, 0x28

    invoke-direct {p0, v0, v1}, Lcom/android/phone/IncomingCallRejectWidget;->vibrate(J)V

    .line 215
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/IncomingCallWidget$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 218
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->mTriggerDispatched:Z

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_1
    const-string v0, "ignoring the trigger event as it is already triggered"

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallRejectWidget;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 99
    const-string v0, "init"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/IncomingCallRejectWidget;->log(Ljava/lang/String;Z)V

    .line 100
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 101
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 104
    new-instance v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;

    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/android/phone/IncomingCallRejectWidget$Handle;-><init>(Lcom/android/phone/IncomingCallRejectWidget;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->mRejectHandle:Lcom/android/phone/IncomingCallRejectWidget$Handle;

    .line 105
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 1105
    const-string v0, "IncomingCallRejectWidget"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1106
    return-void
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 229
    iget v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    .line 230
    iput p1, p0, Lcom/android/phone/IncomingCallRejectWidget;->mGrabbedState:I

    .line 231
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

    iget v1, p0, Lcom/android/phone/IncomingCallRejectWidget;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/phone/IncomingCallWidget$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 235
    :cond_0
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallRejectWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->mVibrator:Landroid/os/Vibrator;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    monitor-exit p0

    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 1101
    const-string v0, "IncomingCallRejectWidget"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 252
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 253
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 255
    .local v3, y:F
    iget-object v5, p0, Lcom/android/phone/IncomingCallRejectWidget;->mRejectHandle:Lcom/android/phone/IncomingCallRejectWidget$Handle;

    invoke-virtual {v5, v2, v3}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->isHandleSelected(FF)Z

    move-result v1

    .line 257
    .local v1, rightHit:Z
    iget-boolean v5, p0, Lcom/android/phone/IncomingCallRejectWidget;->mIsTracking:Z

    if-nez v5, :cond_1

    if-nez v1, :cond_1

    .line 258
    const/4 v4, 0x0

    .line 275
    :cond_0
    :goto_0
    return v4

    .line 261
    :cond_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 263
    :pswitch_0
    const-wide/16 v5, 0x1e

    invoke-direct {p0, v5, v6}, Lcom/android/phone/IncomingCallRejectWidget;->vibrate(J)V

    .line 264
    iput-boolean v4, p0, Lcom/android/phone/IncomingCallRejectWidget;->mIsTracking:Z

    .line 265
    if-eqz v1, :cond_0

    .line 266
    iget-object v5, p0, Lcom/android/phone/IncomingCallRejectWidget;->mRejectHandle:Lcom/android/phone/IncomingCallRejectWidget$Handle;

    invoke-virtual {v5, v4}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->setState(I)V

    .line 267
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/phone/IncomingCallRejectWidget;->setGrabbedState(I)V

    goto :goto_0

    .line 261
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
    .line 239
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 240
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->mRejectHandle:Lcom/android/phone/IncomingCallRejectWidget$Handle;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->makeLayout()V

    .line 241
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 284
    iget-boolean v3, p0, Lcom/android/phone/IncomingCallRejectWidget;->mIsTracking:Z

    if-eqz v3, :cond_0

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 287
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 305
    .end local v0           #action:I
    :cond_0
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/phone/IncomingCallRejectWidget;->mIsTracking:Z

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

    .line 289
    .restart local v0       #action:I
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget;->mRejectHandle:Lcom/android/phone/IncomingCallRejectWidget$Handle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->getState()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 290
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget;->mRejectHandle:Lcom/android/phone/IncomingCallRejectWidget$Handle;

    invoke-virtual {v1, p1}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->processMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 297
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/phone/IncomingCallRejectWidget;->mIsTracking:Z

    .line 298
    iget-object v3, p0, Lcom/android/phone/IncomingCallRejectWidget;->mRejectHandle:Lcom/android/phone/IncomingCallRejectWidget$Handle;

    invoke-virtual {v3, v1}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->setState(I)V

    .line 299
    invoke-direct {p0, v1}, Lcom/android/phone/IncomingCallRejectWidget;->setGrabbedState(I)V

    goto :goto_0

    .line 287
    nop

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

    .line 178
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->mRejectHandle:Lcom/android/phone/IncomingCallRejectWidget$Handle;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->mRejectHandle:Lcom/android/phone/IncomingCallRejectWidget$Handle;

    invoke-virtual {v0, v1, v1}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->setState(IZ)V

    .line 181
    :cond_0
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/phone/IncomingCallWidget$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/phone/IncomingCallRejectWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

    .line 189
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/IncomingCallRejectWidget;->mTriggerDispatched:Z

    .line 200
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 201
    return-void
.end method
