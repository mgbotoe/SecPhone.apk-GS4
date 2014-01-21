.class public Lcom/android/phone/EndCallButtonsView;
.super Landroid/widget/RelativeLayout;
.source "EndCallButtonsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private HAND_ADAPTABLE_OPERATION:Ljava/lang/String;

.field private ONE_HAND_DIRECTION:Ljava/lang/String;

.field private ONE_HAND_ENABLED:Ljava/lang/String;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCreateButton:Landroid/widget/Button;

.field mEndcallBottomFrame:Landroid/view/View;

.field private mIpCallButton:Landroid/widget/Button;

.field private mIsOnehandOn:Z

.field private mLeftArrow:Landroid/view/View;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRightArrow:Landroid/view/View;

.field private mSendMsgButton:Landroid/widget/Button;

.field private mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

.field private mUpdateButton:Landroid/widget/Button;

.field private mVideoCallButton:Landroid/widget/Button;

.field private mViewButton:Landroid/widget/Button;

.field private mVoiceCallButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 65
    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/EndCallButtonsView;->mIsOnehandOn:Z

    .line 75
    const-string v0, "onehand_dialer_enabled"

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_ENABLED:Ljava/lang/String;

    .line 77
    const-string v0, "onehand_direction"

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    .line 79
    const-string v0, "hand_adaptable_operation"

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->HAND_ADAPTABLE_OPERATION:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method private ForceFinishInCallscreen()V
    .locals 2

    .prologue
    .line 438
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 439
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v1

    .line 440
    .local v1, inCallScreen:Lcom/android/phone/InCallScreen;
    if-eqz v1, :cond_0

    .line 441
    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->forceFinish()V

    .line 443
    :cond_0
    return-void
.end method

.method private blockEndAnimation()V
    .locals 3

    .prologue
    .line 431
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 432
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v1

    .line 433
    .local v1, inCallScreen:Lcom/android/phone/InCallScreen;
    if-eqz v1, :cond_0

    .line 434
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->setBlockEndAnimation(Z)V

    .line 436
    :cond_0
    return-void
.end method

.method private getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "call"

    .prologue
    .line 724
    if-nez p1, :cond_0

    .line 725
    const/4 v1, 0x0

    .line 731
    :goto_0
    return-object v1

    .line 727
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 728
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 729
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 731
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0
.end method

.method private getNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 4
    .parameter "conn"

    .prologue
    .line 736
    const/4 v1, 0x0

    .line 737
    .local v1, phoneNumber:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 739
    .local v0, callerInfo:Lcom/android/internal/telephony/CallerInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumber: conn.getAddress() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumber: conn.getOrigDialString() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 741
    if-eqz v0, :cond_0

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumber: callerInfo.phoneNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 744
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 745
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 770
    :cond_1
    :goto_0
    return-object v1

    .line 752
    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCommon;->hasExtentionNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 755
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 758
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 760
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 763
    :cond_5
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 765
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 766
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 789
    const-string v0, "EndCallButtonsView"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 793
    const-string v0, "EndCallButtonsView"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 794
    return-void
.end method

