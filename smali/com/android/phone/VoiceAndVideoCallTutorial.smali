.class public Lcom/android/phone/VoiceAndVideoCallTutorial;
.super Landroid/app/Activity;
.source "VoiceAndVideoCallTutorial.java"


# instance fields
.field private callDialingAnimation:Landroid/widget/ImageView;

.field private callImageAnimation:Landroid/widget/ImageView;

.field private callImgUnknown:Landroid/widget/RelativeLayout;

.field private callImgUserView:Landroid/widget/ImageView;

.field private callRunTime:Landroid/widget/TextView;

.field private callStateLayout:Landroid/widget/RelativeLayout;

.field private callTimerCount:I

.field private callduringcallmysound:Landroid/widget/ImageView;

.field private callerInfoLayout:Landroid/widget/RelativeLayout;

.field private callerName:Landroid/widget/TextView;

.field private dialingImgUserView:Landroid/widget/ImageView;

.field private inCallIconContainer:Landroid/widget/LinearLayout;

.field private mAddButton:Landroid/widget/Button;

.field private mBubbleAnimation1:Landroid/view/animation/Animation;

.field private mBubbleAnimation2:Landroid/view/animation/Animation;

.field private mBubbleCount:I

.field private mEndButton:Landroid/widget/Button;

.field private mFadingAnimation:Landroid/view/animation/Animation;

.field private mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFlashingAnimation:Landroid/view/animation/Animation;

.field private mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mHandler:Landroid/os/Handler;

.field private mHelpTabView:Landroid/widget/ImageView;

.field private mMakeCallComplete:Landroid/widget/FrameLayout;

.field private mMySoundButton:Landroid/widget/ImageView;

.field private mRecordButton:Landroid/widget/Button;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTipEndCall:Landroid/widget/FrameLayout;

.field private mTutorialLayout:Landroid/widget/FrameLayout;

.field private nextstep:I

.field private step:I

