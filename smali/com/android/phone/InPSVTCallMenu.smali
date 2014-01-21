.class public Lcom/android/phone/InPSVTCallMenu;
.super Lcom/android/phone/InVTCallMenu;
.source "InPSVTCallMenu.java"


# instance fields
.field private mDisableOutGoingMenu:Z

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mMenuSelected:I

.field private mVideoCallPanel:Lcom/android/phone/VideoCallPanel;


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 2
    .parameter "inCallScreen"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallMenu;-><init>(Lcom/android/phone/VTCommonFunction;)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InPSVTCallMenu;->mMenuSelected:I

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InPSVTCallMenu;->mDisableOutGoingMenu:Z

    .line 49
    const-string v0, "InPSVTCallMenu constructor..."

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InPSVTCallMenu;->log(Ljava/lang/String;Z)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InPSVTCallMenu;->log(Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 54
    invoke-static {}, Lcom/android/phone/VideoCallPanel;->getInstance()Lcom/android/phone/VideoCallPanel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    .line 55
    return-void
.end method

.method private prepareOptionVTMenuForEasyMode(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 336
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v7

    if-ge v1, v7, :cond_5

    .line 337
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 338
    .local v2, itemId:I
    sparse-switch v2, :sswitch_data_0

    .line 336
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    :sswitch_0
    const v7, 0x7f0a0315

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 341
    .local v4, switchCam:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/phone/InPSVTCallMenu;->isDialerOpened()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 342
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 344
    invoke-virtual {p0}, Lcom/android/phone/InPSVTCallMenu;->isShowMe()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-boolean v7, Lcom/android/phone/VtInCallButtonsView;->mIsSwitchCameraClicked:Z

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InPSVTCallMenu;->mdmGetAllowCamera()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0, v6}, Lcom/android/phone/InPSVTCallMenu;->mdmIsCameraEnabled(Z)Z

    move-result v7

    if-eqz v7, :cond_0

    move v0, v5

    .line 346
    .local v0, bCanSwitchCamera:Z
    :goto_2
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .end local v0           #bCanSwitchCamera:Z
    :cond_0
    move v0, v6

    .line 344
    goto :goto_2

    .line 348
    :cond_1
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 352
    .end local v4           #switchCam:Landroid/view/MenuItem;
    :sswitch_1
    const v7, 0x7f0a03d5

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 353
    .local v3, keypad:Landroid/view/MenuItem;
    iget-object v7, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 354
    invoke-virtual {p0}, Lcom/android/phone/InPSVTCallMenu;->isDialerOpened()Z

    move-result v7

    if-nez v7, :cond_3

    .line 355
    iget-boolean v7, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-nez v7, :cond_2

    .line 356
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 358
    :cond_2
    const v7, 0x7f020693

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 359
    const v7, 0x7f090428

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 361
    :cond_3
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 364
    :cond_4
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 369
    .end local v2           #itemId:I
    .end local v3           #keypad:Landroid/view/MenuItem;
    :cond_5
    return v5

    .line 338
    :sswitch_data_0
    .sparse-switch
        0x7f0a0315 -> :sswitch_0
        0x7f0a03d5 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected clearVTCommonFunctionReference()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/phone/InVTCallMenu;->clearVTCommonFunctionReference()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 61
    return-void
.end method

.method isDialerOpened()Z
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    return v0
.end method

.method isFarEndRecord()Z
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method isNearEndRecord()Z
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method isShowMe()Z
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallState;->isShowMe:Z

    return v0
.end method

.method mdmGetAllowCamera()Z
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v0, v0, Lcom/android/phone/InVTCallState;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v0, v0, Lcom/android/phone/InVTCallState;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    .line 474
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method mdmIsCameraEnabled(Z)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v0, v0, Lcom/android/phone/InVTCallState;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v0, v0, Lcom/android/phone/InVTCallState;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    .line 481
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 374
    invoke-super {p0, p1}, Lcom/android/phone/InVTCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- optionsItemSelected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/InPSVTCallMenu;->log(Ljava/lang/String;)V

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/InPSVTCallMenu;->log(Ljava/lang/String;)V

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  title: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/InPSVTCallMenu;->log(Ljava/lang/String;)V

    .line 379
    iget-object v2, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v2, :cond_0

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "optionsItemSelected("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), but null mInCallScreen!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/InPSVTCallMenu;->log(Ljava/lang/String;Z)V

    .line 460
    :goto_0
    return v0

    .line 384
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 445
    :sswitch_0
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->switchCamera()V

    :cond_1
    :goto_1
    move v0, v1

    .line 460
    goto :goto_0

    .line 386
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a0067

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 390
    :sswitch_2
    const-string v0, " Menu : Select camera on/off"

    invoke-virtual {p0, v0}, Lcom/android/phone/InPSVTCallMenu;->log(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->onModifyCallByCameraButton()V

    goto :goto_1

    .line 394
    :sswitch_3
    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_2

    .line 396
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->showShowMeButton()V

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->sendStillImage()V

    goto :goto_1

    .line 403
    :sswitch_4
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 404
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isCameraRestricted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    iget-object v0, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    const v2, 0x7f0903e4

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->sendLiveVideo()V

    goto :goto_1

    .line 414
    :sswitch_5
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->showAlternativeImageDialog()V

    goto :goto_1

    .line 421
    :sswitch_6
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a03e7

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 425
    :sswitch_7
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ims_vt_call_mediashare"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->MediashareStart()V

    goto/16 :goto_1

    .line 433
    :sswitch_8
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a01bd

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 436
    :sswitch_9
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a01be

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 439
    :sswitch_a
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a01bf

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 442
    :sswitch_b
    iget-object v0, p0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a01af

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 450
    :sswitch_c
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 451
    iget-object v2, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-eqz v2, :cond_1

    .line 452
    iget-object v2, p0, Lcom/android/phone/InPSVTCallMenu;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v2, v0}, Lcom/android/phone/VideoCallPanel;->captureSurfaceImage(Z)V

    goto/16 :goto_1

    .line 384
    :sswitch_data_0
    .sparse-switch
        0x7f0a0315 -> :sswitch_0
        0x7f0a0341 -> :sswitch_3
        0x7f0a03b8 -> :sswitch_b
        0x7f0a03cd -> :sswitch_1
        0x7f0a03ce -> :sswitch_8
        0x7f0a03cf -> :sswitch_9
        0x7f0a03d0 -> :sswitch_a
        0x7f0a03d1 -> :sswitch_2
        0x7f0a03d2 -> :sswitch_2
        0x7f0a03d3 -> :sswitch_4
        0x7f0a03d4 -> :sswitch_5
        0x7f0a03e7 -> :sswitch_6
        0x7f0a03e8 -> :sswitch_7
        0x7f0a03e9 -> :sswitch_c
    .end sparse-switch
