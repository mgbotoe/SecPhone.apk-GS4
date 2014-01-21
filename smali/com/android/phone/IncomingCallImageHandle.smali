.class public Lcom/android/phone/IncomingCallImageHandle;
.super Landroid/widget/FrameLayout;
.source "IncomingCallImageHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IncomingCallImageHandle$3;,
        Lcom/android/phone/IncomingCallImageHandle$HandleState;
    }
.end annotation


# instance fields
.field private final CHANGE_ARROW_DELAY:I

.field private final CHANGE_ARROW_MSG:I

.field private final CHANGE_ARROW_RESET_DELAY:I

.field private final LOG_TAG:Ljava/lang/String;

.field private final MAKE_TARGET_DURATION:I

.field private enableArrowAnimation:Z

.field private mArrow:Landroid/widget/ImageView;

.field private mArrowAnimationIndex:I

.field private mArrowLeftAnimation:[I

.field private mArrowRightAnimation:[I

.field private mContext:Landroid/content/Context;

.field private mEasyTouchModeEnabled:Z

.field private mHandleImageView:Landroid/widget/ImageView;

.field private mHandleState:Lcom/android/phone/IncomingCallImageHandle$HandleState;

.field private mHandleType:I

.field private mHandler:Landroid/os/Handler;

.field private mParent:Lcom/android/phone/IncomingCallImageWidget;

.field mReachedRatio:D

.field private mTabCircle:Landroid/widget/ImageView;

.field private mTargetCircle:Landroid/widget/ImageView;

.field private mTouchAreaBottomExtra:I

.field private mTouchAreaLeftExtra:I

.field private mTouchAreaRightExtra:I

.field private mTouchAreaTopExtra:I

.field private useExternalArrowImage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "handleType"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    const-string v0, "IncomingCallImageHandle"

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->LOG_TAG:Ljava/lang/String;

    .line 56
    iput-boolean v1, p0, Lcom/android/phone/IncomingCallImageHandle;->useExternalArrowImage:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/phone/IncomingCallImageHandle;->enableArrowAnimation:Z

    .line 62
    iput v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleType:I

    .line 64
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/IncomingCallImageHandle;->CHANGE_ARROW_MSG:I

    .line 66
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/phone/IncomingCallImageHandle;->CHANGE_ARROW_DELAY:I

    .line 68
    const/16 v0, 0x384

    iput v0, p0, Lcom/android/phone/IncomingCallImageHandle;->CHANGE_ARROW_RESET_DELAY:I

    .line 73
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrowLeftAnimation:[I

    .line 78
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrowRightAnimation:[I

    .line 83
    iput v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrowAnimationIndex:I

    .line 85
    iput-boolean v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    .line 97
    new-instance v0, Lcom/android/phone/IncomingCallImageHandle$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IncomingCallImageHandle$1;-><init>(Lcom/android/phone/IncomingCallImageHandle;)V

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    .line 139
    sget-object v0, Lcom/android/phone/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    .line 305
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/phone/IncomingCallImageHandle;->MAKE_TARGET_DURATION:I

    .line 408
    iput v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTouchAreaLeftExtra:I

    .line 409
    iput v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTouchAreaTopExtra:I

    .line 410
    iput v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTouchAreaRightExtra:I

    .line 411
    iput v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTouchAreaBottomExtra:I

    .line 445
    const-wide v0, 0x3fee666666666666L

    iput-wide v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mReachedRatio:D

    .line 143
    iput-object p1, p0, Lcom/android/phone/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    .line 144
    iput p2, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleType:I

    .line 145
    invoke-direct {p0}, Lcom/android/phone/IncomingCallImageHandle;->init()V

    .line 146
    return-void

    .line 73
    :array_0
    .array-data 0x4
        0xf7t 0x2t 0x2t 0x7ft
        0xf8t 0x2t 0x2t 0x7ft
        0xf9t 0x2t 0x2t 0x7ft
    .end array-data

    .line 78
    :array_1
    .array-data 0x4
        0xct 0x3t 0x2t 0x7ft
        0xdt 0x3t 0x2t 0x7ft
        0xet 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/IncomingCallImageHandle;)Lcom/android/phone/IncomingCallImageWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mParent:Lcom/android/phone/IncomingCallImageWidget;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/IncomingCallImageHandle;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/IncomingCallImageHandle;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/phone/IncomingCallImageHandle;->enableArrowAnimation:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/IncomingCallImageHandle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleType:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/IncomingCallImageHandle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrowAnimationIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/IncomingCallImageHandle;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrowAnimationIndex:I

    return p1
.end method

.method static synthetic access$408(Lcom/android/phone/IncomingCallImageHandle;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrowAnimationIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrowAnimationIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/IncomingCallImageHandle;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrowLeftAnimation:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/IncomingCallImageHandle;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/IncomingCallImageHandle;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrowRightAnimation:[I

    return-object v0
.end method

.method private handleEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 186
    .local v0, action:I
    const/4 v1, 0x0

    .line 188
    .local v1, retValue:Z
    packed-switch v0, :pswitch_data_0

    .line 230
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 193
    :pswitch_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->shouldAcceptByTapping()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_interaction"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    if-eqz v2, :cond_2

    .line 195
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mParent:Lcom/android/phone/IncomingCallImageWidget;

    iget v3, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageWidget;->dispatchTriggerEvent(I)V

    goto :goto_0

    .line 200
    :cond_2
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/phone/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/IncomingCallImageHandle;->isInTabCircle(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    sget-object v2, Lcom/android/phone/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {p0, v2}, Lcom/android/phone/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/IncomingCallImageHandle$HandleState;)V

    .line 202
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mParent:Lcom/android/phone/IncomingCallImageWidget;

    iget-object v3, p0, Lcom/android/phone/IncomingCallImageHandle;->mParent:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/IncomingCallImageWidget;->vibrate(J)V

    .line 203
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mParent:Lcom/android/phone/IncomingCallImageWidget;

    iget v3, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageWidget;->setGrabbedState(I)V

    .line 204
    const/4 v1, 0x1

    goto :goto_0

    .line 210
    :pswitch_3
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/phone/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_0

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/phone/IncomingCallImageHandle;->processMoveEvent(Landroid/view/MotionEvent;)V

    .line 212
    const/4 v1, 0x1

    goto :goto_0

    .line 220
    :pswitch_4
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/phone/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_0

    .line 221
    sget-object v2, Lcom/android/phone/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {p0, v2}, Lcom/android/phone/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/IncomingCallImageHandle$HandleState;)V

    .line 222
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mParent:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v2, v4}, Lcom/android/phone/IncomingCallImageWidget;->setGrabbedState(I)V

    .line 223
    const/4 v1, 0x1

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 153
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 154
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040065

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 156
    const v1, 0x7f0a01fb

    invoke-virtual {p0, v1}, Lcom/android/phone/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    .line 157
    const v1, 0x7f0a01fa

    invoke-virtual {p0, v1}, Lcom/android/phone/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    .line 158
    const v1, 0x7f0a01fc

    invoke-virtual {p0, v1}, Lcom/android/phone/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    .line 160
    iget v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleType:I

    if-ne v1, v2, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    const v2, 0x7f0202fd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    const v2, 0x7f0202fc

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const v2, 0x7f0202ff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    const v1, 0x7f0a01fe

    invoke-virtual {p0, v1}, Lcom/android/phone/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    .line 174
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallImageHandle;->updateHandle()V

    .line 175
    return-void

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    const v2, 0x7f020312

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    const v2, 0x7f020311

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const v2, 0x7f020303

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    const v1, 0x7f0a01fd

    invoke-virtual {p0, v1}, Lcom/android/phone/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private updateTabCircleAlpha(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTabCircleAlpha : mWidgetState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    .line 402
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/phone/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_0

    .line 403
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/IncomingCallImageHandle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    .line 404
    .local v0, ratio:D
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    const-wide v3, 0x406fe00000000000L

    mul-double/2addr v3, v0

    double-to-int v3, v3

    rsub-int v3, v3, 0xff

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 406
    .end local v0           #ratio:D
    :cond_0
    return-void
.end method


# virtual methods
.method public addTouchArea(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 414
    iput p1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTouchAreaLeftExtra:I

    .line 415
    iput p2, p0, Lcom/android/phone/IncomingCallImageHandle;->mTouchAreaTopExtra:I

    .line 416
    iput p3, p0, Lcom/android/phone/IncomingCallImageHandle;->mTouchAreaRightExtra:I

    .line 417
    iput p4, p0, Lcom/android/phone/IncomingCallImageHandle;->mTouchAreaBottomExtra:I

    .line 418
    return-void
.end method

.method public enableArrowAnimation(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/android/phone/IncomingCallImageHandle;->enableArrowAnimation:Z

    .line 356
    return-void
.end method

.method public getTargetProximityRatio(FF)D
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 456
    iget-object v9, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v4, v9, 0x2

    .line 457
    .local v4, pivotX:I
    iget-object v9, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v5, v9, 0x2

    .line 458
    .local v5, pivotY:I
    iget-object v9, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v8, v9, 0x2

    .line 460
    .local v8, radius:I
    int-to-float v9, v4

    sub-float v9, p1, v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 461
    .local v0, dx:D
    int-to-float v9, v5

    sub-float v9, p2, v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 463
    .local v2, dy:D
    mul-double v9, v0, v0

    mul-double v11, v2, v2

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 465
    .local v6, posLength:D
    int-to-double v9, v8

    div-double v9, v6, v9

    return-wide v9
.end method

.method public isInTabCircle(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 422
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 424
    .local v6, y:F
    iget-object v7, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v4, v7, 0x2

    .line 425
    .local v4, targetHalfWidth:I
    iget-object v7, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v3, v7, 0x2

    .line 426
    .local v3, targetHalfHeight:I
    iget-object v7, p0, Lcom/android/phone/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v1, v7, 0x2

    .line 427
    .local v1, tabHalfWidth:I
    iget-object v7, p0, Lcom/android/phone/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v0, v7, 0x2

    .line 429
    .local v0, tabHalfHeight:I
    new-instance v2, Landroid/graphics/Rect;

    sub-int v7, v4, v1

    iget v8, p0, Lcom/android/phone/IncomingCallImageHandle;->mTouchAreaLeftExtra:I

    sub-int/2addr v7, v8

    sub-int v8, v3, v0

    iget v9, p0, Lcom/android/phone/IncomingCallImageHandle;->mTouchAreaTopExtra:I

    sub-int/2addr v8, v9

    add-int v9, v4, v1

    iget v10, p0, Lcom/android/phone/IncomingCallImageHandle;->mTouchAreaRightExtra:I

    add-int/2addr v9, v10

    add-int v10, v3, v0

    iget v11, p0, Lcom/android/phone/IncomingCallImageHandle;->mTouchAreaBottomExtra:I

    add-int/2addr v10, v11

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 435
    .local v2, tabRect:Landroid/graphics/Rect;
    float-to-int v7, v5

    float-to-int v8, v6

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    return v7
.end method

.method public isThresholdReached(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 441
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/IncomingCallImageHandle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    .line 442
    .local v0, ratio:D
    iget-wide v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mReachedRatio:D

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 517
    const-string v0, "IncomingCallImageHandle"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 180
    const-string v0, "onFinishInflate"

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHoverEvent : event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallImageHandle;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 250
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 253
    .local v1, action:I
    packed-switch v1, :pswitch_data_0

    .line 265
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/phone/IncomingCallImageHandle;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 266
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 268
    .end local v1           #action:I
    :cond_0
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mParent:Lcom/android/phone/IncomingCallImageWidget;

    iget-boolean v2, v2, Lcom/android/phone/IncomingCallImageWidget;->mUseHoverToAction:Z

    if-ne v2, v4, :cond_1

    .line 269
    invoke-direct {p0, p1}, Lcom/android/phone/IncomingCallImageHandle;->handleEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 271
    :goto_1
    return v2

    .line 255
    .restart local v1       #action:I
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 258
    :pswitch_2
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 261
    :pswitch_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 271
    .end local v1           #action:I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 253
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
    .line 277
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallImageHandle;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 278
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 281
    .local v1, action:I
    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 282
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 284
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/IncomingCallImageHandle;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 285
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 287
    .end local v1           #action:I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    .line 288
    const/4 v2, 0x1

    return v2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent : event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    .line 242
    invoke-direct {p0, p1}, Lcom/android/phone/IncomingCallImageHandle;->handleEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public processMoveEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "motion"

    .prologue
    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 385
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 386
    .local v1, y:F
    invoke-virtual {p0, v0, v1}, Lcom/android/phone/IncomingCallImageHandle;->isThresholdReached(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mParent:Lcom/android/phone/IncomingCallImageWidget;

    iget v3, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageWidget;->dispatchTriggerEvent(I)V

    .line 388
    sget-object v2, Lcom/android/phone/IncomingCallImageHandle$HandleState;->TRIGGERED:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {p0, v2}, Lcom/android/phone/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/IncomingCallImageHandle$HandleState;)V

    .line 389
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/IncomingCallImageHandle$2;

    invoke-direct {v3, p0}, Lcom/android/phone/IncomingCallImageHandle$2;-><init>(Lcom/android/phone/IncomingCallImageHandle;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/phone/IncomingCallImageHandle;->updateTabCircleAlpha(FF)V

    goto :goto_0
.end method

.method public setArrowLeftMargin(I)V
    .locals 2
    .parameter "margin"

    .prologue
    .line 506
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 507
    .local v0, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 508
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    return-void
.end method

.method public setArrowRightMargin(I)V
    .locals 2
    .parameter "margin"

    .prologue
    .line 500
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 501
    .local v0, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 502
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "contentDescription"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 497
    return-void
.end method

.method public setEasyTouchModeEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 513
    iput-boolean p1, p0, Lcom/android/phone/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    .line 514
    return-void
.end method

.method public setHandleImageResource(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 478
    return-void
.end method

.method public setHandleState(Lcom/android/phone/IncomingCallImageHandle$HandleState;)V
    .locals 0
    .parameter "handleState"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    .line 302
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallImageHandle;->updateHandle()V

    .line 303
    return-void
.end method

.method public setParent(Lcom/android/phone/IncomingCallImageWidget;)V
    .locals 0
    .parameter "widget"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/phone/IncomingCallImageHandle;->mParent:Lcom/android/phone/IncomingCallImageWidget;

    .line 294
    return-void
.end method

.method public setReachedRatio(D)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 447
    iput-wide p1, p0, Lcom/android/phone/IncomingCallImageHandle;->mReachedRatio:D

    .line 448
    return-void
.end method

.method public setTabImageResource(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 470
    return-void
.end method

.method public setTargetImageResource(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 474
    return-void
.end method

.method public setUseExternalArrowImage(Z)V
    .locals 2
    .parameter "externalArrowImage"

    .prologue
    .line 377
    iput-boolean p1, p0, Lcom/android/phone/IncomingCallImageHandle;->useExternalArrowImage:Z

    .line 378
    iget-boolean v0, p0, Lcom/android/phone/IncomingCallImageHandle;->useExternalArrowImage:Z

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    :cond_0
    return-void
.end method

.method public updateArrowHandle()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 359
    sget-object v0, Lcom/android/phone/IncomingCallImageHandle$3;->$SwitchMap$com$android$phone$IncomingCallImageHandle$HandleState:[I

    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallImageHandle$HandleState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 361
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/IncomingCallImageHandle;->enableArrowAnimation:Z

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 369
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public updateHandle()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const v1, 0x3e4ccccd

    const/4 v5, 0x4

    const/high16 v2, 0x3f80

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIncomingCallImageWidget state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    .line 310
    sget-object v3, Lcom/android/phone/IncomingCallImageHandle$3;->$SwitchMap$com$android$phone$IncomingCallImageHandle$HandleState:[I

    iget-object v4, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallImageHandle$HandleState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 349
    :goto_0
    iget-boolean v1, p0, Lcom/android/phone/IncomingCallImageHandle;->useExternalArrowImage:Z

    if-nez v1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallImageHandle;->updateArrowHandle()V

    .line 352
    :cond_0
    return-void

    .line 312
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 313
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 318
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 322
    :pswitch_1
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 324
    .local v8, makeTargetAniSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    iget-object v3, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 326
    .local v0, scaleAni:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 328
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 329
    .local v7, alphaAni:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 331
    const-wide/16 v1, 0x1f4

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 332
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 334
    invoke-virtual {v8, v10}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 336
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 341
    .end local v0           #scaleAni:Landroid/view/animation/ScaleAnimation;
    .end local v7           #alphaAni:Landroid/view/animation/AlphaAnimation;
    .end local v8           #makeTargetAniSet:Landroid/view/animation/AnimationSet;
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const v2, 0x3eb33333

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