.method private startActivitySafely(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 798
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    :goto_0
    return-void

    .line 799
    :catch_0
    move-exception v0

    .line 801
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public disableAllButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 417
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 418
    const-string v0, "ip_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 425
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 426
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 427
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 428
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "view"

    .prologue
    .line 448
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 449
    .local v3, id:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onClick(View "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 450
    const/4 v1, 0x0

    .line 451
    .local v1, call:Lcom/android/internal/telephony/Call;
    const-string v10, "feature_chn_duos"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 452
    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 456
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_0

    .line 458
    const-string v10, "feature_chn_duos"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 459
    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 464
    :cond_0
    :goto_1
    if-nez v1, :cond_4

    .line 465
    const-string v10, "onClick : call is null"

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 683
    :cond_1
    :goto_2
    return-void

    .line 454
    :cond_2
    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    goto :goto_0

    .line 461
    :cond_3
    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    goto :goto_1

    .line 469
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/phone/EndCallButtonsView;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 471
    .local v2, conn:Lcom/android/internal/telephony/Connection;
    if-nez v2, :cond_5

    .line 472
    const-string v10, "onClick : connection is null"

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    goto :goto_2

    .line 476
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/phone/EndCallButtonsView;->getNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v8

    .line 478
    .local v8, phoneNumber:Ljava/lang/String;
    const-string v10, "roaming_auto_dial"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 479
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v8, :cond_6

    .line 480
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onClick: Roaming area before - phoneNumber = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 481
    const-string v10, "feature_lgt"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 482
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 483
    .local v6, isIncome:Ljava/lang/Boolean;
    invoke-static {v8, v6}, Lcom/android/phone/PhoneUtilsExt;->setEndCallNumberForLGTRAD(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v8

    .line 487
    .end local v6           #isIncome:Ljava/lang/Boolean;
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onClick: Roaming area after - phoneNumber = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 491
    :cond_6
    packed-switch v3, :pswitch_data_0

    .line 680
    :pswitch_0
    const-string v10, "EndCallButtonsView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onClick: unexpected click: View "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 485
    :cond_7
    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-static {v10, v1}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 493
    :pswitch_1
    if-eqz v8, :cond_1

    .line 494
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->blockEndAnimation()V

    .line 495
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 497
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v7

    .line 499
    .local v7, o:Ljava/lang/Object;
    if-eqz v7, :cond_8

    instance-of v10, v7, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v10, :cond_8

    .line 500
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    check-cast v7, Lcom/android/internal/telephony/CallerInfo;

    .end local v7           #o:Ljava/lang/Object;
    iput-object v7, v10, Lcom/android/phone/PhoneGlobals;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 503
    :cond_8
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.CALL_PRIVILEGED"

    const-string v11, "tel"

    const/4 v12, 0x0

    invoke-static {v11, v8, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 507
    .local v5, intent:Landroid/content/Intent;
    const-string v10, "android.phone.extra.CALL_DIRECTCALL"

    const-string v11, "Redial"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string v10, "feature_chn_duos_cdma_gsm"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 510
    const/4 v9, 0x1

    .line 511
    .local v9, simNumber:I
    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v10

    if-nez v10, :cond_c

    .line 512
    const/4 v9, 0x1

    .line 517
    :cond_9
    :goto_4
    const-string v10, "simnum"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 528
    .end local v9           #simNumber:I
    :cond_a
    :goto_5
    const-string v10, "feature_lgt"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 529
    const-string v10, "CALL_END"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 531
    :cond_b
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 533
    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 534
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 514
    .restart local v9       #simNumber:I
    :cond_c
    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 515
    const/4 v9, 0x2

    goto :goto_4

    .line 518
    .end local v9           #simNumber:I
    :cond_d
    const-string v10, "feature_chn_duos_gsm_gsm"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 520
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "CURRENT_NETWORK"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_e

    .line 521
    const/4 v9, 0x1

    .line 525
    .restart local v9       #simNumber:I
    :goto_6
    const-string v10, "simnum"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 523
    .end local v9           #simNumber:I
    :cond_e
    const/4 v9, 0x2

    .restart local v9       #simNumber:I
    goto :goto_6

    .line 540
    .end local v5           #intent:Landroid/content/Intent;
    .end local v9           #simNumber:I
    :pswitch_2
    if-eqz v8, :cond_1

    .line 541
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->blockEndAnimation()V

    .line 542
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 543
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.CALL"

    const-string v11, "tel"

    const/4 v12, 0x0

    invoke-static {v11, v8, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 545
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v10, "feature_chn_duos_cdma_gsm"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 546
    const/4 v9, 0x1

    .line 547
    .restart local v9       #simNumber:I
    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v10

    if-nez v10, :cond_11

    .line 548
    const/4 v9, 0x1

    .line 553
    :cond_f
    :goto_7
    const-string v10, "simnum"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 564
    .end local v9           #simNumber:I
    :cond_10
    :goto_8
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 565
    const-string v10, "ipcall"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 566
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 550
    .restart local v9       #simNumber:I
    :cond_11
    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    .line 551
    const/4 v9, 0x2

    goto :goto_7

    .line 554
    .end local v9           #simNumber:I
    :cond_12
    const-string v10, "feature_chn_duos_gsm_gsm"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 556
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "CURRENT_NETWORK"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_13

    .line 557
    const/4 v9, 0x1

    .line 561
    .restart local v9       #simNumber:I
    :goto_9
    const-string v10, "simnum"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_8

    .line 559
    .end local v9           #simNumber:I
    :cond_13
    const/4 v9, 0x2

    .restart local v9       #simNumber:I
    goto :goto_9

    .line 572
    .end local v5           #intent:Landroid/content/Intent;
    .end local v9           #simNumber:I
    :pswitch_3
    if-eqz v8, :cond_1

    .line 573
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->blockEndAnimation()V

    .line 574
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 576
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.CALL_PRIVILEGED"

    const-string v11, "tel"

    const/4 v12, 0x0

    invoke-static {v11, v8, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 578
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v10, "feature_chn_duos"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 580
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "CURRENT_NETWORK"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_15

    .line 581
    const/4 v9, 0x1

    .line 585
    .restart local v9       #simNumber:I
    :goto_a
    const-string v10, "simnum"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 587
    .end local v9           #simNumber:I
    :cond_14
    const-string v10, "videocall"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 588
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 590
    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 591
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    .line 592
    const-string v10, "support_incomingcall_penwindow"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 593
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->ForceFinishInCallscreen()V

    goto/16 :goto_2

    .line 583
    :cond_15
    const/4 v9, 0x2

    .restart local v9       #simNumber:I
    goto :goto_a

    .line 598
    .end local v5           #intent:Landroid/content/Intent;
    .end local v9           #simNumber:I
    :pswitch_4
    if-eqz v8, :cond_1

    .line 599
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 600
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.SENDTO"

    const-string v11, "sms"

    const/4 v12, 0x0

    invoke-static {v11, v8, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 602
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 604
    invoke-direct {p0, v5}, Lcom/android/phone/EndCallButtonsView;->startActivitySafely(Landroid/content/Intent;)V

    .line 605
    const-string v10, "support_incomingcall_penwindow"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 606
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->ForceFinishInCallscreen()V

    goto/16 :goto_2

    .line 610
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_5
    if-eqz v8, :cond_1

    .line 611
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 612
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.INSERT"

    sget-object v11, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v5, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 615
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 617
    const-string v10, "sip"

    invoke-virtual {v5, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    :goto_b
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 625
    invoke-direct {p0, v5}, Lcom/android/phone/EndCallButtonsView;->startActivitySafely(Landroid/content/Intent;)V

    .line 626
    const-string v10, "support_incomingcall_penwindow"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 627
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->ForceFinishInCallscreen()V

    goto/16 :goto_2

    .line 620
    :cond_16
    const-string v10, "phone"

    invoke-virtual {v5, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_b

    .line 631
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_6
    if-eqz v8, :cond_1

    .line 632
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 633
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.INSERT_OR_EDIT"

    sget-object v11, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v5, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 636
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 638
    const-string v10, "sip"

    invoke-virtual {v5, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    :goto_c
    const-string v10, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 649
    invoke-direct {p0, v5}, Lcom/android/phone/EndCallButtonsView;->startActivitySafely(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 641
    :cond_17
    const-string v10, "phone"

    invoke-virtual {v5, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    const-string v10, "phone_type"

    const/4 v11, 0x2

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_c

    .line 653
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_7
    if-eqz v8, :cond_1

    .line 654
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 655
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v7

    .line 656
    .restart local v7       #o:Ljava/lang/Object;
    instance-of v10, v7, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v10, :cond_1

    move-object v4, v7

    .line 657
    check-cast v4, Lcom/android/internal/telephony/CallerInfo;

    .line 658
    .local v4, info:Lcom/android/internal/telephony/CallerInfo;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v10, "content://com.android.contacts/contacts/"

    invoke-direct {v0, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 659
    .local v0, bufId:Ljava/lang/StringBuffer;
    iget-wide v10, v4, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 661
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 662
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v10, 0x3000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 664
    invoke-direct {p0, v5}, Lcom/android/phone/EndCallButtonsView;->startActivitySafely(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 669
    .end local v0           #bufId:Ljava/lang/StringBuffer;
    .end local v4           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #o:Ljava/lang/Object;
    :pswitch_8
    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 670
    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 671
    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 674
    :pswitch_9
    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 675
    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 676
    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 491
    :pswitch_data_0
    .packed-switch 0x7f0a016f
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const v6, 0x7f0a0175

    const/4 v4, 0x0

    .line 92
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 94
    const v2, 0x7f0a0172

    invoke-virtual {p0, v2}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mEndcallBottomFrame:Landroid/view/View;

    .line 95
    const-string v2, "end_call_two_button"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mEndcallBottomFrame:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mEndcallBottomFrame:Landroid/view/View;

    const v5, 0x7f020083

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 99
    :cond_0
    const v2, 0x7f0a0173

    invoke-virtual {p0, v2}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    .line 100
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const-string v2, "service_callmessage"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "single_lte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 108
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    .line 109
    const-string v2, "change_order_of_endcall_buttons"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 112
    :cond_2
    const v2, 0x7f0a0176

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    .line 113
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    if-nez v2, :cond_3

    .line 114
    const-string v2, "mVideoCallButton is null"

    invoke-direct {p0, v2}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 115
    const v2, 0x7f0a0175

    invoke-virtual {p0, v2}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :cond_4
    const v2, 0x7f0a0177

    invoke-virtual {p0, v2}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    .line 124
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :cond_5
    const v2, 0x7f0a016f

    invoke-virtual {p0, v2}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    .line 126
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_6
    const v2, 0x7f0a0170

    invoke-virtual {p0, v2}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    .line 128
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    :cond_7
    const v2, 0x7f0a0171

    invoke-virtual {p0, v2}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    .line 130
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_8
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_19

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/phone/EndCallButtonsView;->mIsOnehandOn:Z

    .line 132
    const-string v2, "support_onehand_operation"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/android/phone/EndCallButtonsView;->mIsOnehandOn:Z

    if-eqz v2, :cond_a

    .line 133
    const v2, 0x7f0a0179

    invoke-virtual {p0, v2}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    .line 134
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_9
    const v2, 0x7f0a0178

    invoke-virtual {p0, v2}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    .line 136
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    :cond_a
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v2, :cond_b

    .line 140
    new-instance v2, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v2}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 141
    :cond_b
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 142
    :cond_c
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    :cond_d
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 144
    :cond_e
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    :cond_f
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    :cond_10
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    :cond_11
    const-string v2, "ip_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 154
    const v2, 0x7f0a0174

    invoke-virtual {p0, v2}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    .line 155
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_12

    .line 156
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 183
    :cond_12
    const-string v2, "enlarge_end_call_button_text"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 185
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 186
    .local v1, size:I
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 187
    :cond_13
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 188
    :cond_14
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 189
    :cond_15
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 192
    .end local v1           #size:I
    :cond_16
    const-string v2, "change_message_icon_for_vzw"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v2, :cond_17

    .line 193
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    const v3, 0x7f020474

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 195
    :cond_17
    const-string v2, "change_message_icon_for_att"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v2, :cond_18

    .line 196
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    const v3, 0x7f020472

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 197
    :cond_18
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inflate exception - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, v6}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_19
    move v2, v4

    .line 131
    goto/16 :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 687
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 720
    :cond_0
    :goto_0
    return v5

    .line 690
    :pswitch_0
    const-string v3, "service_callmessage"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 694
    iget-object v3, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/EndCallButtonsView;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 695
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_1

    .line 696
    const-string v3, "onLongClick : connection is null"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 700
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/EndCallButtonsView;->getNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v2

    .line 701
    .local v2, number:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 706
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "*230#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 707
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 709
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PlaceCall Message :Sending intent to start outgoing call : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 711
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 712
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.app.dialertab.callmessage.CallMessageActivity"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    const v3, 0x10008000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 714
    const-string v3, "dest_number"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    invoke-direct {p0, v1}, Lcom/android/phone/EndCallButtonsView;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_0

    .line 687
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0173
        :pswitch_0
    .end packed-switch
.end method

.method public setLeftOneHandModeArrow()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 785
    :cond_1
    return-void
.end method

.method public setRightOneHandModeArrow()V
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 778
    :cond_1
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 33
    .parameter "cm"

    .prologue
    .line 200
    const-string v29, "updateState..."

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 201
    const-string v29, "feature_chn_duos"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 202
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneGlobals;->getInCallScreenActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    if-nez v29, :cond_0

    .line 204
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 205
    :cond_0
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "updateState() state = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 207
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Button;->setEnabled(Z)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Button;->setEnabled(Z)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 213
    const-string v29, "feature_chn_duos"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_17

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 215
    .local v6, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v29

    sget-object v30, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_2

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 226
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/phone/EndCallButtonsView;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v14

    .line 228
    .local v14, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v14, :cond_3a

    .line 229
    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v17

    .line 230
    .local v17, isEmergencyCall:Z
    const-string v29, "feature_lgt"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 231
    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_3

    const-string v29, "114"

    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 232
    const-string v29, "ril.simtype"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 233
    .local v27, sSimType:Ljava/lang/String;
    const-string v29, "18"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_18

    .line 234
    const/16 v17, 0x1

    .line 238
    :goto_1
    const-string v29, "lock"

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "missing_phone_lock"

    invoke-static/range {v30 .. v31}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 239
    const/16 v17, 0x1

    .line 242
    .end local v27           #sSimType:Ljava/lang/String;
    :cond_3
    if-nez v17, :cond_19

    const/4 v13, 0x1

    .line 243
    .local v13, canVoiceCall:Z
    :goto_2
    if-nez v17, :cond_1a

    const/4 v8, 0x1

    .line 244
    .local v8, canIpCall:Z
    :goto_3
    if-nez v17, :cond_1b

    const/4 v11, 0x1

    .line 245
    .local v11, canVideoCall:Z
    :goto_4
    if-nez v17, :cond_1c

    const/4 v10, 0x1

    .line 246
    .local v10, canSendMsgButton:Z
    :goto_5
    const/4 v9, 0x0

    .line 247
    .local v9, canSaveCall:Z
    const/4 v12, 0x0

    .line 248
    .local v12, canViewContact:Z
    const/16 v20, 0x0

    .line 251
    .local v20, isVoiceMail:Z
    const/4 v15, 0x0

    .line 252
    .local v15, disableAllSendButton:Z
    const/16 v19, 0x0

    .line 254
    .local v19, isInvalidNumber:Z
    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v26

    .line 256
    .local v26, presentation:I
    const-string v5, "20"

    .line 257
    .local v5, LOCK_PCW_ENABLED:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "lock_pcw_enabled"

    invoke-static/range {v29 .. v30}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 259
    .local v21, lockPcwState:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/EndCallButtonsView;->getNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v25

    .line 261
    .local v25, phoneNumber:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "presentation: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " / isCheckInvalidNumber: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {v25 .. v25}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 263
    if-eqz v21, :cond_1d

    const-string v29, "20"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1d

    .line 264
    const-string v29, "EndCallButtonsView : LOCK_PCW_ENABLED"

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 265
    const/4 v15, 0x1

    .line 295
    :cond_4
    :goto_6
    const-string v29, "feature_ktt"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 296
    const-string v29, "ril.domesticOtaStart"

    const-string v30, ""

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_5

    const-string v29, "KtfNumberReg"

    const-string v30, "ril.domesticOta"

    const-string v31, ""

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 298
    const/4 v15, 0x1

    .line 301
    :cond_5
    const-string v29, "emergency_find_lost_phone"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 302
    if-eqz v25, :cond_7

    .line 303
    const-string v29, "+82263439000"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6

    const-string v29, "1521044"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isFindService()Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_7

    .line 306
    :cond_6
    const/4 v15, 0x1

    .line 307
    const/4 v12, 0x0

    .line 308
    const/4 v9, 0x0

    .line 313
    :cond_7
    if-eqz v15, :cond_8

    .line 314
    const/4 v13, 0x0

    .line 315
    const/4 v8, 0x0

    .line 316
    const/4 v11, 0x0

    .line 317
    const/4 v10, 0x0

    .line 320
    :cond_8
    const-string v29, "support_onehand_operation"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/EndCallButtonsView;->mIsOnehandOn:Z

    move/from16 v29, v0

    if-eqz v29, :cond_c

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_26

    const/16 v23, 0x1

    .line 322
    .local v23, mIsOnehandOptionRight:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->HAND_ADAPTABLE_OPERATION:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_27

    const/16 v22, 0x1

    .line 323
    .local v22, mIsHandAdaptEnable:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    move-object/from16 v29, v0

    if-eqz v29, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v23, :cond_28

    const/16 v29, 0x0

    :goto_9
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    move-object/from16 v29, v0

    if-eqz v29, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v23, :cond_29

    const/16 v29, 0x8

    :goto_a
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :cond_a
    const-string v29, "ssuport_hand_adapt_operation"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_c

    if-eqz v22, :cond_c

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    move-object/from16 v29, v0

    if-eqz v29, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v23, :cond_2a

    const/16 v29, 0x4

    :goto_b
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    move-object/from16 v29, v0

    if-eqz v29, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v23, :cond_2b

    const/16 v29, 0x8

    :goto_c
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 332
    .end local v22           #mIsHandAdaptEnable:Z
    .end local v23           #mIsOnehandOptionRight:Z
    :cond_c
    const-string v29, "hd_voice_network_prefer"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_2c

    .line 333
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/phone/CallFeaturesSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v7

    .line 334
    .local v7, callType:I
    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->isVoLTECall(I)Z

    move-result v18

    .line 335
    .local v18, isHDVoicePrefered:Z
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "HD Voice preferred = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EndCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f02048e

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 337
    .local v28, voiceCallButton:Landroid/graphics/drawable/Drawable;
    if-eqz v18, :cond_d

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EndCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f020465

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 340
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 358
    .end local v7           #callType:I
    .end local v18           #isHDVoicePrefered:Z
    .end local v28           #voiceCallButton:Landroid/graphics/drawable/Drawable;
    :cond_e
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    if-eqz v13, :cond_30

    const/16 v29, 0x1

    :goto_e
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 359
    const-string v29, "ip_call"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    if-eqz v8, :cond_31

    const/16 v29, 0x1

    :goto_f
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 362
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    if-eqz v29, :cond_10

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    if-eqz v11, :cond_32

    const/16 v29, 0x1

    :goto_10
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 365
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    if-eqz v10, :cond_33

    const/16 v29, 0x1

    :goto_11
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    if-eqz v9, :cond_34

    const/16 v29, 0x0

    :goto_12
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    if-eqz v9, :cond_35

    const/16 v29, 0x0

    :goto_13
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    if-eqz v12, :cond_36

    const/16 v29, 0x0

    :goto_14
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 370
    const-string v29, "support_focused_button"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 371
    if-eqz v9, :cond_37

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Button;->clearFocus()V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Button;->requestFocus()Z

    .line 380
    :cond_11
    :goto_15
    const-string v29, "feature_ctc"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_12

    if-eqz v20, :cond_12

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x4

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Button;->setVisibility(I)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x4

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Button;->setVisibility(I)V

    .line 385
    :cond_12
    const-string v29, "feature_chn"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 386
    if-eqz v19, :cond_13

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Button;->setVisibility(I)V

    .line 393
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    if-eqz v29, :cond_14

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v29

    check-cast v29, Landroid/view/ViewGroup;

    const-string v30, "video_call_disable"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_38

    const/16 v30, 0x0

    :goto_16
    invoke-virtual/range {v29 .. v30}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 397
    :cond_14
    const-string v29, "feature_lgt"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    if-eqz v29, :cond_15

    .line 398
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_39

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Button;->setEnabled(Z)V

    .line 407
    :cond_15
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    if-eqz v29, :cond_16

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Button;->setVisibility(I)V

    .line 414
    .end local v5           #LOCK_PCW_ENABLED:Ljava/lang/String;
    .end local v8           #canIpCall:Z
    .end local v9           #canSaveCall:Z
    .end local v10           #canSendMsgButton:Z
    .end local v11           #canVideoCall:Z
    .end local v12           #canViewContact:Z
    .end local v13           #canVoiceCall:Z
    .end local v15           #disableAllSendButton:Z
    .end local v17           #isEmergencyCall:Z
    .end local v19           #isInvalidNumber:Z
    .end local v20           #isVoiceMail:Z
    .end local v21           #lockPcwState:Ljava/lang/String;
    .end local v25           #phoneNumber:Ljava/lang/String;
    .end local v26           #presentation:I
    :cond_16
    :goto_18
    return-void

    .line 220
    .end local v6           #call:Lcom/android/internal/telephony/Call;
    .end local v14           #conn:Lcom/android/internal/telephony/Connection;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 221
    .restart local v6       #call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v29

    sget-object v30, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_2

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    goto/16 :goto_0

    .line 236
    .restart local v14       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v17       #isEmergencyCall:Z
    .restart local v27       #sSimType:Ljava/lang/String;
    :cond_18
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 242
    .end local v27           #sSimType:Ljava/lang/String;
    :cond_19
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 243
    .restart local v13       #canVoiceCall:Z
    :cond_1a
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 244
    .restart local v8       #canIpCall:Z
    :cond_1b
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 245
    .restart local v11       #canVideoCall:Z
    :cond_1c
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 267
    .restart local v5       #LOCK_PCW_ENABLED:Ljava/lang/String;
    .restart local v9       #canSaveCall:Z
    .restart local v10       #canSendMsgButton:Z
    .restart local v12       #canViewContact:Z
    .restart local v15       #disableAllSendButton:Z
    .restart local v19       #isInvalidNumber:Z
    .restart local v20       #isVoiceMail:Z
    .restart local v21       #lockPcwState:Ljava/lang/String;
    .restart local v25       #phoneNumber:Ljava/lang/String;
    .restart local v26       #presentation:I
    :cond_1d
    sget v29, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_25

    sget v29, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_25

    .line 270
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v29

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_20

    if-eqz v25, :cond_1e

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v29

    if-eqz v29, :cond_1f

    :cond_1e
    invoke-static/range {v25 .. v25}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_20

    .line 272
    :cond_1f
    const/4 v15, 0x1

    goto/16 :goto_6

    .line 274
    :cond_20
    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v24

    .line 275
    .local v24, o:Ljava/lang/Object;
    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v29, v0

    if-eqz v29, :cond_21

    move-object/from16 v16, v24

    .line 276
    check-cast v16, Lcom/android/internal/telephony/CallerInfo;

    .line 277
    .local v16, info:Lcom/android/internal/telephony/CallerInfo;
    if-nez v17, :cond_22

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move/from16 v29, v0

    if-nez v29, :cond_22

    const/4 v9, 0x1

    .line 278
    :goto_19
    if-nez v17, :cond_23

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move/from16 v29, v0

    if-eqz v29, :cond_23

    const/4 v12, 0x1

    .line 279
    :goto_1a
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v29

    if-eqz v29, :cond_24

    .line 280
    const/16 v20, 0x1

    .line 285
    .end local v16           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_21
    :goto_1b
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v29

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    .line 286
    const/4 v15, 0x1

    goto/16 :goto_6

    .line 277
    .restart local v16       #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_22
    const/4 v9, 0x0

    goto :goto_19

    .line 278
    :cond_23
    const/4 v12, 0x0

    goto :goto_1a

    .line 282
    :cond_24
    const/16 v20, 0x0

    goto :goto_1b

    .line 290
    .end local v16           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v24           #o:Ljava/lang/Object;
    :cond_25
    const/4 v15, 0x1

    .line 291
    const/16 v19, 0x1

    goto/16 :goto_6

    .line 321
    :cond_26
    const/16 v23, 0x0

    goto/16 :goto_7

    .line 322
    .restart local v23       #mIsOnehandOptionRight:Z
    :cond_27
    const/16 v22, 0x0

    goto/16 :goto_8

    .line 323
    .restart local v22       #mIsHandAdaptEnable:Z
    :cond_28
    const/16 v29, 0x8

    goto/16 :goto_9

    .line 324
    :cond_29
    const/16 v29, 0x0

    goto/16 :goto_a

    .line 327
    :cond_2a
    const/16 v29, 0x8

    goto/16 :goto_b

    .line 328
    :cond_2b
    const/16 v29, 0x4

    goto/16 :goto_c

    .line 341
    .end local v22           #mIsHandAdaptEnable:Z
    .end local v23           #mIsOnehandOptionRight:Z
    :cond_2c
    const-string v29, "common_volte"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EndCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f02048e

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 343
    .restart local v28       #voiceCallButton:Landroid/graphics/drawable/Drawable;
    const-string v29, "support_onehand_operation"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/EndCallButtonsView;->mIsOnehandOn:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2d

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v29

    if-nez v29, :cond_2d

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EndCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f02048f

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 346
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneUtilsIms;->isVolteIconPossible(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_2f

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EndCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f020465

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 349
    const-string v29, "support_onehand_operation"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/EndCallButtonsView;->mIsOnehandOn:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2e

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v29

    if-nez v29, :cond_2e

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EndCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f020466

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 353
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const v30, 0x7f0902a4

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Button;->setText(I)V

    .line 355
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    .line 358
    .end local v28           #voiceCallButton:Landroid/graphics/drawable/Drawable;
    :cond_30
    const/16 v29, 0x0

    goto/16 :goto_e

    .line 360
    :cond_31
    const/16 v29, 0x0

    goto/16 :goto_f

    .line 363
    :cond_32
    const/16 v29, 0x0

    goto/16 :goto_10

    .line 365
    :cond_33
    const/16 v29, 0x0

    goto/16 :goto_11

    .line 367
    :cond_34
    const/16 v29, 0x8

    goto/16 :goto_12

    .line 368
    :cond_35
    const/16 v29, 0x8

    goto/16 :goto_13

    .line 369
    :cond_36
    const/16 v29, 0x8

    goto/16 :goto_14

    .line 375
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Button;->clearFocus()V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_15

    .line 394
    :cond_38
    const/16 v30, 0x8

    goto/16 :goto_16

    .line 402
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_17

    .line 412
    .end local v5           #LOCK_PCW_ENABLED:Ljava/lang/String;
    .end local v8           #canIpCall:Z
    .end local v9           #canSaveCall:Z
    .end local v10           #canSendMsgButton:Z
    .end local v11           #canVideoCall:Z
    .end local v12           #canViewContact:Z
    .end local v13           #canVoiceCall:Z
    .end local v15           #disableAllSendButton:Z
    .end local v17           #isEmergencyCall:Z
    .end local v19           #isInvalidNumber:Z
    .end local v20           #isVoiceMail:Z
    .end local v21           #lockPcwState:Ljava/lang/String;
    .end local v25           #phoneNumber:Ljava/lang/String;
    .end local v26           #presentation:I
    :cond_3a
    const-string v29, "EndCallButtonsView : connection is NullPointer at updateState"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    goto/16 :goto_18
.end method
