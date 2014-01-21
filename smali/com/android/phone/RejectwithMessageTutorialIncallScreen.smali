.class public Lcom/android/phone/RejectwithMessageTutorialIncallScreen;
.super Landroid/app/Activity;
.source "RejectwithMessageTutorialIncallScreen.java"

# interfaces
.implements Lcom/android/phone/IncomingCallWidget$OnTriggerListener;


# instance fields
.field private mBubbleAnimation1:Landroid/view/animation/Animation;

.field private mBubbleAnimation2:Landroid/view/animation/Animation;

.field private mBubbleCount:I

.field private mCreateButton:Landroid/widget/LinearLayout;

.field private mDragUpImageLayout:Landroid/widget/FrameLayout;

.field private mDragUpImageView:[Landroid/widget/ImageView;

.field private mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

.field private mFadingAnimation:Landroid/view/animation/Animation;

.field private mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFlashingAnimation:Landroid/view/animation/Animation;

.field private mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mGuideSendMsgButton:Landroid/widget/Button;

.field private mGuideSendMsgItem:Landroid/widget/LinearLayout;

.field mHandler:Landroid/os/Handler;

.field private mIncomingCallPhoto:Landroid/widget/LinearLayout;

.field private mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

.field private mRejectCallWithMsgContent:Lcom/android/phone/RejectCallWithMsgContent;

.field public mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

.field private mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

.field private mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

.field private mRejectCallWithMsgLayout:Landroid/widget/FrameLayout;

.field private mRejectCallWithMsgScroll:Landroid/widget/ScrollView;

.field private mRejectCallWithMsgTab:Landroid/widget/LinearLayout;

.field private mRejectCallWithMsgText:Landroid/widget/TextView;

.field private mSendMsgComplete:Landroid/widget/FrameLayout;

.field private mSendMsgLayout:Landroid/view/ViewGroup;

.field private mSendMsgTip:Landroid/widget/FrameLayout;

.field private mSendMsgTipBubble:Landroid/widget/FrameLayout;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mrejectMsgTip:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    new-array v0, v1, [Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    .line 84
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpImageView:[Landroid/widget/ImageView;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mBubbleCount:I

    .line 300
    new-instance v0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;

    invoke-direct {v0, p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;-><init>(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mHandler:Landroid/os/Handler;

    .line 392
    new-instance v0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$10;

    invoke-direct {v0, p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$10;-><init>(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 409
    new-instance v0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$11;

    invoke-direct {v0, p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$11;-><init>(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 429
    new-instance v0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$12;

    invoke-direct {v0, p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$12;-><init>(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->showToast()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgTip:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->hideDragUpAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mrejectMsgTip:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mGuideSendMsgButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)[Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)[Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpImageView:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$1508(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mBubbleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgComplete:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mBubbleAnimation2:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Lcom/android/phone/IncomingCallWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mFadingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mFlashingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private buttonAnimationInit(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const v3, 0x7f050002

    .line 377
    const v0, 0x7f050009

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mShowAnimation:Landroid/view/animation/Animation;

    .line 378
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 380
    const v0, 0x7f050007

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mFadingAnimation:Landroid/view/animation/Animation;

    .line 381
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 383
    const v0, 0x7f050008

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mFlashingAnimation:Landroid/view/animation/Animation;

    .line 384
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 386
    invoke-virtual {p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mBubbleAnimation1:Landroid/view/animation/Animation;

    .line 387
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mBubbleAnimation1:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 388
    invoke-virtual {p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mBubbleAnimation2:Landroid/view/animation/Animation;

    .line 390
    return-void
.end method

.method private hideDragUpAnimation()V
    .locals 2

    .prologue
    .line 365
    const-string v0, "RejectwithMsgTutorialIncallScreen"

    const-string v1, "hideDragUpAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-direct {p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->stopDragUpAnimation()V

    .line 367
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 368
    return-void
.end method

.method private showDragUpAnimation()V
    .locals 2

    .prologue
    .line 371
    const-string v0, "RejectwithMsgTutorialIncallScreen"

    const-string v1, "showDragUpAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 373
    invoke-direct {p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->startDragUpAnimation()V

    .line 374
    return-void
.end method

.method private showToast()V
    .locals 3

    .prologue
    .line 493
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const v1, 0x7f090346

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 494
    return-void
.end method

.method private startDragUpAnimation()V
    .locals 2

    .prologue
    .line 352
    const-string v0, "RejectwithMsgTutorialIncallScreen"

    const-string v1, "startDragUpAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 354
    return-void
.end method

.method private stopDragUpAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 357
    const-string v0, "RejectwithMsgTutorialIncallScreen"

    const-string v1, "stopDragUpAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v5

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 362
    :cond_3
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    const/4 v6, 0x0

    .line 452
    const-string v3, "RejectwithMsgTutorialIncallScreen"

    const-string v4, "onConfigurationChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 455
    iget-object v3, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgTip:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 456
    .local v2, mSendMsgTipLP:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 458
    .local v1, mSendMsgTipBubbleLP:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v0, 0x0

    .line 459
    .local v0, mIncomingCallPhotoLP:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mIncomingCallPhoto:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 460
    iget-object v3, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mIncomingCallPhoto:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #mIncomingCallPhotoLP:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 463
    .restart local v0       #mIncomingCallPhotoLP:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 464
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e015d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e015e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 465
    iget-object v3, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgTip:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    invoke-virtual {p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e015f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v6, v6, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 468
    iget-object v3, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    iget-object v3, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mIncomingCallPhoto:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    .line 471
    invoke-virtual {p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e017b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 472
    invoke-virtual {p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0183

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 473
    iget-object v3, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mIncomingCallPhoto:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0a02cf

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const-string v2, "RejectwithMsgTutorialIncallScreen"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 112
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->setRequestedOrientation(I)V

    .line 117
    :goto_0
    const v2, 0x7f0400aa

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->setContentView(I)V

    .line 118
    const v2, 0x7f0a02d6

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IncomingCallWidget;

    iput-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    .line 120
    const v2, 0x7f0a02cb

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SlidingDrawer;

    iput-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    .line 121
    const v2, 0x7f0a02ce

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    .line 122
    const v2, 0x7f0a02cd

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/RejectCallWithMsgContent;

    iput-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgContent:Lcom/android/phone/RejectCallWithMsgContent;

    .line 124
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgContent:Lcom/android/phone/RejectCallWithMsgContent;

    const v3, 0x7f0a02a6

    invoke-virtual {v2, v3}, Lcom/android/phone/RejectCallWithMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 126
    .local v1, answerMemoView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgContent:Lcom/android/phone/RejectCallWithMsgContent;

    const v3, 0x7f0a02a8

    invoke-virtual {v2, v3}, Lcom/android/phone/RejectCallWithMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, answerMemoHeader:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .end local v0           #answerMemoHeader:Landroid/view/View;
    .end local v1           #answerMemoView:Landroid/view/View;
    :cond_1
    const v2, 0x7f0a02ac

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgLayout:Landroid/view/ViewGroup;

    .line 136
    iget-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a02ae

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mGuideSendMsgItem:Landroid/widget/LinearLayout;

    .line 137
    iget-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mGuideSendMsgItem:Landroid/widget/LinearLayout;

    const v3, 0x7f0a02c9

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mGuideSendMsgButton:Landroid/widget/Button;

    .line 139
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    const v2, 0x7f0a02e5

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mIncomingCallPhoto:Landroid/widget/LinearLayout;

    .line 143
    :cond_2
    const-string v2, "reject_call_with_message_icon_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 144
    iget-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgContent:Lcom/android/phone/RejectCallWithMsgContent;

    iput-boolean v4, v2, Lcom/android/phone/RejectCallWithMsgContent;->mIsHelpScreen:Z

    .line 148
    :cond_3
    const v2, 0x7f0a02cc

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgTab:Landroid/widget/LinearLayout;

    .line 150
    const v2, 0x7f0a02d4

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgLayout:Landroid/widget/FrameLayout;

    .line 151
    iget-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgLayout:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$1;

    invoke-direct {v3, p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$1;-><init>(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    const v2, 0x7f0a02a5

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgScroll:Landroid/widget/ScrollView;

    .line 159
    iget-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgScroll:Landroid/widget/ScrollView;

    if-eqz v2, :cond_4

    .line 160
    iget-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgScroll:Landroid/widget/ScrollView;

    new-instance v3, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$2;

    invoke-direct {v3, p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$2;-><init>(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    :cond_4
    const v2, 0x7f0a02b5

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgText:Landroid/widget/TextView;

    .line 169
    iget-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 171
    const-string v2, "change_message_icon_for_vzw"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 172
    invoke-virtual {p0, v8}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    .line 173
    iget-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    const v3, 0x7f020438

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    :cond_5
    :goto_1
    const v2, 0x7f0a02d8

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mrejectMsgTip:Landroid/widget/FrameLayout;

    .line 180
    const v2, 0x7f0a02db

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgTip:Landroid/widget/FrameLayout;

    .line 181
    const v2, 0x7f0a02de

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    .line 182
    iget-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$3;

    invoke-direct {v3, p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$3;-><init>(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const v2, 0x7f0a02df

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgComplete:Landroid/widget/FrameLayout;

    .line 202
    const v2, 0x7f0a02e0

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    .line 203
    iget-object v3, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpImageView:[Landroid/widget/ImageView;

    const v2, 0x7f0a02e1

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v5

    .line 204
    iget-object v3, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpImageView:[Landroid/widget/ImageView;

    const v2, 0x7f0a02e2

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v4

    .line 205
    iget-object v3, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpImageView:[Landroid/widget/ImageView;

    const v2, 0x7f0a02e3

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v6

    .line 206
    iget-object v3, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpImageView:[Landroid/widget/ImageView;

    const/4 v4, 0x3

    const v2, 0x7f0a02e4

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v4

    .line 208
    invoke-virtual {p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->buttonAnimationInit(Landroid/content/Context;)V

    .line 210
    iget-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v3, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$4;

    invoke-direct {v3, p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$4;-><init>(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 223
    iget-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v3, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$5;

    invoke-direct {v3, p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$5;-><init>(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 230
    iget-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v3, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$6;

    invoke-direct {v3, p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$6;-><init>(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/SlidingDrawer;->setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V

    .line 242
    iget-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgContent:Lcom/android/phone/RejectCallWithMsgContent;

    new-instance v3, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$7;

    invoke-direct {v3, p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$7;-><init>(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)V

    iput-object v3, v2, Lcom/android/phone/RejectCallWithMsgContent;->mSendMsgListener:Landroid/view/View$OnClickListener;

    .line 264
    const v2, 0x7f0a02d6

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IncomingCallWidget;

    iput-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    .line 265
    iget-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v2, p0}, Lcom/android/phone/IncomingCallWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallWidget$OnTriggerListener;)V

    .line 267
    const v2, 0x7f0a02a9

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mCreateButton:Landroid/widget/LinearLayout;

    .line 268
    iget-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mCreateButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 269
    iget-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mCreateButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 270
    iget-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mCreateButton:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$8;

    invoke-direct {v3, p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$8;-><init>(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 277
    return-void

    .line 114
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 174
    :cond_7
    const-string v2, "change_message_icon_for_att"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 175
    invoke-virtual {p0, v8}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    .line 176
    iget-object v2, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    const v3, 0x7f020437

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 448
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 293
    const-string v0, "RejectwithMsgTutorialIncallScreen"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 295
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->hideDragUpAnimation()V

    .line 298
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    const-string v0, "RejectwithMsgTutorialIncallScreen"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 283
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->showDragUpAnimation()V

    .line 287
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mrejectMsgTip:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 289
    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "whichHandle"

    .prologue
    .line 480
    packed-switch p2, :pswitch_data_0

    .line 490
    :goto_0
    return-void

    .line 482
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->showToast()V

    goto :goto_0

    .line 485
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->showToast()V

    goto :goto_0

    .line 480
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
