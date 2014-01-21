.class public Lcom/android/phone/VtInCallButtonsView;
.super Landroid/widget/RelativeLayout;
.source "VtInCallButtonsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static mIsSwitchCameraClicked:Z


# instance fields
.field private final HIDE_VOLUME_BAR:I

.field private ONE_HAND_DIRECTION:Ljava/lang/String;

.field lsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCancelButton:Landroid/widget/Button;

.field private mCaptureButton:Landroid/widget/Button;

.field private mEndButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHeadsetButton:Landroid/widget/ToggleButton;

.field private mHideMeButton:Landroid/widget/Button;

.field private mHideMeToggleButton:Landroid/widget/ToggleButton;

.field private mIsEasyModeOn:Z

.field private mIsOnehandOn:Z

.field private mIsOnehandOptionRight:Z

.field private mLeftArrow:Landroid/view/View;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mParentHideMeMuteButtonLayout:Landroid/widget/FrameLayout;

.field private mRightArrow:Landroid/view/View;

.field private mShowMeButton:Landroid/widget/Button;

.field private mSwitchCameraButton:Landroid/widget/Button;

.field public mVolumeButton:Landroid/widget/ImageButton;

.field private mVolumePanel:Landroid/view/ViewGroup;

.field private mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private final mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field private mVtInCallScreenButtonsInnerContainer:Landroid/widget/LinearLayout;

.field private mhidekeypadButton:Landroid/widget/ToggleButton;

.field rsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

.field smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/VtInCallButtonsView;->mIsSwitchCameraClicked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v2, 0x19

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 71
    iput-boolean v1, p0, Lcom/android/phone/VtInCallButtonsView;->mIsEasyModeOn:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/phone/VtInCallButtonsView;->mIsOnehandOn:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/phone/VtInCallButtonsView;->mIsOnehandOptionRight:Z

    .line 84
    const-string v0, "onehand_direction"

    iput-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 87
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>(II)V

    iput-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->lsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 88
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>(II)V

    iput-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->rsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 90
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/VtInCallButtonsView;->HIDE_VOLUME_BAR:I

    .line 92
    new-instance v0, Lcom/android/phone/VtInCallButtonsView$1;

    invoke-direct {v0, p0}, Lcom/android/phone/VtInCallButtonsView$1;-><init>(Lcom/android/phone/VtInCallButtonsView;)V

    iput-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mHandler:Landroid/os/Handler;

    .line 497
    new-instance v0, Lcom/android/phone/VtInCallButtonsView$2;

    invoke-direct {v0, p0}, Lcom/android/phone/VtInCallButtonsView$2;-><init>(Lcom/android/phone/VtInCallButtonsView;)V

    iput-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 115
    iput-object p1, p0, Lcom/android/phone/VtInCallButtonsView;->mContext:Landroid/content/Context;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/VtInCallButtonsView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/VtInCallButtonsView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/VtInCallButtonsView;)Lcom/sec/android/touchwiz/widget/TwSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 538
    const-string v0, "VtInCallButtonsView"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 542
    const-string v0, "VtInCallButtonsView"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 543
    return-void
.end method


# virtual methods
.method protected hideShowMeButton()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mShowMeButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 430
    :cond_1
    return-void
.end method

