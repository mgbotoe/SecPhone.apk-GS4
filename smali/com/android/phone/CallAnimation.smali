.class public Lcom/android/phone/CallAnimation;
.super Ljava/lang/Object;
.source "CallAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallAnimation$1;,
        Lcom/android/phone/CallAnimation$AnimationType;
    }
.end annotation


# static fields
.field public static final DBG:I

.field private static mAniType:Lcom/android/phone/CallAnimation$AnimationType;

.field private static sInstance:Lcom/android/phone/CallAnimation;


# instance fields
.field private mBannerAlpha:Landroid/view/animation/AlphaAnimation;

.field private mBannerTrans:Landroid/view/animation/TranslateAnimation;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTypeIcon:Landroid/widget/ImageView;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

.field private mDialpad:Landroid/widget/TableLayout;

.field private mDtmfEditText:Landroid/widget/EditText;

.field private mDtmfTrans:Landroid/view/animation/TranslateAnimation;

.field private mElapsedTime:Landroid/widget/TextView;

.field private mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCallLeftWidget:Landroid/widget/FrameLayout;

.field private mIncomingCallRightWidget:Landroid/widget/FrameLayout;

.field private mInsetPhoto:Landroid/widget/ImageView;

.field private mKeypadTrans:Landroid/view/animation/TranslateAnimation;

.field private mPeriodMark:Landroid/widget/ImageView;

.field private mPhoneNumberLocator:Landroid/widget/TextView;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryPhoto:Landroid/widget/ImageView;

.field private mRejectMsgSlidingDrawer:Landroid/widget/SlidingDrawer;

.field private mSecondaryCallBanner:Landroid/view/ViewGroup;

.field private mSecondaryPhoto:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    sput v0, Lcom/android/phone/CallAnimation;->DBG:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public static cleanInsetPhotoAnimation()V
    .locals 2

    .prologue
    .line 420
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    if-eqz v0, :cond_0

    .line 421
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    iget-object v0, v0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 422
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    iget-object v0, v0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 423
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    .line 426
    :cond_0
    return-void
.end method

.method private cleanViewsAnimation()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->clearAnimation()V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v0}, Lcom/android/phone/EndCallButtonsView;->clearAnimation()V

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialpad:Landroid/widget/TableLayout;

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialpad:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->clearAnimation()V

    .line 438
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 439
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearAnimation()V

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 442
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 444
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 445
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 447
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 448
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 450
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 451
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 453
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 454
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 456
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 457
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 459
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 460
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 462
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 463
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 465
    :cond_b
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 466
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 468
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mIncomingCallLeftWidget:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_d

    .line 469
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mIncomingCallLeftWidget:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 471
    :cond_d
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mIncomingCallRightWidget:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_e

    .line 472
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mIncomingCallRightWidget:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 474
    :cond_e
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mRejectMsgSlidingDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_f

    .line 475
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mRejectMsgSlidingDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->clearAnimation()V

    .line 477
    :cond_f
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "phone_number_locator"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 478
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 479
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 482
    :cond_10
    return-void
.end method

.method public static clearAnimation()V
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    invoke-direct {v0}, Lcom/android/phone/CallAnimation;->cleanViewsAnimation()V

    .line 143
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    invoke-direct {v0}, Lcom/android/phone/CallAnimation;->resetViewHandles()V

    .line 145
    :cond_0
    return-void
.end method

.method private dialpadBannerAlphaAnimation(Z)V
    .locals 3
    .parameter "isOpen"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 287
    if-eqz p1, :cond_7

    .line 288
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 294
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 295
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 297
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 300
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 311
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 313
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 314
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 317
    :cond_5
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "phone_number_locator"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 318
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 319
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 322
    :cond_6
    return-void

    .line 290
    :cond_7
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    goto/16 :goto_0
.end method

.method private dialpadBannerAnimation(Z)V
    .locals 9
    .parameter "isOpen"

    .prologue
    .line 223
    const-string v1, "use_alpha_anim_for_banner"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    invoke-direct {p0, p1}, Lcom/android/phone/CallAnimation;->dialpadBannerAlphaAnimation(Z)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    if-eqz p1, :cond_9

    .line 229
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x4080

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    .line 234
    :goto_1
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    if-eqz p1, :cond_a

    .line 236
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x3f40

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    .line 242
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const v3, 0x10a0006

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 244
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 245
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 246
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 247
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 248
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 249
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 250
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 252
    :cond_4
    const/4 v0, 0x0

    .line 253
    .local v0, callStateTrans:Landroid/view/animation/TranslateAnimation;
    if-eqz p1, :cond_b

    .line 254
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #callStateTrans:Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 258
    .restart local v0       #callStateTrans:Landroid/view/animation/TranslateAnimation;
    :goto_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 260
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 261
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 263
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 264
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 266
    :cond_5
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 267
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 271
    :cond_6
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    .line 272
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 275
    :cond_7
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "phone_number_locator"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 276
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    .line 277
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 281
    :cond_8
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 231
    .end local v0           #callStateTrans:Landroid/view/animation/TranslateAnimation;
    :cond_9
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x4080

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_1

    .line 238
    :cond_a
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x3f40

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2

    .line 256
    .restart local v0       #callStateTrans:Landroid/view/animation/TranslateAnimation;
    :cond_b
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #callStateTrans:Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0       #callStateTrans:Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_3
.end method

