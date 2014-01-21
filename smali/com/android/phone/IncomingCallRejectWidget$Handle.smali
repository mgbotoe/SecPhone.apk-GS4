.class public Lcom/android/phone/IncomingCallRejectWidget$Handle;
.super Ljava/lang/Object;
.source "IncomingCallRejectWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallRejectWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Handle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;,
        Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;
    }
.end annotation


# instance fields
.field private final AIR_MOTION_SWING_DURATION:I

.field private final AIR_MOTION_SWING_REPEATCOUNT:I

.field private final ARROW_ANI_DURATION:I

.field private ARROW_COUNT:I

.field private final FIRST_WAVE_DELAY:I

.field private final MAKE_TARGET_DURATION:I

.field private final REMOVE_AIRMOTION_SWEEP:I

.field private final RESET_DURATION:I

.field private final RESET_STATE:I

.field private final SECOND_WAVE_DELAY:I

.field private final START_WAVE:I

.field private mCircleColor:I

.field public mContainer:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mDuringSwingAnimation:Z

.field private mHandleType:I

.field private mHandler:Landroid/os/Handler;

.field private mLeftArrowContainer:Landroid/widget/LinearLayout;

.field private mLeftArrowImageViews:[Landroid/widget/ImageView;

.field private mParent:Landroid/view/ViewGroup;

.field private mRightArrowContainer:Landroid/widget/LinearLayout;

.field private mRightArrowImageViews:[Landroid/widget/ImageView;

.field private mSwingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTab:Landroid/widget/ImageView;

.field private mTabCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;

.field private mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

.field private mTopOffset:I

.field final synthetic this$0:Lcom/android/phone/IncomingCallRejectWidget;


# direct methods
.method public constructor <init>(Lcom/android/phone/IncomingCallRejectWidget;Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "parent"
    .parameter "handleType"

    .prologue
    const/16 v5, 0x384

    const/16 v4, 0x12c

    const/16 v3, 0xc8

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 377
    iput-object p1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->this$0:Lcom/android/phone/IncomingCallRejectWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->AIR_MOTION_SWING_DURATION:I

    .line 340
    iput v2, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->AIR_MOTION_SWING_REPEATCOUNT:I

    .line 342
    iput v5, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->FIRST_WAVE_DELAY:I

    .line 343
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->SECOND_WAVE_DELAY:I

    .line 345
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->START_WAVE:I

    .line 346
    iput v3, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->RESET_STATE:I

    .line 347
    iput v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->REMOVE_AIRMOTION_SWEEP:I

    .line 348
    iput v5, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->ARROW_ANI_DURATION:I

    .line 357
    iput v2, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->ARROW_COUNT:I

    .line 366
    iput v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mHandleType:I

    .line 372
    iput-boolean v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mDuringSwingAnimation:Z

    .line 605
    new-instance v0, Lcom/android/phone/IncomingCallRejectWidget$Handle$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle$3;-><init>(Lcom/android/phone/IncomingCallRejectWidget$Handle;)V

    iput-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mHandler:Landroid/os/Handler;

    .line 780
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->MAKE_TARGET_DURATION:I

    .line 782
    iput v3, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->RESET_DURATION:I

    .line 378
    iput-object p2, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContext:Landroid/content/Context;

    .line 379
    iput-object p3, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mParent:Landroid/view/ViewGroup;

    .line 380
    iput p4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mHandleType:I

    .line 381
    invoke-direct {p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->init()V

    .line 382
    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/IncomingCallRejectWidget$Handle;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mDuringSwingAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/IncomingCallRejectWidget$Handle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->showArrow()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/IncomingCallRejectWidget$Handle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 329
    iget v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mCircleColor:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/phone/IncomingCallRejectWidget$Handle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 329
    iget v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTopOffset:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/IncomingCallRejectWidget$Handle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->hideArrow()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/IncomingCallRejectWidget$Handle;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/IncomingCallRejectWidget$Handle;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mRightArrowContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/IncomingCallRejectWidget$Handle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 329
    iget v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->ARROW_COUNT:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/IncomingCallRejectWidget$Handle;)[Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/IncomingCallRejectWidget$Handle;)[Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mRightArrowImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/IncomingCallRejectWidget$Handle;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method private hideArrow()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 594
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 595
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 596
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mRightArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    .local v0, arr$:[Landroid/widget/ImageView;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 598
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 597
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 600
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mRightArrowImageViews:[Landroid/widget/ImageView;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 601
    .restart local v2       #imageView:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 603
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method private hideHint()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method private init()V
    .locals 10

    .prologue
    const/16 v9, 0x11

    const/4 v8, 0x2

    const/4 v6, -0x2

    const/4 v7, 0x0

    .line 385
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->this$0:Lcom/android/phone/IncomingCallRejectWidget;

    const-string v5, " Handle ; init!"

    invoke-virtual {v4, v5}, Lcom/android/phone/IncomingCallRejectWidget;->log(Ljava/lang/String;)V

    .line 387
    iput v7, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mCurrentState:I

    .line 393
    new-instance v4, Lcom/android/phone/IncomingCallRejectWidget$Handle$1;

    invoke-direct {v4, p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle$1;-><init>(Lcom/android/phone/IncomingCallRejectWidget$Handle;)V

    iput-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mSwingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 407
    new-instance v4, Lcom/android/phone/IncomingCallRejectWidget$Handle$2;

    iget-object v5, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/phone/IncomingCallRejectWidget$Handle$2;-><init>(Lcom/android/phone/IncomingCallRejectWidget$Handle;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    .line 422
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 424
    .local v3, metrics:Landroid/util/DisplayMetrics;
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit16 v4, v4, 0x90

    div-int/lit16 v4, v4, 0x168

    mul-int/lit8 v1, v4, 0x2

    .line 430
    .local v1, diameter:I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 433
    .local v0, containerParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 434
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 435
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 439
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTab:Landroid/widget/ImageView;

    .line 451
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 453
    .local v2, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTab:Landroid/widget/ImageView;

    .line 454
    iget v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mHandleType:I

    if-ne v4, v8, :cond_0

    .line 455
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 456
    :cond_0
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    iget v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mHandleType:I

    if-ne v4, v8, :cond_1

    .line 459
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTab:Landroid/widget/ImageView;

    const v5, 0x7f020410

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 460
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mCircleColor:I

    .line 463
    :cond_1
    new-instance v4, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;

    iget-object v5, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContext:Landroid/content/Context;

    mul-int/lit8 v6, v1, 0x10

    div-int/lit8 v6, v6, 0x64

    int-to-float v6, v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;-><init>(Lcom/android/phone/IncomingCallRejectWidget$Handle;Landroid/content/Context;F)V

    iput-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;

    .line 464
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;

    invoke-virtual {v4, v7}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->setVisibility(I)V

    .line 465
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v4, v1}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->makeArrowViews(Landroid/widget/FrameLayout;I)V

    .line 469
    new-instance v4, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    iget-object v5, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContext:Landroid/content/Context;

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;-><init>(Lcom/android/phone/IncomingCallRejectWidget$Handle;Landroid/content/Context;F)V

    iput-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    .line 470
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->setVisibility(I)V

    .line 471
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mParent:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 476
    return-void
.end method

.method private makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    .locals 3

    .prologue
    .line 660
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f19999a

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 661
    .local v0, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x384

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 663
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 665
    return-object v0
.end method

.method private makeArrowViews(Landroid/widget/FrameLayout;I)V
    .locals 16
    .parameter "container"
    .parameter "diameter"

    .prologue
    .line 496
    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    .line 497
    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mRightArrowContainer:Landroid/widget/LinearLayout;

    .line 499
    const/high16 v1, 0x41a0

    .line 501
    .local v1, ALPHA_GAP:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->ARROW_COUNT:I

    new-array v12, v12, [Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    .line 502
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->ARROW_COUNT:I

    new-array v12, v12, [Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mRightArrowImageViews:[Landroid/widget/ImageView;

    .line 504
    const/4 v4, 0x0

    .line 505
    .local v4, arrowResId:I
    const/4 v5, 0x0

    .line 507
    .local v5, arrowResId2:I
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v12, p2, 0x4

    div-int/lit8 v12, v12, 0x5f

    mul-int/lit8 v13, p2, 0x3

    div-int/lit8 v13, v13, 0x5f

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 513
    .local v11, paddingLp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->ARROW_COUNT:I

    if-ge v6, v12, :cond_1

    .line 514
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    new-instance v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v13, v12, v6

    .line 515
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mRightArrowImageViews:[Landroid/widget/ImageView;

    new-instance v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v13, v12, v6

    .line 516
    const/4 v2, 0x0

    .line 517
    .local v2, alpha:I
    const/4 v3, 0x0

    .line 525
    .local v3, alpha2:I
    const v4, 0x7f02002e

    .line 526
    const/high16 v12, 0x437f

    const/high16 v13, 0x3f80

    const/high16 v14, 0x41a0

    int-to-float v15, v6

    mul-float/2addr v14, v15

    const/high16 v15, 0x42c8

    div-float/2addr v14, v15

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    float-to-int v2, v12

    .line 527
    const v5, 0x7f020032

    .line 528
    const/high16 v12, 0x437f

    const/high16 v13, 0x3f80

    const/high16 v14, 0x41a0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->ARROW_COUNT:I

    sub-int/2addr v15, v6

    add-int/lit8 v15, v15, -0x1

    int-to-float v15, v15

    mul-float/2addr v14, v15

    const/high16 v15, 0x42c8

    div-float/2addr v14, v15

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    float-to-int v3, v12

    .line 531
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    aget-object v13, v13, v6

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mRightArrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mRightArrowImageViews:[Landroid/widget/ImageView;

    aget-object v13, v13, v6

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 535
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->ARROW_COUNT:I

    add-int/lit8 v12, v12, -0x1

    if-eq v6, v12, :cond_0

    .line 536
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    new-instance v13, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mRightArrowContainer:Landroid/widget/LinearLayout;

    new-instance v13, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    aget-object v12, v12, v6

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 540
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    aget-object v12, v12, v6

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 541
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mRightArrowImageViews:[Landroid/widget/ImageView;

    aget-object v12, v12, v6

    invoke-virtual {v12, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 542
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mRightArrowImageViews:[Landroid/widget/ImageView;

    aget-object v12, v12, v6

    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 513
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 546
    .end local v2           #alpha:I
    .end local v3           #alpha2:I
    :cond_1
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/16 v14, 0x13

    invoke-direct {v7, v12, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 548
    .local v7, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/16 v14, 0x15

    invoke-direct {v8, v12, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 551
    .local v8, layoutParams2:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mRightArrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 555
    .local v9, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mRightArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 557
    .local v10, lp2:Landroid/view/ViewGroup$MarginLayoutParams;
    mul-int/lit8 v12, p2, 0xb

    div-int/lit8 v12, v12, 0x78

    iput v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 558
    mul-int/lit8 v12, p2, 0xb

    div-int/lit8 v12, v12, 0x78

    iput v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 578
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mRightArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    return-void
.end method

.method private reset(Z)V
    .locals 9
    .parameter "animation"

    .prologue
    const v2, 0x3e99999a

    const/high16 v1, 0x3f80

    .line 811
    if-eqz p1, :cond_0

    .line 812
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v8, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 814
    .local v8, aniSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    iget-object v3, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 815
    .local v0, scaleAni:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 817
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 818
    .local v7, alphaAni:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 820
    const-wide/16 v1, 0x190

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 821
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 822
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->clearAnimation()V

    .line 823
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    invoke-virtual {v1, v8}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 828
    .end local v0           #scaleAni:Landroid/view/animation/ScaleAnimation;
    .end local v7           #alphaAni:Landroid/view/animation/AlphaAnimation;
    .end local v8           #aniSet:Landroid/view/animation/AnimationSet;
    :goto_0
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->setVisibility(I)V

    .line 830
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->clearAnimation()V

    .line 831
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->setAlpha(I)V

    .line 832
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->invalidate()V

    .line 833
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->setVisibility(I)V

    .line 835
    invoke-direct {p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->showHint()V

    .line 836
    invoke-direct {p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->showArrow()V

    .line 837
    return-void

    .line 825
    :cond_0
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->clearAnimation()V

    goto :goto_0
.end method

.method private setDisable()V
    .locals 3

    .prologue
    .line 843
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3eb33333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 844
    .local v0, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 845
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 846
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 847
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->setVisibility(I)V

    .line 848
    invoke-direct {p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->hideArrow()V

    .line 849
    invoke-direct {p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->hideHint()V

    .line 850
    return-void
.end method

.method private setEnable()V
    .locals 3

    .prologue
    .line 856
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3eb33333

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 857
    .local v0, tabAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 858
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 859
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 860
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->setVisibility(I)V

    .line 861
    invoke-direct {p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->showArrow()V

    .line 862
    invoke-direct {p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->showHint()V

    .line 863
    return-void
.end method

.method private showArrow()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 584
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mRightArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 591
    :cond_0
    return-void
.end method

.method private showHint()V
    .locals 0

    .prologue
    .line 485
    return-void
.end method

.method private showTarget(F)V
    .locals 10
    .parameter "scale_size"

    .prologue
    const/4 v9, 0x1

    const v1, 0x3e99999a

    const/high16 v2, 0x3f80

    .line 789
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 791
    .local v8, aniSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    iget-object v3, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 792
    .local v0, scaleAni:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 794
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 795
    .local v7, alphaAni:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 797
    const-wide/16 v1, 0x190

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 798
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 799
    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 801
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    invoke-virtual {v1, v8}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 802
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    const/16 v2, 0x61

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->setAlpha(I)V

    .line 803
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->setVisibility(I)V

    .line 804
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 777
    iget v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mCurrentState:I

    return v0
.end method

.method public isHandleSelected(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->this$0:Lcom/android/phone/IncomingCallRejectWidget;

    #getter for: Lcom/android/phone/IncomingCallRejectWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v1}, Lcom/android/phone/IncomingCallRejectWidget;->access$1000(Lcom/android/phone/IncomingCallRejectWidget;)Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 914
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->this$0:Lcom/android/phone/IncomingCallRejectWidget;

    #getter for: Lcom/android/phone/IncomingCallRejectWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Lcom/android/phone/IncomingCallRejectWidget;->access$1000(Lcom/android/phone/IncomingCallRejectWidget;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->this$0:Lcom/android/phone/IncomingCallRejectWidget;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallRejectWidget;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTopOffset:I

    .line 916
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->this$0:Lcom/android/phone/IncomingCallRejectWidget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTopOffset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTopOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallRejectWidget;->log(Ljava/lang/String;)V

    .line 918
    iget v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTopOffset:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTopOffset:I

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->isInCircle(FF)Z

    move-result v0

    return v0
.end method

.method public makeLayout()V
    .locals 15

    .prologue
    .line 673
    iget-object v11, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContext:Landroid/content/Context;

    check-cast v11, Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->this$0:Lcom/android/phone/IncomingCallRejectWidget;

    #getter for: Lcom/android/phone/IncomingCallRejectWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v12}, Lcom/android/phone/IncomingCallRejectWidget;->access$1000(Lcom/android/phone/IncomingCallRejectWidget;)Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 675
    const/4 v5, 0x0

    .line 676
    .local v5, marginX:I
    const/4 v6, 0x0

    .line 677
    .local v6, marginY:I
    const/16 v2, 0xa

    .line 678
    .local v2, dividedHandleTop:I
    iget-object v11, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->this$0:Lcom/android/phone/IncomingCallRejectWidget;

    invoke-virtual {v11}, Lcom/android/phone/IncomingCallRejectWidget;->getWidth()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v12

    sub-int v5, v11, v12

    .line 680
    iget v11, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mHandleType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 681
    iget-object v11, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v11

    add-int v9, v11, v5

    .line 682
    .local v9, rightHandleLeft:I
    iget-object v11, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0xa

    add-int/2addr v11, v12

    add-int v10, v11, v6

    .line 689
    .local v10, rightHandleTop:I
    const/16 v1, 0x168

    .line 690
    .local v1, containerTopMargin:I
    const/4 v0, 0x0

    .line 692
    .local v0, arrowTopMargin:I
    iget-object v11, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v12

    mul-int/lit8 v12, v12, 0x9

    div-int/lit8 v12, v12, 0xa

    div-int/lit8 v12, v12, 0x5

    add-int v10, v11, v12

    .line 693
    iget-object v11, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v13

    add-int/2addr v13, v9

    iget-object v14, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v14

    add-int/2addr v14, v10

    sub-int/2addr v14, v6

    invoke-virtual {v11, v12, v1, v13, v14}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 696
    const/16 v8, 0x3c

    .line 697
    .local v8, rightArrowleft:I
    iget-object v11, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTop()I

    move-result v11

    mul-int/lit8 v11, v11, 0x3

    div-int/lit8 v11, v11, 0x5

    add-int v7, v11, v0

    .line 698
    .local v7, rightArrowTop:I
    iget-object v11, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v13

    add-int/2addr v13, v7

    invoke-virtual {v11, v8, v7, v12, v13}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 702
    const/16 v4, 0x13e

    .line 703
    .local v4, leftArrowleft:I
    iget-object v11, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTop()I

    move-result v11

    mul-int/lit8 v11, v11, 0x3

    div-int/lit8 v11, v11, 0x5

    add-int v3, v11, v0

    .line 704
    .local v3, leftArrowTop:I
    iget-object v11, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mRightArrowContainer:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mRightArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mRightArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v13

    add-int/2addr v13, v3

    invoke-virtual {v11, v4, v3, v12, v13}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 709
    .end local v0           #arrowTopMargin:I
    .end local v1           #containerTopMargin:I
    .end local v3           #leftArrowTop:I
    .end local v4           #leftArrowleft:I
    .end local v7           #rightArrowTop:I
    .end local v8           #rightArrowleft:I
    .end local v9           #rightHandleLeft:I
    .end local v10           #rightHandleTop:I
    :cond_0
    iget-object v11, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->this$0:Lcom/android/phone/IncomingCallRejectWidget;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mDisplayMetrics "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->this$0:Lcom/android/phone/IncomingCallRejectWidget;

    #getter for: Lcom/android/phone/IncomingCallRejectWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v13}, Lcom/android/phone/IncomingCallRejectWidget;->access$1000(Lcom/android/phone/IncomingCallRejectWidget;)Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/phone/IncomingCallRejectWidget;->log(Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method public processMoveEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "motion"

    .prologue
    const-wide/16 v7, 0x1f4

    const/4 v6, 0x0

    .line 871
    iget v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mCurrentState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 872
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 873
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 875
    .local v3, y:F
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    invoke-virtual {v4, v2, v3}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->isThresholdReached(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 876
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 878
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 879
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->clearAnimation()V

    .line 880
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->clearAnimation()V

    .line 881
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->setAlpha(I)V

    .line 882
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->invalidate()V

    .line 883
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;

    invoke-virtual {v4, v6}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->setAlpha(I)V

    .line 884
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->invalidate()V

    .line 885
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->this$0:Lcom/android/phone/IncomingCallRejectWidget;

    #setter for: Lcom/android/phone/IncomingCallRejectWidget;->mIsTracking:Z
    invoke-static {v4, v6}, Lcom/android/phone/IncomingCallRejectWidget;->access$1102(Lcom/android/phone/IncomingCallRejectWidget;Z)Z

    .line 886
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->this$0:Lcom/android/phone/IncomingCallRejectWidget;

    iget v5, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mHandleType:I

    #calls: Lcom/android/phone/IncomingCallRejectWidget;->dispatchTriggerEvent(I)V
    invoke-static {v4, v5}, Lcom/android/phone/IncomingCallRejectWidget;->access$1200(Lcom/android/phone/IncomingCallRejectWidget;I)V

    .line 887
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->this$0:Lcom/android/phone/IncomingCallRejectWidget;

    #calls: Lcom/android/phone/IncomingCallRejectWidget;->setGrabbedState(I)V
    invoke-static {v4, v6}, Lcom/android/phone/IncomingCallRejectWidget;->access$1300(Lcom/android/phone/IncomingCallRejectWidget;I)V

    .line 889
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/phone/IncomingCallRejectWidget$Handle$4;

    invoke-direct {v5, p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle$4;-><init>(Lcom/android/phone/IncomingCallRejectWidget$Handle;)V

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 909
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_0
    :goto_0
    return-void

    .line 896
    .restart local v2       #x:F
    .restart local v3       #y:F
    :cond_1
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;

    invoke-virtual {v4, v2, v3}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->isInCircle(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 897
    invoke-direct {p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->showArrow()V

    .line 902
    :goto_1
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    invoke-virtual {v4, v2, v3}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    .line 903
    .local v0, ratio:D
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;

    const-wide v5, 0x406fe00000000000L

    mul-double/2addr v5, v0

    double-to-int v5, v5

    rsub-int v5, v5, 0xff

    invoke-virtual {v4, v5}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->setAlpha(I)V

    .line 904
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    const-wide v5, 0x4063c00000000000L

    mul-double/2addr v5, v0

    double-to-int v5, v5

    add-int/lit8 v5, v5, 0x61

    invoke-virtual {v4, v5}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->setAlpha(I)V

    .line 905
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->invalidate()V

    .line 906
    iget-object v4, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->invalidate()V

    goto :goto_0

    .line 899
    .end local v0           #ratio:D
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->hideArrow()V

    goto :goto_1
.end method

.method public setState(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 717
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->setState(IZ)V

    .line 718
    return-void
.end method

.method public setState(IZ)V
    .locals 9
    .parameter "newState"
    .parameter "animation"

    .prologue
    const-wide/16 v7, 0x4b0

    const/16 v6, 0xc8

    const/high16 v5, 0x3f80

    const/16 v4, 0x12c

    .line 721
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->this$0:Lcom/android/phone/IncomingCallRejectWidget;

    const-string v2, "Block setState until reset. Handles will be reset"

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallRejectWidget;->log(Ljava/lang/String;)V

    .line 770
    :goto_0
    return-void

    .line 726
    :cond_0
    iget v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mCurrentState:I

    .line 727
    .local v0, preState:I
    iput p1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mCurrentState:I

    .line 728
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->this$0:Lcom/android/phone/IncomingCallRejectWidget;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HANDLE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setState preState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Current : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallRejectWidget;->log(Ljava/lang/String;)V

    .line 729
    iget v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mCurrentState:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 735
    :pswitch_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 736
    invoke-direct {p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->setEnable()V

    goto :goto_0

    .line 731
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 732
    invoke-direct {p0, v5}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->showTarget(F)V

    goto :goto_0

    .line 737
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 738
    invoke-direct {p0, p2}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->reset(Z)V

    goto :goto_0

    .line 739
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 740
    invoke-direct {p0, p2}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->reset(Z)V

    goto :goto_0

    .line 741
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 742
    invoke-direct {p0, p2}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->reset(Z)V

    goto :goto_0

    .line 744
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->reset(Z)V

    goto :goto_0

    .line 748
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->setDisable()V

    goto :goto_0

    .line 751
    :pswitch_3
    const v1, 0x3f266666

    invoke-direct {p0, v1}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->showTarget(F)V

    .line 752
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 756
    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 757
    const v1, 0x3f4f5c29

    invoke-direct {p0, v1}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->showTarget(F)V

    .line 758
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 762
    :pswitch_5
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 763
    invoke-direct {p0, v5}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->showTarget(F)V

    .line 764
    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 729
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