.field private timerForAni:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->timerForAni:Landroid/os/CountDownTimer;

    .line 94
    iput v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    .line 96
    iput v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mBubbleCount:I

    iput v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    .line 390
    new-instance v0, Lcom/android/phone/VoiceAndVideoCallTutorial$4;

    invoke-direct {v0, p0}, Lcom/android/phone/VoiceAndVideoCallTutorial$4;-><init>(Lcom/android/phone/VoiceAndVideoCallTutorial;)V

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    .line 445
    new-instance v0, Lcom/android/phone/VoiceAndVideoCallTutorial$5;

    invoke-direct {v0, p0}, Lcom/android/phone/VoiceAndVideoCallTutorial$5;-><init>(Lcom/android/phone/VoiceAndVideoCallTutorial;)V

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 463
    new-instance v0, Lcom/android/phone/VoiceAndVideoCallTutorial$6;

    invoke-direct {v0, p0}, Lcom/android/phone/VoiceAndVideoCallTutorial$6;-><init>(Lcom/android/phone/VoiceAndVideoCallTutorial;)V

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 480
    new-instance v0, Lcom/android/phone/VoiceAndVideoCallTutorial$7;

    invoke-direct {v0, p0}, Lcom/android/phone/VoiceAndVideoCallTutorial$7;-><init>(Lcom/android/phone/VoiceAndVideoCallTutorial;)V

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mTipEndCall:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1008(Lcom/android/phone/VoiceAndVideoCallTutorial;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/VoiceAndVideoCallTutorial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->dispCallDuration()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/VoiceAndVideoCallTutorial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->runVoiceCallAnimation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/VoiceAndVideoCallTutorial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->callActiveScreenSettings()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mFlashingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/VoiceAndVideoCallTutorial;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$1508(Lcom/android/phone/VoiceAndVideoCallTutorial;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mBubbleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mFadingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/VoiceAndVideoCallTutorial;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->nextstep:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/VoiceAndVideoCallTutorial;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/phone/VoiceAndVideoCallTutorial;->setReultSetting(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/VoiceAndVideoCallTutorial;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mMakeCallComplete:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mBubbleAnimation2:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/VoiceAndVideoCallTutorial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->showToast()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callDialingAnimation:Landroid/widget/ImageView;

    return-object v0
.end method

.method private animationInit(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const v3, 0x7f050002

    .line 431
    const v0, 0x7f050009

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mShowAnimation:Landroid/view/animation/Animation;

    .line 432
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 434
    const v0, 0x7f050007

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mFadingAnimation:Landroid/view/animation/Animation;

    .line 435
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 437
    const v0, 0x7f050008

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mFlashingAnimation:Landroid/view/animation/Animation;

    .line 438
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mBubbleAnimation1:Landroid/view/animation/Animation;

    .line 441
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mBubbleAnimation1:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 442
    invoke-virtual {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mBubbleAnimation2:Landroid/view/animation/Animation;

    .line 443
    return-void
.end method

.method private callActiveScreenSettings()V
    .locals 11

    .prologue
    .line 204
    const-string v7, "VoiceAndVideoCallTutorial: "

    const-string v8, "callActiveScreenSettings"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const v7, 0x7f0a0318

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;

    .line 206
    const v7, 0x7f0a0207

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mTipEndCall:Landroid/widget/FrameLayout;

    .line 207
    const v7, 0x7f0a0192

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callRunTime:Landroid/widget/TextView;

    .line 208
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callRunTime:Landroid/widget/TextView;

    const v8, 0x7f09034c

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 209
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mTipEndCall:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 211
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    .line 212
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callRunTime:Landroid/widget/TextView;

    const-string v8, "00:00"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x64

    const-wide/16 v9, 0x3e8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 214
    iget v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    iget v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    if-nez v7, :cond_4

    .line 215
    :cond_0
    const/4 v7, 0x7

    iput v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->nextstep:I

    .line 216
    const-string v7, "tablet_device"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 217
    const v7, 0x7f0a0193

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callStateLayout:Landroid/widget/RelativeLayout;

    .line 218
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callStateLayout:Landroid/widget/RelativeLayout;

    const v8, 0x7f0b0005

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 219
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callDialingAnimation:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    const v7, 0x7f0a01b7

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->inCallIconContainer:Landroid/widget/LinearLayout;

    .line 222
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->inCallIconContainer:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    const v7, 0x7f0a0327

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callduringcallmysound:Landroid/widget/ImageView;

    .line 224
    const-string v7, "align_right_voice_eq_btn"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callduringcallmysound:Landroid/widget/ImageView;

    if-eqz v7, :cond_1

    .line 225
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callduringcallmysound:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 226
    .local v6, voiceEqLP:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 227
    invoke-virtual {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0119

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 228
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callduringcallmysound:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    .end local v6           #voiceEqLP:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callduringcallmysound:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    const v7, 0x7f0a0324

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImgUnknown:Landroid/widget/RelativeLayout;

    .line 232
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImgUnknown:Landroid/widget/RelativeLayout;

    const v8, 0x7f0201dc

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 287
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 288
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/phone/VoiceAndVideoCallTutorial$1;

    invoke-direct {v8, p0}, Lcom/android/phone/VoiceAndVideoCallTutorial$1;-><init>(Lcom/android/phone/VoiceAndVideoCallTutorial;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mTutorialLayout:Landroid/widget/FrameLayout;

    new-instance v8, Lcom/android/phone/VoiceAndVideoCallTutorial$2;

    invoke-direct {v8, p0}, Lcom/android/phone/VoiceAndVideoCallTutorial$2;-><init>(Lcom/android/phone/VoiceAndVideoCallTutorial;)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->animationInit(Landroid/content/Context;)V

    .line 319
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 320
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mTipEndCall:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 321
    return-void

    .line 234
    :cond_3
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callDialingAnimation:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    const v7, 0x7f0a0325

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;

    .line 236
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;

    const v8, 0x7f0201dc

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 238
    :cond_4
    iget v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    .line 239
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->nextstep:I

    .line 240
    const-string v7, "tablet_device"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 241
    const v7, 0x7f0a0196

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 242
    .local v1, Dialing:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callRunTime:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    const-string v7, "common_volte_vt_kor"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 245
    const v7, 0x7f0a0190

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImgUserView:Landroid/widget/ImageView;

    .line 246
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImgUserView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    const v7, 0x7f0a018f

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->dialingImgUserView:Landroid/widget/ImageView;

    .line 248
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->dialingImgUserView:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    const v7, 0x7f0a0193

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callerInfoLayout:Landroid/widget/RelativeLayout;

    .line 251
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callerInfoLayout:Landroid/widget/RelativeLayout;

    const v8, 0x7f0b0030

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 252
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callerInfoLayout:Landroid/widget/RelativeLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 254
    const v7, 0x7f0a0191

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 255
    .local v5, near:Landroid/widget/ImageView;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 257
    .end local v5           #near:Landroid/widget/ImageView;
    :cond_5
    const v7, 0x7f0a0197

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 258
    .local v0, Capture:Landroid/widget/Button;
    const v7, 0x7f0a0198

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 259
    .local v2, Record:Landroid/widget/Button;
    if-eqz v0, :cond_6

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 260
    :cond_6
    if-eqz v2, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 263
    .end local v0           #Capture:Landroid/widget/Button;
    .end local v1           #Dialing:Landroid/widget/TextView;
    .end local v2           #Record:Landroid/widget/Button;
    :cond_7
    const v7, 0x7f0a0190

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImgUserView:Landroid/widget/ImageView;

    .line 264
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImgUserView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    const v7, 0x7f0a018f

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->dialingImgUserView:Landroid/widget/ImageView;

    .line 266
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->dialingImgUserView:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    const v7, 0x7f0a0193

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callerInfoLayout:Landroid/widget/RelativeLayout;

    .line 268
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callerInfoLayout:Landroid/widget/RelativeLayout;

    const v8, 0x7f0b0030

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 270
    const-string v7, "common_volte_vt_kor"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 271
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callerInfoLayout:Landroid/widget/RelativeLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 272
    const v7, 0x7f0a0196

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 273
    .restart local v1       #Dialing:Landroid/widget/TextView;
    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callRunTime:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    const v7, 0x7f0a0191

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 277
    .restart local v5       #near:Landroid/widget/ImageView;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    const v7, 0x7f0a0316

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 279
    .local v3, hide_show:Landroid/widget/Button;
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 280
    const v7, 0x7f0a0317

    invoke-virtual {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 281
    .local v4, mute:Landroid/widget/Button;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 283
    .end local v1           #Dialing:Landroid/widget/TextView;
    .end local v3           #hide_show:Landroid/widget/Button;
    .end local v4           #mute:Landroid/widget/Button;
    .end local v5           #near:Landroid/widget/ImageView;
    :cond_8
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mTutorialLayout:Landroid/widget/FrameLayout;

    const v8, 0x7f020071

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method private dialingScreenToast()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mTutorialLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/phone/VoiceAndVideoCallTutorial$8;

    invoke-direct {v1, p0}, Lcom/android/phone/VoiceAndVideoCallTutorial$8;-><init>(Lcom/android/phone/VoiceAndVideoCallTutorial;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 506
    return-void
.end method

.method private dispCallDuration()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 380
    iget v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    div-int/lit8 v1, v1, 0x3c

    if-ge v1, v3, :cond_0

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, sTime:Ljava/lang/String;
    :goto_0
    iget v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    rem-int/lit8 v1, v1, 0x3c

    if-ge v1, v3, :cond_1

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    :goto_1
    iget-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callRunTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    return-void

    .line 383
    .end local v0           #sTime:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #sTime:Ljava/lang/String;
    goto :goto_0

    .line 387
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private runVoiceCallAnimation()V
    .locals 6

    .prologue
    .line 323
    const-string v0, "VoiceAndVideoCallTutorial: "

    const-string v1, "runVoiceCallAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const v0, 0x7f0a0325

    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;

    .line 325
    const v0, 0x7f0a0326

    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callDialingAnimation:Landroid/widget/ImageView;

    .line 326
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;

    const v1, 0x7f0201ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 327
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callDialingAnimation:Landroid/widget/ImageView;

    const v1, 0x7f020121

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    new-instance v0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;

    const-wide/16 v2, 0xe10

    const-wide/16 v4, 0x190

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/VoiceAndVideoCallTutorial$3;-><init>(Lcom/android/phone/VoiceAndVideoCallTutorial;JJ)V

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->timerForAni:Landroid/os/CountDownTimer;

    .line 376
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->timerForAni:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 377
    return-void
.end method

.method private setReultSetting(I)V
    .locals 4
    .parameter "step"

    .prologue
    .line 424
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 425
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "VoiceAndVideoCallTutorial: "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setReultSetting step  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v1, "step"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 427
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->setResult(ILandroid/content/Intent;)V

    .line 428
    invoke-virtual {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->finish()V

    .line 429
    return-void
.end method

.method private showToast()V
    .locals 3

    .prologue
    .line 497
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const v1, 0x7f090346

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 498
    return-void
.end method

.method private videoCallingTutorial()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 183
    const-string v1, "VoiceAndVideoCallTutorial: "

    const-string v2, "videoCallingTutorial"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v1, "common_volte_vt_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    const v1, 0x7f04004f

    invoke-virtual {p0, v1}, Lcom/android/phone/VoiceAndVideoCallTutorial;->setContentView(I)V

    .line 189
    :goto_0
    const v1, 0x7f0a018d

    invoke-virtual {p0, v1}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mTutorialLayout:Landroid/widget/FrameLayout;

    .line 190
    const v1, 0x7f0a031d

    invoke-virtual {p0, v1}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mMakeCallComplete:Landroid/widget/FrameLayout;

    .line 191
    const v1, 0x7f0a0195

    invoke-virtual {p0, v1}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callerName:Landroid/widget/TextView;

    .line 192
    iget-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callerName:Landroid/widget/TextView;

    const v2, 0x7f09034b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 193
    const v1, 0x7f0a01b4

    invoke-virtual {p0, v1}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;

    .line 194
    iget-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 195
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const v1, 0x7f0a0315

    invoke-virtual {p0, v1}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 197
    .local v0, camera:Landroid/widget/Button;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    .end local v0           #camera:Landroid/widget/Button;
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->dialingScreenToast()V

    .line 200
    iget-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 201
    return-void

    .line 187
    :cond_1
    const v1, 0x7f0400d0

    invoke-virtual {p0, v1}, Lcom/android/phone/VoiceAndVideoCallTutorial;->setContentView(I)V

    goto :goto_0
.end method

.method private voiceCallingTutorial()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 162
    const-string v0, "VoiceAndVideoCallTutorial: "

    const-string v1, "voiceCallingTutorial"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const v0, 0x7f0400d2

    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->setContentView(I)V

    .line 164
    const v0, 0x7f0a01ad

    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mAddButton:Landroid/widget/Button;

    .line 165
    const v0, 0x7f0a01b1

    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mRecordButton:Landroid/widget/Button;

    .line 166
    const v0, 0x7f0a0327

    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mMySoundButton:Landroid/widget/ImageView;

    .line 167
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    :goto_0
    const v0, 0x7f0a0323

    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mTutorialLayout:Landroid/widget/FrameLayout;

    .line 175
    const v0, 0x7f0a01b4

    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;

    .line 176
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 177
    invoke-direct {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->dialingScreenToast()V

    .line 178
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 180
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 115
    const-string v1, "VoiceAndVideoCallTutorial: "

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 117
    .local v0, bun:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 118
    const-string v1, "step"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    .line 119
    :cond_0
    const-string v1, "VoiceAndVideoCallTutorial: "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init step : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    if-nez v1, :cond_3

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->voiceCallingTutorial()V

    .line 126
    :cond_2
    :goto_0
    return-void

    .line 123
    :cond_3
    iget v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 124
    invoke-direct {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->videoCallingTutorial()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 417
    const-string v0, "VoiceAndVideoCallTutorial: "

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    .line 419
    :cond_1
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    .line 420
    :cond_2
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    invoke-direct {p0, v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->setReultSetting(I)V

    .line 421
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 422
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 142
    const-string v0, "VoiceAndVideoCallTutorial: "

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 145
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    if-nez v0, :cond_3

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    iput v2, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    .line 149
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->timerForAni:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->timerForAni:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->timerForAni:Landroid/os/CountDownTimer;

    .line 153
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->voiceCallingTutorial()V

    .line 160
    :cond_2
    :goto_0
    return-void

    .line 155
    :cond_3
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 156
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    iput v2, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    .line 158
    invoke-direct {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->videoCallingTutorial()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const-string v0, "VoiceAndVideoCallTutorial: "

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->setRequestedOrientation(I)V

    .line 111
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->init()V

    .line 112
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 137
    const-string v0, "VoiceAndVideoCallTutorial: "

    const-string v1, "onDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 131
    const-string v0, "VoiceAndVideoCallTutorial: "

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method