.method private dialpadDtmfEditTextAnimation(Z)V
    .locals 10
    .parameter "isOpen"

    .prologue
    .line 200
    const/4 v9, 0x0

    .line 201
    .local v9, offsetDelay:I
    if-eqz p1, :cond_3

    .line 202
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x4080

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    .line 203
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const/16 v9, 0xc8

    .line 210
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 214
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    int-to-long v1, v9

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 215
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 216
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 220
    return-void

    .line 207
    :cond_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x4080

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    goto :goto_0
.end method

.method private dialpadKeypadAnimation(Z)V
    .locals 9
    .parameter "isOpen"

    .prologue
    .line 185
    if-eqz p1, :cond_1

    .line 186
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 192
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 193
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialpad:Landroid/widget/TableLayout;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialpad:Landroid/widget/TableLayout;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 197
    return-void

    .line 188
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    goto :goto_0
.end method

.method private dialpadPhotoAnimation(Z)V
    .locals 5
    .parameter "isOpen"

    .prologue
    const-wide/16 v3, 0xc8

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, photoAlpha:Landroid/view/animation/AlphaAnimation;
    if-eqz p1, :cond_3

    .line 327
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #photoAlpha:Landroid/view/animation/AlphaAnimation;
    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 328
    .restart local v0       #photoAlpha:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 334
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 336
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 338
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 343
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 344
    :cond_2
    return-void

    .line 330
    :cond_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #photoAlpha:Landroid/view/animation/AlphaAnimation;
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 331
    .restart local v0       #photoAlpha:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_0
.end method

