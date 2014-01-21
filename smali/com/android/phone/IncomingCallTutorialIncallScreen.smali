.class public Lcom/android/phone/IncomingCallTutorialIncallScreen;
.super Landroid/app/Activity;
.source "IncomingCallTutorialIncallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/phone/IncomingCallWidget$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IncomingCallTutorialIncallScreen$6;,
        Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;
    }
.end annotation


# instance fields
.field private answer_passed:Z

.field private endbutton_clicked:Z

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

.field private mInCallControls:Landroid/view/View;

.field private mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

.field private mRecordButton:Landroid/widget/Button;

.field private mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

.field private mRejectHandle:Landroid/widget/LinearLayout;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTipAccept:Landroid/widget/FrameLayout;

.field private mTipComplete:Landroid/widget/FrameLayout;

.field private mTipEndCall:Landroid/widget/FrameLayout;

.field private mTipReject:Landroid/widget/FrameLayout;

.field private mTutorialLayout:Landroid/widget/FrameLayout;

.field private reject_passed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-boolean v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->answer_passed:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->reject_passed:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->endbutton_clicked:Z

    .line 86
    iput v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mBubbleCount:I

    .line 120
    new-instance v0, Lcom/android/phone/IncomingCallTutorialIncallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IncomingCallTutorialIncallScreen$1;-><init>(Lcom/android/phone/IncomingCallTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mHandler:Landroid/os/Handler;

    .line 146
    new-instance v0, Lcom/android/phone/IncomingCallTutorialIncallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IncomingCallTutorialIncallScreen$2;-><init>(Lcom/android/phone/IncomingCallTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 164
    new-instance v0, Lcom/android/phone/IncomingCallTutorialIncallScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IncomingCallTutorialIncallScreen$3;-><init>(Lcom/android/phone/IncomingCallTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 183
    new-instance v0, Lcom/android/phone/IncomingCallTutorialIncallScreen$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IncomingCallTutorialIncallScreen$4;-><init>(Lcom/android/phone/IncomingCallTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IncomingCallTutorialIncallScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mHelpTabView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/IncomingCallTutorialIncallScreen;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mFlashingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/IncomingCallTutorialIncallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$208(Lcom/android/phone/IncomingCallTutorialIncallScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mBubbleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/IncomingCallTutorialIncallScreen;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mFadingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/IncomingCallTutorialIncallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->showToast()V

    return-void
.end method

.method private animationInit(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const v3, 0x7f050002

    .line 132
    const v0, 0x7f050009

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mShowAnimation:Landroid/view/animation/Animation;

    .line 133
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 135
    const v0, 0x7f050007

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mFadingAnimation:Landroid/view/animation/Animation;

    .line 136
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 138
    const v0, 0x7f050008

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mFlashingAnimation:Landroid/view/animation/Animation;

    .line 139
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mBubbleAnimation1:Landroid/view/animation/Animation;

    .line 142
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mBubbleAnimation1:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 143
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mBubbleAnimation2:Landroid/view/animation/Animation;

    .line 144
    return-void
.end method

.method private initIncomingTutorial()V
    .locals 2

    .prologue
    const v1, 0x7f0a001a

    .line 251
    const v0, 0x7f0a0206

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallWidget;

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    .line 252
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingCallWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallWidget$OnTriggerListener;)V

    .line 254
    const-string v0, "change_message_icon_for_vzw"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {p0, v1}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    .line 256
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    const v1, 0x7f020438

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 262
    :cond_0
    :goto_0
    const v0, 0x7f0a0201

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mTipAccept:Landroid/widget/FrameLayout;

    .line 263
    const v0, 0x7f0a0207

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mTipEndCall:Landroid/widget/FrameLayout;

    .line 264
    const v0, 0x7f0a0203

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mTipReject:Landroid/widget/FrameLayout;

    .line 265
    const v0, 0x7f0a0205

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mTipComplete:Landroid/widget/FrameLayout;

    .line 266
    const v0, 0x7f0a0019

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mRejectHandle:Landroid/widget/LinearLayout;

    .line 268
    const v0, 0x7f0a01ef

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mInCallControls:Landroid/view/View;

    .line 269
    const v0, 0x7f0a0318

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mHelpTabView:Landroid/widget/ImageView;

    .line 270
    const v0, 0x7f0a01ad

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mAddButton:Landroid/widget/Button;

    .line 271
    const v0, 0x7f0a01b1

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mRecordButton:Landroid/widget/Button;

    .line 273
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mEndButton:Landroid/widget/Button;

    .line 274
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    const v0, 0x7f0a01ff

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mTutorialLayout:Landroid/widget/FrameLayout;

    .line 277
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mTutorialLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/phone/IncomingCallTutorialIncallScreen$5;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingCallTutorialIncallScreen$5;-><init>(Lcom/android/phone/IncomingCallTutorialIncallScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 285
    return-void

    .line 257
    :cond_1
    const-string v0, "change_message_icon_for_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0, v1}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    .line 259
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    const v1, 0x7f020437

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private setIncomingCallTutorialMode(Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;)V
    .locals 5
    .parameter "state"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 288
    const-string v0, "IncomingCallTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIncomingCallTutorialMode() state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object v0, Lcom/android/phone/IncomingCallTutorialIncallScreen$6;->$SwitchMap$com$android$phone$IncomingCallTutorialIncallScreen$IncomingCallTutorialStep:[I

    invoke-virtual {p1}, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 337
    :goto_0
    return-void

    .line 292
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, v4}, Lcom/android/phone/IncomingCallWidget;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mTipEndCall:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mTipEndCall:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 297
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mHelpTabView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mRejectHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 308
    :goto_1
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mHelpTabView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 311
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, v3}, Lcom/android/phone/IncomingCallWidget;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mTipEndCall:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mTipReject:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mTipReject:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 316
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mHelpTabView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mRejectHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    iget-object v0, v0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v0, v3}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 319
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    iget-object v0, v0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v0, v3}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 320
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mHelpTabView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 321
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 322
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 331
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mTipReject:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mTipComplete:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mTipComplete:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showToast()V
    .locals 3

    .prologue
    .line 350
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const v1, 0x7f090346

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 351
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 347
    :goto_0
    return-void

    .line 343
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->endbutton_clicked:Z

    .line 344
    sget-object v0, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->END_CALL:Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->setIncomingCallTutorialMode(Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;)V

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a01b4
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 234
    const-string v0, "IncomingCallTutorialIncallScreen"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 237
    const v0, 0x7f040066

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->setContentView(I)V

    .line 238
    invoke-direct {p0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->initIncomingTutorial()V

    .line 240
    iget-boolean v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->answer_passed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->endbutton_clicked:Z

    if-nez v0, :cond_1

    .line 241
    sget-object v0, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->setIncomingCallTutorialMode(Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->endbutton_clicked:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->reject_passed:Z

    if-nez v0, :cond_2

    .line 243
    sget-object v0, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->END_CALL:Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->setIncomingCallTutorialMode(Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;)V

    goto :goto_0

    .line 244
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->endbutton_clicked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->reject_passed:Z

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->REJECT_CALL:Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->setIncomingCallTutorialMode(Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const-string v0, "IncomingCallTutorialIncallScreen"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->setRequestedOrientation(I)V

    .line 105
    :goto_0
    const v0, 0x7f040066

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->setContentView(I)V

    .line 107
    invoke-direct {p0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->initIncomingTutorial()V

    .line 109
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->animationInit(Landroid/content/Context;)V

    .line 110
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mTipAccept:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 112
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 202
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 116
    const-string v0, "IncomingCallTutorialIncallScreen"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .parameter "view"
    .parameter "whichHandle"

    .prologue
    const/4 v3, 0x1

    .line 207
    packed-switch p2, :pswitch_data_0

    .line 230
    :goto_0
    return-void

    .line 209
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->answer_passed:Z

    if-nez v0, :cond_0

    .line 210
    iput-boolean v3, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->answer_passed:Z

    .line 211
    sget-object v0, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->setIncomingCallTutorialMode(Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->showToast()V

    goto :goto_0

    .line 218
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->answer_passed:Z

    if-eqz v0, :cond_1

    .line 219
    sget-object v0, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->REJECT_CALL:Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->setIncomingCallTutorialMode(Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;)V

    .line 220
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 221
    iput-boolean v3, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen;->reject_passed:Z

    goto :goto_0

    .line 223
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->showToast()V

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