.method public hideVolumePanel()V
    .locals 2

    .prologue
    .line 491
    const-string v0, "VtInCallButtonsView"

    const-string v1, "[VideoCallVolumePanel] hideVolumePanel"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 493
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumePanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumePanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 495
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 357
    .local v0, id:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/phone/VtInCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 358
    const-string v2, "volume_panel"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    const v2, 0x7f0a01c0

    if-eq v0, v2, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->hideVolumePanel()V

    .line 364
    :cond_0
    invoke-static {}, Lcom/android/phone/VideoCallPanel;->getInstance()Lcom/android/phone/VideoCallPanel;

    move-result-object v1

    .line 366
    .local v1, videoCallPanel:Lcom/android/phone/VideoCallPanel;
    sparse-switch v0, :sswitch_data_0

    .line 413
    :cond_1
    :goto_0
    const-string v2, "VtInCallButtonsView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick: unexpected click: View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_2
    :goto_1
    return-void

    .line 374
    :sswitch_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_2

    .line 375
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 379
    :sswitch_1
    iget-object v2, p0, Lcom/android/phone/VtInCallButtonsView;->mRightArrow:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object v2, p0, Lcom/android/phone/VtInCallButtonsView;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 381
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_3

    .line 382
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v5}, Lcom/android/phone/InCallScreen;->setOneHandDialpadDirection(Z)V

    .line 384
    :cond_3
    iget-object v2, p0, Lcom/android/phone/VtInCallButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 387
    :sswitch_2
    iget-object v2, p0, Lcom/android/phone/VtInCallButtonsView;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 388
    iget-object v2, p0, Lcom/android/phone/VtInCallButtonsView;->mRightArrow:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 389
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_4

    .line 390
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v4}, Lcom/android/phone/InCallScreen;->setOneHandDialpadDirection(Z)V

    .line 392
    :cond_4
    iget-object v2, p0, Lcom/android/phone/VtInCallButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 395
    :sswitch_3
    if-eqz v1, :cond_5

    .line 396
    invoke-virtual {v1}, Lcom/android/phone/VideoCallPanel;->sendLiveVideo()V

    .line 397
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->hideShowMeButton()V

    .line 399
    :sswitch_4
    if-eqz v1, :cond_2

    .line 400
    invoke-virtual {v1, v4}, Lcom/android/phone/VideoCallPanel;->captureSurfaceImage(Z)V

    goto :goto_1

    .line 404
    :sswitch_5
    const-string v2, "volume_panel"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    iget-object v2, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumePanel:Landroid/view/ViewGroup;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumePanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_6

    .line 406
    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->showVolumePanel()V

    goto/16 :goto_0

    .line 408
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->hideVolumePanel()V

    goto/16 :goto_0

    .line 366
    :sswitch_data_0
    .sparse-switch
        0x7f0a01c0 -> :sswitch_5
        0x7f0a0315 -> :sswitch_0
        0x7f0a032b -> :sswitch_0
        0x7f0a032c -> :sswitch_3
        0x7f0a032f -> :sswitch_0
        0x7f0a0330 -> :sswitch_0
        0x7f0a0332 -> :sswitch_0
        0x7f0a0333 -> :sswitch_0
        0x7f0a0334 -> :sswitch_0
        0x7f0a0335 -> :sswitch_4
        0x7f0a0339 -> :sswitch_2
        0x7f0a033a -> :sswitch_1
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 120
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 122
    const-string v3, "common_volte"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    const-string v3, "This device not support volte"

    invoke-direct {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->log(Ljava/lang/String;)V

    .line 237
    :goto_0
    return-void

    .line 127
    :cond_0
    const v3, 0x7f0a0329

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVtInCallScreenButtonsInnerContainer:Landroid/widget/LinearLayout;

    .line 129
    const v3, 0x7f0a032d

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mParentHideMeMuteButtonLayout:Landroid/widget/FrameLayout;

    .line 131
    const v3, 0x7f0a0315

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    .line 132
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    .line 133
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->lsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :cond_1
    const v3, 0x7f0a032b

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    .line 138
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_2

    .line 139
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->lsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 140
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_2
    const/4 v0, 0x0

    .line 146
    .local v0, mNumberOfCameras:I
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/phone/VideoCallManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/VideoCallManager;

    move-result-object v2

    .line 147
    .local v2, videoCallManager:Lcom/android/phone/VideoCallManager;
    if-eqz v2, :cond_3

    .line 148
    invoke-virtual {v2}, Lcom/android/phone/VideoCallManager;->getNumberOfCameras()I
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 153
    .end local v2           #videoCallManager:Lcom/android/phone/VideoCallManager;
    :cond_3
    :goto_1
    if-le v0, v6, :cond_12

    .line 154
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v3, :cond_4

    .line 155
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 161
    :cond_4
    :goto_2
    const v3, 0x7f0a032e

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeButton:Landroid/widget/Button;

    .line 162
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeButton:Landroid/widget/Button;

    if-eqz v3, :cond_5

    .line 163
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :cond_5
    const v3, 0x7f0a032c

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mShowMeButton:Landroid/widget/Button;

    .line 167
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mShowMeButton:Landroid/widget/Button;

    if-eqz v3, :cond_6

    .line 168
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mShowMeButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_6
    const v3, 0x7f0a032f

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    .line 172
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_7

    .line 173
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 177
    :cond_7
    const-string v3, "common_volte_vt_kor"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 178
    const v3, 0x7f0a0330

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    .line 179
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_8

    .line 180
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :cond_8
    const v3, 0x7f0a0332

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mEndButton:Landroid/widget/Button;

    .line 185
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mEndButton:Landroid/widget/Button;

    if-eqz v3, :cond_9

    .line 186
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mEndButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->rsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 187
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    :cond_9
    const v3, 0x7f0a0333

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCancelButton:Landroid/widget/Button;

    .line 190
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCancelButton:Landroid/widget/Button;

    if-eqz v3, :cond_a

    .line 191
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCancelButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->rsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 192
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    :cond_a
    const-string v3, "common_volte_vt_kor"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 196
    const v3, 0x7f0a0334

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHeadsetButton:Landroid/widget/ToggleButton;

    .line 197
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHeadsetButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_b

    .line 198
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHeadsetButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->rsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHeadsetButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    :cond_b
    const v3, 0x7f0a0335

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCaptureButton:Landroid/widget/Button;

    .line 203
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCaptureButton:Landroid/widget/Button;

    if-eqz v3, :cond_c

    .line 204
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCaptureButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->rsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 205
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    :cond_c
    const-string v3, "volume_panel"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 208
    const v3, 0x7f0a01c0

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeButton:Landroid/widget/ImageButton;

    .line 209
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_d

    .line 210
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 211
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    :cond_d
    const v3, 0x7f0a01c2

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 214
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    if-eqz v3, :cond_e

    .line 215
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 217
    :cond_e
    const v3, 0x7f0a01c1

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumePanel:Landroid/view/ViewGroup;

    .line 221
    :cond_f
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isOnehandModeOn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/VtInCallButtonsView;->mIsOnehandOn:Z

    .line 222
    const-string v3, "support_onehand_operation"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lcom/android/phone/VtInCallButtonsView;->mIsOnehandOn:Z

    if-eqz v3, :cond_11

    .line 223
    const v3, 0x7f0a033a

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mRightArrow:Landroid/view/View;

    .line 224
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mRightArrow:Landroid/view/View;

    if-eqz v3, :cond_10

    .line 225
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mRightArrow:Landroid/view/View;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 226
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mRightArrow:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    :cond_10
    const v3, 0x7f0a0339

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mLeftArrow:Landroid/view/View;

    .line 230
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mLeftArrow:Landroid/view/View;

    if-eqz v3, :cond_11

    .line 231
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mLeftArrow:Landroid/view/View;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 232
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    :cond_11
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/VtInCallButtonsView;->mIsEasyModeOn:Z

    goto/16 :goto_0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, ve:Ljava/lang/VerifyError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch VerifyError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->log(Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 157
    .end local v1           #ve:Ljava/lang/VerifyError;
    :cond_12
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v3, :cond_4

    .line 158
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public setVolume(I)V
    .locals 6
    .parameter "progress"

    .prologue
    .line 433
    const-string v4, "VtInCallButtonsView"

    const-string v5, "[VideoCallVolumePanel] setVolume"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 436
    .local v0, audioManager:Landroid/media/AudioManager;
    const/16 v3, 0xb

    .line 438
    .local v3, stream:I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    .line 439
    .local v1, bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    if-eqz v1, :cond_0

    .line 440
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x6

    .line 444
    :cond_0
    :goto_0
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 445
    .local v2, maxVolume:I
    const/4 v4, 0x1

    if-ge p1, v4, :cond_3

    .line 446
    const-string v4, "VtInCallButtonsView"

    const-string v5, "Set force progress level 1 for call volume"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 p1, 0x0

    .line 453
    :cond_1
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v0, v3, p1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 454
    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->showVolumePanel()V

    .line 455
    return-void

    .line 440
    .end local v2           #maxVolume:I
    :cond_2
    const/16 v3, 0xb

    goto :goto_0

    .line 448
    .restart local v2       #maxVolume:I
    :cond_3
    if-le p1, v2, :cond_1

    .line 449
    const-string v4, "VtInCallButtonsView"

    const-string v5, "Set force progress level max for call volume"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    move p1, v2

    goto :goto_1
.end method

.method protected showShowMeButton()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mShowMeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 423
    :cond_1
    return-void
.end method

.method public showVolumePanel()V
    .locals 8

    .prologue
    const/16 v7, 0x64

    .line 460
    const-string v4, "VtInCallButtonsView"

    const-string v5, "[VideoCallVolumePanel] showVolumePanel"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/16 v3, 0xb

    .line 462
    .local v3, stream:I
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 464
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x6

    .line 467
    :goto_0
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 469
    .local v1, changedVolume:I
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 471
    .local v2, maxVolume:I
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setMax(I)V

    .line 472
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 473
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->invalidate()V

    .line 476
    .end local v1           #changedVolume:I
    .end local v2           #maxVolume:I
    :cond_0
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumePanel:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 477
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumePanel:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 480
    :cond_1
    if-eqz v0, :cond_2

    .line 481
    invoke-virtual {v0}, Landroid/media/AudioManager;->dismissVolumePanel()V

    .line 484
    :cond_2
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_3

    .line 485
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 486
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 488
    :cond_3
    return-void

    .line 464
    :cond_4
    const/16 v3, 0xb

    goto :goto_0
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 9
    .parameter "cm"

    .prologue
    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 241
    const-string v3, "updateState..."

    invoke-direct {p0, v3, v4}, Lcom/android/phone/VtInCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 243
    iput-object p1, p0, Lcom/android/phone/VtInCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 244
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 245
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v7, :cond_0

    .line 247
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 250
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getIMSCallType(Lcom/android/internal/telephony/Call;)I

    move-result v1

    .line 252
    .local v1, callType:I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v2, v3, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 254
    .local v2, mInCallScreen:Lcom/android/phone/InCallScreen;
    if-nez v2, :cond_2

    .line 350
    :cond_1
    :goto_0
    return-void

    .line 256
    :cond_2
    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isCameraOpened()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v3, v3, Lcom/android/phone/InVTCallState;->isShowMe:Z

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/phone/VtInCallButtonsView;->mIsSwitchCameraClicked:Z

    if-eqz v3, :cond_9

    .line 259
    :cond_4
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 263
    :goto_1
    const-string v3, "common_volte_vt_kor"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 264
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 265
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 266
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 267
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 268
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 271
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v3, v3, Lcom/android/phone/InVTCallState;->isShowMe:Z

    iget-object v7, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v7}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v7

    if-ne v3, v7, :cond_5

    .line 272
    iget-object v7, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_a

    move v3, v4

    :goto_2
    invoke-virtual {v7, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 276
    :cond_5
    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 277
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 282
    :goto_3
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 283
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 286
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHeadsetButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 289
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v7, :cond_c

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 291
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 292
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCaptureButton:Landroid/widget/Button;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v7, v7, Lcom/android/phone/InVTCallState;->mIsFarFrameReady:Z

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 296
    :goto_4
    const-string v3, "volume_panel"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 297
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_7

    .line 298
    iget-object v7, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v8, :cond_d

    :cond_6
    move v3, v6

    :goto_5
    invoke-virtual {v7, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 300
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_7

    .line 301
    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->hideVolumePanel()V

    .line 329
    :cond_7
    :goto_6
    const-string v3, "support_easy_mode"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-boolean v3, p0, Lcom/android/phone/VtInCallButtonsView;->mIsEasyModeOn:Z

    if-eqz v3, :cond_13

    .line 330
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVtInCallScreenButtonsInnerContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 331
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 332
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVtInCallScreenButtonsInnerContainer:Landroid/widget/LinearLayout;

    const v4, 0x7f020083

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 334
    :cond_8
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mParentHideMeMuteButtonLayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_1

    .line 335
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mParentHideMeMuteButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 261
    :cond_9
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_a
    move v3, v5

    .line 272
    goto/16 :goto_2

    .line 279
    :cond_b
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_3

    .line 294
    :cond_c
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    :cond_d
    move v3, v5

    .line 298
    goto :goto_5

    .line 306
    :cond_e
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v7, :cond_f

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v7, :cond_11

    .line 307
    :cond_f
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 308
    iget-object v7, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v3, v3, Lcom/android/phone/InVTCallState;->isShowMe:Z

    if-nez v3, :cond_10

    move v3, v4

    :goto_7
    invoke-virtual {v7, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 309
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 316
    :goto_8
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v7, :cond_12

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 317
    const-string v3, "can make hidekeypad button visible here "

    invoke-direct {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->log(Ljava/lang/String;)V

    .line 318
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 319
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 320
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_6

    :cond_10
    move v3, v5

    .line 308
    goto :goto_7

    .line 311
    :cond_11
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 312
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 313
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 314
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_8

    .line 322
    :cond_12
    const-string v3, "can make camera button visible here again"

    invoke-direct {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->log(Ljava/lang/String;)V

    .line 323
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 324
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 325
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_6

    .line 338
    :cond_13
    const-string v3, "support_onehand_operation"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/phone/VtInCallButtonsView;->mIsOnehandOn:Z

    if-eqz v3, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v7, p0, Lcom/android/phone/VtInCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_15

    :goto_9
    iput-boolean v4, p0, Lcom/android/phone/VtInCallButtonsView;->mIsOnehandOptionRight:Z

    .line 340
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mLeftArrow:Landroid/view/View;

    if-eqz v3, :cond_14

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mLeftArrow:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/phone/VtInCallButtonsView;->mIsOnehandOptionRight:Z

    if-eqz v3, :cond_16

    move v3, v5

    :goto_a
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 341
    :cond_14
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mRightArrow:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mRightArrow:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/phone/VtInCallButtonsView;->mIsOnehandOptionRight:Z

    if-eqz v4, :cond_17

    :goto_b
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_15
    move v4, v5

    .line 339
    goto :goto_9

    :cond_16
    move v3, v6

    .line 340
    goto :goto_a

    :cond_17
    move v6, v5

    .line 341
    goto :goto_b

    .line 347
    :cond_18
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 348
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_0
.end method
