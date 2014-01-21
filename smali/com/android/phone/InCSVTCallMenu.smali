.class public Lcom/android/phone/InCSVTCallMenu;
.super Lcom/android/phone/InVTCallMenu;
.source "InCSVTCallMenu.java"


# instance fields
.field private mBlur_Off:Z

.field private mCallerUppos:[Ljava/lang/String;

.field private mCallerUpposAudioRecord:[Ljava/lang/String;

.field private mCameraAdjust:[Ljava/lang/String;

.field private mContextMenuStrArrayId:[Ljava/lang/String;

.field mDisableDualCamera:Landroid/view/MenuItem;

.field private mDisableOutGoingMenu:Z

.field private mDownUppos:[Ljava/lang/String;

.field private mDownUpposBlurOff:[Ljava/lang/String;

.field mEnableDualCamera:Landroid/view/MenuItem;

.field private mEnableDualCameraMenu:Z

.field protected mEnabledAvatar:Z

.field private mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

.field private mOutGoingImage:[Ljava/lang/String;

.field private mOutGoingImageHideMe:[Ljava/lang/String;

.field private mOutGoingWithPresetImage:[Ljava/lang/String;

.field private mRecord_stop:Z


# direct methods
.method public constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 2
    .parameter "inVTCallScreen"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallMenu;-><init>(Lcom/android/phone/VTCommonFunction;)V

    .line 67
    iput-boolean v0, p0, Lcom/android/phone/InCSVTCallMenu;->mRecord_stop:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/phone/InCSVTCallMenu;->mDisableOutGoingMenu:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/phone/InCSVTCallMenu;->mBlur_Off:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/phone/InCSVTCallMenu;->mEnabledAvatar:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/phone/InCSVTCallMenu;->mEnableDualCameraMenu:Z

    .line 81
    const-string v0, "InCSVTCallMenu constructor..."

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;Z)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    .line 86
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->fillMenuArrayList()V

    .line 87
    return-void
.end method

.method public static addAvatarIntentExtras(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x16e

    const/16 v3, 0x12c

    const/4 v2, 0x1

    .line 768
    const-string v0, "crop"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    const-string v0, "scale"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 770
    const-string v0, "scaleUpIfNeeded"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 771
    const-string v0, "aspectX"

    invoke-virtual {p0, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 772
    const-string v0, "aspectY"

    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 773
    const-string v0, "outputX"

    invoke-virtual {p0, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 774
    const-string v0, "outputY"

    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 775
    const-string v0, "output"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 777
    return-void
.end method

.method private getPreviewEffectUI()Lcom/android/phone/PreviewEffectUI;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getPreviewEffectUI()Lcom/android/phone/PreviewEffectUI;

    move-result-object v0

    return-object v0
.end method

.method private getTestCloseCheck()Z
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getTestCloseCheck()Z

    move-result v0

    return v0
.end method

.method private getVTManager()Lsiso/vt/VTManager;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    .line 705
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPressNoiseReductionMenu()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 585
    iget-object v2, p0, Lcom/android/phone/InCSVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v0

    .line 587
    .local v0, bthf:Landroid/bluetooth/IBluetoothHeadsetPhone;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 588
    iget-object v2, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    const v3, 0x7f090394

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 604
    :goto_0
    return-void

    .line 590
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 591
    iget-object v2, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    const v3, 0x7f090393

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 593
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportedNoiseReductionInWBMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isWBMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 595
    iget-object v2, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    const v3, 0x7f090396

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 599
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 600
    .local v1, noiseReductionValue:I
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->noiseReductionBroadcast(Landroid/content/Context;I)V

    .line 602
    iget-object v2, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InVTCallScreen;->updateNoiseReductionImage()V

    goto :goto_0

    .line 599
    .end local v1           #noiseReductionValue:I
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private setIsFarEndRecord(Z)V
    .locals 1
    .parameter "newVal"

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/InVTCallScreen;->setIsFarEndRecord(Z)V

    .line 718
    return-void
.end method

.method private setTestCloseCheck(Z)V
    .locals 1
    .parameter "newVal"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/InVTCallScreen;->setTestCloseCheck(Z)V

    .line 714
    return-void
.end method

.method private showAcrodeaAvatar()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 756
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 757
    .local v2, intent:Landroid/content/Intent;
    const-string v1, "sdcard/acrodea_avatar_temp.jpg"

    .line 758
    .local v1, SD_CARD_TEMP_DIR:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 759
    .local v0, CaptureUri:Landroid/net/Uri;
    invoke-static {v2, v0}, Lcom/android/phone/InCSVTCallMenu;->addAvatarIntentExtras(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 760
    const-string v3, "com.acrodea.samsung_avatar_maker"

    const-string v4, "com.acrodea.samsung_avatar_maker.AvatarMaker_Select"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v3, :cond_0

    .line 762
    iput-boolean v5, p0, Lcom/android/phone/InCSVTCallMenu;->mEnabledAvatar:Z

    .line 763
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v2, v5}, Lcom/android/phone/InVTCallScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 765
    :cond_0
    return-void
.end method


# virtual methods
.method protected blurEffectOff()V
    .locals 3

    .prologue
    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCSVTCallMenu;->mBlur_Off:Z

    .line 728
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 729
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    .line 730
    :cond_0
    return-void
.end method

.method protected blurEffectOn()V
    .locals 3

    .prologue
    .line 721
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCSVTCallMenu;->mBlur_Off:Z

    .line 722
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 723
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    .line 724
    :cond_0
    return-void
.end method

.method protected clearVTCommonFunctionReference()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/phone/InVTCallMenu;->clearVTCommonFunctionReference()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    .line 93
    return-void
.end method

.method protected contextMenuSelected(I)V
    .locals 10
    .parameter "aPosition"

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 430
    const-string v3, "In CallVtScreen contextMenuSelected method"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 431
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 432
    .local v1, lResources:Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 434
    .local v0, lContextMenuArray:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this is inside contextMenuSelected and selected item is -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 437
    aget-object v3, v0, p1

    const v4, 0x7f09041e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 438
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v6}, Lcom/android/phone/InVTCallScreen;->setSeekBarSelection(I)V

    .line 439
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v6}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    aget-object v3, v0, p1

    const v4, 0x7f0904af

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 441
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v7}, Lcom/android/phone/InVTCallScreen;->setSeekBarSelection(I)V

    .line 442
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v7}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto :goto_0

    .line 443
    :cond_2
    aget-object v3, v0, p1

    const v4, 0x7f0904b0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 444
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v8}, Lcom/android/phone/InVTCallScreen;->setSeekBarSelection(I)V

    .line 445
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v8}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto :goto_0

    .line 446
    :cond_3
    aget-object v3, v0, p1

    const v4, 0x7f09041f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 447
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 448
    add-int/lit8 v3, p1, 0x1

    aget-object v3, v0, v3

    const v4, 0x7f090420

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 449
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->blurEffectOn()V

    goto :goto_0

    .line 450
    :cond_4
    add-int/lit8 v3, p1, 0x1

    aget-object v3, v0, v3

    const v4, 0x7f090421

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->blurEffectOff()V

    goto :goto_0

    .line 455
    :cond_5
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v5}, Lcom/android/phone/InVTCallScreen;->setSeekBarSelection(I)V

    .line 456
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v6}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto :goto_0

    .line 458
    :cond_6
    aget-object v3, v0, p1

    const v4, 0x7f090420

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 459
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->blurEffectOn()V

    goto/16 :goto_0

    .line 462
    :cond_7
    aget-object v3, v0, p1

    const v4, 0x7f090421

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 463
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->blurEffectOff()V

    goto/16 :goto_0

    .line 464
    :cond_8
    aget-object v3, v0, p1

    const v4, 0x7f090422

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    aget-object v3, v0, p1

    const v4, 0x7f090423

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 467
    :cond_9
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v5}, Lcom/android/phone/InVTCallScreen;->changeImgSize(I)V

    goto/16 :goto_0

    .line 468
    :cond_a
    aget-object v3, v0, p1

    const v4, 0x7f090424

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    aget-object v3, v0, p1

    const v4, 0x7f090425

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 471
    :cond_b
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v6}, Lcom/android/phone/InVTCallScreen;->changeImgSize(I)V

    goto/16 :goto_0

    .line 472
    :cond_c
    aget-object v3, v0, p1

    const v4, 0x7f0903e7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->getNearEndPressed()Z

    move-result v3

    if-nez v3, :cond_d

    .line 474
    const-string v3, "This is inside capture context menu selected"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 475
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->requestCaptureFarEndImage()V

    goto/16 :goto_0

    .line 476
    :cond_d
    aget-object v3, v0, p1

    const v4, 0x7f0903e8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    aget-object v3, v0, p1

    const v4, 0x7f0904b1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "vt_audio_mixed_recording_via_stack"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 478
    :cond_e
    const-string v3, "This is inside record video for far end or near end"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 480
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->getNearEndPressed()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 481
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isShowMe()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 483
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->startRecordingNearEndView()V

    goto/16 :goto_0

    .line 487
    :cond_f
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    const v4, 0x7f090297

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 490
    :cond_10
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V

    goto/16 :goto_0

    .line 492
    :cond_11
    aget-object v3, v0, p1

    const v4, 0x7f0904b1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 493
    const-string v3, "This is inside record audio"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 494
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->startRecordingAudio()V

    goto/16 :goto_0

    .line 495
    :cond_12
    aget-object v3, v0, p1

    const v4, 0x7f090440

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 496
    const-string v3, "In image option item"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 499
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v5}, Lcom/android/phone/InVTCallScreen;->setIsPlayVideo(Z)V

    .line 501
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "videoAlertShowNeverAgain"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 503
    .local v2, showNeverAgain:I
    if-nez v2, :cond_13

    .line 504
    const-string v3, "selectImageFromMyFiles:: Image Dialog Shown"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 505
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v9}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 507
    :cond_13
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->selectImageFromMyFiles()V

    goto/16 :goto_0

    .line 509
    .end local v2           #showNeverAgain:I
    :cond_14
    aget-object v3, v0, p1

    const v4, 0x7f0903f4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 510
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v6}, Lcom/android/phone/InVTCallScreen;->setIsPlayVideo(Z)V

    .line 512
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "videoAlertShowNeverAgain"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 514
    .restart local v2       #showNeverAgain:I
    if-nez v2, :cond_15

    .line 515
    const-string v3, "selectVideoFromMyFiles:: Video Dialog Shown"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 516
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v9}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 518
    :cond_15
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->selectVideoFromMyFiles()V

    goto/16 :goto_0

    .line 520
    .end local v2           #showNeverAgain:I
    :cond_16
    aget-object v3, v0, p1

    const v4, 0x7f090441

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->getNearEndPressed()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 522
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isShowMe()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 524
    const-string v3, "Capture Image called for Nearend view"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 525
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/InVTCallScreen;->capture_nearend_view(J)V

    goto/16 :goto_0

    .line 529
    :cond_17
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    const v4, 0x7f090297

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 531
    :cond_18
    aget-object v3, v0, p1

    const v4, 0x7f09042e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "vt_cmcc_operator_open_close_camera"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 533
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->releaseSelectVideo()V

    goto/16 :goto_0

    .line 534
    :cond_19
    aget-object v3, v0, p1

    const v4, 0x7f090426

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 536
    iput v6, p0, Lcom/android/phone/InCSVTCallMenu;->mMenuSelected:I

    .line 537
    invoke-direct {p0, v5}, Lcom/android/phone/InCSVTCallMenu;->setIsFarEndRecord(Z)V

    goto/16 :goto_0

    .line 538
    :cond_1a
    aget-object v3, v0, p1

    const v4, 0x7f090443

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 539
    const-string v3, "Preset Image is being called"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 540
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    .line 542
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->handlingSwitchCameraButton()V

    goto/16 :goto_0

    .line 543
    :cond_1b
    aget-object v3, v0, p1

    const v4, 0x7f090427

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 545
    const-string v3, "Show camera is called"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 546
    const-string v3, "Calling surfaceview_init"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 547
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    goto/16 :goto_0

    .line 548
    :cond_1c
    aget-object v3, v0, p1

    const v4, 0x7f0903e9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 549
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->requestSwitchCamera()V

    goto/16 :goto_0

    .line 550
    :cond_1d
    aget-object v3, v0, p1

    const v4, 0x7f0903f0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 551
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isShowMe()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 552
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImage:[Ljava/lang/String;

    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 560
    :goto_1
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v6}, Lcom/android/phone/InVTCallScreen;->setNearEndPressed(Z)V

    .line 561
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v6}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 554
    :cond_1e
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 555
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mOutGoingWithPresetImage:[Ljava/lang/String;

    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1

    .line 557
    :cond_1f
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImageHideMe:[Ljava/lang/String;

    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1

    .line 563
    :cond_20
    aget-object v3, v0, p1

    const v4, 0x7f0903f6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    aget-object v3, v0, p1

    const v4, 0x7f09042e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 565
    :cond_21
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isShowMe()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 566
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    goto/16 :goto_0

    .line 568
    :cond_22
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 569
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    const v4, 0x7f0903e4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 571
    :cond_23
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->releaseSelectVideo()V

    goto/16 :goto_0

    .line 574
    :cond_24
    aget-object v3, v0, p1

    const v4, 0x7f090428

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 575
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->showDTMFDialpad()V

    goto/16 :goto_0

    .line 576
    :cond_25
    aget-object v3, v0, p1

    const v4, 0x7f09042d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    aget-object v3, v0, p1

    const v4, 0x7f09042b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 578
    :cond_26
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->toggleSpeaker()V

    goto/16 :goto_0

    .line 579
    :cond_27
    aget-object v3, v0, p1

    const v4, 0x7f090429

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 580
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->toggleBluetooth()V

    goto/16 :goto_0
.end method

.method protected fillMenuArrayList()V
    .locals 9

    .prologue
    const v8, 0x7f090440

    const v7, 0x7f090443

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 607
    iget-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 609
    .local v0, lResources:Landroid/content/res/Resources;
    const-string v1, "kor_cs_vt_ui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    new-array v1, v5, [Ljava/lang/String;

    const v2, 0x7f0903e7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mCallerUppos:[Ljava/lang/String;

    .line 619
    :goto_0
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f0903e7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0904b1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mCallerUpposAudioRecord:[Ljava/lang/String;

    .line 625
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f09041e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0904af

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mCameraAdjust:[Ljava/lang/String;

    .line 629
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f0903e9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0903f0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mDownUppos:[Ljava/lang/String;

    .line 632
    const-string v1, "vt_cmcc_operator_open_close_camera"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 633
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f090441

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0903f4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x3

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImage:[Ljava/lang/String;

    .line 637
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0903f4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImageHideMe:[Ljava/lang/String;

    .line 641
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0903f4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mOutGoingWithPresetImage:[Ljava/lang/String;

    .line 691
    :goto_1
    return-void

    .line 614
    :cond_0
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f0903e7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0903e8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mCallerUppos:[Ljava/lang/String;

    goto/16 :goto_0

    .line 645
    :cond_1
    const-string v1, "kor_qc_cs_vt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 646
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f090441

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImage:[Ljava/lang/String;

    .line 650
    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImageHideMe:[Ljava/lang/String;

    .line 653
    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mOutGoingWithPresetImage:[Ljava/lang/String;

    goto :goto_1

    .line 656
    :cond_2
    const-string v1, "kor_cs_vt_ui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 657
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f090441

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImage:[Ljava/lang/String;

    .line 661
    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImageHideMe:[Ljava/lang/String;

    .line 665
    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mOutGoingWithPresetImage:[Ljava/lang/String;

    goto/16 :goto_1

    .line 669
    :cond_3
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f090441

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const v3, 0x7f0903f4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x7f0903e8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImage:[Ljava/lang/String;

    .line 676
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f090441

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const v3, 0x7f0903f4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x7f0903e8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImageHideMe:[Ljava/lang/String;

    .line 683
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f090441

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const v3, 0x7f0903f4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x7f0903e8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mOutGoingWithPresetImage:[Ljava/lang/String;

    goto/16 :goto_1
.end method

.method protected getContextMenuStrArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    return-object v0
.end method

.method protected getDialer()Lcom/android/phone/DTMFTwelveKeyDialerForVT;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    move-result-object v0

    return-object v0
.end method

.method isDialerOpened()Z
    .locals 1

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFarEndRecord()Z
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isFarEndRecord()Z

    move-result v0

    return v0
.end method

.method isNearEndRecord()Z
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isNearEndRecord()Z

    move-result v0

    return v0
.end method

.method isShowMe()Z
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isShowMe()Z

    move-result v0

    return v0
.end method

.method mdmGetAllowCamera()Z
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method mdmIsCameraEnabled(Z)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    return v0
.end method

.method protected optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 274
    invoke-super {p0, p1}, Lcom/android/phone/InVTCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- optionsItemSelected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  title: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-nez v0, :cond_1

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "optionsItemSelected("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), but null mInVTCallScreen!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;Z)V

    .line 426
    :cond_0
    :goto_0
    return v3

    .line 284
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 305
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    .line 307
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->handlingSwitchCameraButton()V

    goto :goto_0

    .line 286
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/android/phone/InCSVTCallMenu;->setTestCloseCheck(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->setEnabledSwitchCameraButton(Z)V

    .line 288
    iput-boolean v3, p0, Lcom/android/phone/InCSVTCallMenu;->mDisableOutGoingMenu:Z

    .line 290
    const-string v0, " Menu -----> !! Close Camera Clicked "

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 291
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->MuteCamera()V

    goto :goto_0

    .line 296
    :sswitch_2
    const-string v0, "Menu ----->!! Open Camera Clicked "

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 297
    invoke-direct {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->setTestCloseCheck(Z)V

    .line 298
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->setEnabledSwitchCameraButton(Z)V

    .line 299
    iput-boolean v2, p0, Lcom/android/phone/InCSVTCallMenu;->mDisableOutGoingMenu:Z

    .line 300
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->UnmuteCamera()V

    goto :goto_0

    .line 310
    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    const v1, 0x7f0903e4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->releaseSelectVideo()V

    goto :goto_0

    .line 318
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isShowMe()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 319
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 327
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->setNearEndPressed(Z)V

    .line 328
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 322
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mOutGoingWithPresetImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1

    .line 324
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImageHideMe:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1

    .line 331
    :sswitch_5
    const-string v0, "START_RECORDING_FAR_END is being clicked"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 332
    iput-boolean v3, p0, Lcom/android/phone/InCSVTCallMenu;->mRecord_stop:Z

    .line 333
    iput v3, p0, Lcom/android/phone/InCSVTCallMenu;->mMenuSelected:I

    .line 334
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V

    goto/16 :goto_0

    .line 337
    :sswitch_6
    const-string v0, "STOP_RECORDING_FAR_END is being clicked"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 338
    iput-boolean v2, p0, Lcom/android/phone/InCSVTCallMenu;->mRecord_stop:Z

    .line 340
    iput v2, p0, Lcom/android/phone/InCSVTCallMenu;->mMenuSelected:I

    .line 341
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    goto/16 :goto_0

    .line 344
    :sswitch_7
    const-string v0, "START_RECORDING_NEAR_END is being clicked"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 345
    iput-boolean v3, p0, Lcom/android/phone/InCSVTCallMenu;->mRecord_stop:Z

    .line 346
    iput v3, p0, Lcom/android/phone/InCSVTCallMenu;->mMenuSelected:I

    .line 347
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->startRecordingNearEndView()V

    goto/16 :goto_0

    .line 350
    :sswitch_8
    const-string v0, "STOP_RECORDING_NEAR_END is being clicked"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 351
    iput-boolean v2, p0, Lcom/android/phone/InCSVTCallMenu;->mRecord_stop:Z

    .line 353
    iput v2, p0, Lcom/android/phone/InCSVTCallMenu;->mMenuSelected:I

    .line 354
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    goto/16 :goto_0

    .line 358
    :sswitch_9
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->onPressNoiseReductionMenu()V

    goto/16 :goto_0

    .line 361
    :sswitch_a
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    const-string v1, "emotional_eye_contact"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 362
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->setEnableEyeContact(Z)V

    goto/16 :goto_0

    .line 365
    :sswitch_b
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    const-string v1, "emotional_eye_contact"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 366
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->setEnableEyeContact(Z)V

    goto/16 :goto_0

    .line 369
    :sswitch_c
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->updateLayoutForDrawEffectUI()V

    .line 370
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getPreviewEffectUI()Lcom/android/phone/PreviewEffectUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PreviewEffectUI;->showEmotionalAnimation()V

    .line 372
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->handlingSwitchCameraButton()V

    goto/16 :goto_0

    .line 375
    :sswitch_d
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->updateLayoutForDrawEffectUI()V

    .line 376
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getPreviewEffectUI()Lcom/android/phone/PreviewEffectUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PreviewEffectUI;->showThemeViewWithToast()V

    .line 378
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->handlingSwitchCameraButton()V

    goto/16 :goto_0

    .line 381
    :sswitch_e
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 383
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->getPreviewEffectState()Lcom/android/phone/PreviewEffectState;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/PreviewEffectState;->setShowCartoonView(Z)V

    goto/16 :goto_0

    .line 387
    :sswitch_f
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 389
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->getPreviewEffectState()Lcom/android/phone/PreviewEffectState;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/PreviewEffectState;->setShowCartoonView(Z)V

    goto/16 :goto_0

    .line 393
    :sswitch_10
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 394
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 395
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->hideDTMFDialpad()V

    .line 398
    :cond_6
    const-string v0, "launchin LCD Brightness Activity"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v4}, Lcom/android/phone/InVTCallScreen;->setSeekBarSelection(I)V

    .line 400
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v4}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    .line 401
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->handlingSwitchCameraButton()V

    goto/16 :goto_0

    .line 404
    :sswitch_11
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->showAcrodeaAvatar()V

    goto/16 :goto_0

    .line 407
    :sswitch_12
    iput-boolean v2, p0, Lcom/android/phone/InCSVTCallMenu;->mEnableDualCameraMenu:Z

    .line 408
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->requestDualCamera(Z)V

    goto/16 :goto_0

    .line 411
    :sswitch_13
    iput-boolean v2, p0, Lcom/android/phone/InCSVTCallMenu;->mEnableDualCameraMenu:Z

    .line 412
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->requestDualCamera(Z)V

    .line 413
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->updateDualCameraLayout(Z)V

    goto/16 :goto_0

    .line 417
    :sswitch_14
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->requestUpdateOnehandmode(Z)V

    goto/16 :goto_0

    .line 420
    :sswitch_15
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->requestUpdateOnehandmode(Z)V

    goto/16 :goto_0

    .line 284
    :sswitch_data_0
    .sparse-switch
        0x7f0a0341 -> :sswitch_0
        0x7f0a037e -> :sswitch_13
        0x7f0a03d1 -> :sswitch_1
        0x7f0a03d2 -> :sswitch_2
        0x7f0a03d3 -> :sswitch_3
        0x7f0a03d4 -> :sswitch_4
        0x7f0a03da -> :sswitch_9
        0x7f0a03db -> :sswitch_9
        0x7f0a03dc -> :sswitch_a
        0x7f0a03dd -> :sswitch_b
        0x7f0a03de -> :sswitch_c
        0x7f0a03df -> :sswitch_d
        0x7f0a03e0 -> :sswitch_e
        0x7f0a03e1 -> :sswitch_f
        0x7f0a03e2 -> :sswitch_10
        0x7f0a03e3 -> :sswitch_11
        0x7f0a03e4 -> :sswitch_12
        0x7f0a03e5 -> :sswitch_14
        0x7f0a03e6 -> :sswitch_15
        0x7f0a03eb -> :sswitch_7
        0x7f0a03ec -> :sswitch_8
        0x7f0a03ed -> :sswitch_5
        0x7f0a03ee -> :sswitch_6
    .end sparse-switch
.end method

.method protected prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const v8, 0x7f0a03da

    const v7, 0x7f0a03d2

    const v6, 0x7f0a03d1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/android/phone/InVTCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    .line 98
    const-string v4, "prepareOptionsMenu()..."

    invoke-virtual {p0, v4}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 100
    iget-boolean v4, p0, Lcom/android/phone/InCSVTCallMenu;->mIsTabletDevice:Z

    if-eqz v4, :cond_1

    .line 101
    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v2

    .line 106
    :cond_1
    const-string v4, "support_easy_mode"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 111
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v0, v4, :cond_16

    .line 112
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 113
    .local v1, itemId:I
    sparse-switch v1, :sswitch_data_0

    .line 111
    :cond_3
    :goto_2
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    :sswitch_1
    const-string v4, "vt_cmcc_operator_open_close_camera"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check state isShowMe()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isShowMe()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "getTestCloseCheck()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getTestCloseCheck()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isShowMe()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getTestCloseCheck()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 119
    const-string v4, "Adding CloseCameraTEST to Menu"

    invoke-virtual {p0, v4}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 120
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 121
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 122
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isShowMe()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getTestCloseCheck()Z

    move-result v4

    if-nez v4, :cond_5

    .line 123
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 124
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 125
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isShowMe()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getTestCloseCheck()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 126
    const-string v4, "Adding SHOW Me to Menu"

    invoke-virtual {p0, v4}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 127
    iget-boolean v4, p0, Lcom/android/phone/InCSVTCallMenu;->mIsTabletDevice:Z

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isDialerOpened()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 128
    :cond_6
    const v4, 0x7f0a03d3

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 131
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error state isShowMe()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isShowMe()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "getTestCloseCheck()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getTestCloseCheck()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 132
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 133
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 136
    :cond_8
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 137
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 141
    :sswitch_2
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 142
    iget-boolean v4, p0, Lcom/android/phone/InCSVTCallMenu;->mDisableOutGoingMenu:Z

    if-eqz v4, :cond_9

    .line 143
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 145
    :cond_9
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 150
    :sswitch_3
    iget-boolean v4, p0, Lcom/android/phone/InCSVTCallMenu;->mIsTabletDevice:Z

    if-nez v4, :cond_3

    .line 151
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 152
    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v4, v4, Lcom/android/phone/InVTCallState;->showDialpad:Z

    if-nez v4, :cond_a

    .line 153
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 155
    :cond_a
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 162
    :sswitch_4
    const-string v4, "kor_qc_cs_vt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 164
    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InVTCallScreen;->isNoiseSuppressionSupported()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 165
    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 166
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 167
    const v4, 0x7f0a03db

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 169
    :cond_b
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 170
    const v4, 0x7f0a03db

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 174
    :cond_c
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 175
    const v4, 0x7f0a03db

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 180
    :sswitch_5
    const-string v4, "vt_adjust_screen_brightness"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 181
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 185
    :sswitch_6
    const-string v4, "acrodea_avatar"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 186
    const v4, 0x7f0a03e3

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v4, :cond_3

    .line 187
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 192
    :sswitch_7
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mEnableDualCamera:Landroid/view/MenuItem;

    .line 193
    const-string v4, "vt_dual_camera"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->getPreviewEffectState()Lcom/android/phone/PreviewEffectState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PreviewEffectState;->isDualCameraEnabled()Z

    move-result v4

    if-nez v4, :cond_e

    .line 194
    iget-boolean v4, p0, Lcom/android/phone/InCSVTCallMenu;->mEnableDualCameraMenu:Z

    if-eqz v4, :cond_d

    .line 195
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 198
    :goto_3
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 197
    :cond_d
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 200
    :cond_e
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 204
    :sswitch_8
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mDisableDualCamera:Landroid/view/MenuItem;

    .line 205
    const-string v4, "vt_dual_camera"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->getPreviewEffectState()Lcom/android/phone/PreviewEffectState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PreviewEffectState;->isDualCameraEnabled()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 206
    iget-boolean v4, p0, Lcom/android/phone/InCSVTCallMenu;->mEnableDualCameraMenu:Z

    if-eqz v4, :cond_f

    .line 207
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 210
    :goto_4
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 209
    :cond_f
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 212
    :cond_10
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 217
    :sswitch_9
    const-string v4, "support_onehand_operation"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InVTCallScreen;->isOneHandOperationEnabled()Z

    move-result v4

    if-nez v4, :cond_11

    .line 218
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 220
    :cond_11
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 225
    :sswitch_a
    const-string v4, "support_onehand_operation"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InVTCallScreen;->isOneHandOperationEnabled()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 226
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 228
    :cond_12
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 236
    :sswitch_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In onPrepareOptionsMenu MENUREC_GROUP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/InCSVTCallMenu;->mRecord_stop:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 237
    const v4, 0x7f0a03eb

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 238
    const v4, 0x7f0a03ec

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 239
    const v4, 0x7f0a03ed

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 240
    const v4, 0x7f0a03ee

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 241
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isFarEndRecord()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 242
    iget-boolean v4, p0, Lcom/android/phone/InCSVTCallMenu;->mRecord_stop:Z

    if-eqz v4, :cond_13

    .line 243
    const v4, 0x7f0a03ee

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 245
    :cond_13
    const v4, 0x7f0a03ed

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 248
    :cond_14
    iget-boolean v4, p0, Lcom/android/phone/InCSVTCallMenu;->mRecord_stop:Z

    if-eqz v4, :cond_15

    .line 249
    const v4, 0x7f0a03ec

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 251
    :cond_15
    const v4, 0x7f0a03eb

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 258
    .end local v1           #itemId:I
    :cond_16
    iget v4, p0, Lcom/android/phone/InCSVTCallMenu;->mMenuSelected:I

    packed-switch v4, :pswitch_data_0

    :goto_5
    move v2, v3

    .line 269
    goto/16 :goto_0

    .line 260
    :pswitch_0
    const v4, 0x7f0a03ea

    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_5

    .line 265
    :pswitch_1
    const v4, 0x7f0a03cc

    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_5

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x7f0a037e -> :sswitch_8
        0x7f0a03d1 -> :sswitch_0
        0x7f0a03d2 -> :sswitch_1
        0x7f0a03d4 -> :sswitch_2
        0x7f0a03d5 -> :sswitch_3
        0x7f0a03da -> :sswitch_0
        0x7f0a03db -> :sswitch_4
        0x7f0a03e2 -> :sswitch_5
        0x7f0a03e3 -> :sswitch_6
        0x7f0a03e4 -> :sswitch_7
        0x7f0a03e5 -> :sswitch_9
        0x7f0a03e6 -> :sswitch_a
        0x7f0a03eb -> :sswitch_0
        0x7f0a03ec -> :sswitch_0
        0x7f0a03ed -> :sswitch_0
        0x7f0a03ee -> :sswitch_b
    .end sparse-switch

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setDisableOutGoingMenu(Z)V
    .locals 0
    .parameter "newVal"

    .prologue
    .line 698
    iput-boolean p1, p0, Lcom/android/phone/InCSVTCallMenu;->mDisableOutGoingMenu:Z

    .line 699
    return-void
.end method

.method setEnableDualCameraMenu(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    .line 812
    iput-boolean p1, p0, Lcom/android/phone/InCSVTCallMenu;->mEnableDualCameraMenu:Z

    .line 813
    if-eqz p1, :cond_0

    .line 814
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->getPreviewEffectState()Lcom/android/phone/PreviewEffectState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PreviewEffectState;->isDualCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mDisableDualCamera:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mDisableDualCamera:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mEnableDualCamera:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mEnableDualCamera:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected setFarEndMenuString()V
    .locals 1

    .prologue
    .line 733
    const-string v0, "vt_audio_mixed_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mCallerUpposAudioRecord:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 738
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mCallerUppos:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_0
.end method

.method protected setNearEndMenuString()V
    .locals 1

    .prologue
    .line 741
    const-string v0, "vt_adjust_camera_contrast_brightness"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mCameraAdjust:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 749
    :goto_0
    return-void

    .line 744
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCSVTCallMenu;->mBlur_Off:Z

    if-eqz v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mDownUppos:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_0

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mDownUpposBlurOff:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_0
.end method
