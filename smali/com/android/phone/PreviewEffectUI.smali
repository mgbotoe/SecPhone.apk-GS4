.class public Lcom/android/phone/PreviewEffectUI;
.super Landroid/widget/LinearLayout;
.source "PreviewEffectUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PreviewEffectUI$2;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private effectState:Lcom/android/phone/PreviewEffectState;

.field private mAnimalTheme01:Landroid/widget/ImageButton;

.field private mAnimalTheme02:Landroid/widget/ImageButton;

.field private mAnimalTheme03:Landroid/widget/ImageButton;

.field private mAnimalThemeBack:Landroid/widget/ImageButton;

.field private mAnimalThemeCancel:Landroid/widget/ImageButton;

.field private mAnimalThemeLayout:Landroid/widget/LinearLayout;

.field private mAuto:Landroid/widget/ToggleButton;

.field private mContext:Landroid/content/Context;

.field private mEmotionalAni01:Landroid/widget/ImageButton;

.field private mEmotionalAni02:Landroid/widget/ImageButton;

.field private mEmotionalAni03:Landroid/widget/ImageButton;

.field private mEmotionalAni04:Landroid/widget/ImageButton;

.field private mEmotionalAni05:Landroid/widget/ImageButton;

.field private mEmotionalAniCancel:Landroid/widget/ImageButton;

.field private mEmotionalAniLayout:Landroid/widget/LinearLayout;

.field private mGlassesTheme01:Landroid/widget/ImageButton;

.field private mGlassesTheme02:Landroid/widget/ImageButton;

.field private mGlassesTheme03:Landroid/widget/ImageButton;

.field private mGlassesThemeBack:Landroid/widget/ImageButton;

.field private mGlassesThemeCancel:Landroid/widget/ImageButton;

.field private mGlassesThemeLayout:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mHatTheme01:Landroid/widget/ImageButton;

.field private mHatTheme02:Landroid/widget/ImageButton;

.field private mHatTheme03:Landroid/widget/ImageButton;

.field private mHatThemeBack:Landroid/widget/ImageButton;

.field private mHatThemeCancel:Landroid/widget/ImageButton;

.field private mHatThemeLayout:Landroid/widget/LinearLayout;

.field private mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

.field private mMustacheTheme01:Landroid/widget/ImageButton;

.field private mMustacheTheme02:Landroid/widget/ImageButton;

.field private mMustacheTheme03:Landroid/widget/ImageButton;

.field private mMustacheThemeBack:Landroid/widget/ImageButton;

.field private mMustacheThemeCancel:Landroid/widget/ImageButton;

.field private mMustacheThemeLayout:Landroid/widget/LinearLayout;

.field private mPartyTheme01:Landroid/widget/ImageButton;

.field private mPartyTheme02:Landroid/widget/ImageButton;

.field private mPartyTheme03:Landroid/widget/ImageButton;

.field private mPartyThemeBack:Landroid/widget/ImageButton;

.field private mPartyThemeCancel:Landroid/widget/ImageButton;

.field private mPartyThemeLayout:Landroid/widget/LinearLayout;

.field private mThemeView01:Landroid/widget/ImageButton;

.field private mThemeView02:Landroid/widget/ImageButton;

.field private mThemeView03:Landroid/widget/ImageButton;

.field private mThemeView04:Landroid/widget/ImageButton;

.field private mThemeView05:Landroid/widget/ImageButton;

.field private mThemeViewCancel:Landroid/widget/ImageButton;

