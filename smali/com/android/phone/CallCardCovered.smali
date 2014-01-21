.class public Lcom/android/phone/CallCardCovered;
.super Landroid/widget/FrameLayout;
.source "CallCardCovered.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/CallTime$OnTickListener;
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;
.implements Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCardCovered$6;,
        Lcom/android/phone/CallCardCovered$AsyncLoadCookie;
    }
.end annotation


# static fields
.field private static mNeedUpdate:Z

.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private isAutoAnsered:Z

.field private isGuidanceMsgPlaying:Z

.field private mAnimationList:[[I

.field private mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

.field private mAnsMemoImageView:Landroid/widget/ImageView;

.field private mAnsweringMemo:Landroid/widget/TextView;

.field private mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

.field private mAnsweringMemoStateLabel:Landroid/widget/TextView;

.field private mApplication:Lcom/android/phone/PhoneGlobals;

.field private mCallBannerCoverTextView:Landroid/widget/TextView;

.field private mCallBannerCoverView:Landroid/widget/RelativeLayout;

.field private mCallBannerHelpLine1View:Landroid/widget/RelativeLayout;

.field private mCallBannerStateTime:Landroid/view/ViewGroup;

.field private mCallEndCause:Ljava/lang/String;

.field private mCallEndTimeBlinkCount:I

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallStateLabelLinearLayout:Landroid/widget/LinearLayout;

.field private mCallStateTime:Landroid/widget/TextView;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCallTimeForEndScreen:Landroid/widget/TextView;

.field private mCdnipNumber:Landroid/widget/TextView;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimationIndex:I

.field private mCurrentAnimationType:I

.field private mCurrentPeriodMarkIndex:I

.field private mDensity:F

.field private mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

.field private mEndCallTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mHelpTextLine1:Landroid/widget/TextView;

.field private mHelpTextLine4:Landroid/widget/TextView;

.field private mImageCache:Lcom/android/phone/ImageCache;

.field private mImageCacheParams:Lcom/android/phone/ImageCache$ImageCacheParams;

.field private mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

.field private mInCallInfoBackground:Landroid/widget/ImageView;

.field private mInCallInfoContainer:Landroid/widget/RelativeLayout;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

.field private mInset:Landroid/widget/ImageView;

.field private mLoadingPersonUri:Landroid/net/Uri;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mName:Landroid/widget/TextView;

.field private mPeriodMark:Landroid/widget/ImageView;

.field private mPeriodMarkList:[I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Lcom/android/phone/InCallContactPhoto;

.field private mPhotoBorder:Landroid/widget/ImageView;

.field private mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

.field private mPlayingAnsweringMessage:Landroid/widget/TextView;

.field private mRecordTime:Landroid/widget/TextView;

.field private mRecordTimeLayout:Landroid/widget/RelativeLayout;

.field private mRecordingMessage:Landroid/widget/TextView;

.field private mRecordingMessageLayout:Landroid/widget/RelativeLayout;

.field private mRejectCallWithMessageTab:Landroid/widget/LinearLayout;

.field public mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

.field private mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

.field private mRejectCallWithMsgHandleMsgIcon:Landroid/widget/ImageView;

.field private mRejectCallWithMsgHandleText:Landroid/widget/TextView;

.field private mShowingCallEnd:Z

.field private mSpaekerMuteLayout:Landroid/widget/RelativeLayout;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private memoRecInfo:Landroid/view/View;

.field private memoRecordTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallCardCovered;->mToast:Landroid/widget/Toast;

    .line 231
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/CallCardCovered;->mNeedUpdate:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 304
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    iput v4, p0, Lcom/android/phone/CallCardCovered;->mCallEndTimeBlinkCount:I

    .line 148
    iput-boolean v4, p0, Lcom/android/phone/CallCardCovered;->mShowingCallEnd:Z

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallCardCovered;->mDensity:F

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    .line 195
    iput v4, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    .line 196
    new-array v0, v6, [[I

    new-array v1, v7, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v7, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnimationList:[[I

    .line 203
    new-array v0, v6, [[Landroid/graphics/drawable/Drawable;

    new-array v1, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    const/4 v2, 0x3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    new-array v1, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    const/4 v2, 0x3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    .line 213
    iput-object v3, p0, Lcom/android/phone/CallCardCovered;->memoRecInfo:Landroid/view/View;

    .line 228
    iput v4, p0, Lcom/android/phone/CallCardCovered;->mCurrentPeriodMarkIndex:I

    .line 229
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMarkList:[I

    .line 254
    new-instance v0, Lcom/android/phone/CallCardCovered$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallCardCovered$1;-><init>(Lcom/android/phone/CallCardCovered;)V

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    .line 305
    iput-object p1, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    .line 306
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    .line 307
    new-instance v0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    .line 308
    return-void

    .line 196
    nop

    :array_0
    .array-data 0x4
        0xcdt 0x1t 0x2t 0x7ft
        0xcft 0x1t 0x2t 0x7ft
        0xd1t 0x1t 0x2t 0x7ft
        0xd3t 0x1t 0x2t 0x7ft
        0xd5t 0x1t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xbbt 0x1t 0x2t 0x7ft
        0xbdt 0x1t 0x2t 0x7ft
        0xbft 0x1t 0x2t 0x7ft
        0xc1t 0x1t 0x2t 0x7ft
        0xc3t 0x1t 0x2t 0x7ft
    .end array-data

    .line 229
    :array_2
    .array-data 0x4
        0x14t 0x3t 0x2t 0x7ft
        0x15t 0x3t 0x2t 0x7ft
        0x16t 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method private CallEndTimeBlink()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/16 v4, 0x64

    const/4 v0, 0x0

    .line 1336
    const-string v1, "clear_cover_enhanced"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1337
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1338
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090187

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1340
    :cond_0
    iget v1, p0, Lcom/android/phone/CallCardCovered;->mCallEndTimeBlinkCount:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget-wide v1, p0, Lcom/android/phone/CallCardCovered;->mEndCallTime:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_5

    .line 1341
    iget v1, p0, Lcom/android/phone/CallCardCovered;->mCallEndTimeBlinkCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1342
    :cond_1
    const-string v1, "clear_cover_enhanced"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1343
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mCallStateTime:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1347
    :goto_1
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mCallEndTimeBlinkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/CallCardCovered;->mCallEndTimeBlinkCount:I

    .line 1348
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1349
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1359
    :goto_2
    return-void

    .line 1343
    :cond_2
    iget-wide v2, p0, Lcom/android/phone/CallCardCovered;->mEndCallTime:J

    invoke-static {v2, v3}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1345
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mCallTimeForEndScreen:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-wide v2, p0, Lcom/android/phone/CallCardCovered;->mEndCallTime:J

    invoke-static {v2, v3}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1351
    :cond_5
    const-string v1, "clear_cover_enhanced"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1352
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mCallStateTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mCallEndCause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1355
    :goto_4
    iput-wide v5, p0, Lcom/android/phone/CallCardCovered;->mEndCallTime:J

    .line 1356
    iput v0, p0, Lcom/android/phone/CallCardCovered;->mCallEndTimeBlinkCount:I

    .line 1357
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    goto :goto_2

    .line 1354
    :cond_6
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mCallTimeForEndScreen:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mCallEndCause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/android/phone/CallCardCovered;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->CallEndTimeBlink()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallCardCovered;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallCardCovered;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/CallCardCovered;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallCardCovered;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->destroyImageCache()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/CallCardCovered;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->setSmallCallCardAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CallCardCovered;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->setCallCardAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallCardCovered;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentPeriodMarkIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/CallCardCovered;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/android/phone/CallCardCovered;->mCurrentPeriodMarkIndex:I

    return p1
.end method

.method static synthetic access$508(Lcom/android/phone/CallCardCovered;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentPeriodMarkIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/CallCardCovered;->mCurrentPeriodMarkIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallCardCovered;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMarkList:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/CallCardCovered;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallCardCovered;)Lcom/android/phone/InCallContactPhoto;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/CallCardCovered;Landroid/widget/ImageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private destroyImageCache()V
    .locals 1

    .prologue
    .line 2142
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mImageCache:Lcom/android/phone/ImageCache;

    if-eqz v0, :cond_0

    .line 2143
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mImageCache:Lcom/android/phone/ImageCache;

    invoke-virtual {v0}, Lcom/android/phone/ImageCache;->clearCache()V

    .line 2144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mImageCacheParams:Lcom/android/phone/ImageCache$ImageCacheParams;

    .line 2146
    :cond_0
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x3

    const/16 v9, 0x8

    const/16 v8, 0x11

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayMainCallStatus(call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 786
    if-nez p2, :cond_1

    .line 788
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 789
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 790
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateTime:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 796
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 797
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->isGuidanceMsgPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 798
    :cond_2
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 799
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerStateTime:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 800
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 801
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 823
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - call.state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 826
    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 827
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v0, :cond_4

    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_4

    .line 828
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 829
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    .line 833
    :cond_4
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 834
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 835
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 836
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 838
    sget-object v6, Lcom/android/phone/CallCardCovered$6;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 848
    const-string v6, "clear_cover_not_support_end_call"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v6

    if-nez v6, :cond_5

    .line 849
    const-string v6, "automatic_answering_machine"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 850
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 851
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 852
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 853
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 864
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 868
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabelLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 869
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0127

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 871
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 872
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 875
    :cond_7
    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 876
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabelLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 879
    :cond_8
    sget-object v0, Lcom/android/phone/CallCardCovered$6;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 903
    const-string v0, "CallCardCovered"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayMainCallStatus: unexpected call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 907
    :goto_3
    invoke-direct {p0, p2}, Lcom/android/phone/CallCardCovered;->updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V

    .line 909
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "support_lgt_multi_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 911
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    const v1, 0x7f090185

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 912
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 913
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    const/high16 v1, 0x41b8

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 914
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 915
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v1, 0x7f0201da

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    .line 1038
    :goto_4
    invoke-direct {p0, p2}, Lcom/android/phone/CallCardCovered;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 803
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 804
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 805
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0902a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 808
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 809
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 810
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 811
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 812
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerStateTime:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 816
    :cond_b
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 817
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 818
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 842
    :pswitch_0
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 843
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 844
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 845
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_2

    .line 855
    :cond_c
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 856
    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 857
    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 858
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_2

    .line 884
    :pswitch_1
    const-string v0, "displayMainCallStatus: start periodicUpdateTimer"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0, p2}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 886
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 887
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    goto/16 :goto_3

    .line 895
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_3

    .line 899
    :pswitch_3
    const-string v0, "CallCardCovered"

    const-string v1, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static {v0, v1, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_3

    .line 917
    :cond_d
    const/4 v6, 0x0

    .line 918
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 919
    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 920
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_e

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "support_lgt_multi_call"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 924
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getCdmaCwHoldingConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 936
    :goto_5
    if-nez v6, :cond_12

    .line 937
    const-string v0, "displayMainCallStatus: connection is null, using default values."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 938
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 939
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallCardCovered;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_4

    .line 926
    :cond_e
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    goto :goto_5

    .line 928
    :cond_f
    if-eq v0, v5, :cond_10

    if-eq v0, v10, :cond_10

    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    .line 931
    :cond_10
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    goto :goto_5

    .line 933
    :cond_11
    const-string v1, "CallCardCovered"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_5

    .line 942
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - CONN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 943
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 944
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    .line 946
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 947
    const/4 v7, 0x2

    if-ne v0, v7, :cond_20

    .line 948
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    .line 949
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 950
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v8

    .line 951
    const/4 v9, 0x0

    .line 952
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_1a

    .line 953
    iget-object v10, p0, Lcom/android/phone/CallCardCovered;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object v0, v1

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v10, v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    .line 959
    :goto_6
    const-string v10, "usa_cdma_smc_fac_req"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 960
    if-eqz v7, :cond_14

    .line 961
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v10

    .line 962
    if-eqz v9, :cond_14

    sget v11, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-eq v10, v11, :cond_13

    sget v11, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-ne v10, v11, :cond_14

    .line 964
    :cond_13
    throw v9

    .line 969
    :cond_14
    if-eqz v9, :cond_16

    .line 970
    if-eqz v7, :cond_15

    throw v9

    throw v7

    move-result v7

    if-nez v7, :cond_15

    move v0, v5

    .line 973
    :cond_15
    if-eqz v8, :cond_16

    throw v9

    throw v8

    move-result v7

    if-nez v7, :cond_16

    move v0, v5

    .line 979
    :cond_16
    :goto_7
    if-eqz v0, :cond_1b

    .line 980
    const-string v0, "- displayMainCallStatus: starting CallerInfo query..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, p0, v6}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 983
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    .line 984
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v1

    .line 985
    if-eqz v1, :cond_17

    iget-object v7, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 986
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 987
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v7

    iput v7, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 988
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v7

    iput v7, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 991
    :cond_17
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v1

    .line 992
    const-string v7, "updated_calling_name_presentation"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    if-eqz v1, :cond_18

    iget-object v7, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- contactExists : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v7, v7, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 997
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v1, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v1, :cond_18

    .line 998
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v7, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v7, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1001
    :cond_18
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v0, :cond_19

    move v4, v5

    :cond_19
    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallCardCovered;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_4

    .line 956
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v6}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    goto/16 :goto_6

    .line 1004
    :cond_1b
    const-string v0, "- displayMainCallStatus: using data we already have..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1005
    instance-of v0, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_1e

    .line 1006
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    .line 1007
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1008
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1009
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v0

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 1011
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1012
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    .line 1014
    :cond_1c
    const-string v0, "visual_expression"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1015
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getSKTVEUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    .line 1018
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- displayMainCallStatus: CNAP data from Connection: , CNAP name="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", Number/Name Presentation="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   ==> Got CallerInfo; updating display: ci = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    move-object v0, p0

    move-object v5, p2

    .line 1021
    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallCardCovered;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_4

    .line 1023
    :cond_1e
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_1f

    .line 1024
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v1, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- displayMainCallStatus: CNAP data from Connection: CNAP name="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", Number Presentation="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", Name Presentation="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ==> Got CallerInfoToken; updating display: ci = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    move-object v0, p0

    move v4, v5

    move-object v5, p2

    .line 1029
    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallCardCovered;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_4

    .line 1032
    :cond_1f
    const-string v0, "CallCardCovered"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_4

    :cond_20
    move v0, v5

    goto/16 :goto_7

    .line 838
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 879
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const v0, 0x7f090187

    .line 1693
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1696
    if-nez v1, :cond_0

    .line 1697
    const-string v1, "getCallFailedString: connection is null, using default values."

    invoke-direct {p0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1698
    const-string v1, "clear_cover_enhanced"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1699
    const-string v0, ""

    .line 1771
    :goto_0
    return-object v0

    .line 1703
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 1704
    sget-object v2, Lcom/android/phone/CallCardCovered$6;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1764
    const-string v1, "clear_cover_enhanced"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1765
    const-string v0, ""

    goto :goto_0

    .line 1706
    :pswitch_0
    const v0, 0x7f09000b

    .line 1771
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1710
    :pswitch_1
    const v0, 0x7f09000c

    .line 1711
    goto :goto_1

    .line 1714
    :pswitch_2
    const v0, 0x7f09000d

    .line 1715
    goto :goto_1

    .line 1718
    :pswitch_3
    const v0, 0x7f09000e

    .line 1719
    goto :goto_1

    .line 1722
    :pswitch_4
    const v0, 0x7f09000f

    .line 1723
    goto :goto_1

    .line 1726
    :pswitch_5
    const v0, 0x7f090010

    .line 1727
    goto :goto_1

    .line 1730
    :pswitch_6
    const v0, 0x7f090012

    .line 1731
    goto :goto_1

    .line 1734
    :pswitch_7
    const v0, 0x7f090011

    .line 1735
    goto :goto_1

    .line 1739
    :pswitch_8
    const v0, 0x7f090013

    .line 1740
    goto :goto_1

    .line 1743
    :pswitch_9
    const v0, 0x7f090014

    .line 1744
    goto :goto_1

    .line 1747
    :pswitch_a
    const v0, 0x7f090015

    .line 1748
    goto :goto_1

    .line 1751
    :pswitch_b
    const v0, 0x7f090016

    .line 1752
    goto :goto_1

    .line 1755
    :pswitch_c
    const v0, 0x7f090017

    .line 1756
    goto :goto_1

    .line 1760
    :pswitch_d
    const v0, 0x7f09001e

    .line 1761
    goto :goto_1

    .line 1704
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "call"

    .prologue
    .line 2396
    if-nez p1, :cond_0

    .line 2397
    const/4 v1, 0x0

    .line 2403
    :goto_0
    return-object v1

    .line 2399
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2400
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2401
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 2403
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0
.end method

.method private getDefaultImageResource(Lcom/android/internal/telephony/Call;)I
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const v1, 0x7f0201e0

    const/4 v4, 0x0

    .line 2150
    .line 2151
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2152
    const v0, 0x7f0201da

    .line 2156
    :goto_0
    sget-object v2, Lcom/android/phone/CallCardCovered$6;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2180
    :pswitch_0
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2183
    :cond_0
    iput v5, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    .line 2187
    :goto_1
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2189
    iput v5, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    move v0, v1

    .line 2192
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 2154
    goto :goto_0

    .line 2159
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnimationList:[[I

    aget-object v0, v0, v6

    aget v0, v0, v4

    .line 2160
    iput v6, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    goto :goto_1

    .line 2170
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnimationList:[[I

    aget-object v0, v0, v4

    aget v0, v0, v4

    .line 2171
    iput v4, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    goto :goto_1

    .line 2156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private hideMemoRecInfo()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 2735
    const-string v0, "hideMemoRecInfo"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2736
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2737
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->memoRecInfo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->memoRecInfo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2738
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2739
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 2740
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2748
    :cond_1
    :goto_0
    return-void

    .line 2743
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordTimeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordTimeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2744
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2745
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordingMessageLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordingMessageLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2746
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initImageCache()V
    .locals 3

    .prologue
    .line 2133
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 2139
    :goto_0
    return-void

    .line 2136
    :cond_0
    new-instance v0, Lcom/android/phone/ImageCache$ImageCacheParams;

    invoke-direct {v0}, Lcom/android/phone/ImageCache$ImageCacheParams;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mImageCacheParams:Lcom/android/phone/ImageCache$ImageCacheParams;

    .line 2137
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mImageCacheParams:Lcom/android/phone/ImageCache$ImageCacheParams;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x3ea8f5c3

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 2138
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mImageCacheParams:Lcom/android/phone/ImageCache$ImageCacheParams;

    invoke-static {v0, v1}, Lcom/android/phone/ImageCache;->findOrCreateCache(Landroid/app/FragmentManager;Lcom/android/phone/ImageCache$ImageCacheParams;)Lcom/android/phone/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mImageCache:Lcom/android/phone/ImageCache;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2544
    const-string v0, "CallCardCovered"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 2548
    const-string v0, "CallCardCovered"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2549
    return-void
.end method

.method private okToShowInCallControls(Lcom/android/internal/telephony/CallManager;)Z
    .locals 2
    .parameter "cm"

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private redial()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    .line 2408
    .line 2409
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 2410
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2412
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 2414
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2417
    :cond_0
    if-nez v0, :cond_2

    .line 2418
    const-string v0, "redial : call is null"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2453
    :cond_1
    :goto_0
    return-void

    .line 2422
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2424
    if-nez v0, :cond_3

    .line 2425
    const-string v0, "redial : connection is null"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2429
    :cond_3
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->getNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v2

    .line 2431
    if-eqz v2, :cond_1

    .line 2433
    iget-object v3, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2434
    iget-object v3, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2436
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 2438
    if-eqz v0, :cond_5

    instance-of v3, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_5

    .line 2439
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    iput-object v0, v3, Lcom/android/phone/PhoneGlobals;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2442
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2446
    const-string v2, "android.phone.extra.CALL_DIRECTCALL"

    const-string v3, "RedialCover"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2448
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2450
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 2451
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private resetCallEndScreen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1329
    iput-boolean v1, p0, Lcom/android/phone/CallCardCovered;->mShowingCallEnd:Z

    .line 1330
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabelLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1331
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTimeForEndScreen:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1332
    return-void
.end method

.method private setCallCardAnimation()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2199
    iget v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 2242
    :goto_0
    return-void

    .line 2203
    :cond_0
    iget v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    iget-object v3, p0, Lcom/android/phone/CallCardCovered;->mAnimationList:[[I

    iget v4, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    aget-object v3, v3, v4

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_1

    .line 2204
    iput v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    .line 2207
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 2211
    iget v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCommon;->isAirMotionOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 2215
    :cond_2
    if-eqz v0, :cond_4

    .line 2217
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    aget-object v0, v0, v2

    iget v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    aget-object v0, v0, v2

    if-nez v0, :cond_3

    .line 2218
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    aget-object v0, v0, v2

    iget v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallCardCovered;->mAnimationList:[[I

    iget v5, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    aget-object v4, v4, v5

    iget v5, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    .line 2222
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallContactPhoto;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2231
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    aget-object v0, v0, v2

    iget v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    aget-object v0, v0, v2

    if-nez v0, :cond_5

    .line 2234
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mAnimationList:[[I

    iget v3, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallContactPhoto;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 2241
    :cond_5
    :goto_2
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    goto/16 :goto_0

    .line 2223
    :catch_0
    move-exception v0

    .line 2224
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->resetCallCardAnimation()V

    .line 2225
    const-string v2, "getBitmap - outOfMemory exception"

    invoke-direct {p0, v2, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2226
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    .line 2235
    :catch_1
    move-exception v0

    .line 2236
    const-string v2, "setImageResource - outOfMemory exception"

    invoke-direct {p0, v2, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2237
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_2
.end method

.method private setSmallCallCardAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 2256
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2290
    :goto_0
    return-void

    .line 2260
    :cond_0
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mAnimationList:[[I

    iget v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    aget-object v1, v1, v2

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    .line 2261
    iput v3, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    .line 2264
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnimationList:[[I

    iget v1, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    aget v2, v0, v1

    .line 2266
    const/4 v1, 0x0

    .line 2267
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mImageCache:Lcom/android/phone/ImageCache;

    if-eqz v0, :cond_2

    .line 2268
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mImageCache:Lcom/android/phone/ImageCache;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2272
    :cond_2
    if-nez v1, :cond_3

    .line 2273
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2275
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInset:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2276
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInset:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2277
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInset:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2285
    :goto_1
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mImageCache:Lcom/android/phone/ImageCache;

    if-eqz v0, :cond_4

    .line 2286
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mImageCache:Lcom/android/phone/ImageCache;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2289
    :cond_4
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    goto :goto_0

    .line 2278
    :catch_0
    move-exception v0

    .line 2279
    const-string v3, "setImageResource - outOfMemory exception"

    invoke-direct {p0, v3, v5}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2280
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    .line 2281
    :catch_1
    move-exception v0

    .line 2282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImageResource - exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private showAnimationImage(Lcom/android/internal/telephony/Call;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 5
    .parameter "call"
    .parameter "view"
    .parameter "ci"

    .prologue
    const/16 v4, 0x82

    .line 1925
    if-eqz p3, :cond_0

    if-eqz p3, :cond_2

    iget-boolean v1, p3, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v1, :cond_2

    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 1927
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallCardCovered;->getDefaultImageResource(Lcom/android/internal/telephony/Call;)I

    move-result v0

    .line 1929
    .local v0, resource:I
    iget v1, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1930
    invoke-direct {p0, p2, v0}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    .line 1932
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1933
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1936
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->initImageCache()V

    .line 1937
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1938
    const/4 v1, 0x1

    .line 1941
    .end local v0           #resource:I
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1876
    if-eqz p2, :cond_1

    iget-boolean v0, p2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_1

    .line 1877
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1878
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1882
    :goto_0
    const/4 v0, 0x1

    .line 1884
    :goto_1
    return v0

    .line 1880
    :cond_0
    const v0, 0x7f0201e0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 1884
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private final showImage(Landroid/widget/ImageView;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1889
    if-lez p2, :cond_0

    .line 1891
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1897
    :cond_0
    :goto_0
    return-void

    .line 1892
    :catch_0
    move-exception v0

    .line 1893
    const-string v1, "showImage - outOfMemory exception"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 1894
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method private final showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "bitmap"

    .prologue
    .line 1900
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1901
    return-void
.end method

.method private final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 1910
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 1912
    .local v0, current:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 1914
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1915
    invoke-static {p1}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 1916
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1921
    :goto_0
    return-void

    .line 1918
    :cond_0
    invoke-static {p1, v0, p2}, Lcom/android/phone/AnimationUtils;->startCrossFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1919
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showMemoRecInfo()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2708
    const-string v0, "showMemoRecInfo"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2709
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2710
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->memoRecInfo:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2711
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->memoRecInfo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2713
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 2714
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2716
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateTime:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2731
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->updateMemoRecordTime()V

    .line 2732
    return-void

    .line 2718
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 2719
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2721
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordingMessageLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 2722
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordingMessageLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2724
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordTimeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    .line 2725
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordTimeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2727
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2728
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private toggleMute()V
    .locals 3

    .prologue
    .line 2503
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    .line 2504
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->toggleMute()V

    .line 2505
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 2506
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 2507
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2509
    .end local v0           #inCallControlState:Lcom/android/phone/InCallControlState;
    :cond_0
    return-void
.end method

.method private toggleSpeaker()V
    .locals 1

    .prologue
    .line 2498
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 2499
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->toggleSpeaker()V

    .line 2500
    :cond_0
    return-void
.end method

.method private updateCallEndScreen(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x64

    .line 1314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallCardCovered;->mShowingCallEnd:Z

    .line 1315
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabelLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1316
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1318
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateTime:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/android/phone/CallCardCovered;->mEndCallTime:J

    invoke-static {v1, v2}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1324
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1325
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1326
    return-void

    .line 1320
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTimeForEndScreen:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/android/phone/CallCardCovered;->mEndCallTime:J

    invoke-static {v1, v2}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1321
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTimeForEndScreen:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V
    .locals 14
    .parameter

    .prologue
    const v13, 0x7f09001f

    const/16 v12, 0x8c

    const/4 v11, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallStateWidgets(call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1086
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1087
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1088
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 1090
    const/4 v1, 0x0

    .line 1091
    const/4 v0, 0x0

    .line 1094
    sget-object v5, Lcom/android/phone/CallCardCovered$6;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1189
    const-string v5, "CallCardCovered"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCallStateWidgets: unexpected call state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v11}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1193
    :cond_0
    :goto_0
    :pswitch_0
    const-string v5, "clear_cover_enhanced"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1194
    sget-object v5, Lcom/android/phone/CallCardCovered$6;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 1203
    :pswitch_1
    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mCallBannerStateTime:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0055

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1208
    :cond_1
    :goto_1
    const-string v5, "display_alerting_title"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1209
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v5, :cond_2

    .line 1210
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1211
    const v1, 0x7f090183

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1215
    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    .line 1216
    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v4, :cond_11

    iget-object v4, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1218
    const v1, 0x7f090182

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1232
    :cond_3
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> callStateLabel: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1234
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1235
    iget-object v3, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1236
    iget-object v3, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1237
    const-string v1, "clear_cover_enhanced"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1238
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mCallStateTime:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1241
    :cond_4
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1242
    if-eqz v0, :cond_15

    .line 1243
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1244
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1245
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerHelpLine1View:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1252
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1253
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1254
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_16

    .line 1255
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerCoverTextView:Landroid/widget/TextView;

    const v1, 0x7f090858

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1258
    :goto_4
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerCoverTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1259
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v10}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 1260
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1261
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 1262
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1277
    :cond_6
    :goto_5
    sget-object v0, Lcom/android/phone/CallCardCovered$6;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 1285
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->resetCallEndScreen()V

    .line 1288
    :goto_6
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1289
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1290
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1291
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 1292
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1293
    :cond_7
    iput v9, p0, Lcom/android/phone/CallCardCovered;->mCurrentPeriodMarkIndex:I

    .line 1296
    :cond_8
    sget-object v0, Lcom/android/phone/CallCardCovered$6;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    .line 1305
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 1306
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1311
    :cond_9
    :goto_7
    return-void

    .line 1101
    :pswitch_2
    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 1102
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_a

    .line 1103
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1104
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1115
    :cond_a
    :goto_8
    const-string v5, "common_volte_vt_kor"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_0

    .line 1117
    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->isShowingModifyCallDialog()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1118
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f090859

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1106
    :cond_b
    const-string v0, "%s"

    .line 1107
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1110
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0907ec

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 1125
    :pswitch_3
    const v1, 0x7f090188

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1130
    :pswitch_4
    const-string v1, "common_volte_vt_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1131
    const v1, 0x7f090773

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1133
    :cond_c
    const v1, 0x7f090182

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1136
    :pswitch_5
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 1137
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    .line 1138
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v7

    .line 1139
    const-string v1, "%s"

    .line 1140
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    iget-object v8, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1144
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1145
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1148
    :cond_d
    if-eqz v6, :cond_e

    if-eqz v7, :cond_e

    .line 1149
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0907ed

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "%s"

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1153
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1154
    const v1, 0x7f0903f7

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1156
    :cond_f
    const v1, 0x7f090186

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1159
    :pswitch_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1160
    const v1, 0x7f0903f7

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1162
    :cond_10
    const v1, 0x7f090186

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1184
    :pswitch_7
    const-string v1, ""

    .line 1185
    invoke-direct {p0, p1}, Lcom/android/phone/CallCardCovered;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallCardCovered;->mCallEndCause:Ljava/lang/String;

    goto/16 :goto_0

    .line 1196
    :pswitch_8
    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mCallBannerStateTime:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0055

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 1200
    :pswitch_9
    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mCallBannerStateTime:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0056

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 1219
    :cond_11
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1220
    const v1, 0x7f090184

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 1222
    :cond_12
    if-eq v4, v11, :cond_13

    const/4 v5, 0x3

    if-eq v4, v5, :cond_13

    const/4 v5, 0x5

    if-ne v4, v5, :cond_14

    .line 1225
    :cond_13
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->getIsGsmRedialCall()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1226
    const v1, 0x7f090184

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 1229
    :cond_14
    const-string v3, "CallCardCovered"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_2

    .line 1247
    :cond_15
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1248
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1249
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerHelpLine1View:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 1257
    :cond_16
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerCoverTextView:Landroid/widget/TextView;

    const v1, 0x7f090857

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 1264
    :cond_17
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine4:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1267
    :cond_18
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1268
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1269
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_19

    .line 1270
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1271
    :cond_19
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerCoverTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1274
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine4:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1279
    :pswitch_a
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 1280
    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/phone/CallCardCovered;->mEndCallTime:J

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==> mEndCallTime: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/phone/CallCardCovered;->mEndCallTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1282
    invoke-direct {p0, p1}, Lcom/android/phone/CallCardCovered;->updateCallEndScreen(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_6

    .line 1299
    :pswitch_b
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 1300
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPeriodMarkList:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1301
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 1094
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 1194
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_9
    .end packed-switch

    .line 1277
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_a
    .end packed-switch

    .line 1296
    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDisplayForPerson("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\nnumberPresentation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " namePresentation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isTemporary:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1406
    if-nez p5, :cond_1

    .line 1407
    const-string v0, "CallCard.updateDisplayForPerson : call is null"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1690
    :cond_0
    :goto_0
    return-void

    .line 1411
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, p1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1412
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1416
    invoke-virtual {p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 1417
    const/4 v1, 0x0

    .line 1418
    const/4 v2, 0x0

    .line 1420
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "country_detector"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/location/CountryDetector;

    .line 1423
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1424
    if-eqz p1, :cond_27

    .line 1425
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1427
    const-string v2, "usa_gsm_update_2nd_number"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1428
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v2

    if-nez v2, :cond_2

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne p2, v2, :cond_2

    .line 1430
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1431
    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1432
    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1437
    :cond_2
    if-eqz v0, :cond_3

    const-string v2, "sip:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1438
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1441
    :cond_3
    const-string v2, "cnap_supplementary_service"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1442
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1443
    const-string v2, "updateDisplayForPerson : exist invalid cnapName in the CallerInfo"

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 1444
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1448
    :cond_4
    const-string v2, "roaming_auto_dial"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1449
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 1450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDisplayForPerson : Roaming area number = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1451
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1453
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1454
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p6, p0, p6}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 1456
    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v2, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v2, v2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v2, :cond_5

    .line 1457
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCallCardNumber()Ljava/lang/String;

    move-result-object v0

    .line 1458
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneUtilsExt.getCallCardNumber"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1463
    :cond_6
    :goto_1
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1464
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtilsExt;->changeNameForSKTRAD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object v8, v0

    .line 1472
    :goto_2
    const-string v0, "emergency_find_lost_phone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1473
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtilsExt;->changeNameForSKT(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1476
    :cond_7
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1477
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1478
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ==> no name *or* number! displayName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    move-object v8, v1

    .line 1590
    :cond_8
    :goto_3
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- got personUri: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', based on info.person_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1596
    :goto_4
    if-eqz p4, :cond_28

    if-eqz p1, :cond_9

    iget-boolean v1, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v1, :cond_28

    .line 1597
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallContactPhoto;->setTag(Ljava/lang/Object;)V

    .line 1598
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 1637
    :cond_a
    :goto_5
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1638
    if-eqz p1, :cond_30

    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cdnipNumber : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "call state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1640
    invoke-virtual {p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_b

    invoke-virtual {p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2f

    .line 1641
    :cond_b
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1646
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09051d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1647
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_c

    .line 1648
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1649
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCdnipNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1659
    :cond_c
    :goto_7
    invoke-static {p5}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1660
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    const v1, 0x7f090185

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1664
    :goto_8
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1666
    if-eqz v8, :cond_32

    .line 1667
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41b8

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1668
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1669
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1678
    :goto_9
    const-string v0, "emergency_find_lost_phone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1679
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1680
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 1681
    if-eqz v0, :cond_0

    .line 1682
    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090511

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090513

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isFindService()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1685
    :cond_d
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1460
    :cond_e
    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1461
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1465
    :cond_f
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1467
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->changeVoiceMailBoxNumberForRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_2

    .line 1480
    :cond_10
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v0, :cond_11

    .line 1481
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 1482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ==> presentation not allowed! displayName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    move-object v8, v1

    goto/16 :goto_3

    .line 1483
    :cond_11
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1485
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1486
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1487
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1501
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ==> cnapName available: displayName \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', displayNumber \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1490
    :cond_12
    const-string v0, "number_format_with_country_iso"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1491
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1492
    :cond_13
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    .line 1494
    :cond_14
    invoke-virtual {v7}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    .line 1498
    :cond_15
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    .line 1504
    :cond_16
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    move-object v6, v8

    move-object v8, v1

    .line 1507
    goto/16 :goto_3

    .line 1509
    :cond_18
    const-string v0, "number_format_with_country_iso"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1510
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1511
    :cond_19
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v8, v1

    goto/16 :goto_3

    .line 1513
    :cond_1a
    invoke-virtual {v7}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v8, v1

    goto/16 :goto_3

    .line 1517
    :cond_1b
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v8, v1

    goto/16 :goto_3

    .line 1522
    :cond_1c
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v0, :cond_1f

    .line 1523
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 1524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ==> valid name, but presentation not allowed! displayName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1571
    :cond_1d
    :goto_b
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1574
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1577
    const-string v0, "number_format_with_country_iso"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1578
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1579
    :cond_1e
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 1527
    :cond_1f
    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1528
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_22

    .line 1533
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1534
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mContactName:Ljava/lang/String;

    .line 1536
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v0, :cond_20

    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v0, :cond_1d

    .line 1537
    :cond_20
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_21

    .line 1538
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1539
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    .line 1541
    :cond_21
    new-instance v0, Lcom/android/phone/CallCardCovered$5;

    const-wide/32 v2, 0x493e0

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallCardCovered$5;-><init>(Lcom/android/phone/CallCardCovered;JJLjava/lang/String;)V

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    .line 1555
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_b

    .line 1560
    :cond_22
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_23

    .line 1561
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1562
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    .line 1564
    :cond_23
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_b

    .line 1567
    :cond_24
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_b

    .line 1581
    :cond_25
    invoke-virtual {v7}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 1585
    :cond_26
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 1594
    :cond_27
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v2

    move-object v8, v1

    goto/16 :goto_4

    .line 1599
    :cond_28
    invoke-virtual {p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_29

    .line 1601
    const-string v0, "update nothing"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 1602
    :cond_29
    if-eqz p1, :cond_2a

    iget v1, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v1, :cond_2a

    .line 1603
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    iget v1, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_5

    .line 1604
    :cond_2a
    if-eqz p1, :cond_2b

    iget-boolean v1, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v1, :cond_2b

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2b

    .line 1605
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p5}, Lcom/android/phone/CallCardCovered;->getDefaultImageResource(Lcom/android/internal/telephony/Call;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_5

    .line 1606
    :cond_2b
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, v1, p1}, Lcom/android/phone/CallCardCovered;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1607
    if-nez v0, :cond_2c

    .line 1608
    const-string v0, "CallCardCovered"

    const-string v1, "personPri is null. Just use Unknown picture."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p5}, Lcom/android/phone/CallCardCovered;->getDefaultImageResource(Lcom/android/internal/telephony/Call;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_5

    .line 1610
    :cond_2c
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The requested Uri ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is being loaded already."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Ignoret the duplicate load request."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1619
    :cond_2d
    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mLoadingPersonUri:Landroid/net/Uri;

    .line 1622
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallContactPhoto;->setTag(Ljava/lang/Object;)V

    .line 1624
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 1627
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/phone/CallCardCovered$AsyncLoadCookie;

    iget-object v4, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {v3, v4, p1, p5}, Lcom/android/phone/CallCardCovered$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v1, v2, v0, p0, v3}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 1632
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1633
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 1644
    :cond_2e
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    goto/16 :goto_6

    .line 1652
    :cond_2f
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCdnipNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 1655
    :cond_30
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCdnipNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 1662
    :cond_31
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 1671
    :cond_32
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41a0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1672
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1673
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x4198

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1675
    :cond_33
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    :cond_34
    move-object v8, v0

    goto/16 :goto_2
.end method

.method private updateElapsedTimeWidget(J)V
    .locals 3
    .parameter

    .prologue
    .line 1386
    .line 1388
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1390
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateTime:Landroid/widget/TextView;

    .line 1395
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 1396
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1400
    :goto_1
    return-void

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    goto :goto_0

    .line 1398
    :cond_1
    invoke-static {p1, p2}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, -0x2

    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhotoForCallState("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1948
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x82

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x82

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1950
    iput v8, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    .line 1951
    iput v1, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    .line 1956
    :cond_0
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1957
    sget-boolean v0, Lcom/android/phone/CallCardCovered;->mNeedUpdate:Z

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1960
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v3, 0x7f02006f

    invoke-direct {p0, v0, v3}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    .line 1961
    sput-boolean v1, Lcom/android/phone/CallCardCovered;->mNeedUpdate:Z

    .line 1964
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_2

    .line 1965
    sput-boolean v2, Lcom/android/phone/CallCardCovered;->mNeedUpdate:Z

    .line 1970
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 1971
    sget-object v0, Lcom/android/phone/CallCardCovered$6;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 2020
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2021
    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    .line 2022
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v3, :cond_7

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2026
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getCdmaCwHoldingConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2039
    :goto_0
    if-eqz v0, :cond_14

    .line 2040
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 2041
    instance-of v3, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_b

    .line 2042
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v3, v0

    .line 2049
    :goto_1
    if-eqz v3, :cond_13

    .line 2050
    iget v0, v3, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 2061
    :goto_2
    if-nez v0, :cond_10

    .line 2062
    const-string v6, "common_volte_vt_kor"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 2063
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p1, v1, v3}, Lcom/android/phone/CallCardCovered;->showAnimationImage(Lcom/android/internal/telephony/Call;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation is set : state == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 2130
    :cond_3
    :goto_3
    return-void

    .line 1976
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1979
    if-eqz v0, :cond_6

    .line 1980
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 1981
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v2, :cond_15

    .line 1983
    :cond_4
    const-string v0, "display_busy_picture"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1984
    const v0, 0x7f020512

    :goto_4
    move v1, v0

    .line 2113
    :goto_5
    :pswitch_2
    if-eqz v1, :cond_5

    .line 2114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- overrriding photo image: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 2115
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    .line 2117
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v9}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2124
    :cond_5
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2125
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->isGuidanceMsgPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2126
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->showGuidancePlayingPhoto()V

    goto :goto_3

    .line 1988
    :cond_6
    const-string v0, "updatePhotoForCallState: connection is null, ignoring."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 2028
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto/16 :goto_0

    .line 2030
    :cond_8
    if-eq v0, v2, :cond_9

    const/4 v3, 0x3

    if-eq v0, v3, :cond_9

    const/4 v3, 0x5

    if-ne v0, v3, :cond_a

    .line 2033
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto/16 :goto_0

    .line 2036
    :cond_a
    const-string v3, "CallCardCovered"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object v0, v4

    goto/16 :goto_0

    .line 2043
    :cond_b
    instance-of v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_14

    .line 2044
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v3, v0

    goto/16 :goto_1

    .line 2069
    :cond_c
    const-string v6, "clear_cover_enhanced"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 2070
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v6

    if-nez v6, :cond_d

    move v1, v2

    .line 2072
    :cond_d
    :goto_6
    if-eqz v1, :cond_e

    .line 2073
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p1, v1, v3}, Lcom/android/phone/CallCardCovered;->showAnimationImage(Lcom/android/internal/telephony/Call;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation is set : state == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2080
    :cond_e
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2081
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, v1, v3}, Lcom/android/phone/CallCardCovered;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v1

    if-ne v1, v9, :cond_11

    .line 2086
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v1

    .line 2087
    if-nez v1, :cond_f

    .line 2088
    const-string v1, "CallCardCovered"

    const-string v2, "photoUri became null. Show default avatar icon"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v2, 0x7f0201e0

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    .line 2101
    :goto_7
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1, v8}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    move v1, v0

    .line 2103
    goto/16 :goto_5

    .line 2092
    :cond_f
    const-string v5, "start asynchronous load inside updatePhotoForCallState()"

    invoke-direct {p0, v5}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 2094
    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v5, v4}, Lcom/android/phone/InCallContactPhoto;->setTag(Ljava/lang/Object;)V

    .line 2096
    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 2097
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/android/phone/CallCardCovered$AsyncLoadCookie;

    iget-object v7, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {v6, v7, v3, v4}, Lcom/android/phone/CallCardCovered$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v2, v5, v1, p0, v6}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_7

    .line 2106
    :cond_10
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    .line 2107
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v8}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto/16 :goto_3

    :cond_11
    move v1, v0

    goto/16 :goto_5

    :cond_12
    move v1, v2

    goto/16 :goto_6

    :cond_13
    move v0, v1

    goto/16 :goto_2

    :cond_14
    move-object v3, v4

    goto/16 :goto_1

    :cond_15
    move v0, v1

    goto/16 :goto_4

    .line 1971
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clearAnswerMemoImageView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2675
    const-string v0, "clearAnswerMemoImageView"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2676
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2677
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2678
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2680
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 2681
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2683
    :cond_1
    return-void
.end method

.method public disableCoverLockUI(I)V
    .locals 4
    .parameter "delay"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_1

    .line 313
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->changeCoverLockUI(Z)V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/CallCardCovered$2;

    invoke-direct {v1, p0}, Lcom/android/phone/CallCardCovered$2;-><init>(Lcom/android/phone/CallCardCovered;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method invisibleMemoRecInfoView()V
    .locals 2

    .prologue
    .line 2703
    const-string v0, "invisibleMemoRecInfoView"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2704
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->hideMemoRecInfo()V

    .line 2705
    return-void
.end method

.method public isAutoAnswered()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2573
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    const-string v1, "com.android.phone.auto_answer_memo_pref"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2574
    const-string v1, "isAutoAnswered"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2575
    iput-boolean v0, p0, Lcom/android/phone/CallCardCovered;->isAutoAnsered:Z

    .line 2576
    return v0
.end method

.method public isGuidanceMsgPlaying()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2600
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    const-string v1, "com.android.phone.auto_answer_memo_pref"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2601
    const-string v1, "isGuidanceMsgPlaying"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2602
    iput-boolean v0, p0, Lcom/android/phone/CallCardCovered;->isGuidanceMsgPlaying:Z

    .line 2603
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2475
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2476
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 2495
    :goto_0
    return-void

    .line 2480
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/CallCardCovered;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/phone/CallCardCovered;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 2485
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 2476
    :pswitch_data_0
    .packed-switch 0x7f0a0099
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 14

    .prologue
    .line 342
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallCard onFinishInflate(this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 346
    const v0, 0x7f0a009c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabelLinearLayout:Landroid/widget/LinearLayout;

    .line 347
    const v0, 0x7f0a009b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTimeForEndScreen:Landroid/widget/TextView;

    .line 348
    const v0, 0x7f0a009e

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine4:Landroid/widget/TextView;

    .line 349
    const v0, 0x7f0a003e

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mContainer:Landroid/widget/LinearLayout;

    .line 350
    const v0, 0x7f0a0087

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallInfoContainer:Landroid/widget/RelativeLayout;

    .line 351
    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallContactPhoto;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    .line 352
    const v0, 0x7f0a0050

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mInset:Landroid/widget/ImageView;

    .line 353
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mInset:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallContactPhoto;->setInsetImageView(Landroid/widget/ImageView;)V

    .line 355
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 356
    const v0, 0x7f0a009d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoStateLabel:Landroid/widget/TextView;

    .line 357
    const v0, 0x7f0a0041

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    .line 358
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    :cond_0
    const v0, 0x7f0a005c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->memoRecInfo:Landroid/view/View;

    .line 360
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->memoRecInfo:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->memoRecInfo:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 363
    :cond_1
    const v0, 0x7f0a005d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->memoRecordTime:Landroid/widget/TextView;

    .line 364
    const v0, 0x7f0a008d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemo:Landroid/widget/TextView;

    .line 365
    const v0, 0x7f0a008c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    .line 366
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 367
    :cond_2
    const v0, 0x7f0a0084

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordingMessageLayout:Landroid/widget/RelativeLayout;

    .line 368
    const v0, 0x7f0a0086

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordTimeLayout:Landroid/widget/RelativeLayout;

    .line 369
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordTimeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 370
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordTimeLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 372
    :cond_3
    const v0, 0x7f0a0083

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    .line 373
    const v0, 0x7f0a0085

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordingMessage:Landroid/widget/TextView;

    .line 374
    const v0, 0x7f0a005b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordTime:Landroid/widget/TextView;

    .line 375
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordingMessageLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordingMessageLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 379
    :cond_5
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 380
    const v0, 0x7f0a0088

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallInfoBackground:Landroid/widget/ImageView;

    .line 381
    const v0, 0x7f0a0089

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerStateTime:Landroid/view/ViewGroup;

    .line 382
    const v0, 0x7f0a008a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    .line 383
    const v0, 0x7f0a008b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateTime:Landroid/widget/TextView;

    .line 384
    const v0, 0x7f0a0052

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    .line 385
    const v0, 0x7f0a008f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhotoBorder:Landroid/widget/ImageView;

    .line 386
    const v0, 0x7f0a0091

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    .line 387
    const v0, 0x7f0a0092

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    .line 388
    const v0, 0x7f0a0095

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    .line 389
    const v0, 0x7f0a0098

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mSpaekerMuteLayout:Landroid/widget/RelativeLayout;

    .line 390
    const v0, 0x7f0a0099

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 391
    const v0, 0x7f0a009a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    .line 392
    const v0, 0x7f0a0094

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerHelpLine1View:Landroid/widget/RelativeLayout;

    .line 393
    const v0, 0x7f0a0096

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerCoverView:Landroid/widget/RelativeLayout;

    .line 395
    const v0, 0x7f0a0097

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerCoverTextView:Landroid/widget/TextView;

    .line 396
    const v0, 0x7f0a02cb

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    .line 397
    const v0, 0x7f0a02ce

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    .line 398
    const v0, 0x7f0a02cc

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMessageTab:Landroid/widget/LinearLayout;

    .line 399
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 400
    const v0, 0x7f0a0093

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mCdnipNumber:Landroid/widget/TextView;

    .line 402
    :cond_6
    const v0, 0x7f0a0082

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    const v0, 0x7f0a02cf

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandleMsgIcon:Landroid/widget/ImageView;

    .line 405
    const v0, 0x7f0a02d0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandleText:Landroid/widget/TextView;

    .line 414
    :goto_0
    const v0, 0x7f0a009f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    .line 415
    const v0, 0x7f0a00a0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    .line 416
    const v0, 0x7f0a00a1

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    .line 418
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/phone/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    .line 419
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/phone/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    .line 421
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 422
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/phone/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    .line 423
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/phone/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    .line 428
    :goto_1
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_f

    .line 429
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;)V

    .line 431
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e012a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    .line 432
    .local v2, paddingLeft:I
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v7, v0

    .line 433
    .local v7, paddingRight:I
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/IncomingCallImageWidget;->addTouchArea(IIIII)V

    .line 434
    iget-object v3, p0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/phone/IncomingCallImageWidget;->addTouchArea(IIIII)V

    .line 436
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;)V

    .line 437
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v1, 0x1

    const v3, 0x7f020305

    invoke-virtual {v0, v1, v3}, Lcom/android/phone/IncomingCallImageWidget;->setHandleImageResource(II)V

    .line 438
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 439
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v1, 0x2

    const v3, 0x7f020302

    invoke-virtual {v0, v1, v3}, Lcom/android/phone/IncomingCallImageWidget;->setHandleImageResource(II)V

    .line 442
    :goto_2
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v1, 0x1

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(II)V

    .line 444
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallImageWidget;->setTouchVibationMode(Z)V

    .line 446
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const-wide v3, 0x3ff2666666666666L

    invoke-virtual {v0, v3, v4}, Lcom/android/phone/IncomingCallImageWidget;->setReachedRatio(D)V

    .line 448
    const-string v0, "clear_cover_not_support_end_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 449
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v1, 0x2

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(II)V

    .line 452
    :cond_8
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 453
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;)V

    .line 454
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v1, 0x2

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(II)V

    .line 455
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallImageWidget;->setTouchVibationMode(Z)V

    .line 483
    .end local v2           #paddingLeft:I
    .end local v7           #paddingRight:I
    :cond_9
    :goto_3
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 484
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallInfoContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerCoverView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 488
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/phone/CallCardCovered;->mDensity:F

    .line 490
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallImageWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 491
    .local v11, incomingcallImageWidgetMLP:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallImageWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 492
    .local v10, inCallImageWidgetMLP:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallImageWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 493
    .local v9, endCallImageWidgetMLP:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mDensity:F

    const/high16 v1, 0x4307

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 494
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mDensity:F

    const/high16 v1, 0x4180

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 495
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mDensity:F

    const/high16 v1, 0x4180

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 496
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mDensity:F

    const/high16 v1, 0x4307

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 497
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mDensity:F

    const/high16 v1, 0x4180

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 498
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mDensity:F

    const/high16 v1, 0x4180

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 499
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mDensity:F

    const/high16 v1, 0x4307

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 500
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mDensity:F

    const/high16 v1, 0x4180

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 501
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mDensity:F

    const/high16 v1, 0x4180

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 502
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, v11}, Lcom/android/phone/IncomingCallImageWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, v10}, Lcom/android/phone/IncomingCallImageWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, v9}, Lcom/android/phone/IncomingCallImageWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 508
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 509
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/android/phone/CallCardCovered$3;

    invoke-direct {v1, p0}, Lcom/android/phone/CallCardCovered$3;-><init>(Lcom/android/phone/CallCardCovered;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 520
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/android/phone/CallCardCovered$4;

    invoke-direct {v1, p0}, Lcom/android/phone/CallCardCovered$4;-><init>(Lcom/android/phone/CallCardCovered;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 527
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 528
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandleText:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 529
    const-string v0, "automatic_answering_machine_kdi"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 530
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandleText:Landroid/widget/TextView;

    const v1, 0x7f0908fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 535
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandleMsgIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 544
    .end local v9           #endCallImageWidgetMLP:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v10           #inCallImageWidgetMLP:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11           #incomingcallImageWidgetMLP:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_b
    :goto_5
    new-instance v0, Lcom/android/phone/CallTime;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTime:Lcom/android/phone/CallTime;

    .line 545
    return-void

    .line 408
    :cond_c
    const v0, 0x7f0a0051

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    .line 409
    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    .line 410
    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    .line 411
    const v0, 0x7f0a0082

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 425
    :cond_d
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    goto/16 :goto_1

    .line 441
    .restart local v2       #paddingLeft:I
    .restart local v7       #paddingRight:I
    :cond_e
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v1, 0x2

    const v3, 0x7f020301

    invoke-virtual {v0, v1, v3}, Lcom/android/phone/IncomingCallImageWidget;->setHandleImageResource(II)V

    goto/16 :goto_2

    .line 458
    .end local v2           #paddingLeft:I
    .end local v7           #paddingRight:I
    :cond_f
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 460
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 461
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mSpaekerMuteLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 466
    :cond_10
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTimeForEndScreen:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 469
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerCoverTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    :goto_6
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabelLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 474
    .local v12, infoLP:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v13, v0

    .line 475
    .local v13, top_mlpLableInfo:I
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v12, v0, v13, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 476
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabelLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 479
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto/16 :goto_3

    .line 471
    .end local v12           #infoLP:Landroid/widget/FrameLayout$LayoutParams;
    .end local v13           #top_mlpLableInfo:I
    :cond_11
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine4:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 532
    .restart local v9       #endCallImageWidgetMLP:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v10       #inCallImageWidgetMLP:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v11       #incomingcallImageWidgetMLP:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_12
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandleText:Landroid/widget/TextView;

    const v1, 0x7f0908d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 537
    :cond_13
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandleMsgIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 538
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandleMsgIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 1858
    packed-switch p2, :pswitch_data_0

    .line 1868
    :goto_0
    :pswitch_0
    return-void

    .line 1861
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->pokeUserActivity()V

    goto :goto_0

    .line 1858
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0201e0

    const/4 v3, 0x1

    .line 2342
    const-string v0, "CallCardCovered"

    const-string v1, "onImageLoadComplete"

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2343
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2344
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mLoadingPersonUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 2350
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->sendViewNotificationAsync(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2355
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mLoadingPersonUri:Landroid/net/Uri;

    .line 2357
    check-cast p4, Lcom/android/phone/CallCardCovered$AsyncLoadCookie;

    .line 2358
    iget-object v0, p4, Lcom/android/phone/CallCardCovered$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2359
    iget-object v1, p4, Lcom/android/phone/CallCardCovered$AsyncLoadCookie;->imageView:Landroid/widget/ImageView;

    .line 2360
    iget-object v2, p4, Lcom/android/phone/CallCardCovered$AsyncLoadCookie;->call:Lcom/android/internal/telephony/Call;

    .line 2362
    iput-object p2, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 2363
    iput-object p3, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    .line 2364
    iput-boolean v3, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 2368
    if-eqz p2, :cond_3

    .line 2369
    invoke-direct {p0, v1, p2}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2390
    :cond_0
    :goto_1
    if-nez p1, :cond_1

    .line 2391
    invoke-direct {p0, v2}, Lcom/android/phone/CallCardCovered;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 2393
    :cond_1
    return-void

    .line 2353
    :cond_2
    const-string v0, "CallCardCovered"

    const-string v1, "Person Uri isn\'t available while Image is successfully loaded."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2370
    :cond_3
    if-eqz p3, :cond_4

    .line 2371
    invoke-direct {p0, v1, p3}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 2373
    :cond_4
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2374
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2375
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v3, :cond_0

    .line 2378
    invoke-direct {p0, v1, v4}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 2381
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 2382
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v3, :cond_0

    .line 2385
    invoke-direct {p0, v1, v4}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 2457
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2458
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 2470
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2460
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->toggleSpeaker()V

    .line 2461
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->pokeUserActivity()V

    goto :goto_0

    .line 2464
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->toggleMute()V

    .line 2465
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->pokeUserActivity()V

    goto :goto_0

    .line 2458
    :pswitch_data_0
    .packed-switch 0x7f0a0099
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete: token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cookie "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ci "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1048
    instance-of v0, p2, Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_3

    .line 1049
    const-string v0, "callerinfo query complete, updating ui from displayMainCallStatus()"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1050
    check-cast p2, Lcom/android/internal/telephony/Connection;

    .line 1051
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 1052
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1053
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1054
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 1057
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v6, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 1060
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .line 1061
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .line 1062
    if-eqz v6, :cond_0

    .line 1063
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 1064
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    .line 1066
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- onQueryComplete: NumberPresentation="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "namPresentation="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", contactExists="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v7, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1069
    iget-boolean v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_2

    .line 1070
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallCardCovered;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 1081
    :cond_1
    :goto_1
    return-void

    .line 1073
    :cond_2
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallCardCovered;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto :goto_1

    .line 1077
    :cond_3
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1078
    const-string v0, "callerinfo query complete, updating ui from ongoing or onhold"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1079
    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-static {p3, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    move-object v6, p2

    goto :goto_0
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 0
    .parameter "timeElapsed"

    .prologue
    .line 332
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCardCovered;->updateElapsedTimeWidget(J)V

    .line 333
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0a0009

    const/4 v2, 0x1

    .line 1780
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

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 1782
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_1

    .line 1852
    :cond_0
    :goto_0
    return-void

    .line 1786
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallImageWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 1787
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1789
    :pswitch_0
    const-string v0, "LEFT_HANDLE: answer!"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 1790
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1791
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->startPutDownListening(Landroid/content/Context;)V

    .line 1794
    :cond_2
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1795
    invoke-static {}, Lcom/android/phone/PhoneUtils;->stopAnswerMemoRecording()V

    .line 1798
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 1802
    :pswitch_1
    const-string v0, "RIGHT_HANDLE: reject!"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 1804
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1805
    invoke-static {}, Lcom/android/phone/PhoneUtils;->stopAnswerMemoRecording()V

    .line 1808
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 1814
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallImageWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 1815
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 1818
    :pswitch_2
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1819
    invoke-static {}, Lcom/android/phone/PhoneUtils;->stopAnswerMemoRecording()V

    .line 1820
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 1822
    :cond_6
    const-string v0, "LEFT_HANDLE: toggle speaker"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 1823
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f0a0099

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 1830
    :pswitch_3
    const-string v0, "RIGHT_HANDLE: endCall"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 1831
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f0a01b4

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_0

    .line 1838
    :cond_7
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1839
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallImageWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1840
    packed-switch p2, :pswitch_data_2

    goto/16 :goto_0

    .line 1842
    :pswitch_4
    const-string v0, "LEFT_HANDLE: redial"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 1843
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->redial()V

    goto/16 :goto_0

    .line 1787
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1815
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1840
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public resetCallCardAnimation()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2245
    const-string v0, "resetCallCardAnimation"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    move v0, v1

    .line 2247
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 2248
    :goto_1
    iget-object v3, p0, Lcom/android/phone/CallCardCovered;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 2249
    iget-object v3, p0, Lcom/android/phone/CallCardCovered;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 2248
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2247
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2252
    :cond_1
    return-void
.end method

.method public setAutoAnswered(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2562
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    const-string v1, "com.android.phone.auto_answer_memo_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2563
    const-string v1, "isAutoAnswered"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2564
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2565
    return-void
.end method

.method public setCallCardCoveredBackgound()V
    .locals 8

    .prologue
    const/16 v7, 0x77

    const/16 v6, 0x6b

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 2512
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2513
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "sview_color_use_all"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2514
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sview_color_random"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2516
    iget-object v3, p0, Lcom/android/phone/CallCardCovered;->mInCallInfoBackground:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 2517
    if-nez v0, :cond_1

    .line 2518
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallInfoBackground:Landroid/widget/ImageView;

    const v2, 0x7f020289

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2519
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallInfoBackground:Landroid/widget/ImageView;

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 2520
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallInfoBackground:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 2521
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerCoverView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2541
    :cond_0
    :goto_0
    return-void

    .line 2524
    :cond_1
    if-nez v2, :cond_2

    .line 2525
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "s_vew_cover_background_color"

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2530
    :goto_1
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mInCallInfoBackground:Landroid/widget/ImageView;

    const v3, 0x7f0204ee

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2531
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mInCallInfoBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 2533
    const/high16 v2, -0x100

    if-ne v0, v2, :cond_3

    .line 2534
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallInfoBackground:Landroid/widget/ImageView;

    const/16 v2, 0x1a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 2537
    :goto_2
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerCoverView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 2526
    :cond_2
    if-ne v4, v2, :cond_4

    .line 2527
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "sview_bg_display_random"

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 2536
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallInfoBackground:Landroid/widget/ImageView;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public setGuidanceMsgPlaying(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2589
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    const-string v1, "com.android.phone.auto_answer_memo_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2590
    const-string v1, "isGuidanceMsgPlaying"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2591
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2592
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 549
    return-void
.end method

.method public showAnswerMemoRecordingPhoto()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 2614
    invoke-virtual {p0, v2}, Lcom/android/phone/CallCardCovered;->setGuidanceMsgPlaying(Z)V

    .line 2617
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2618
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    const v1, 0x7f020307

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2619
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2620
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemo:Landroid/widget/TextView;

    const v1, 0x7f0908da

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2621
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2631
    :goto_0
    return-void

    .line 2623
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2624
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2626
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2627
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2629
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordingMessageLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showGuidancePlayingPhoto()V
    .locals 4

    .prologue
    const v3, 0x7f0908db

    const/16 v1, 0x82

    const/4 v2, 0x0

    .line 2642
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->setGuidanceMsgPlaying(Z)V

    .line 2643
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2644
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2645
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    .line 2646
    iput v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    .line 2648
    :cond_0
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2649
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2650
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    const v1, 0x7f020306

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2651
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2653
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 2654
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2655
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2666
    :cond_2
    :goto_0
    return-void

    .line 2658
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 2659
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2660
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2662
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2663
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public stopCallCardAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x8c

    const/16 v2, 0x82

    .line 2299
    const-string v0, "stopCallCardAnimation"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2300
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2301
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2303
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2304
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2306
    :cond_1
    return-void
.end method

.method stopTimer()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 338
    return-void
.end method

.method updateMemoRecordTime()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x3e8

    .line 2763
    const-string v0, "updateMemoRecordTime"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2764
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2765
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2766
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/AnsweringMemoRecorder;->getRecordTime()J

    move-result-wide v0

    .line 2767
    const-string v2, "clear_cover_enhanced"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2768
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->memoRecInfo:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->memoRecordTime:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 2769
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->memoRecordTime:Landroid/widget/TextView;

    div-long/2addr v0, v3

    invoke-static {v0, v1}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2778
    :cond_0
    :goto_0
    return-void

    .line 2772
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mRecordingMessageLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mRecordTime:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 2773
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mRecordTime:Landroid/widget/TextView;

    div-long/2addr v0, v3

    invoke-static {v0, v1}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x4

    const/4 v3, 0x1

    const/16 v8, 0x8

    const/4 v4, 0x0

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    .line 561
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 562
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 563
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 566
    const-string v6, "feature_chn_duos"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 567
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreenActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 568
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    .line 569
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 570
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateState() state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    .line 573
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 574
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 575
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 578
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-nez v6, :cond_9

    .line 580
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_23

    move v0, v3

    .line 584
    :goto_0
    const-string v5, "automatic_answering_machine"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 585
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v5

    if-nez v5, :cond_8

    .line 586
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->invisibleMemoRecInfoView()V

    move v5, v0

    move-object v0, v2

    .line 634
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCardCovered;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 636
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v6, v8}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 637
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v6, v8}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 638
    const-string v6, "clear_cover_enhanced"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 639
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mSpaekerMuteLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 640
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v6, v8}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 644
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v6

    if-nez v6, :cond_10

    move v6, v3

    .line 645
    :goto_2
    const-string v7, "common_volte_vt_kor"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 646
    if-eqz v6, :cond_11

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v6

    if-nez v6, :cond_11

    move v6, v3

    .line 648
    :cond_3
    :goto_3
    if-eqz v5, :cond_13

    if-eqz v6, :cond_13

    .line 649
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, v4}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 656
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 657
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 660
    const-string v1, "CallCardCovered"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowRespondViaSms : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    if-eqz v0, :cond_12

    .line 663
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    .line 664
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v4}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 709
    :cond_4
    :goto_4
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 710
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 712
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 713
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 714
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 717
    :cond_5
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 718
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 719
    const v0, 0x7f0a02d0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 720
    const v1, 0x7f0a02cd

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/RejectCallWithMsgContentCovered;

    .line 721
    if-eqz v0, :cond_6

    .line 722
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getIsAnsweringMessageDisable()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 723
    const v2, 0x7f090298

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 724
    if-eqz v1, :cond_6

    .line 725
    invoke-virtual {v1}, Lcom/android/phone/RejectCallWithMsgContentCovered;->disableAnsweringMessage()V

    .line 741
    :cond_6
    :goto_5
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 742
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const v1, 0x7f0202ff

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/IncomingCallImageWidget;->setHandleImageResource(II)V

    .line 743
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v1, 0x2

    const v2, 0x7f020303

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/IncomingCallImageWidget;->setHandleImageResource(II)V

    .line 744
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, v3, v4}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(II)V

    .line 745
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 746
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 747
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 748
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->isGuidanceMsgPlaying()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 749
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v0, v9}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 750
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->showGuidancePlayingPhoto()V

    .line 772
    :cond_7
    :goto_6
    return-void

    .line 589
    :cond_8
    const-string v5, "visibleMemoRecInfoView1 ="

    invoke-direct {p0, v5}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->visibleMemoRecInfoView()V

    move v5, v0

    move-object v0, v2

    goto/16 :goto_1

    .line 594
    :cond_9
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_b

    .line 597
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 598
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v0

    if-nez v0, :cond_a

    .line 599
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->invisibleMemoRecInfoView()V

    move-object v0, v1

    move v5, v4

    goto/16 :goto_1

    .line 602
    :cond_a
    const-string v0, "visibleMemoRecInfoView2 ="

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->visibleMemoRecInfoView()V

    move-object v0, v1

    move v5, v4

    goto/16 :goto_1

    .line 607
    :cond_b
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_d

    .line 610
    const-string v5, "automatic_answering_machine"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 611
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v5

    if-nez v5, :cond_c

    .line 612
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->invisibleMemoRecInfoView()V

    move v5, v4

    goto/16 :goto_1

    .line 615
    :cond_c
    const-string v5, "visibleMemoRecInfoView2 ="

    invoke-direct {p0, v5}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->visibleMemoRecInfoView()V

    move v5, v4

    goto/16 :goto_1

    .line 621
    :cond_d
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v0, v0, Lcom/android/phone/InCallUiState;->showAlreadyDisconnectedState:Z

    if-eqz v0, :cond_e

    .line 627
    :cond_e
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 628
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 629
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->invisibleMemoRecInfoView()V

    :cond_f
    move-object v0, v5

    move v5, v4

    goto/16 :goto_1

    :cond_10
    move v6, v4

    .line 644
    goto/16 :goto_2

    :cond_11
    move v6, v4

    .line 646
    goto/16 :goto_3

    .line 666
    :cond_12
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v9}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto/16 :goto_4

    .line 669
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/phone/CallCardCovered;->okToShowInCallControls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v5

    if-eqz v5, :cond_14

    if-eqz v6, :cond_14

    iget-boolean v5, p0, Lcom/android/phone/CallCardCovered;->mShowingCallEnd:Z

    if-nez v5, :cond_14

    .line 670
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, v4}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 671
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 672
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mSpaekerMuteLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v9}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto/16 :goto_4

    .line 676
    :cond_14
    const-string v5, "clear_cover_enhanced"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 677
    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    .line 678
    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->getNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v0

    .line 679
    iget-boolean v6, p0, Lcom/android/phone/CallCardCovered;->mShowingCallEnd:Z

    if-eqz v6, :cond_17

    .line 680
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v6, v4}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 682
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v6, v9}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 689
    :goto_7
    iget-boolean v6, p0, Lcom/android/phone/CallCardCovered;->mShowingCallEnd:Z

    if-eqz v6, :cond_18

    if-nez v5, :cond_18

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 692
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, v4}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 699
    :goto_8
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 700
    :cond_15
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, v8}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 701
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, v8}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, v8}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 706
    :cond_16
    const-string v0, "There are no controls."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 684
    :cond_17
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v6, v8}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    goto :goto_7

    .line 695
    :cond_18
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, v8}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    goto :goto_8

    .line 728
    :cond_19
    if-eqz v0, :cond_1a

    .line 729
    const-string v2, "automatic_answering_machine_kdi"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 730
    const v2, 0x7f0908fc

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 735
    :cond_1a
    :goto_9
    if-eqz v1, :cond_6

    .line 736
    invoke-virtual {v1}, Lcom/android/phone/RejectCallWithMsgContentCovered;->enableAnsweringMessage()V

    goto/16 :goto_5

    .line 732
    :cond_1b
    const v2, 0x7f0908d4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_9

    .line 751
    :cond_1c
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 752
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v0, v9}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 753
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->showAnswerMemoRecordingPhoto()V

    goto/16 :goto_6

    .line 756
    :cond_1d
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->isGuidanceMsgPlaying()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 757
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->showGuidancePlayingPhoto()V

    goto/16 :goto_6

    .line 758
    :cond_1e
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 759
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->showAnswerMemoRecordingPhoto()V

    goto/16 :goto_6

    .line 763
    :cond_1f
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, v3, v9}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(II)V

    .line 764
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 765
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 766
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 767
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_6

    :cond_20
    move v5, v4

    goto/16 :goto_1

    :cond_21
    move-object v0, v1

    move v5, v4

    goto/16 :goto_1

    :cond_22
    move v5, v0

    move-object v0, v2

    goto/16 :goto_1

    :cond_23
    move v0, v4

    goto/16 :goto_0
.end method

.method visibleMemoRecInfoView()V
    .locals 2

    .prologue
    .line 2692
    const-string v0, "visibleMemoRecInfoView"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2693
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->showMemoRecInfo()V

    .line 2694
    return-void
.end method