.end method

.method protected prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 24
    .parameter "menu"

    .prologue
    .line 65
    const-string v22, "prepareOptionsMenu()..."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/phone/InPSVTCallMenu;->log(Ljava/lang/String;)V

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v8

    .line 71
    .local v8, inCallControlState:Lcom/android/phone/InCallControlState;
    const-string v22, "feature_chn_duos"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/InCallScreen;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 73
    .local v6, fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/InCallScreen;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 74
    .local v3, bgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/InCallScreen;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v20

    .line 81
    .local v20, rCall:Lcom/android/internal/telephony/Call;
    :goto_0
    const-string v22, "common_volte_vt_kor"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 82
    const-string v22, "support_easy_mode"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 85
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/InPSVTCallMenu;->prepareOptionVTMenuForEasyMode(Landroid/view/Menu;)Z

    move-result v22

    .line 333
    :goto_1
    return v22

    .line 76
    .end local v3           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v6           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v20           #rCall:Lcom/android/internal/telephony/Call;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 77
    .restart local v6       #fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 78
    .restart local v3       #bgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v20

    .restart local v20       #rCall:Lcom/android/internal/telephony/Call;
    goto :goto_0

    .line 87
    :cond_1
    const/16 v22, 0x0

    goto :goto_1

    .line 91
    :cond_2
    const-string v22, "common_volte_vt_kor"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 93
    invoke-super/range {p0 .. p1}, Lcom/android/phone/InVTCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    .line 99
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 101
    const/16 v22, 0x0

    goto :goto_1

    .line 95
    :cond_4
    invoke-super/range {p0 .. p1}, Lcom/android/phone/InVTCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_2

    .line 105
    :cond_5
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_22

    .line 106
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    .line 107
    .local v10, itemId:I
    sparse-switch v10, :sswitch_data_0

    .line 105
    :cond_6
    :goto_4
    :sswitch_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 109
    :sswitch_1
    const-string v22, "vzw_volte_ui"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_7

    const-string v22, "att_volte_ui"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 111
    :cond_7
    const v22, 0x7f0a03cd

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v21

    .line 112
    .local v21, switchToVoiceCall:Landroid/view/MenuItem;
    const v22, 0x7f02060b

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 113
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->getIMSCallType(Lcom/android/internal/telephony/Call;)I

    move-result v4

    .line 114
    .local v4, callType:I
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v4, v0, :cond_8

    .line 115
    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 117
    :cond_8
    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 122
    .end local v4           #callType:I
    .end local v21           #switchToVoiceCall:Landroid/view/MenuItem;
    :sswitch_2
    const-string v22, "vzw_volte_ui"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_9

    const-string v22, "att_volte_ui"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 124
    :cond_9
    const v22, 0x7f0a03b8

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    .line 125
    .local v18, mergeCalls:Landroid/view/MenuItem;
    const v22, 0x7f020626

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 126
    iget-boolean v0, v8, Lcom/android/phone/InCallControlState;->canMerge:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_a

    const-string v22, "support_merge_call"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 128
    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 130
    :cond_a
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 136
    .end local v18           #mergeCalls:Landroid/view/MenuItem;
    :sswitch_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->getIMSCallType(Lcom/android/internal/telephony/Call;)I

    move-result v4

    .line 137
    .restart local v4       #callType:I
    const-string v22, "vzw_volte_ui"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v4, v0, :cond_c

    .line 138
    :cond_b
    const v22, 0x7f0a03d1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 139
    const v22, 0x7f0a03d2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 141
    :cond_c
    const/16 v22, 0x3

    move/from16 v0, v22

    if-eq v4, v0, :cond_d

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v4, v0, :cond_e

    .line 142
    :cond_d
    const v22, 0x7f0a03d1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 143
    const v22, 0x7f0a03d2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 145
    :cond_e
    const v22, 0x7f0a03d1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 146
    const v22, 0x7f0a03d2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 152
    .end local v4           #callType:I
    :sswitch_4
    const-string v22, "common_volte_vt_kor"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    move/from16 v22, v0

    if-nez v22, :cond_6

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 154
    const v22, 0x7f0a0341

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 155
    .local v12, mHideMe:Landroid/view/MenuItem;
    const v22, 0x7f0a03d3

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 156
    .local v14, mShowMe:Landroid/view/MenuItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InPSVTCallMenu;->isShowMe()Z

    move-result v22

    if-eqz v22, :cond_10

    .line 157
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 158
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InPSVTCallMenu;->mdmGetAllowCamera()Z

    move-result v22

    if-eqz v22, :cond_f

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/phone/InPSVTCallMenu;->mdmIsCameraEnabled(Z)Z

    move-result v22

    if-nez v22, :cond_6

    .line 160
    :cond_f
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 163
    :cond_10
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 164
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 170
    .end local v12           #mHideMe:Landroid/view/MenuItem;
    .end local v14           #mShowMe:Landroid/view/MenuItem;
    :sswitch_5
    const-string v22, "common_volte_vt_kor"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 172
    const v22, 0x7f0a03d5

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 173
    .local v11, keypad:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v22

    if-nez v22, :cond_13

    .line 174
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    move/from16 v22, v0

    if-nez v22, :cond_11

    .line 175
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 177
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InPSVTCallMenu;->isDialerOpened()Z

    move-result v22

    if-eqz v22, :cond_12

    .line 178
    const v22, 0x7f020691

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 179
    const v22, 0x7f0903f9

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 181
    :cond_12
    const v22, 0x7f020693

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 182
    const v22, 0x7f090428

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 185
    :cond_13
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 191
    .end local v11           #keypad:Landroid/view/MenuItem;
    :sswitch_6
    const v22, 0x7f0a03e9

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 192
    .local v5, capture:Landroid/view/MenuItem;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 193
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    move/from16 v22, v0

    if-eqz v22, :cond_14

    const-string v22, "common_volte_vt_kor"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 196
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 197
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/phone/InVTCallState;->mIsFarFrameReady:Z

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 199
    :cond_14
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 203
    .end local v5           #capture:Landroid/view/MenuItem;
    :sswitch_7
    const-string v22, "common_volte_vt_kor"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 205
    const v22, 0x7f0a03d4

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    .line 206
    .local v19, outImg:Landroid/view/MenuItem;
    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 207
    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 212
    .end local v19           #outImg:Landroid/view/MenuItem;
    :sswitch_8
    const v22, 0x7f0a03e7

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 213
    .local v2, addUserVideo:Landroid/view/MenuItem;
    const-string v22, "ims_conference_call"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 214
    const-string v22, "feature_lgt"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtilsExt;->isAvailableAddUser(Lcom/android/internal/telephony/Call;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 216
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 217
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 220
    :cond_15
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 221
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 225
    :cond_16
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 226
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 231
    .end local v2           #addUserVideo:Landroid/view/MenuItem;
    :sswitch_9
    const-string v22, "common_volte_vt_kor"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    const-string v22, "feature_lgt"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    const-string v22, "ims_vt_call_mediashare"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 235
    const v22, 0x7f0a03e8

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 236
    .local v17, media_share:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/phone/InVTCallState;->isMediaShareEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_17

    const-string v22, "com.lguplus.lte.mediashare"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InPSVTCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/android/phone/PhoneUtilsExt;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 238
    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 239
    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 241
    :cond_17
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 242
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 250
    .end local v17           #media_share:Landroid/view/MenuItem;
    :sswitch_a
    const-string v22, "common_volte_vt_kor"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 251
    const-string v22, "no_receiver_in_call"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 253
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    move/from16 v22, v0

    if-nez v22, :cond_6

    .line 254
    const/4 v9, 0x1

    .line 255
    .local v9, isSpeakerEnable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_19

    .line 257
    :cond_18
    sget-boolean v22, Lcom/android/phone/PhoneGlobals;->mIsDockConnected:Z

    if-nez v22, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v22

    if-nez v22, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v22

    if-nez v22, :cond_1a

    const/4 v9, 0x1

    .line 261
    :cond_19
    :goto_5
    if-eqz v9, :cond_1c

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 263
    const v22, 0x7f0a03d8

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 264
    const v22, 0x7f0a03d9

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 265
    const v22, 0x7f0a03d9

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 257
    :cond_1a
    const/4 v9, 0x0

    goto :goto_5

    .line 267
    :cond_1b
    const v22, 0x7f0a03d8

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 268
    const v22, 0x7f0a03d9

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 269
    const v22, 0x7f0a03d8

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 272
    :cond_1c
    sget-boolean v22, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    if-eqz v22, :cond_1d

    .line 273
    const v22, 0x7f0a03d8

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 274
    const v22, 0x7f0a03d9

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 275
    const v22, 0x7f0a03d9

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 277
    :cond_1d
    const v22, 0x7f0a03d8

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 278
    const v22, 0x7f0a03d9

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 279
    const v22, 0x7f0a03d8

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 289
    .end local v9           #isSpeakerEnable:Z
    :sswitch_b
    const-string v22, "add_vt_hold_in_menu"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 290
    const v22, 0x7f0a03ce

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 291
    .local v13, mHoldButton:Landroid/view/MenuItem;
    const v22, 0x7f0a03cf

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 292
    .local v16, mUnholdButton:Landroid/view/MenuItem;
    const v22, 0x7f0a03d0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 295
    .local v15, mSwapButton:Landroid/view/MenuItem;
    iget-boolean v0, v8, Lcom/android/phone/InCallControlState;->canHold:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1f

    .line 296
    iget-boolean v0, v8, Lcom/android/phone/InCallControlState;->onHold:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1e

    .line 297
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 298
    const/16 v22, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 303
    :goto_6
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 300
    :cond_1e
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 301
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6

    .line 304
    :cond_1f
    iget-boolean v0, v8, Lcom/android/phone/InCallControlState;->canSwap:Z

    move/from16 v22, v0

    if-eqz v22, :cond_20

    .line 305
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 306
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 307
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 317
    :cond_20
    iget-boolean v0, v8, Lcom/android/phone/InCallControlState;->supportsHold:Z

    move/from16 v22, v0

    if-eqz v22, :cond_21

    .line 318
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 319
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 320
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 321
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 323
    :cond_21
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 324
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 325
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 333
    .end local v10           #itemId:I
    .end local v13           #mHoldButton:Landroid/view/MenuItem;
    .end local v15           #mSwapButton:Landroid/view/MenuItem;
    .end local v16           #mUnholdButton:Landroid/view/MenuItem;
    :cond_22
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 107
    :sswitch_data_0
    .sparse-switch
        0x7f0a0341 -> :sswitch_0
        0x7f0a03b8 -> :sswitch_2
        0x7f0a03cd -> :sswitch_1
        0x7f0a03ce -> :sswitch_0
        0x7f0a03cf -> :sswitch_0
        0x7f0a03d0 -> :sswitch_b
        0x7f0a03d1 -> :sswitch_0
        0x7f0a03d2 -> :sswitch_3
        0x7f0a03d3 -> :sswitch_4
        0x7f0a03d4 -> :sswitch_7
        0x7f0a03d5 -> :sswitch_5
        0x7f0a03d8 -> :sswitch_0
        0x7f0a03d9 -> :sswitch_a
        0x7f0a03e7 -> :sswitch_8
        0x7f0a03e8 -> :sswitch_9
        0x7f0a03e9 -> :sswitch_6
    .end sparse-switch
.end method