.field private mThemeViewLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 41
    sget v2, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    if-lt v2, v0, :cond_0

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/PreviewEffectUI;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    new-instance v1, Lcom/android/phone/PreviewEffectUI$1;

    invoke-direct {v1, p0}, Lcom/android/phone/PreviewEffectUI$1;-><init>(Lcom/android/phone/PreviewEffectUI;)V

    iput-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    .line 101
    sget-boolean v1, Lcom/android/phone/PreviewEffectUI;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PreviewEffectUI constructor..."

    invoke-direct {p0, v1, v3}, Lcom/android/phone/PreviewEffectUI;->log(Ljava/lang/String;Z)V

    .line 102
    :cond_0
    sget-boolean v1, Lcom/android/phone/PreviewEffectUI;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/PreviewEffectUI;->log(Ljava/lang/String;)V

    .line 103
    :cond_1
    sget-boolean v1, Lcom/android/phone/PreviewEffectUI;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", attrs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/PreviewEffectUI;->log(Ljava/lang/String;)V

    .line 105
    :cond_2
    iput-object p1, p0, Lcom/android/phone/PreviewEffectUI;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 109
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getInVTCallScreenInstance()Lcom/android/phone/InVTCallScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    .line 110
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->isMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    const v1, 0x7f04003f

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 121
    :goto_0
    return-void

    .line 116
    :cond_3
    const v1, 0x7f04003e

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/PreviewEffectUI;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PreviewEffectUI;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/PreviewEffectUI;)Lcom/android/phone/InVTCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/PreviewEffectUI;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/phone/PreviewEffectUI;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/PreviewEffectUI;)Lsiso/vt/VTManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    return-object v0
.end method

.method private cancelEffect()V
    .locals 2

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 567
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 569
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->setNormalLayout()V

    .line 570
    return-void
.end method

.method private getVTManager()Lsiso/vt/VTManager;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 624
    const-string v0, "PreviewEffectUI"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 628
    const-string v0, "PreviewEffectUI"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 629
    return-void
.end method

.method private startEmotionalAnimation(I)V
    .locals 6
    .parameter "animationNum"

    .prologue
    const/16 v5, 0xa0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 573
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 574
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mAuto:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 576
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mAuto:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 577
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    invoke-virtual {v2, v1}, Lcom/android/phone/PreviewEffectState;->setEmotionalAniAuto(Z)V

    .line 578
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "previous_auto_state"

    iget-object v4, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    invoke-virtual {v4}, Lcom/android/phone/PreviewEffectState;->isEmotionalAniAuto()Z

    move-result v4

    if-ne v4, v0, :cond_2

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 580
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 581
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 582
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 584
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 578
    goto :goto_0
.end method


# virtual methods
.method protected hidAllEffectLayoutExceptEmotion()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 595
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mThemeViewLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mThemeViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mPartyThemeLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mPartyThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mAnimalThemeLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 600
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mAnimalThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 601
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mGlassesThemeLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 602
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mGlassesThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 603
    :cond_3
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mHatThemeLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 604
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mHatThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 605
    :cond_4
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mMustacheThemeLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 606
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mMustacheThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 607
    :cond_5
    return-void
.end method

.method protected hideAllEffectLayout()V
    .locals 2

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/android/phone/PreviewEffectUI;->hidAllEffectLayoutExceptEmotion()V

    .line 611
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mMustacheThemeLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mEmotionalAniLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 613
    :cond_0
    return-void
.end method

.method protected hideEmotionalLayout()V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mEmotionalAniLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mEmotionalAniLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 619
    :cond_0
    return-void
.end method

