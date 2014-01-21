.class public Lcom/android/phone/InCallTouchUi;
.super Landroid/widget/FrameLayout;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/phone/IncomingCallWidget$OnTriggerListener;


# static fields
.field public static mIsAdaptBothHandOn:Z


# instance fields
.field private final HIDE_VOLUME_BAR:I

.field private ONE_HAND_DIRECTION:Ljava/lang/String;

.field private final TOGGLE_CDMA_SWAP_TIMEOUT:I

.field private final TURN_ON_BT_TIMEOUT:I

.field private final TURN_ON_EXTRA_VOL_TIMEOUT:I

.field private final TURN_ON_SPEAKER_TIMEOUT:I

.field private final UPDATE_BT_BUTTON:I

.field private final UPDATE_CDMA_SWAP_BUTTON:I

.field private final UPDATE_EXTRAVOL_BUTTON:I

.field private final UPDATE_SPEAKER_BUTTON:I

.field private isCallRejected:Z

.field private mAcceptVideoButton:Landroid/widget/Button;

.field private mAcceptVoiceButton:Landroid/widget/Button;

.field private mAddButton:Landroid/widget/Button;

.field private mAddcallCallback:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;

.field private mAnswerButton:Landroid/view/View;

.field private mAnswerButtonTextView:Landroid/widget/TextView;

.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothButton:Landroid/widget/ToggleButton;

.field private mCallEndIcon:Landroid/graphics/drawable/Drawable;

.field private mCancelButton:Landroid/view/View;

.field private mCancelButton_qcif:Landroid/view/View;

.field private mCdmaSwapButton:Landroid/widget/Button;

.field private mChatOnID:Ljava/lang/String;

.field private mContactButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDialpadButton:Landroid/widget/Button;

.field private mEasymodeTrigerListener:Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;

.field private mEndButton:Landroid/widget/Button;

.field private mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

.field private mExtraVlolButton:Landroid/widget/ToggleButton;

.field private mExtraVolBtnParent:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mHoldButton:Landroid/view/View;

.field private mInCallButtonViewDrivingMode:Landroid/view/View;

.field private mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

.field private mInCallButtons:Landroid/view/View;

.field private mInCallControls:Landroid/view/View;

.field private mInCallIconContainer:Landroid/view/View;

.field private mInCallIconContainerEasyMode:Landroid/view/View;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingButtonViewDrivingMode:Landroid/view/View;

.field private mIncomingButtonViewForVoLteVT:Landroid/view/View;

.field public mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

.field public mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

.field public mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

.field public mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

.field private mIsEasyModeOn:Z

.field private mIsOnehandOn:Z

.field private mIsOnehandOptionRight:Z

.field public mIsShownVolumeBarbyVolKey:Z

.field public mIschangedbyCall:Z

.field private mLastIncomingCallActionTime:J

.field private mLeftArrow:Landroid/view/View;

.field private mManageConfButton:Landroid/view/View;

.field private mMenuButton:Landroid/widget/ImageButton;

.field private mMergeButton:Landroid/widget/Button;

.field private mMergeIcon:Landroid/graphics/drawable/Drawable;

.field private mMultiCallButton:Landroid/view/View;

.field private mMultiCallButtonContainer:Landroid/widget/LinearLayout;

.field private mMultiCallButtonImage:Landroid/widget/ImageView;

.field private mMultiCallButtonLabel:Landroid/widget/TextView;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mNoiseReductionBtnParent:Landroid/view/View;

.field private mNoiseReductionButton:Landroid/widget/ToggleButton;

.field private mNoiseReductionView:Landroid/view/View;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPopup:Landroid/widget/PopupMenu;

.field private mPopupVisible:Z

.field private mPrevIsEasyModeOn:Z

.field private mRecordButton:Landroid/widget/Button;

.field private mRecordOffIcon:Landroid/graphics/drawable/Drawable;

.field private mRecordOnIcon:Landroid/graphics/drawable/Drawable;

.field private mRejectButton:Landroid/view/View;

.field private mRejectButtonTextView:Landroid/widget/TextView;

.field private mRejectCallWithMsgContent:Landroid/view/ViewGroup;

.field public mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

.field private mRejectCallWithMsgDrawerLayout:Landroid/view/View;

.field private mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

.field private mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

.field private mRejectCallWithMsgIconModeLayout:Landroid/view/ViewGroup;

.field private mRejectCallWithMsgTextModeLayout:Landroid/view/ViewGroup;

.field private mResizeHidePatchForInc:Landroid/view/View;

.field private mRightArrow:Landroid/view/View;

.field private mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mSwapButton:Landroid/view/View;

.field private mSwapIcon:Landroid/graphics/drawable/Drawable;

.field private mSwitchButtonContainer:Landroid/widget/LinearLayout;

.field private mUnholdButton:Landroid/view/View;

.field public mVolumeButton:Landroid/widget/ImageButton;

.field private mVolumePanel:Landroid/view/ViewGroup;

.field private mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private final mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field private mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

.field private mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

.field public mVtIncomingHideButton:Landroid/widget/ToggleButton;

.field private mVtRejectButton:Landroid/widget/Button;

.field private mWebExButton:Landroid/widget/Button;

.field private mWidgetAddcallButton:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

.field private prevIsOnehandOn:Z

.field sk:Lcom/samsung/android/sdk/look/Slook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/InCallTouchUi;->mIsAdaptBothHandOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x1f4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 367
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 171
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->prevIsOnehandOn:Z

    .line 173
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOptionRight:Z

    .line 175
    const-string v0, "onehand_direction"

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_DIRECTION:Ljava/lang/String;

    .line 179
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    .line 180
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mPrevIsEasyModeOn:Z

    .line 181
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->isCallRejected:Z

    .line 248
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mPopupVisible:Z

    .line 261
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIschangedbyCall:Z

    .line 276
    const/16 v0, 0x6e

    iput v0, p0, Lcom/android/phone/InCallTouchUi;->UPDATE_SPEAKER_BUTTON:I

    .line 277
    iput v3, p0, Lcom/android/phone/InCallTouchUi;->TURN_ON_SPEAKER_TIMEOUT:I

    .line 279
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/phone/InCallTouchUi;->UPDATE_BT_BUTTON:I

    .line 280
    iput v3, p0, Lcom/android/phone/InCallTouchUi;->TURN_ON_BT_TIMEOUT:I

    .line 282
    const/16 v0, 0x82

    iput v0, p0, Lcom/android/phone/InCallTouchUi;->UPDATE_EXTRAVOL_BUTTON:I

    .line 283
    iput v3, p0, Lcom/android/phone/InCallTouchUi;->TURN_ON_EXTRA_VOL_TIMEOUT:I

    .line 285
    const/16 v0, 0x8c

    iput v0, p0, Lcom/android/phone/InCallTouchUi;->HIDE_VOLUME_BAR:I

    .line 287
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/phone/InCallTouchUi;->UPDATE_CDMA_SWAP_BUTTON:I

    .line 288
    iput v3, p0, Lcom/android/phone/InCallTouchUi;->TOGGLE_CDMA_SWAP_TIMEOUT:I

    .line 291
    iput-object v4, p0, Lcom/android/phone/InCallTouchUi;->mChatOnID:Ljava/lang/String;

    .line 295
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsShownVolumeBarbyVolKey:Z

    .line 296
    iput-object v4, p0, Lcom/android/phone/InCallTouchUi;->mWidgetAddcallButton:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    .line 298
    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->sk:Lcom/samsung/android/sdk/look/Slook;

    .line 301
    new-instance v0, Lcom/android/phone/InCallTouchUi$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$1;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 425
    new-instance v0, Lcom/android/phone/InCallTouchUi$2;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$2;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEasymodeTrigerListener:Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;

    .line 3450
    new-instance v0, Lcom/android/phone/InCallTouchUi$5;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$5;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 3625
    new-instance v0, Lcom/android/phone/InCallTouchUi$6;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$6;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddcallCallback:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;

    .line 369
    const-string v0, "InCallTouchUi constructor..."

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- context "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attrs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 373
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    .line 374
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 375
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isOnehandModeOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    .line 376
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->prevIsOnehandOn:Z

    .line 378
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    .line 379
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mPrevIsEasyModeOn:Z

    .line 380
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioManager:Landroid/media/AudioManager;

    .line 383
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    const v1, 0x7f040080

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 415
    :goto_0
    return-void

    .line 390
    :cond_0
    const-string v1, "support_easy_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    if-eqz v1, :cond_2

    .line 391
    const-string v1, "voice_call_recording_easy_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    const v1, 0x7f04005f

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 398
    :cond_1
    const v1, 0x7f04005e

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 403
    :cond_2
    const-string v1, "support_onehand_operation"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    if-eqz v1, :cond_3

    .line 404
    const v1, 0x7f040060

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 409
    :cond_3
    const v1, 0x7f04005d

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/InCallTouchUi;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/InCallTouchUi;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/InCallTouchUi;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/InCallTouchUi;)Lcom/sec/android/touchwiz/widget/TwSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/InCallTouchUi;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/InCallTouchUi;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/EndCallButtonsView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/InCallTouchUi;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/InCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/InCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/InCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/InCallTouchUi;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVolBtnParent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/InCallTouchUi;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/InCallTouchUi;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private dumpBottomButtonState()V
    .locals 2

    .prologue
    .line 2305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - dialpad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - hold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - swap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - merge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - swap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2315
    return-void