.method private incomingCallAnimation()V
    .locals 12

    .prologue
    .line 347
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x3e4ccccd

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 348
    .local v0, mPhotoTrans:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, 0x3e4ccccd

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 349
    .local v1, mRejectMsgTrans:Landroid/view/animation/TranslateAnimation;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const v4, -0x41b33333

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 350
    .local v2, mAcceptTrans:Landroid/view/animation/TranslateAnimation;
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const v5, 0x3e4ccccd

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 352
    .local v3, mRejectTrans:Landroid/view/animation/TranslateAnimation;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    const v5, 0x10a0006

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 354
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 355
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 356
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 358
    :cond_0
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 359
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 360
    :cond_1
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 361
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 363
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    const v5, 0x10a0006

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 365
    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 366
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mRejectMsgSlidingDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v4, :cond_3

    .line 367
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mRejectMsgSlidingDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v4, v1}, Landroid/widget/SlidingDrawer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 369
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    const v5, 0x10a0006

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 371
    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 372
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mIncomingCallLeftWidget:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_4

    .line 373
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mIncomingCallLeftWidget:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 375
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    const v5, 0x10a0006

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 377
    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 378
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mIncomingCallRightWidget:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_5

    .line 379
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mIncomingCallRightWidget:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 380
    :cond_5
    invoke-virtual {v3, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 382
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/phone/CallAnimation;->dialpadBannerAnimation(Z)V

    .line 383
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 96
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a0113

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 99
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a016d

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EndCallButtonsView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    .line 101
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a00ee

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mDialpad:Landroid/widget/TableLayout;

    .line 102
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a0114

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mDtmfEditText:Landroid/widget/EditText;

    .line 103
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a0042

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 104
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a0040

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    .line 105
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a0076

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    .line 106
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a0075

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    .line 107
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a0050

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    .line 110
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 111
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a0051

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    .line 112
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a0052

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    .line 117
    :goto_0
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "phone_number_locator"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a0057

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a01eb

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallWidget;

    .line 123
    .local v0, incomingCallWidget:Lcom/android/phone/IncomingCallWidget;
    if-eqz v0, :cond_1

    .line 124
    iget-object v1, v0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v1, v1, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mIncomingCallLeftWidget:Landroid/widget/FrameLayout;

    .line 125
    iget-object v1, v0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v1, v1, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mIncomingCallRightWidget:Landroid/widget/FrameLayout;

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a02cb

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SlidingDrawer;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mRejectMsgSlidingDrawer:Landroid/widget/SlidingDrawer;

    .line 130
    .end local v0           #incomingCallWidget:Lcom/android/phone/IncomingCallWidget;
    :cond_2
    return-void

    .line 114
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a004d

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    .line 115
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 565
    const-string v0, "CallAnimation"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return-void
.end method

.method private resetViewHandles()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 485
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 486
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 487
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    .line 488
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mDialpad:Landroid/widget/TableLayout;

    .line 489
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfEditText:Landroid/widget/EditText;

    .line 490
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 491
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    .line 492
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    .line 493
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    .line 494
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    .line 495
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    .line 496
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    .line 497
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    .line 498
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mIncomingCallLeftWidget:Landroid/widget/FrameLayout;

    .line 499
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mIncomingCallRightWidget:Landroid/widget/FrameLayout;

    .line 500
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mRejectMsgSlidingDrawer:Landroid/widget/SlidingDrawer;

    .line 501
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    .line 502
    return-void
.end method

.method private start(Lcom/android/phone/CallAnimation$AnimationType;)Z
    .locals 4
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 148
    sget-object v2, Lcom/android/phone/CallAnimation$1;->$SwitchMap$com$android$phone$CallAnimation$AnimationType:[I

    invoke-virtual {p1}, Lcom/android/phone/CallAnimation$AnimationType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 176
    :cond_0
    :goto_0
    :pswitch_0
    sput-object p1, Lcom/android/phone/CallAnimation;->mAniType:Lcom/android/phone/CallAnimation$AnimationType;

    move v0, v1

    .line 177
    :cond_1
    return v0

    .line 150
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/phone/CallAnimation;->dialpadKeypadAnimation(Z)V

    .line 151
    invoke-direct {p0, v1}, Lcom/android/phone/CallAnimation;->dialpadDtmfEditTextAnimation(Z)V

    .line 152
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0, v1}, Lcom/android/phone/CallAnimation;->dialpadBannerAnimation(Z)V

    .line 154
    invoke-direct {p0, v1}, Lcom/android/phone/CallAnimation;->dialpadPhotoAnimation(Z)V

    goto :goto_0

    .line 158
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2}, Landroid/view/animation/TranslateAnimation;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2}, Landroid/view/animation/TranslateAnimation;->hasEnded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/phone/CallAnimation;->dialpadKeypadAnimation(Z)V

    .line 162
    invoke-direct {p0, v0}, Lcom/android/phone/CallAnimation;->dialpadDtmfEditTextAnimation(Z)V

    .line 163
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    invoke-direct {p0, v0}, Lcom/android/phone/CallAnimation;->dialpadPhotoAnimation(Z)V

    goto :goto_0

    .line 171
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/CallAnimation;->incomingCallAnimation()V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static startAnimation(Lcom/android/phone/CallAnimation$AnimationType;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallAnimation;->log(Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/android/phone/CallAnimation;

    invoke-direct {v0}, Lcom/android/phone/CallAnimation;-><init>()V

    sput-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    .line 136
    :cond_0
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    invoke-direct {v0}, Lcom/android/phone/CallAnimation;->init()V

    .line 137
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    invoke-direct {v0, p0}, Lcom/android/phone/CallAnimation;->start(Lcom/android/phone/CallAnimation$AnimationType;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationEnd :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallAnimation;->log(Ljava/lang/String;)V

    .line 528
    sget-object v0, Lcom/android/phone/CallAnimation$1;->$SwitchMap$com$android$phone$CallAnimation$AnimationType:[I

    sget-object v1, Lcom/android/phone/CallAnimation;->mAniType:Lcom/android/phone/CallAnimation$AnimationType;

    invoke-virtual {v1}, Lcom/android/phone/CallAnimation$AnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 562
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 542
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    if-ne p1, v0, :cond_1

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 544
    invoke-direct {p0, v2}, Lcom/android/phone/CallAnimation;->dialpadBannerAnimation(Z)V

    goto :goto_0

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    if-ne p1, v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v0, :cond_2

    .line 547
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    .line 549
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v2, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 550
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->onDialerClose(Z)V

    goto :goto_0

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 523
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationStart :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallAnimation;->log(Ljava/lang/String;)V

    .line 507
    sget-object v0, Lcom/android/phone/CallAnimation$1;->$SwitchMap$com$android$phone$CallAnimation$AnimationType:[I

    sget-object v1, Lcom/android/phone/CallAnimation;->mAniType:Lcom/android/phone/CallAnimation$AnimationType;

    invoke-virtual {v1}, Lcom/android/phone/CallAnimation$AnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 519
    :pswitch_0
    return-void

    .line 507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