.method protected initPreviewEffectUIButtons()V
    .locals 1

    .prologue
    .line 399
    const v0, 0x7f0a0133

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mEmotionalAniLayout:Landroid/widget/LinearLayout;

    .line 400
    const v0, 0x7f0a013b

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mThemeViewLayout:Landroid/widget/LinearLayout;

    .line 401
    const v0, 0x7f0a0143

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mPartyThemeLayout:Landroid/widget/LinearLayout;

    .line 402
    const v0, 0x7f0a014b

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mAnimalThemeLayout:Landroid/widget/LinearLayout;

    .line 403
    const v0, 0x7f0a0153

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mGlassesThemeLayout:Landroid/widget/LinearLayout;

    .line 404
    const v0, 0x7f0a015b

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mHatThemeLayout:Landroid/widget/LinearLayout;

    .line 405
    const v0, 0x7f0a0163

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mMustacheThemeLayout:Landroid/widget/LinearLayout;

    .line 407
    const v0, 0x7f0a0134

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mAuto:Landroid/widget/ToggleButton;

    .line 408
    const v0, 0x7f0a0135

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mEmotionalAni01:Landroid/widget/ImageButton;

    .line 409
    const v0, 0x7f0a0136

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mEmotionalAni02:Landroid/widget/ImageButton;

    .line 410
    const v0, 0x7f0a0137

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mEmotionalAni03:Landroid/widget/ImageButton;

    .line 411
    const v0, 0x7f0a0138

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mEmotionalAni04:Landroid/widget/ImageButton;

    .line 412
    const v0, 0x7f0a0139

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mEmotionalAni05:Landroid/widget/ImageButton;

    .line 413
    const v0, 0x7f0a013a

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mEmotionalAniCancel:Landroid/widget/ImageButton;

    .line 415
    const v0, 0x7f0a013c

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mThemeView01:Landroid/widget/ImageButton;

    .line 416
    const v0, 0x7f0a013d

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mThemeView02:Landroid/widget/ImageButton;

    .line 417
    const v0, 0x7f0a013e

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mThemeView03:Landroid/widget/ImageButton;

    .line 418
    const v0, 0x7f0a013f

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mThemeView04:Landroid/widget/ImageButton;

    .line 419
    const v0, 0x7f0a0140

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mThemeView05:Landroid/widget/ImageButton;

    .line 421
    const v0, 0x7f0a0142

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mThemeViewCancel:Landroid/widget/ImageButton;

    .line 423
    const v0, 0x7f0a0144

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mPartyThemeBack:Landroid/widget/ImageButton;

    .line 424
    const v0, 0x7f0a0145

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mPartyTheme01:Landroid/widget/ImageButton;

    .line 425
    const v0, 0x7f0a0146

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mPartyTheme02:Landroid/widget/ImageButton;

    .line 426
    const v0, 0x7f0a0147

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mPartyTheme03:Landroid/widget/ImageButton;

    .line 428
    const v0, 0x7f0a014a

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mPartyThemeCancel:Landroid/widget/ImageButton;

    .line 430
    const v0, 0x7f0a014c

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mAnimalThemeBack:Landroid/widget/ImageButton;

    .line 431
    const v0, 0x7f0a014d

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mAnimalTheme01:Landroid/widget/ImageButton;

    .line 432
    const v0, 0x7f0a014e

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mAnimalTheme02:Landroid/widget/ImageButton;

    .line 433
    const v0, 0x7f0a014f

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mAnimalTheme03:Landroid/widget/ImageButton;

    .line 435
    const v0, 0x7f0a0152

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mAnimalThemeCancel:Landroid/widget/ImageButton;

    .line 437
    const v0, 0x7f0a0154

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mGlassesThemeBack:Landroid/widget/ImageButton;

    .line 438
    const v0, 0x7f0a0155

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mGlassesTheme01:Landroid/widget/ImageButton;

    .line 439
    const v0, 0x7f0a0156

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mGlassesTheme02:Landroid/widget/ImageButton;

    .line 440
    const v0, 0x7f0a0157

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mGlassesTheme03:Landroid/widget/ImageButton;

    .line 442
    const v0, 0x7f0a015a

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mGlassesThemeCancel:Landroid/widget/ImageButton;

    .line 444
    const v0, 0x7f0a015c

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mHatThemeBack:Landroid/widget/ImageButton;

    .line 445
    const v0, 0x7f0a015d

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mHatTheme01:Landroid/widget/ImageButton;

    .line 446
    const v0, 0x7f0a015e

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mHatTheme02:Landroid/widget/ImageButton;

    .line 447
    const v0, 0x7f0a015f

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mHatTheme03:Landroid/widget/ImageButton;

    .line 449
    const v0, 0x7f0a0162

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mHatThemeCancel:Landroid/widget/ImageButton;

    .line 451
    const v0, 0x7f0a0164

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mMustacheThemeBack:Landroid/widget/ImageButton;

    .line 452
    const v0, 0x7f0a0165

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mMustacheTheme01:Landroid/widget/ImageButton;

    .line 453
    const v0, 0x7f0a0166

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mMustacheTheme02:Landroid/widget/ImageButton;

    .line 454
    const v0, 0x7f0a0167

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mMustacheTheme03:Landroid/widget/ImageButton;

    .line 456
    const v0, 0x7f0a016a

    invoke-virtual {p0, v0}, Lcom/android/phone/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mMustacheThemeCancel:Landroid/widget/ImageButton;

    .line 458
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mAuto:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mThemeView01:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mThemeView02:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mThemeView03:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mThemeView04:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mThemeView05:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mThemeViewCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mPartyThemeBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mPartyTheme01:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mPartyTheme02:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mPartyTheme03:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mPartyThemeCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mAnimalThemeBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mAnimalTheme01:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mAnimalTheme02:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mAnimalTheme03:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mAnimalThemeCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mGlassesThemeBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mGlassesTheme01:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mGlassesTheme02:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mGlassesTheme03:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mGlassesThemeCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mHatThemeBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mHatTheme01:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mHatTheme02:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mHatTheme03:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mHatThemeCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mMustacheThemeBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mMustacheTheme01:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mMustacheTheme02:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mMustacheTheme03:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mMustacheThemeCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mEmotionalAni01:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mEmotionalAni02:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mEmotionalAni03:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mEmotionalAni04:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mEmotionalAni05:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mEmotionalAniCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x4

    const/16 v6, 0xa0

    const/4 v3, 0x0

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 167
    .local v0, id:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick(View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/phone/PreviewEffectUI;->log(Ljava/lang/String;Z)V

    .line 169
    packed-switch v0, :pswitch_data_0

    .line 396
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 171
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 172
    iget-object v4, p0, Lcom/android/phone/PreviewEffectUI;->mAuto:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 173
    iget-object v4, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 175
    iget-object v4, p0, Lcom/android/phone/PreviewEffectUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_toast_count"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 176
    .local v1, mAutoToastCount:I
    const/4 v4, 0x5

    if-ge v1, v4, :cond_1

    .line 177
    iget-object v4, p0, Lcom/android/phone/PreviewEffectUI;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    const v5, 0x7f09043e

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 179
    iget-object v4, p0, Lcom/android/phone/PreviewEffectUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_toast_count"

    add-int/lit8 v1, v1, 0x1

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    :cond_1
    iget-object v4, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    invoke-virtual {v4, v2}, Lcom/android/phone/PreviewEffectState;->setEmotionalAniAuto(Z)V

    .line 187
    .end local v1           #mAutoToastCount:I
    :goto_1
    iget-object v4, p0, Lcom/android/phone/PreviewEffectUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "previous_auto_state"

    iget-object v6, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    invoke-virtual {v6}, Lcom/android/phone/PreviewEffectState;->isEmotionalAniAuto()Z

    move-result v6

    if-ne v6, v2, :cond_3

    :goto_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 184
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 185
    iget-object v4, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    invoke-virtual {v4, v3}, Lcom/android/phone/PreviewEffectState;->setEmotionalAniAuto(Z)V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 187
    goto :goto_2

    .line 191
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/phone/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto :goto_0

    .line 194
    :pswitch_3
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/phone/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto :goto_0

    .line 197
    :pswitch_4
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/phone/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto :goto_0

    .line 200
    :pswitch_5
    invoke-direct {p0, v7}, Lcom/android/phone/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto :goto_0

    .line 203
    :pswitch_6
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/android/phone/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    .line 206
    :pswitch_7
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mThemeViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mPartyThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    sget-object v3, Lcom/android/phone/PreviewEffectState$ThemeViewStatus;->PARTY:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    iput-object v3, v2, Lcom/android/phone/PreviewEffectState;->themeViewCurrentStatus:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    goto/16 :goto_0

    .line 211
    :pswitch_8
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mThemeViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mAnimalThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 213
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    sget-object v3, Lcom/android/phone/PreviewEffectState$ThemeViewStatus;->ANIMAL:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    iput-object v3, v2, Lcom/android/phone/PreviewEffectState;->themeViewCurrentStatus:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    goto/16 :goto_0

    .line 216
    :pswitch_9
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mThemeViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mGlassesThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    sget-object v3, Lcom/android/phone/PreviewEffectState$ThemeViewStatus;->GLASSES:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    iput-object v3, v2, Lcom/android/phone/PreviewEffectState;->themeViewCurrentStatus:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    goto/16 :goto_0

    .line 221
    :pswitch_a
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mThemeViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHatThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    sget-object v3, Lcom/android/phone/PreviewEffectState$ThemeViewStatus;->HAT:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    iput-object v3, v2, Lcom/android/phone/PreviewEffectState;->themeViewCurrentStatus:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    goto/16 :goto_0

    .line 226
    :pswitch_b
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mThemeViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mMustacheThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    sget-object v3, Lcom/android/phone/PreviewEffectState$ThemeViewStatus;->MUSTACHE:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    iput-object v3, v2, Lcom/android/phone/PreviewEffectState;->themeViewCurrentStatus:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    goto/16 :goto_0

    .line 231
    :pswitch_c
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 233
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 237
    :pswitch_d
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 239
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 243
    :pswitch_e
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 245
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 249
    :pswitch_f
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 251
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 255
    :pswitch_10
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 257
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 261
    :pswitch_11
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 263
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 267
    :pswitch_12
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 269
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 273
    :pswitch_13
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 275
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 279
    :pswitch_14
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 281
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 285
    :pswitch_15
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 287
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 291
    :pswitch_16
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 293
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 297
    :pswitch_17
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 299
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 303
    :pswitch_18
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 305
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 309
    :pswitch_19
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 310
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 311
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 315
    :pswitch_1a
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 317
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 321
    :pswitch_1b
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 322
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2, v8}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 323
    :cond_4
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mPartyThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 325
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mThemeViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    sget-object v3, Lcom/android/phone/PreviewEffectState$ThemeViewStatus;->NONE:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    iput-object v3, v2, Lcom/android/phone/PreviewEffectState;->themeViewCurrentStatus:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    goto/16 :goto_0

    .line 329
    :pswitch_1c
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 330
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2, v8}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 331
    :cond_5
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 332
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mAnimalThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 333
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mThemeViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 334
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    sget-object v3, Lcom/android/phone/PreviewEffectState$ThemeViewStatus;->NONE:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    iput-object v3, v2, Lcom/android/phone/PreviewEffectState;->themeViewCurrentStatus:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    goto/16 :goto_0

    .line 337
    :pswitch_1d
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 338
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2, v8}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 339
    :cond_6
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 340
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mGlassesThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 341
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mThemeViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    sget-object v3, Lcom/android/phone/PreviewEffectState$ThemeViewStatus;->NONE:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    iput-object v3, v2, Lcom/android/phone/PreviewEffectState;->themeViewCurrentStatus:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    goto/16 :goto_0

    .line 345
    :pswitch_1e
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 346
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2, v8}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 347
    :cond_7
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHatThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 349
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mThemeViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 350
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    sget-object v3, Lcom/android/phone/PreviewEffectState$ThemeViewStatus;->NONE:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    iput-object v3, v2, Lcom/android/phone/PreviewEffectState;->themeViewCurrentStatus:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    goto/16 :goto_0

    .line 353
    :pswitch_1f
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 354
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2, v8}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 355
    :cond_8
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mMustacheThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 357
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mThemeViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 358
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    sget-object v3, Lcom/android/phone/PreviewEffectState$ThemeViewStatus;->NONE:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    iput-object v3, v2, Lcom/android/phone/PreviewEffectState;->themeViewCurrentStatus:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    goto/16 :goto_0

    .line 361
    :pswitch_20
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mEmotionalAniLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 362
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    invoke-virtual {v2, v3}, Lcom/android/phone/PreviewEffectState;->setShowEmotionalAni(Z)V

    .line 363
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->cancelEffect()V

    goto/16 :goto_0

    .line 366
    :pswitch_21
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mThemeViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 367
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    invoke-virtual {v2, v3}, Lcom/android/phone/PreviewEffectState;->setShowThemeView(Z)V

    .line 368
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->cancelEffect()V

    goto/16 :goto_0

    .line 371
    :pswitch_22
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mPartyThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 372
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    invoke-virtual {v2, v3}, Lcom/android/phone/PreviewEffectState;->setShowThemeView(Z)V

    .line 373
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->cancelEffect()V

    goto/16 :goto_0

    .line 376
    :pswitch_23
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mAnimalThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 377
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    invoke-virtual {v2, v3}, Lcom/android/phone/PreviewEffectState;->setShowThemeView(Z)V

    .line 378
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->cancelEffect()V

    goto/16 :goto_0

    .line 381
    :pswitch_24
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mGlassesThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 382
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    invoke-virtual {v2, v3}, Lcom/android/phone/PreviewEffectState;->setShowThemeView(Z)V

    .line 383
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->cancelEffect()V

    goto/16 :goto_0

    .line 386
    :pswitch_25
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mHatThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 387
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    invoke-virtual {v2, v3}, Lcom/android/phone/PreviewEffectState;->setShowThemeView(Z)V

    .line 388
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->cancelEffect()V

    goto/16 :goto_0

    .line 391
    :pswitch_26
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->mMustacheThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 392
    iget-object v2, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    invoke-virtual {v2, v3}, Lcom/android/phone/PreviewEffectState;->setShowThemeView(Z)V

    .line 393
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->cancelEffect()V

    goto/16 :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0134
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_20
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_21
        :pswitch_0
        :pswitch_1b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_0
        :pswitch_1c
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_23
        :pswitch_0
        :pswitch_1d
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_24
        :pswitch_0
        :pswitch_1e
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_25
        :pswitch_0
        :pswitch_1f
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_26
    .end packed-switch