.end method

.method private static getButtonState(Landroid/view/View;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 2318
    if-nez p0, :cond_0

    .line 2319
    const-string v0, "(null)"

    .line 2336
    :goto_0
    return-object v0

    .line 2321
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visibility: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VISIBLE"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2324
    instance-of v0, p0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 2325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2336
    :cond_1
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2322
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    const-string v0, "INVISIBLE"

    goto :goto_1

    :cond_3
    const-string v0, "GONE"

    goto :goto_1

    .line 2326
    :cond_4
    instance-of v0, p0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_5

    .line 2327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", checked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2329
    :cond_5
    instance-of v0, p0, Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 2330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2331
    :cond_6
    instance-of v0, p0, Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    .line 2332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", checked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method private hideIncomingCallWidget()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 3017
    const-string v0, "hideIncomingCallWidget()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 3068
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    if-eqz v0, :cond_0

    .line 3069
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->clearAnimation()V

    .line 3070
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallWidget;->setVisibility(I)V

    .line 3072
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    if-eqz v0, :cond_1

    .line 3073
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallEasyImageWidget;->clearAnimation()V

    .line 3074
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallEasyImageWidget;->setVisibility(I)V

    .line 3076
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    if-eqz v0, :cond_2

    .line 3077
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallRejectWidget;->clearAnimation()V

    .line 3078
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallRejectWidget;->setVisibility(I)V

    .line 3080
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    if-eqz v0, :cond_3

    .line 3081
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallEasyRejectWidget;->clearAnimation()V

    .line 3082
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallEasyRejectWidget;->setVisibility(I)V

    .line 3086
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    .line 3087
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 3088
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3089
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4

    .line 3090
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 3092
    :cond_4
    const-string v0, "support_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3093
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->setMultiwindowTrayDisable(Z)V

    .line 3095
    :cond_5
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 3432
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3436
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3437
    return-void
.end method

.method private okToShowInCallControls()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1447
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1448
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v2, v2, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v2, v2, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v2, v3, :cond_2

    :cond_1
    move v0, v1

    .line 1453
    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v2, v2, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v2, v2, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v2, v3, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private setVtInCallButtonsViewVisibility(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter "view"
    .parameter "qcif_view"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1309
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1310
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1311
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1312
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1320
    :cond_1
    :goto_0
    return-void

    .line 1314
    :cond_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1315
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1317
    :cond_3
    if-eqz p1, :cond_1

    .line 1318
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0e004e

    const/4 v1, 0x1

    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 3107
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    if-eqz v0, :cond_0

    .line 3108
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->clearAnimation()V

    .line 3109
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, v6}, Lcom/android/phone/IncomingCallWidget;->setVisibility(I)V

    .line 3111
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    if-eqz v0, :cond_1

    .line 3112
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallEasyImageWidget;->clearAnimation()V

    .line 3113
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    invoke-virtual {v0, v6}, Lcom/android/phone/IncomingCallEasyImageWidget;->setVisibility(I)V

    .line 3115
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    if-eqz v0, :cond_2

    .line 3116
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallRejectWidget;->clearAnimation()V

    .line 3117
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    invoke-virtual {v0, v6}, Lcom/android/phone/IncomingCallRejectWidget;->setVisibility(I)V

    .line 3119
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    if-eqz v0, :cond_3

    .line 3120
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallEasyRejectWidget;->clearAnimation()V

    .line 3121
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    invoke-virtual {v0, v6}, Lcom/android/phone/IncomingCallEasyRejectWidget;->setVisibility(I)V

    .line 3124
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    if-eqz v0, :cond_5

    .line 3125
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3126
    if-eqz v0, :cond_4

    .line 3127
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3129
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    const/high16 v3, 0x3f80

    invoke-virtual {v0, v3}, Lcom/android/phone/IncomingCallWidget;->setAlpha(F)V

    .line 3130
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->clearAirMotionAnimation()V

    .line 3137
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0, p1}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 3140
    const-string v3, "InCallTouchUi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowRespondViaSms : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    if-eqz v0, :cond_10

    .line 3159
    const v0, 0x7f0a02a5

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 3160
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    .line 3162
    const-string v0, "reject_call_with_message_icon_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3163
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->isIconModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3164
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgTextModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3165
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgIconModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3173
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 3194
    :cond_7
    :goto_1
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3196
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3218
    :cond_8
    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    if-eqz v0, :cond_11

    .line 3221
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallEasyImageWidget;->setVisibility(I)V

    .line 3222
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallEasyImageWidget;->reset()V

    .line 3230
    :cond_9
    :goto_2
    const-string v0, "answering_call_in_external_screen"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3231
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "answering_call_in_external_screen"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_12

    move v0, v1

    .line 3234
    :goto_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->isHardKeyboardOpened()Z

    move-result v3

    if-nez v3, :cond_c

    if-nez v0, :cond_c

    .line 3235
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    if-eqz v0, :cond_a

    .line 3236
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallEasyImageWidget;->clearAnimation()V

    .line 3237
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    invoke-virtual {v0, v6}, Lcom/android/phone/IncomingCallEasyImageWidget;->setVisibility(I)V

    .line 3239
    :cond_a
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    if-eqz v0, :cond_b

    .line 3240
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->clearAnimation()V

    .line 3241
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, v6}, Lcom/android/phone/IncomingCallWidget;->setVisibility(I)V

    .line 3243
    :cond_b
    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3245
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    if-eqz v0, :cond_c

    .line 3246
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallEasyRejectWidget;->clearAnimation()V

    .line 3247
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallEasyRejectWidget;->setVisibility(I)V

    .line 3248
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallEasyRejectWidget;->reset()V

    .line 3261
    :cond_c
    :goto_4
    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3263
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v6}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 3267
    :cond_d
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3268
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_e

    .line 3269
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3270
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3271
    const-string v3, "support_easy_mode"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3272
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 3273
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 3288
    :goto_5
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3313
    :cond_e
    :goto_6
    return-void

    .line 3167
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgTextModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3168
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgIconModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 3182
    :cond_10
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 3184
    const-string v0, "automatic_answering_machine_kdi"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3187
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->clearAnimation()V

    .line 3188
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v6}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto/16 :goto_1

    .line 3224
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    if-eqz v0, :cond_9

    .line 3225
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallWidget;->setVisibility(I)V

    .line 3226
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->reset()V

    goto/16 :goto_2

    :cond_12
    move v0, v2

    .line 3231
    goto/16 :goto_3

    .line 3251
    :cond_13
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    if-eqz v0, :cond_14

    .line 3252
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallRejectWidget;->clearAnimation()V

    .line 3253
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallRejectWidget;->setVisibility(I)V

    .line 3254
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallRejectWidget;->reset()V

    .line 3256
    :cond_14
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_c

    .line 3257
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto/16 :goto_4

    .line 3275
    :cond_15
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3276
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 3277
    :cond_16
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 3285
    :goto_7
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 3286
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v4, v4, Lcom/android/phone/InVTCallState;->isShowMe:Z

    if-nez v4, :cond_19

    :goto_8
    invoke-virtual {v3, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_5

    .line 3279
    :cond_17
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_7

    .line 3282
    :cond_18
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_7

    :cond_19
    move v1, v2

    .line 3286
    goto :goto_8

    .line 3290
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method private showPopup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2707
    const-string v0, "showAudioModePopup()..."

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 2709
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    .line 2710
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110003

    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2711
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 2712
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 2714
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 2716
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getInCallMenu()Lcom/android/phone/InCallMenu;

    move-result-object v1

    .line 2717
    invoke-virtual {v1, v0}, Lcom/android/phone/InCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2719
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 2721
    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mPopupVisible:Z

    .line 2722
    return-void
.end method

.method private updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1736
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1737
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1754
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v5

    .line 1757
    const-string v1, "updateInCallControls()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1758
    invoke-virtual {v5}, Lcom/android/phone/InCallControlState;->dumpState()V

    .line 1762
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v6

    .line 1763
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/widget/Button;

    if-eqz v6, :cond_24

    move v1, v2

    :goto_1
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1765
    const-string v1, "support_onehand_operation"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    if-eqz v1, :cond_3

    .line 1766
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v1, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_25

    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOptionRight:Z

    .line 1767
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOptionRight:Z

    if-eqz v1, :cond_26

    move v1, v2

    :goto_3
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1768
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOptionRight:Z

    if-eqz v1, :cond_27

    move v1, v3

    :goto_4
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1770
    :cond_1
    const-string v1, "ssuport_hand_adapt_operation"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getHandAdaptEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1771
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOptionRight:Z

    if-eqz v1, :cond_28

    const/4 v1, 0x4

    :goto_5
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1772
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOptionRight:Z

    if-eqz v1, :cond_29

    move v1, v3

    :goto_6
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1780
    :cond_3
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1781
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1785
    :goto_7
    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v7, :cond_2c

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v7, v8, :cond_2c

    .line 1786
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    if-nez v6, :cond_2b

    move v1, v2

    :goto_8
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1787
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1788
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1805
    :goto_9
    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v1, :cond_5

    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v1, :cond_5

    .line 1806
    if-eq v0, v4, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-ne v0, v1, :cond_30

    .line 1814
    :cond_4
    const-string v1, "InCallTouchUi"

    const-string v7, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v1, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    :cond_5
    :goto_a
    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1828
    const-string v1, "voice_call_recording_menu"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1829
    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    if-eqz v1, :cond_6

    .line 1831
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1832
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1833
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1841
    :cond_6
    :goto_b
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v7

    .line 1842
    invoke-virtual {v7}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v1

    .line 1843
    if-eqz v1, :cond_7

    iget-boolean v8, v5, Lcom/android/phone/InCallControlState;->canRecord:Z

    if-nez v8, :cond_7

    .line 1844
    invoke-virtual {v7}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    move v1, v2

    .line 1848
    :cond_7
    const-string v7, "voice_call_recording_menu"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 1849
    iget-boolean v7, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    if-eqz v7, :cond_8

    .line 1851
    if-eqz v1, :cond_33

    .line 1852
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    const v7, 0x7f0903a9

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 1853
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRecordOffIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9, v7, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1861
    :goto_c
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    if-nez v6, :cond_34

    move v1, v2

    :goto_d
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1862
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canRecord:Z

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1886
    :cond_8
    :goto_e
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canEndCall:Z

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1901
    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v1, :cond_38

    .line 1903
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    const v7, 0x7f0901b5

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 1904
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9, v7, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1906
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1916
    :cond_9
    :goto_f
    const-string v1, "common_volte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1919
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->getvoltehold()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1920
    iput-boolean v2, v5, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    .line 1921
    iput-boolean v2, v5, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 1922
    iput-boolean v2, v5, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    .line 1926
    :cond_a
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1930
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1931
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1936
    const-string v1, "no_receiver_in_call"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1937
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1938
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1941
    :cond_b
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "call_extra_volume"

    invoke-static {v1, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1943
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "show_extra_vol"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1946
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_d

    .line 1947
    const-string v7, "extra_volume"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_39

    if-ne v1, v4, :cond_39

    .line 1949
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1950
    const-string v1, "btn_on_off_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1951
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x82

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1952
    const-string v1, "InCallTouchUi"

    const-string v7, "mExtraVlolButton.setEnabled(true)"

    invoke-static {v1, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1954
    const-string v1, "support_focused_button"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1955
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVolBtnParent:Landroid/view/View;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVolBtnParent:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1959
    :cond_c
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1970
    :cond_d
    :goto_10
    const-string v1, "answering_call_in_external_screen"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1971
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isHardKeyboardOpened()Z

    move-result v7

    .line 1972
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_e

    .line 1973
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_3b

    move v1, v4

    :goto_11
    invoke-virtual {v8, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1975
    :cond_e
    const-string v1, "support_focused_button"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1976
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVolBtnParent:Landroid/view/View;

    if-eqz v1, :cond_f

    .line 1977
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mExtraVolBtnParent:Landroid/view/View;

    if-eqz v7, :cond_3c

    move v1, v4

    :goto_12
    invoke-virtual {v8, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1982
    :cond_f
    const-string v1, "btn_on_off_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1983
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x6e

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1984
    const-string v1, "InCallTouchUi"

    const-string v7, "mSpeakerButton.setEnabled(inCallControlState.speakerEnabled)"

    invoke-static {v1, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1990
    :cond_10
    :goto_13
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1992
    const-string v1, "support_folder_hardkey"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1993
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isHardKeyboardOpened()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1996
    const-string v1, "mSpeakerButton disable by folder close status"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1997
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 2001
    :cond_11
    const-string v1, "btn_on_off_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 2002
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x78

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2003
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 2008
    :cond_12
    :goto_14
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2011
    invoke-direct {p0, v5}, Lcom/android/phone/InCallTouchUi;->updateInCallIcons(Lcom/android/phone/InCallControlState;)V

    .line 2014
    const-string v1, "onscreen_manage_conference"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2015
    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v1, :cond_3f

    .line 2016
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2025
    :cond_13
    :goto_15
    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v1, :cond_41

    .line 2026
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2027
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2028
    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->onHold:Z

    if-eqz v1, :cond_40

    .line 2029
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2030
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2036
    :goto_16
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2037
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2090
    :goto_17
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 2092
    iget-boolean v6, v5, Lcom/android/phone/InCallControlState;->shouldUnholdBlink:Z

    if-eqz v6, :cond_4a

    .line 2093
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v1

    if-nez v1, :cond_15

    .line 2095
    :cond_14
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    const v7, 0x7f05000b

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2101
    :cond_15
    :goto_18
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->updateButtonStateOutsideInCallTouchUi()V

    .line 2102
    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v1, :cond_16

    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v1, :cond_16

    .line 2108
    const-string v1, "InCallTouchUi"

    const-string v6, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v1, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    :cond_16
    const-string v1, "thrway_active_disable"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 2112
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2113
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    iget-boolean v6, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2114
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2118
    :cond_17
    const-string v1, "support_lgt_multi_call"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    if-ne v0, v10, :cond_1a

    .line 2119
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v6, :cond_4c

    .line 2120
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v1

    sget-object v6, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v1, v6, :cond_4b

    .line 2121
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonImage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mMergeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2122
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v6, 0x7f0902a8

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2123
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f80

    invoke-direct {v6, v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2145
    :cond_18
    :goto_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LGT Multi Call ->>  canMulti"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v6, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2147
    sget-boolean v1, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    if-eqz v1, :cond_4e

    .line 2148
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2149
    :cond_19
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2150
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2151
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2152
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 2159
    :cond_1a
    :goto_1a
    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    if-ne v0, v10, :cond_1c

    .line 2161
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2162
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2163
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2165
    :cond_1b
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2166
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2173
    :cond_1c
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2174
    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-nez v1, :cond_1d

    if-ne v0, v10, :cond_4f

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 2177
    :cond_1d
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2196
    :cond_1e
    :goto_1b
    if-ne v0, v10, :cond_1f

    .line 2197
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v0, :cond_1f

    .line 2203
    const-string v0, "InCallTouchUi"

    const-string v1, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    :cond_1f
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2210
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    const v0, 0x7f0a01b2

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a01b6

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v6

    invoke-static {v3, p0, v0, v1, v6}, Lcom/android/phone/RcsShare;->prepareRcsUiElements(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/widget/Button;Z)V

    .line 2213
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_52

    .line 2214
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-static {v0, v1}, Lcom/android/phone/RcsShare;->setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;)V

    .line 2227
    :cond_20
    :goto_1c
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->sk:Lcom/samsung/android/sdk/look/Slook;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/Slook;->getVersionCode()I

    move-result v0

    if-lt v0, v4, :cond_21

    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v0, :cond_21

    .line 2228
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->createAddcallButtonListWidgetFromView(Landroid/view/View;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mWidgetAddcallButton:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    .line 2231
    :cond_21
    const-string v0, "support_nsri_secure"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2232
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isNSRISecureCall()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2233
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 2234
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 2235
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2236
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 2277
    :cond_22
    const-string v0, "At the end of updateInCallControls()."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2278
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->dumpBottomButtonState()V

    .line 2280
    return-void

    .line 1739
    :cond_23
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    goto/16 :goto_0

    :cond_24
    move v1, v3

    .line 1763
    goto/16 :goto_1

    :cond_25
    move v1, v2

    .line 1766
    goto/16 :goto_2

    :cond_26
    move v1, v3

    .line 1767
    goto/16 :goto_3

    :cond_27
    move v1, v2

    .line 1768
    goto/16 :goto_4

    :cond_28
    move v1, v3

    .line 1771
    goto/16 :goto_5

    .line 1772
    :cond_29
    const/4 v1, 0x4

    goto/16 :goto_6

    .line 1783
    :cond_2a
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    goto/16 :goto_7

    :cond_2b
    move v1, v3

    .line 1786
    goto/16 :goto_8

    .line 1789
    :cond_2c
    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v7, :cond_2e

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v7, :cond_2e

    .line 1790
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    if-nez v6, :cond_2d

    move v1, v2

    :goto_1d
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1791
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1792
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_9

    :cond_2d
    move v1, v3

    .line 1790
    goto :goto_1d

    .line 1801
    :cond_2e
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    if-nez v6, :cond_2f

    move v1, v2

    :goto_1e
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1802
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1803
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_9

    :cond_2f
    move v1, v3

    .line 1801
    goto :goto_1e

    .line 1816
    :cond_30
    if-ne v0, v10, :cond_31

    .line 1819
    const-string v1, "updateInCallControls: CDMA: Add and Merge both enabled"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1822
    :cond_31
    const-string v1, "InCallTouchUi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v4}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_a

    .line 1836
    :cond_32
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1837
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1838
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_b

    .line 1856
    :cond_33
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    const v7, 0x7f0903a8

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 1857
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRecordOnIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9, v7, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    :cond_34
    move v1, v3

    .line 1861
    goto/16 :goto_d

    .line 1865
    :cond_35
    if-eqz v1, :cond_36

    .line 1866
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    const v7, 0x7f0903a9

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 1867
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRecordOffIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9, v7, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1875
    :goto_1f
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    if-nez v6, :cond_37

    move v1, v2

    :goto_20
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1876
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canRecord:Z

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1879
    const-string v1, "lawmo_lock"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getLawmoLockState()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1880
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_e

    .line 1870
    :cond_36
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    const v7, 0x7f0903a8

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 1871
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRecordOnIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9, v7, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1f

    :cond_37
    move v1, v3

    .line 1875
    goto :goto_20

    .line 1909
    :cond_38
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    const v7, 0x7f0901b4

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 1910
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9, v7, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1912
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_f

    .line 1962
    :cond_39
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1963
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_10

    .line 1965
    :cond_3a
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_10

    :cond_3b
    move v1, v2

    .line 1973
    goto/16 :goto_11

    :cond_3c
    move v1, v2

    .line 1977
    goto/16 :goto_12

    .line 1988
    :cond_3d
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto/16 :goto_13

    .line 2006
    :cond_3e
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto/16 :goto_14

    .line 2018
    :cond_3f
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_15

    .line 2032
    :cond_40
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iput-boolean v2, v1, Lcom/android/phone/InCallScreen;->hasHoldingBGCall:Z

    .line 2033
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2034
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_16

    .line 2039
    :cond_41
    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v1, :cond_48

    .line 2040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateInCallControls: inCallControlState.canSwap = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", phoneType ="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2041
    if-eq v0, v4, :cond_42

    const/4 v1, 0x3

    if-eq v0, v1, :cond_42

    const/4 v1, 0x5

    if-ne v0, v1, :cond_44

    .line 2044
    :cond_42
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->setHasHoldingBGCall(Z)V

    .line 2045
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2046
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2047
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2061
    :cond_43
    :goto_21
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2062
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_17

    .line 2048
    :cond_44
    if-ne v0, v10, :cond_47

    .line 2049
    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 2050
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2051
    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, "voice_call_recording_menu"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 2052
    :cond_45
    const-string v1, "updateInCallControls: mCdmaSwapButton.setVisibility"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2053
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    if-nez v6, :cond_46

    move v1, v2

    :goto_22
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2054
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_21

    :cond_46
    move v1, v3

    .line 2053
    goto :goto_22

    .line 2059
    :cond_47
    const-string v1, "InCallTouchUi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v4}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_21

    .line 2075
    :cond_48
    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->supportsHold:Z

    if-eqz v1, :cond_49

    .line 2076
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2077
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2078
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2079
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2080
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2081
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_17

    .line 2084
    :cond_49
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2085
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_17

    .line 2097
    :cond_4a
    if-eqz v1, :cond_15

    .line 2098
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    goto/16 :goto_18

    .line 2125
    :cond_4b
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v1

    sget-object v6, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->TRANSFER_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v1, v6, :cond_18

    .line 2126
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonImage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mCallEndIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2127
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v6, 0x7f090860

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2128
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x4000

    invoke-direct {v6, v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_19

    .line 2131
    :cond_4c
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v6, :cond_18

    .line 2132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LGT Multi Call ->> "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2133
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v1

    sget-object v6, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v1, v6, :cond_4d

    .line 2134
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonImage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mMergeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2135
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v6, 0x7f0902a8

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2136
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f80

    invoke-direct {v6, v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_19

    .line 2138
    :cond_4d
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v1

    sget-object v6, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->SWAP_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v1, v6, :cond_18

    .line 2139
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonImage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mSwapIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2140
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v6, 0x7f0902a7

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2141
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f80

    invoke-direct {v6, v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_19

    .line 2154
    :cond_4e
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2155
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1a

    .line 2179
    :cond_4f
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    iget-boolean v6, v5, Lcom/android/phone/InCallControlState;->canHold:Z

    if-nez v6, :cond_50

    iget-boolean v6, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v6, :cond_51

    :cond_50
    move v3, v2

    :cond_51
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1b

    .line 2215
    :cond_52
    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 2216
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_20

    .line 2217
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-static {v0, v1}, Lcom/android/phone/RcsShare;->setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;)V

    goto/16 :goto_1c

    .line 2219
    :cond_53
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_20

    .line 2220
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-static {v0, v1}, Lcom/android/phone/RcsShare;->setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;)V

    goto/16 :goto_1c
.end method

.method private updateInCallIcons(Lcom/android/phone/InCallControlState;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 2340
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2341
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2343
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_12

    .line 2350
    :goto_0
    const/4 v1, 0x0

    .line 2352
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2353
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 2354
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 2359
    :goto_1
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v3, v3, Lcom/android/phone/InCallUiState;->showDialpad:Z

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_8

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_8

    :cond_0
    move v3, v5

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2363
    if-eqz v1, :cond_1

    .line 2364
    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v3, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v1, v1, Lcom/android/phone/InCallUiState;->showDialpad:Z

    if-nez v1, :cond_1

    .line 2365
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2369
    :cond_1
    const-string v1, "volume_panel"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2370
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mVolumeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v1, v1, Lcom/android/phone/InCallUiState;->showDialpad:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v6, :cond_9

    :cond_2
    move v1, v5

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2373
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 2374
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->hideVolumePanel()V

    .line 2376
    :cond_3
    const-string v1, "support_easy_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    if-eqz v1, :cond_4

    .line 2377
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2378
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2379
    if-eq v0, v7, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 2391
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    .line 2392
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2398
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.movial.ipphone.IPPhone"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2400
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2411
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    const v1, 0x7f020137

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2442
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2443
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_6

    .line 2444
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2450
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.movial.ipphone.IPPhone"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2452
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2460
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    const v1, 0x7f020148

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2512
    :cond_6
    :goto_6
    return-void

    .line 2356
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    goto/16 :goto_1

    :cond_8
    move v3, v4

    .line 2359
    goto/16 :goto_2

    :cond_9
    move v1, v4

    .line 2370
    goto/16 :goto_3

    .line 2382
    :cond_a
    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 2383
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainerEasyMode:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2384
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainerEasyMode:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v1, v1, Lcom/android/phone/InCallUiState;->showDialpad:Z

    if-nez v1, :cond_b

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v1, :cond_c

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v1, :cond_c

    :cond_b
    move v4, v5

    :cond_c
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 2387
    :cond_d
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v7}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_4

    .line 2414
    :cond_e
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    const v1, 0x7f020463

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 2417
    :catch_0
    move-exception v0

    .line 2418
    const-string v0, "IPPhone doesn\'t exists"

    invoke-direct {p0, v0, v7}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2463
    :cond_f
    :try_start_3
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    const v1, 0x7f020479

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    .line 2466
    :catch_1
    move-exception v0

    .line 2467
    const-string v0, "IPPhone doesn\'t exists"

    invoke-direct {p0, v0, v7}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    goto :goto_6

    .line 2500
    :cond_10
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_11

    .line 2501
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 2502
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 2503
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_12
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private updateToVideoCallUi(Lcom/android/internal/telephony/Call;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 1323
    const-string v0, "- updateToVideoCallUi"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1324
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1325
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1326
    const-string v0, "enhanced_driving_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mInCallButtonViewDrivingModeByExtra:Z

    if-eqz v0, :cond_5

    .line 1329
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    const v1, 0x7f0a01ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1331
    if-eqz v0, :cond_0

    .line 1332
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1336
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1337
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1338
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1342
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1343
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallTouchUi;->setVtInCallButtonsViewVisibility(Landroid/view/View;Landroid/view/View;)V

    .line 1345
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_1

    .line 1346
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, v6}, Lcom/android/phone/VtInCallButtonsView;->setVisibility(I)V

    .line 1347
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_2

    .line 1348
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, v6}, Lcom/android/phone/VtInCallButtonsView;->setVisibility(I)V

    .line 1377
    :cond_2
    :goto_0
    return-void

    .line 1350
    :cond_3
    sput-boolean v7, Lcom/android/phone/PhoneUtils;->mInCallButtonViewDrivingModeByExtra:Z

    .line 1352
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallTouchUi;->setVtInCallButtonsViewVisibility(Landroid/view/View;Landroid/view/View;)V

    .line 1354
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1355
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1356
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1357
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1360
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallTouchUi;->setVtInCallButtonsViewVisibility(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 1364
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_7

    .line 1365
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, v7}, Lcom/android/phone/VtInCallButtonsView;->setVisibility(I)V

    .line 1367
    :cond_7
    const-string v0, "enhanced_driving_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mInCallButtonViewDrivingModeByExtra:Z

    if-eqz v0, :cond_8

    .line 1370
    sput-boolean v7, Lcom/android/phone/PhoneUtils;->mInCallButtonViewDrivingModeByExtra:Z

    .line 1371
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1372
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1374
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateToVoiceCallUi(Lcom/android/internal/telephony/Call;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1380
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, v7}, Lcom/android/phone/VtInCallButtonsView;->setVisibility(I)V

    .line 1383
    :cond_0
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1384
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_1

    .line 1385
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, v7}, Lcom/android/phone/VtInCallButtonsView;->setVisibility(I)V

    .line 1387
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1388
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1391
    :cond_2
    const-string v0, "enhanced_driving_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mInCallButtonViewDrivingModeByExtra:Z

    if-eqz v0, :cond_8

    .line 1394
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1395
    if-eq v0, v4, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 1399
    :cond_3
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1400
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1401
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    const v1, 0x7f0a01ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1402
    if-eqz v0, :cond_4

    .line 1403
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1407
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1408
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1409
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1414
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1415
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1416
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1431
    :goto_0
    return-void

    .line 1418
    :cond_5
    sput-boolean v6, Lcom/android/phone/PhoneUtils;->mInCallButtonViewDrivingModeByExtra:Z

    .line 1419
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1420
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1422
    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 1423
    sput-boolean v6, Lcom/android/phone/PhoneUtils;->mInCallButtonViewDrivingModeByExtra:Z

    goto :goto_0

    .line 1426
    :cond_7
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    .line 1429
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public createAddcallButtonListWidgetFromView(Landroid/view/View;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 3613
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3614
    const-string v1, "MIME_TYPE"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3616
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    new-instance v2, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;

    invoke-direct {v2, p1, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x2

    invoke-direct {v1, p1, v2, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V

    .line 3618
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddcallCallback:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setItemSelectListener(Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;)V

    .line 3619
    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setGravity(I)V

    .line 3620
    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setDirection(I)V

    .line 3621
    const/16 v0, 0x190

    const/16 v2, 0x96

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setPosition(II)V

    .line 3623
    return-object v1
.end method

.method public dismissAudioModePopup()V
    .locals 1

    .prologue
    .line 2735
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 2736
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2737
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    .line 2738
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mPopupVisible:Z

    .line 2740
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 3442
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3443
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3444
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 3447
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getTouchUiHeight()I
    .locals 4

    .prologue
    const v3, 0x7f0e0010

    const/4 v0, 0x0

    .line 2807
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v1}, Lcom/android/phone/VtInCallButtonsView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 2810
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 2854
    :cond_0
    :goto_0
    return v0

    .line 2812
    :cond_1
    const-string v1, "common_volte_vt_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2813
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 2817
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 2819
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v1}, Lcom/android/phone/VtInCallButtonsView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2824
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2830
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2831
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2832
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mResizeHidePatchForInc:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2833
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 2834
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 2835
    sub-int/2addr v0, v1

    goto/16 :goto_0

    .line 2843
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 2846
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 2852
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 2854
    goto/16 :goto_0
.end method

.method public getTouchUiWidth()I
    .locals 2

    .prologue
    .line 2858
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0}, Lcom/android/phone/VtInCallButtonsView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2861
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 2863
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideVolumePanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3567
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->showVolumePanelForVT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3576
    :goto_0
    return-void

    .line 3571
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3572
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumePanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 3573
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumePanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3574
    :cond_1
    iput-boolean v2, p0, Lcom/android/phone/InCallTouchUi;->mIsShownVolumeBarbyVolKey:Z

    .line 3575
    iput-boolean v2, p0, Lcom/android/phone/InCallTouchUi;->mIschangedbyCall:Z

    goto :goto_0
.end method

.method public hideWidgetAddcallButton()V
    .locals 2

    .prologue
    .line 421
    const-string v0, "hideWidgetAddcallButton()"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 422
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mWidgetAddcallButton:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mWidgetAddcallButton:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->hide()V

    .line 424
    :cond_0
    return-void
.end method

.method isCallRejected()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3002
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    const-string v1, "com.android.phone.auto_answer_memo_pref"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3003
    const-string v1, "isCallRejected"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3004
    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->isCallRejected:Z

    .line 3005
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x82

    const/16 v7, 0x8

    const-wide/16 v5, 0x1f4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1462
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionBtnParent:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 1463
    const v0, 0x7f0a01b8

    .line 1466
    :goto_0
    const-string v1, "volume_panel"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1467
    const v1, 0x7f0a01c0

    if-eq v0, v1, :cond_0

    .line 1468
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->hideVolumePanel()V

    .line 1471
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1473
    sparse-switch v0, :sswitch_data_0

    .line 1644
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1647
    :cond_1
    :goto_1
    return-void

    .line 1465
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    goto :goto_0

    .line 1507
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 1518
    const v1, 0x7f0a01af

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 1531
    :sswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "com.movial.ipphone.IPPhone"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1532
    const v0, 0x7f090380

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToast(I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1536
    :catch_0
    move-exception v0

    .line 1537
    const-string v0, "IPPhone doesn\'t exists"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1534
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1552
    :sswitch_2
    const-string v1, "btn_on_off_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1553
    const-string v1, "InCallTouchUi"

    const-string v2, "###SPEAKER_ON_OFF_DELAY"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1554
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 1555
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1558
    :cond_4
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 1561
    :sswitch_3
    const-string v1, "btn_cdma_swap_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1562
    const-string v1, "InCallTouchUi"

    const-string v2, "###SWAP_TOGGLE_DELAY"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1563
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 1564
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x96

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1566
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 1569
    :sswitch_4
    const-string v1, "btn_on_off_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1571
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 1572
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1575
    :cond_6
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1576
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 1580
    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showPopup()V

    goto/16 :goto_1

    .line 1587
    :sswitch_6
    const v0, 0x7f0a01c8

    .line 1589
    :sswitch_7
    const-string v1, "extra_volume_on_off_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1590
    const-string v1, "InCallTouchUi"

    const-string v2, "###EXTRA_VOLUME_ON_OFF_DELAY"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1591
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_7

    .line 1592
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 1594
    :cond_7
    const-string v1, "support_focused_button"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1595
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVolBtnParent:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 1598
    :cond_8
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1602
    :cond_9
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "com.movial.ipphone.IPPhone"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1603
    const v0, 0x7f09037f

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToast(I)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 1607
    :catch_1
    move-exception v0

    .line 1608
    const-string v0, "IPPhone doesn\'t exists"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1605
    :cond_a
    :try_start_3
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 1623
    :sswitch_8
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1624
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1625
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v4}, Lcom/android/phone/InCallScreen;->setOneHandDialpadDirection(Z)V

    .line 1626
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1629
    :sswitch_9
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1630
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1631
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->setOneHandDialpadDirection(Z)V

    .line 1632
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1635
    :sswitch_a
    const-string v0, "volume_panel"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1636
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumePanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v7, :cond_b

    .line 1637
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->showVolumePanel()V

    goto/16 :goto_1

    .line 1639
    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->hideVolumePanel()V

    goto/16 :goto_1

    .line 1473
    :sswitch_data_0
    .sparse-switch
        0x7f0a0072 -> :sswitch_0
        0x7f0a0099 -> :sswitch_2
        0x7f0a009a -> :sswitch_0
        0x7f0a0124 -> :sswitch_0
        0x7f0a01ad -> :sswitch_0
        0x7f0a01ae -> :sswitch_0
        0x7f0a01af -> :sswitch_0
        0x7f0a01b0 -> :sswitch_3
        0x7f0a01b1 -> :sswitch_0
        0x7f0a01b2 -> :sswitch_0
        0x7f0a01b3 -> :sswitch_0
        0x7f0a01b4 -> :sswitch_0
        0x7f0a01b5 -> :sswitch_4
        0x7f0a01b6 -> :sswitch_0
        0x7f0a01b8 -> :sswitch_1
        0x7f0a01ba -> :sswitch_0
        0x7f0a01bd -> :sswitch_0
        0x7f0a01be -> :sswitch_0
        0x7f0a01bf -> :sswitch_0
        0x7f0a01c0 -> :sswitch_a
        0x7f0a01c4 -> :sswitch_0
        0x7f0a01c7 -> :sswitch_6
        0x7f0a01c8 -> :sswitch_7
        0x7f0a01c9 -> :sswitch_5
        0x7f0a01ca -> :sswitch_0
        0x7f0a01d2 -> :sswitch_0
        0x7f0a01d5 -> :sswitch_9
        0x7f0a01d6 -> :sswitch_8
        0x7f0a01ea -> :sswitch_0
        0x7f0a01f3 -> :sswitch_0
        0x7f0a01f7 -> :sswitch_0
        0x7f0a01f8 -> :sswitch_0
        0x7f0a01f9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .parameter

    .prologue
    .line 2781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onDismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 2782
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mPopupVisible:Z

    .line 2783
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/16 v6, 0x19

    const/4 v4, 0x1

    const v3, 0x7f0a02cf

    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 470
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InCallTouchUi onFinishInflate(this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 477
    const v0, 0x7f0a01eb

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallWidget;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    .line 478
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingCallWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallWidget$OnTriggerListener;)V

    .line 480
    const v0, 0x7f0a01ec

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallEasyImageWidget;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    .line 481
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEasymodeTrigerListener:Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallEasyImageWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;)V

    .line 485
    :cond_0
    const-string v0, "reject_call_folder_closed"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    const v0, 0x7f0a01ed

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallRejectWidget;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    .line 487
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingCallRejectWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallWidget$OnTriggerListener;)V

    .line 488
    :cond_1
    const v0, 0x7f0a01ee

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallEasyRejectWidget;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    .line 489
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingCallEasyRejectWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallWidget$OnTriggerListener;)V

    .line 492
    :cond_2
    const v0, 0x7f0a02cb

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    .line 493
    const v0, 0x7f0a02ce

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    .line 495
    const-string v0, "remove_reject_message"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "automatic_answering_machine_kdi"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 497
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, v5, v5, v5, v5}, Lcom/android/phone/IncomingCallWidget;->setPaddingRelative(IIII)V

    .line 500
    :cond_3
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 501
    const v0, 0x7f0a00a2

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;

    .line 504
    :cond_4
    const-string v0, "change_message_icon_for_vzw"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 505
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    .line 506
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    const v1, 0x7f020438

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 512
    :cond_5
    :goto_0
    const-string v0, "reject_call_with_message_icon_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 513
    const v0, 0x7f0a02cd

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgContent:Landroid/view/ViewGroup;

    .line 514
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgContent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 515
    const v0, 0x7f0a02ac

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgTextModeLayout:Landroid/view/ViewGroup;

    .line 516
    const v0, 0x7f0a02b3

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgIconModeLayout:Landroid/view/ViewGroup;

    .line 520
    :cond_6
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 521
    const v0, 0x7f0a02d0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 522
    const v1, 0x7f090795

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 525
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    .line 526
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 527
    const v0, 0x7f0a02d0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 528
    if-eqz v0, :cond_8

    .line 529
    const-string v1, "automatic_answering_machine_kdi"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 530
    const v1, 0x7f0908fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 535
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 542
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/android/phone/InCallTouchUi$3;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$3;-><init>(Lcom/android/phone/InCallTouchUi;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 557
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/android/phone/InCallTouchUi$4;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$4;-><init>(Lcom/android/phone/InCallTouchUi;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 582
    const-string v0, "remove_reject_message"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "automatic_answering_machine_kdi"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 584
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 590
    :cond_a
    const v0, 0x7f0a01ef

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 591
    const v0, 0x7f0a01ab

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    .line 592
    const v0, 0x7f0a01cf

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    .line 593
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 594
    const v0, 0x7f0a01d0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    .line 596
    :cond_b
    const v0, 0x7f0a01f2

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewDrivingMode:Landroid/view/View;

    .line 597
    const v0, 0x7f0a01f6

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    .line 598
    const v0, 0x7f0a01b7

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainer:Landroid/view/View;

    .line 599
    const v0, 0x7f0a01d4

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainerEasyMode:Landroid/view/View;

    .line 602
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 604
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainer:Landroid/view/View;

    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 608
    :cond_c
    const v0, 0x7f0a016d

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EndCallButtonsView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    .line 609
    const v0, 0x7f0a0328

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/VtInCallButtonsView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    .line 611
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 612
    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 613
    const v0, 0x7f0a033c

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/VtInCallButtonsView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    .line 622
    :cond_d
    :goto_3
    new-instance v2, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v2}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    .line 623
    new-instance v1, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v1, v4, v6}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>(II)V

    .line 624
    new-instance v3, Lcom/android/phone/SmallerHitTargetTouchListener;

    const/4 v0, 0x2

    invoke-direct {v3, v0, v6}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>(II)V

    .line 628
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01ad

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    .line 629
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 630
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 633
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01af

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    .line 634
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 635
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 637
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01ae

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/widget/Button;

    .line 638
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 639
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 641
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01b4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    .line 642
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 643
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01ca

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCancelButton:Landroid/view/View;

    .line 645
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 646
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 648
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01d2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCancelButton_qcif:Landroid/view/View;

    .line 649
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCancelButton_qcif:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 650
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCancelButton_qcif:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 652
    :cond_e
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01b3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    .line 653
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 654
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 656
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 657
    const v0, 0x7f0a01e9

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mResizeHidePatchForInc:Landroid/view/View;

    .line 658
    const v0, 0x7f0a01ea

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    .line 659
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_f

    .line 660
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 661
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    :cond_f
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 666
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a0124

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    .line 667
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 668
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 671
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01c8

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    .line 672
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_10

    .line 673
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 674
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 675
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 676
    const-string v0, "disable_button_sound_effects_extra_volume"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 677
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    .line 691
    :cond_10
    :goto_4
    const-string v0, "support_focused_button"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 692
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01c7

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVolBtnParent:Landroid/view/View;

    .line 693
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVolBtnParent:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 694
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVolBtnParent:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVolBtnParent:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 699
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a0099

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 700
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 701
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 703
    const-string v0, "disable_button_sound_effects"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 704
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    .line 707
    :cond_12
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    .line 708
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 709
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 714
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 715
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 716
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    if-eqz v0, :cond_14

    .line 719
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    .line 720
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 721
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 722
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 725
    :cond_13
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    .line 726
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 727
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 728
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 733
    :cond_14
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    .line 735
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionView:Landroid/view/View;

    .line 737
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_16

    .line 738
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 740
    const-string v0, "disable_button_sound_effects_noise_reduction"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 741
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    .line 743
    :cond_15
    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "support_focused_button"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 744
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionBtnParent:Landroid/view/View;

    .line 745
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionBtnParent:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 746
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionBtnParent:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    :cond_16
    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 753
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>(I)V

    move-object v1, v0

    .line 760
    :goto_5
    const-string v0, "onscreen_manage_conference"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 761
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01ba

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    .line 762
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 763
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 764
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 767
    :cond_17
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01bc

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    .line 768
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01bd

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    .line 769
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 771
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 772
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01be

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    .line 773
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 774
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 775
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 776
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01bf

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    .line 777
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 778
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 779
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 782
    const-string v0, "support_lgt_multi_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 783
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    .line 784
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/view/View;

    .line 785
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonImage:Landroid/widget/ImageView;

    .line 786
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    .line 787
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/view/View;

    if-eqz v0, :cond_18

    .line 788
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 793
    :cond_18
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020461

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCallEndIcon:Landroid/graphics/drawable/Drawable;

    .line 794
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02048a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapIcon:Landroid/graphics/drawable/Drawable;

    .line 795
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020470

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeIcon:Landroid/graphics/drawable/Drawable;

    .line 799
    :cond_19
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    .line 800
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 801
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 803
    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 804
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    if-eqz v0, :cond_1a

    .line 806
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    .line 807
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 808
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 809
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 819
    :cond_1a
    :goto_6
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    .line 820
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 821
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 822
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 824
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020482

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordOnIcon:Landroid/graphics/drawable/Drawable;

    .line 825
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02047f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordOffIcon:Landroid/graphics/drawable/Drawable;

    .line 827
    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    if-eqz v0, :cond_28

    .line 828
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02045b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 829
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020467

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 830
    const-string v0, "voice_call_recording_easy_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 831
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020481

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordOnIcon:Landroid/graphics/drawable/Drawable;

    .line 832
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02047e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordOffIcon:Landroid/graphics/drawable/Drawable;

    .line 844
    :cond_1b
    :goto_7
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAnswerButton:Landroid/view/View;

    .line 845
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAnswerButtonTextView:Landroid/widget/TextView;

    .line 846
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAnswerButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 847
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAnswerButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 848
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a0072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectButton:Landroid/view/View;

    .line 849
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectButtonTextView:Landroid/widget/TextView;

    .line 850
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 851
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 853
    const-string v0, "volume_panel"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 854
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumeButton:Landroid/widget/ImageButton;

    .line 855
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 856
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 857
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 858
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 859
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumePanel:Landroid/view/ViewGroup;

    .line 862
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 863
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    const v1, 0x7f0a01f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAcceptVoiceButton:Landroid/widget/Button;

    .line 864
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAcceptVoiceButton:Landroid/widget/Button;

    if-eqz v0, :cond_1d

    .line 865
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAcceptVoiceButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 866
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAcceptVoiceButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 868
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    const v1, 0x7f0a01f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAcceptVideoButton:Landroid/widget/Button;

    .line 869
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAcceptVideoButton:Landroid/widget/Button;

    if-eqz v0, :cond_1e

    .line 870
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAcceptVideoButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 871
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAcceptVideoButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 873
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    const v1, 0x7f0a01f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtRejectButton:Landroid/widget/Button;

    .line 874
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtRejectButton:Landroid/widget/Button;

    if-eqz v0, :cond_1f

    .line 875
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtRejectButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 876
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtRejectButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 900
    :cond_1f
    return-void

    .line 507
    :cond_20
    const-string v0, "change_message_icon_for_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 508
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    .line 509
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    const v1, 0x7f020437

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 532
    :cond_21
    const v1, 0x7f0908d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 537
    :cond_22
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 538
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 615
    :cond_23
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 616
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    goto/16 :goto_3

    .line 618
    :cond_24
    const v0, 0x7f0a033b

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/VtInCallButtonsView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    goto/16 :goto_3

    .line 681
    :cond_25
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01c8

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    .line 682
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_10

    .line 683
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 685
    const-string v0, "disable_button_sound_effects_extra_volume"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 686
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    goto/16 :goto_4

    .line 756
    :cond_26
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>(I)V

    move-object v1, v0

    goto/16 :goto_5

    .line 812
    :cond_27
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    .line 813
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 814
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_6

    .line 834
    :cond_28
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    if-eqz v0, :cond_29

    .line 835
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02045d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 836
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020469

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 837
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020483

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordOnIcon:Landroid/graphics/drawable/Drawable;

    .line 838
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020480

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordOffIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_7

    .line 840
    :cond_29
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02045c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 841
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020468

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_7
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 3352
    return-void
.end method

.method public onIncomingRing()V
    .locals 0

    .prologue
    .line 3365
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 1688
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1727
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onMenuItemClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 2764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  title: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 2767
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v1, :cond_0

    .line 2768
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMenuItemClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), but null mInCallScreen!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2772
    :goto_0
    return v0

    .line 2771
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getInCallMenu()Lcom/android/phone/InCallMenu;

    move-result-object v0

    .line 2772
    invoke-virtual {v0, p1}, Lcom/android/phone/InCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger(whichHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 2885
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 2886
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrigger("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") from incoming-call widget, but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2980
    :goto_0
    return-void

    .line 2899
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2963
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    .line 2901
    :pswitch_0
    const-string v0, "ANSWER_CALL_ID: answer!"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 2903
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2904
    invoke-static {}, Lcom/android/phone/PhoneUtils;->stopAnswerMemoRecording()V

    .line 2907
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 2914
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    goto :goto_0

    .line 2918
    :pswitch_1
    const-string v0, "SEND_SMS_ID!"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 2919
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 2947
    :pswitch_2
    const-string v0, "DECLINE_CALL_ID: reject!"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 2949
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2950
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2951
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallTouchUi;->setCallRejected(Z)V

    .line 2953
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtils;->stopAnswerMemoRecording()V

    .line 2956
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 2959
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    goto :goto_0

    .line 2899
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 2752
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mPopupVisible:Z

    if-eqz v0, :cond_0

    .line 2754
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2756
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showPopup()V

    .line 2758
    :cond_0
    return-void
.end method

.method setCallRejected(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2993
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    const-string v1, "com.android.phone.auto_answer_memo_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2994
    const-string v1, "isCallRejected"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2995
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2996
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 419
    return-void
.end method

.method public setLeftOneHandModeArrow()V
    .locals 2

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1666
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1667
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1668
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v0}, Lcom/android/phone/EndCallButtonsView;->setLeftOneHandModeArrow()V

    .line 1669
    return-void
.end method

.method public setRightOneHandModeArrow()V
    .locals 2

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1657
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1658
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1659
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1660
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v0}, Lcom/android/phone/EndCallButtonsView;->setRightOneHandModeArrow()V

    .line 1661
    return-void
.end method

.method public setVolume(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 3496
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallTouchUi;->setVolumeForVT(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3528
    :goto_0
    return-void

    .line 3502
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    .line 3503
    if-eqz v0, :cond_5

    .line 3504
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    .line 3508
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 3509
    if-ge p1, v5, :cond_3

    .line 3510
    const-string v3, "InCallTouchUi"

    const-string v4, "Set force progress level 1 for call volume"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 3517
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-ne p1, v2, :cond_4

    .line 3518
    const-string v2, "InCallTouchUi"

    const-string v3, "Extra vol on max"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const v3, 0x7f0202ea

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgressDrawable(I)V

    .line 3524
    :goto_3
    iput-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->mIsShownVolumeBarbyVolKey:Z

    .line 3525
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3526
    iput-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->mIschangedbyCall:Z

    .line 3527
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->showVolumePanel()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3504
    goto :goto_1

    .line 3512
    :cond_3
    if-le p1, v2, :cond_1

    .line 3513
    const-string v3, "InCallTouchUi"

    const-string v4, "Set force progress level max for call volume"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 3514
    goto :goto_2

    .line 3521
    :cond_4
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const v3, 0x7f0202e9

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgressDrawable(I)V

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public setVolumeForVT(I)Z
    .locals 2
    .parameter "progress"

    .prologue
    .line 3579
    const-string v1, "common_volte_vt_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3580
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->getValidCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3581
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v1, :cond_0

    .line 3582
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v1, p1}, Lcom/android/phone/VtInCallButtonsView;->setVolume(I)V

    .line 3583
    const/4 v1, 0x1

    .line 3586
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected showShowMeButton()V
    .locals 1

    .prologue
    .line 3649
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_0

    .line 3650
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0}, Lcom/android/phone/VtInCallButtonsView;->showShowMeButton()V

    .line 3651
    :cond_0
    return-void
.end method

.method public showVolumePanel()V
    .locals 6

    .prologue
    const/16 v5, 0x8c

    const/4 v1, 0x0

    .line 3534
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->showVolumePanelForVT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3564
    :goto_0
    return-void

    .line 3540
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    .line 3541
    if-eqz v0, :cond_3

    .line 3542
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    .line 3545
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 3546
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 3548
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v2, v0, :cond_2

    .line 3549
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const v4, 0x7f0202ea

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgressDrawable(I)V

    .line 3554
    :goto_2
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setMax(I)V

    .line 3555
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 3556
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 3557
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->invalidate()V

    .line 3559
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumePanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3560
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->dismissVolumePanel()V

    .line 3561
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3562
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3542
    goto :goto_1

    .line 3551
    :cond_2
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const v4, 0x7f0202e9

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgressDrawable(I)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public showVolumePanelForVT()Z
    .locals 2

    .prologue
    .line 3590
    const-string v1, "common_volte_vt_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3591
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->getValidCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3592
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v1, :cond_0

    .line 3593
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v1}, Lcom/android/phone/VtInCallButtonsView;->showVolumePanel()V

    .line 3594
    const/4 v1, 0x1

    .line 3597
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 11
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v10, 0x8

    .line 911
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_1

    .line 912
    const-string v0, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1306
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 918
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreenActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 919
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_2

    .line 920
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 923
    :cond_2
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 924
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    move-object v2, v0

    .line 928
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateState: current state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 935
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 936
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 937
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    move-object v3, v0

    move-object v4, v1

    .line 942
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 945
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 946
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 947
    const-string v0, "- updateState: return as phone is in answer memo mode..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 948
    const-string v0, "enhanced_driving_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 950
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 951
    invoke-direct {p0, v4}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    .line 969
    :goto_3
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v10}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto/16 :goto_0

    .line 926
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 939
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 940
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    move-object v3, v0

    move-object v4, v1

    goto :goto_2

    .line 953
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 954
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 955
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 956
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_8

    .line 957
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, v10}, Lcom/android/phone/VtInCallButtonsView;->setVisibility(I)V

    .line 959
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v0, v10}, Lcom/android/phone/EndCallButtonsView;->setVisibility(I)V

    .line 960
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 961
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 964
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 966
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 967
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 973
    :cond_a
    const v0, 0x7f0a02d0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 974
    const v1, 0x7f0a02cd

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/RejectCallWithMsgContent;

    .line 975
    if-eqz v0, :cond_b

    .line 976
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getIsAnsweringMessageDisable()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 977
    const v8, 0x7f090298

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 978
    if-eqz v1, :cond_b

    .line 979
    invoke-virtual {v1}, Lcom/android/phone/RejectCallWithMsgContent;->disableAnsweringMessage()V

    .line 1003
    :cond_b
    :goto_4
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1011
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "support_incomingcall_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_40

    .line 1013
    :cond_c
    const-string v0, "- updateState: RINGING!  Showing incoming call controls..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    move v0, v6

    .line 1047
    :goto_5
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isQuickResponseDialogShowing()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1048
    const-string v0, "updateState: quickResponse visible. Cancel showing incoming call controls."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    move v0, v5

    move v1, v5

    .line 1066
    :goto_6
    if-eqz v1, :cond_13

    if-eqz v0, :cond_13

    .line 1067
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 983
    :cond_d
    if-eqz v0, :cond_e

    .line 984
    const-string v8, "automatic_answering_machine_kdi"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 985
    const v8, 0x7f0908fc

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 990
    :cond_e
    :goto_7
    if-eqz v1, :cond_b

    .line 991
    invoke-virtual {v1}, Lcom/android/phone/RejectCallWithMsgContent;->enableAnsweringMessage()V

    goto :goto_4

    .line 987
    :cond_f
    const v8, 0x7f0908d4

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7

    .line 1053
    :cond_10
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mResizeHidePatchForInc:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 1054
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mResizeHidePatchForInc:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1055
    :cond_11
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->okToShowInCallControls()Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v6

    move v1, v5

    .line 1056
    goto :goto_6

    .line 1058
    :cond_12
    const-string v0, "- updateState: NOT OK to show touch UI; disabling..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    move v0, v5

    move v1, v5

    goto :goto_6

    .line 1083
    :cond_13
    if-eqz v0, :cond_34

    .line 1084
    const-string v0, "- updateState: showing in-call controls..."

    invoke-direct {p0, v0, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1087
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1088
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->isCallRejected()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1090
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v0, :cond_14

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v8, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v8, :cond_15

    :cond_14
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v0, :cond_27

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v8, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v8, :cond_27

    .line 1094
    :cond_15
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1108
    :goto_8
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v0, :cond_2b

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v8, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v8, :cond_2b

    .line 1117
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1118
    const-string v0, "Don\'t show end-call buttons"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1125
    :cond_16
    :goto_9
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    :cond_17
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1127
    :cond_18
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, v10}, Lcom/android/phone/VtInCallButtonsView;->setVisibility(I)V

    .line 1128
    :cond_19
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1129
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, v10}, Lcom/android/phone/VtInCallButtonsView;->setVisibility(I)V

    .line 1131
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1134
    :cond_1c
    const-string v0, "support_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1136
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1137
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1182
    :cond_1e
    :goto_a
    if-eqz v1, :cond_3c

    .line 1183
    const-string v0, "- updateState: showing incoming call widget..."

    invoke-direct {p0, v0, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1184
    const-string v0, "enhanced_driving_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1187
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 1188
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1189
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, v10}, Lcom/android/phone/VtInCallButtonsView;->setVisibility(I)V

    .line 1191
    :cond_1f
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1192
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, v10}, Lcom/android/phone/VtInCallButtonsView;->setVisibility(I)V

    .line 1193
    :cond_20
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_22

    .line 1194
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1196
    :cond_21
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1197
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0e0050

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1198
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1199
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1200
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallState;->isShowMe:Z

    if-nez v0, :cond_35

    move v0, v6

    :goto_b
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1207
    :cond_22
    :goto_c
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v0, v10}, Lcom/android/phone/EndCallButtonsView;->setVisibility(I)V

    .line 1208
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1209
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1211
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    if-eqz v0, :cond_23

    .line 1212
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1216
    :cond_23
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1217
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->isCallRejected()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1219
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1227
    :goto_d
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1229
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setVoicetalkLocale()Ljava/util/Locale;

    move-result-object v0

    .line 1231
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f080007

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1233
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    .line 1235
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAnswerButtonTextView:Landroid/widget/TextView;

    aget-object v4, v1, v5

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectButtonTextView:Landroid/widget/TextView;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    :cond_24
    :goto_e
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v5}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 1283
    :goto_f
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v0, :cond_3d

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v0, :cond_3d

    .line 1293
    :goto_10
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "hw_home_key"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1296
    :cond_25
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1299
    :cond_26
    const-string v0, "disable_button_bt_touch_sound"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1301
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    goto/16 :goto_0

    .line 1097
    :cond_27
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 1101
    :cond_28
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 1104
    :cond_29
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 1120
    :cond_2a
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v0, p1}, Lcom/android/phone/EndCallButtonsView;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 1121
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v0}, Lcom/android/phone/EndCallButtonsView;->getVisibility()I

    move-result v0

    if-ne v0, v10, :cond_16

    .line 1122
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x64

    const-wide/16 v8, 0x3e8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_9

    .line 1140
    :cond_2b
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1141
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isOnehandModeOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    .line 1142
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->prevIsOnehandOn:Z

    iget-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    if-eq v0, v8, :cond_2c

    .line 1143
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->prevIsOnehandOn:Z

    .line 1144
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUiLayout()V

    .line 1148
    :cond_2c
    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1149
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    .line 1150
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mPrevIsEasyModeOn:Z

    iget-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    if-eq v0, v8, :cond_2d

    .line 1151
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mPrevIsEasyModeOn:Z

    .line 1152
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUiLayout()V

    .line 1156
    :cond_2d
    invoke-direct {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    .line 1157
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    if-eqz v0, :cond_2e

    .line 1158
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    :cond_2e
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1161
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_2f

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1162
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, p1}, Lcom/android/phone/VtInCallButtonsView;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 1171
    :cond_2f
    :goto_11
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1172
    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->updateToVideoCallUi(Lcom/android/internal/telephony/Call;)V

    .line 1176
    :goto_12
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v0, v10}, Lcom/android/phone/EndCallButtonsView;->setVisibility(I)V

    goto/16 :goto_a

    .line 1165
    :cond_30
    invoke-static {v7}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1166
    :cond_31
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, p1}, Lcom/android/phone/VtInCallButtonsView;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_11

    .line 1168
    :cond_32
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, p1}, Lcom/android/phone/VtInCallButtonsView;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_11

    .line 1174
    :cond_33
    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->updateToVoiceCallUi(Lcom/android/internal/telephony/Call;)V

    goto :goto_12

    .line 1179
    :cond_34
    const-string v0, "- updateState: HIDING in-call controls..."

    invoke-direct {p0, v0, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1180
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    :cond_35
    move v0, v5

    .line 1200
    goto/16 :goto_b

    .line 1202
    :cond_36
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v10}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_c

    .line 1221
    :cond_37
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 1224
    :cond_38
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 1237
    :cond_39
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1238
    const-string v0, "it\'s a imsvideo call"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1239
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1240
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 1241
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1242
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0, v4}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1243
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    .line 1244
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v5}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto/16 :goto_e

    .line 1247
    :cond_3a
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1248
    invoke-direct {p0, v4}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_e

    .line 1251
    :cond_3b
    const-string v0, "it\'s not a imsvideo call"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1252
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1253
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1254
    invoke-direct {p0, v4}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_e

    .line 1266
    :cond_3c
    const-string v0, "- updateState: HIDING incoming call widget..."

    invoke-direct {p0, v0, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1267
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 1272
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v6}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto/16 :goto_f

    .line 1290
    :cond_3d
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->dismissAudioModePopup()V

    goto/16 :goto_10

    .line 1303
    :cond_3e
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    goto/16 :goto_0

    :cond_3f
    move v1, v0

    move v0, v5

    goto/16 :goto_6

    :cond_40
    move v0, v5

    goto/16 :goto_5
.end method
