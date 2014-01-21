.class public Lcom/android/phone/CallReminderWidget;
.super Landroid/widget/RelativeLayout;
.source "CallReminderWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallReminderWidget$Handle;,
        Lcom/android/phone/CallReminderWidget$OnTriggerListener;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final VIBRATE_LONG:J

.field private final VIBRATE_SHORT:J

.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mGrabbedState:I

.field private mIsTracking:Z

.field public mLeftHandle:Lcom/android/phone/CallReminderWidget$Handle;

.field private mOnTriggerListener:Lcom/android/phone/CallReminderWidget$OnTriggerListener;

.field public mRightHandle:Lcom/android/phone/CallReminderWidget$Handle;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 54
    const-string v0, "CallReminderWidget"

    iput-object v0, p0, Lcom/android/phone/CallReminderWidget;->LOG_TAG:Ljava/lang/String;

    .line 56
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/CallReminderWidget;->VIBRATE_SHORT:J

    .line 58
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/CallReminderWidget;->VIBRATE_LONG:J

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallReminderWidget;->mGrabbedState:I

    .line 78
    iput-object p1, p0, Lcom/android/phone/CallReminderWidget;->mContext:Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Lcom/android/phone/CallReminderWidget;->init()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const-string v0, "CallReminderWidget"

    iput-object v0, p0, Lcom/android/phone/CallReminderWidget;->LOG_TAG:Ljava/lang/String;

    .line 56
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/CallReminderWidget;->VIBRATE_SHORT:J

    .line 58
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/CallReminderWidget;->VIBRATE_LONG:J

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallReminderWidget;->mGrabbedState:I

    .line 84
    iput-object p1, p0, Lcom/android/phone/CallReminderWidget;->mContext:Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Lcom/android/phone/CallReminderWidget;->init()V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const-string v0, "CallReminderWidget"

    iput-object v0, p0, Lcom/android/phone/CallReminderWidget;->LOG_TAG:Ljava/lang/String;

    .line 56
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/CallReminderWidget;->VIBRATE_SHORT:J

    .line 58
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/CallReminderWidget;->VIBRATE_LONG:J

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallReminderWidget;->mGrabbedState:I

    .line 90
    iput-object p1, p0, Lcom/android/phone/CallReminderWidget;->mContext:Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Lcom/android/phone/CallReminderWidget;->init()V

    .line 92
    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallReminderWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/phone/CallReminderWidget;->setGrabbedState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/CallReminderWidget;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallReminderWidget;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/CallReminderWidget;)Landroid/util/DisplayMetrics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/CallReminderWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/phone/CallReminderWidget;->mIsTracking:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/CallReminderWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/phone/CallReminderWidget;->dispatchTriggerEvent(I)V

    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .parameter "whichHandle"

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTriggerEvent : whichHandle - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallReminderWidget;->log(Ljava/lang/String;)V

    .line 192
    const-wide/16 v0, 0x28

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallReminderWidget;->vibrate(J)V

    .line 193
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget;->mOnTriggerListener:Lcom/android/phone/CallReminderWidget$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget;->mOnTriggerListener:Lcom/android/phone/CallReminderWidget$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/CallReminderWidget$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 196
    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 95
    const-string v0, "init"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallReminderWidget;->log(Ljava/lang/String;Z)V

    .line 96
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallReminderWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 97
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallReminderWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 100
    new-instance v0, Lcom/android/phone/CallReminderWidget$Handle;

    iget-object v1, p0, Lcom/android/phone/CallReminderWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/android/phone/CallReminderWidget$Handle;-><init>(Lcom/android/phone/CallReminderWidget;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/android/phone/CallReminderWidget;->mLeftHandle:Lcom/android/phone/CallReminderWidget$Handle;

    .line 101
    new-instance v0, Lcom/android/phone/CallReminderWidget$Handle;

    iget-object v1, p0, Lcom/android/phone/CallReminderWidget;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/android/phone/CallReminderWidget$Handle;-><init>(Lcom/android/phone/CallReminderWidget;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/android/phone/CallReminderWidget;->mRightHandle:Lcom/android/phone/CallReminderWidget$Handle;

    .line 102
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 1120
    const-string v0, "CallReminderWidget"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1121
    return-void
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 203
    iget v0, p0, Lcom/android/phone/CallReminderWidget;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    .line 204
    iput p1, p0, Lcom/android/phone/CallReminderWidget;->mGrabbedState:I

    .line 205
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget;->mOnTriggerListener:Lcom/android/phone/CallReminderWidget$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget;->mOnTriggerListener:Lcom/android/phone/CallReminderWidget$OnTriggerListener;

    iget v1, p0, Lcom/android/phone/CallReminderWidget;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/phone/CallReminderWidget$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 209
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
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/phone/CallReminderWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/CallReminderWidget;->mVibrator:Landroid/os/Vibrator;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
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
    .line 1116
    const-string v0, "CallReminderWidget"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 232
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 233
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 236
    .local v4, y:F
    iget-object v6, p0, Lcom/android/phone/CallReminderWidget;->mLeftHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v6, v3, v4}, Lcom/android/phone/CallReminderWidget$Handle;->isHandleSelected(FF)Z

    move-result v1

    .line 239
    .local v1, leftHit:Z
    iget-object v6, p0, Lcom/android/phone/CallReminderWidget;->mRightHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v6, v3, v4}, Lcom/android/phone/CallReminderWidget$Handle;->isHandleSelected(FF)Z

    move-result v2

    .line 241
    .local v2, rightHit:Z
    iget-boolean v6, p0, Lcom/android/phone/CallReminderWidget;->mIsTracking:Z

    if-nez v6, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 242
    const/4 v5, 0x0

    .line 264
    :cond_0
    :goto_0
    return v5

    .line 245
    :cond_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 247
    :pswitch_0
    const-wide/16 v6, 0x1e

    invoke-direct {p0, v6, v7}, Lcom/android/phone/CallReminderWidget;->vibrate(J)V

    .line 248
    iput-boolean v5, p0, Lcom/android/phone/CallReminderWidget;->mIsTracking:Z

    .line 249
    if-eqz v1, :cond_2

    .line 250
    iget-object v6, p0, Lcom/android/phone/CallReminderWidget;->mLeftHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v6, v5}, Lcom/android/phone/CallReminderWidget$Handle;->setState(I)V

    .line 251
    iget-object v6, p0, Lcom/android/phone/CallReminderWidget;->mRightHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v6, v8}, Lcom/android/phone/CallReminderWidget$Handle;->setState(I)V

    .line 252
    invoke-direct {p0, v5}, Lcom/android/phone/CallReminderWidget;->setGrabbedState(I)V

    goto :goto_0

    .line 253
    :cond_2
    if-eqz v2, :cond_0

    .line 254
    iget-object v6, p0, Lcom/android/phone/CallReminderWidget;->mRightHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v6, v5}, Lcom/android/phone/CallReminderWidget$Handle;->setState(I)V

    .line 255
    iget-object v6, p0, Lcom/android/phone/CallReminderWidget;->mLeftHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v6, v8}, Lcom/android/phone/CallReminderWidget$Handle;->setState(I)V

    .line 256
    invoke-direct {p0, v8}, Lcom/android/phone/CallReminderWidget;->setGrabbedState(I)V

    goto :goto_0

    .line 245
    nop

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
    .line 213
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 214
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget;->mLeftHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v0}, Lcom/android/phone/CallReminderWidget$Handle;->tabletMakeLayout()V

    .line 216
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget;->mRightHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v0}, Lcom/android/phone/CallReminderWidget$Handle;->tabletMakeLayout()V

    .line 221
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget;->mLeftHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v0}, Lcom/android/phone/CallReminderWidget$Handle;->makeLayout()V

    .line 219
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget;->mRightHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v0}, Lcom/android/phone/CallReminderWidget$Handle;->makeLayout()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 273
    iget-boolean v3, p0, Lcom/android/phone/CallReminderWidget;->mIsTracking:Z

    if-eqz v3, :cond_0

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 276
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 305
    .end local v0           #action:I
    :cond_0
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/phone/CallReminderWidget;->mIsTracking:Z

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

    .line 278
    .restart local v0       #action:I
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget;->mLeftHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v1}, Lcom/android/phone/CallReminderWidget$Handle;->getState()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 279
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 280
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget;->mLeftHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v1, p1}, Lcom/android/phone/CallReminderWidget$Handle;->tabletProcessMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 282
    :cond_4
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget;->mLeftHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v1, p1}, Lcom/android/phone/CallReminderWidget$Handle;->processMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 284
    :cond_5
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget;->mRightHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v1}, Lcom/android/phone/CallReminderWidget$Handle;->getState()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 285
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 286
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget;->mRightHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v1, p1}, Lcom/android/phone/CallReminderWidget$Handle;->tabletProcessMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 288
    :cond_6
    iget-object v1, p0, Lcom/android/phone/CallReminderWidget;->mRightHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v1, p1}, Lcom/android/phone/CallReminderWidget$Handle;->processMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 296
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/phone/CallReminderWidget;->mIsTracking:Z

    .line 297
    iget-object v3, p0, Lcom/android/phone/CallReminderWidget;->mLeftHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v3, v1}, Lcom/android/phone/CallReminderWidget$Handle;->setState(I)V

    .line 298
    iget-object v3, p0, Lcom/android/phone/CallReminderWidget;->mRightHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v3, v1}, Lcom/android/phone/CallReminderWidget$Handle;->setState(I)V

    .line 299
    invoke-direct {p0, v1}, Lcom/android/phone/CallReminderWidget;->setGrabbedState(I)V

    goto :goto_0

    .line 276
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

    .line 169
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget;->mLeftHandle:Lcom/android/phone/CallReminderWidget$Handle;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget;->mLeftHandle:Lcom/android/phone/CallReminderWidget$Handle;

    #calls: Lcom/android/phone/CallReminderWidget$Handle;->reset(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/CallReminderWidget$Handle;->access$000(Lcom/android/phone/CallReminderWidget$Handle;Z)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget;->mRightHandle:Lcom/android/phone/CallReminderWidget$Handle;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget;->mRightHandle:Lcom/android/phone/CallReminderWidget$Handle;

    #calls: Lcom/android/phone/CallReminderWidget$Handle;->reset(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/CallReminderWidget$Handle;->access$000(Lcom/android/phone/CallReminderWidget$Handle;Z)V

    .line 176
    :cond_1
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/phone/CallReminderWidget$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/phone/CallReminderWidget;->mOnTriggerListener:Lcom/android/phone/CallReminderWidget$OnTriggerListener;

    .line 184
    return-void
.end method