.end method

.method protected restoreThemeViewPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreThemeViewPanel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    iget-object v1, v1, Lcom/android/phone/PreviewEffectState;->themeViewCurrentStatus:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/PreviewEffectUI;->log(Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/android/phone/PreviewEffectUI$2;->$SwitchMap$com$android$phone$PreviewEffectState$ThemeViewStatus:[I

    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    iget-object v1, v1, Lcom/android/phone/PreviewEffectState;->themeViewCurrentStatus:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    invoke-virtual {v1}, Lcom/android/phone/PreviewEffectState$ThemeViewStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 157
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mThemeViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    :goto_0
    return-void

    .line 142
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mPartyThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 145
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mAnimalThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 148
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mGlassesThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 151
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mHatThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 154
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mMustacheThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setInVTCallScreenInstance(Lcom/android/phone/InVTCallScreen;)V
    .locals 1
    .parameter "inVTCallScreen"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/phone/PreviewEffectUI;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    .line 125
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v0, v0, Lcom/android/phone/InVTCallState;->previewEffectState:Lcom/android/phone/PreviewEffectState;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    .line 128
    :cond_0
    return-void
.end method

.method protected showEmotionalAnimation()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 513
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mThemeViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 514
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mPartyThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 515
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mAnimalThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 516
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mGlassesThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 517
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mHatThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 518
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mMustacheThemeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 520
    iget-object v4, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "previous_auto_state"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/phone/PreviewEffectState;->setEmotionalAniAuto(Z)V

    .line 521
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    invoke-virtual {v1}, Lcom/android/phone/PreviewEffectState;->isEmotionalAniAuto()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 522
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mAuto:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 523
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa0

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 531
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "emotional_toast_count"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 532
    .local v0, mEmotionalAnimationToastCount:I
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 533
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    const v4, 0x7f09043f

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 535
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "emotional_toast_count"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 538
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mEmotionalAniLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 539
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    invoke-virtual {v1, v2}, Lcom/android/phone/PreviewEffectState;->setShowEmotionalAni(Z)V

    .line 540
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    invoke-virtual {v1, v3}, Lcom/android/phone/PreviewEffectState;->setShowThemeView(Z)V

    .line 541
    return-void

    .end local v0           #mEmotionalAnimationToastCount:I
    :cond_2
    move v1, v3

    .line 520
    goto :goto_0

    .line 526
    :cond_3
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mAuto:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 527
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 528
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    goto :goto_1
.end method

.method protected showThemeViewWithToast()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 544
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mEmotionalAniLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 546
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 550
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "themeview_toast_count"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 551
    .local v0, mThemeViewToastCount:I
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 552
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f09043f

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 554
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "themeview_toast_count"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 557
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->mThemeViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 558
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    invoke-virtual {v1, v4}, Lcom/android/phone/PreviewEffectState;->setShowThemeView(Z)V

    .line 559
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    invoke-virtual {v1, v3}, Lcom/android/phone/PreviewEffectState;->setShowEmotionalAni(Z)V

    .line 561
    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    sget-object v2, Lcom/android/phone/PreviewEffectState$ThemeViewStatus;->NONE:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    iput-object v2, v1, Lcom/android/phone/PreviewEffectState;->themeViewCurrentStatus:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    .line 563
    return-void
.end method

.method protected updateAutoToggle()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mAuto:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mAuto:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/PreviewEffectUI;->effectState:Lcom/android/phone/PreviewEffectState;

    invoke-virtual {v1}, Lcom/android/phone/PreviewEffectState;->isEmotionalAniAuto()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI;->mEmotionalAniLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 592
    return-void
.end method
