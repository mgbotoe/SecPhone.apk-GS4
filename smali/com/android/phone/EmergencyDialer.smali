.class public Lcom/android/phone/EmergencyDialer;
.super Landroid/app/Activity;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EmergencyDialer$9;,
        Lcom/android/phone/EmergencyDialer$OnehandAnyScreenObserver;
    }
.end annotation


# static fields
.field private static final DIALER_KEYS:[I

.field private static isKeyPressed:Z

.field private static sTypeface:Landroid/graphics/Typeface;


# instance fields
.field private HAND_ADAPTABLE_OPERATION:Ljava/lang/String;

.field private ONE_HAND_DIRECTION:Ljava/lang/String;

.field private ONE_HAND_ENABLED:Ljava/lang/String;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAdditionalButtons:Landroid/view/View;

.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallHandGripChangeObserver:Landroid/database/ContentObserver;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDialButton:Landroid/view/View;

.field private mDialButtonSim1:Landroid/view/View;

.field private mDialButtonSim2:Landroid/view/View;

.field mDigits:Landroid/widget/EditText;

.field private mDomesticOtaStart:Ljava/lang/String;

.field mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

.field private mHandler:Landroid/os/Handler;

.field private mHaptic:Lcom/android/phone/common/HapticFeedback;

.field private mIsHandAdaptOn:Z

.field private mIsOneHandOn:Z

.field private mLastNumber:Ljava/lang/String;

.field private mLeftArrow:Landroid/view/View;

.field private mLocked:Z

.field private mMissingPhoneLock:Z

.field private mOnehandAnyScreenObserver:Lcom/android/phone/EmergencyDialer$OnehandAnyScreenObserver;

.field private mRightArrow:Landroid/view/View;

.field private mSimNum:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundTone:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mToast:Landroid/widget/Toast;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mVolumeFloat:F

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    .line 183
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/EmergencyDialer;->isKeyPressed:Z

    .line 187
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/EmergencyDialer;->sTypeface:Landroid/graphics/Typeface;

    return-void

    .line 135
    :array_0
    .array-data 0x4
        0xeft 0x0t 0xat 0x7ft
        0xf0t 0x0t 0xat 0x7ft
        0xf1t 0x0t 0xat 0x7ft
        0xf2t 0x0t 0xat 0x7ft
        0xf3t 0x0t 0xat 0x7ft
        0xf4t 0x0t 0xat 0x7ft
        0xf5t 0x0t 0xat 0x7ft
        0xf6t 0x0t 0xat 0x7ft
        0xf7t 0x0t 0xat 0x7ft
        0xf8t 0x0t 0xat 0x7ft
        0xf9t 0x0t 0xat 0x7ft
        0xfat 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 175
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToast:Landroid/widget/Toast;

    .line 194
    const-string v0, "onehand_direction"

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    .line 195
    const-string v0, "onehand_dialer_enabled"

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_ENABLED:Ljava/lang/String;

    .line 198
    iput v1, p0, Lcom/android/phone/EmergencyDialer;->mSimNum:I

    .line 201
    const-string v0, "hand_adaptable_operation"

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->HAND_ADAPTABLE_OPERATION:Ljava/lang/String;

    .line 202
    iput-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->mIsHandAdaptOn:Z

    .line 203
    iput-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->mIsOneHandOn:Z

    .line 217
    new-instance v0, Lcom/android/phone/common/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/common/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    .line 222
    new-instance v0, Lcom/android/phone/EmergencyDialer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyDialer$1;-><init>(Lcom/android/phone/EmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 245
    new-instance v0, Lcom/android/phone/EmergencyDialer$2;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyDialer$2;-><init>(Lcom/android/phone/EmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHandler:Landroid/os/Handler;

    .line 2157
    new-instance v0, Lcom/android/phone/EmergencyDialer$OnehandAnyScreenObserver;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyDialer$OnehandAnyScreenObserver;-><init>(Lcom/android/phone/EmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mOnehandAnyScreenObserver:Lcom/android/phone/EmergencyDialer$OnehandAnyScreenObserver;

    .line 2167
    new-instance v0, Lcom/android/phone/EmergencyDialer$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/EmergencyDialer$8;-><init>(Lcom/android/phone/EmergencyDialer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mCallHandGripChangeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyDialer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/EmergencyDialer;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyDialer;->getDuosCallSimIcon(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/EmergencyDialer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput p1, p0, Lcom/android/phone/EmergencyDialer;->mSimNum:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/EmergencyDialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/EmergencyDialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->recreateEmergencyDialer()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/EmergencyDialer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/EmergencyDialer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/EmergencyDialer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    return-object v0
.end method

.method private createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .parameter

    .prologue
    .line 1584
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1585
    const v0, 0x7f0901ae

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/EmergencyDialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1587
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0901af

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private disableHovering()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 781
    const v0, 0x7f0a00ef

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 782
    const v0, 0x7f0a00f0

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 783
    const v0, 0x7f0a00f1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 784
    const v0, 0x7f0a00f2

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 785
    const v0, 0x7f0a00f3

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 786
    const v0, 0x7f0a00f4

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 787
    const v0, 0x7f0a00f5

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 788
    const v0, 0x7f0a00f6

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 789
    const v0, 0x7f0a00f7

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 790
    const v0, 0x7f0a00f8

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 791
    const v0, 0x7f0a00f9

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 792
    const v0, 0x7f0a00fa

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 793
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1707
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToast:Landroid/widget/Toast;

    .line 1710
    :goto_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1711
    return-void

    .line 1709
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getDuosCallSimIcon(I)I
    .locals 7
    .parameter

    .prologue
    const v4, 0x7f020272

    const v3, 0x7f0200fc

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1808
    .line 1812
    const-string v0, "ril.ICC_TYPE"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1817
    :goto_0
    const-string v2, "feature_chn_duos_support_cgg"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v2

    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1819
    const-string v2, "gsm.sim.icon.dual"

    const-string v6, "0"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1827
    :goto_1
    if-ne p1, v5, :cond_4

    .line 1833
    :goto_2
    const-string v2, "support_onehand_operation"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1834
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isOnehandModeOn()Z

    move-result v1

    .line 1837
    :cond_0
    if-nez v1, :cond_5

    .line 1838
    packed-switch v0, :pswitch_data_0

    move v0, v3

    .line 1904
    :goto_3
    return v0

    .line 1815
    :cond_1
    const-string v0, "gsm.sim.icon"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1820
    :cond_2
    const-string v2, "ril.ICC2_TYPE"

    const-string v6, "0"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    move v2, v5

    .line 1821
    goto :goto_1

    .line 1823
    :cond_3
    const-string v2, "gsm.sim.icon2"

    const-string v6, "0"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_4
    move v0, v2

    .line 1830
    goto :goto_2

    :pswitch_0
    move v0, v3

    .line 1841
    goto :goto_3

    .line 1843
    :pswitch_1
    const v0, 0x7f0200fd

    .line 1844
    goto :goto_3

    .line 1846
    :pswitch_2
    const v0, 0x7f020103

    .line 1847
    goto :goto_3

    .line 1849
    :pswitch_3
    const v0, 0x7f020105

    .line 1850
    goto :goto_3

    .line 1852
    :pswitch_4
    const v0, 0x7f020101

    .line 1853
    goto :goto_3

    .line 1855
    :pswitch_5
    const v0, 0x7f020100

    .line 1856
    goto :goto_3

    .line 1858
    :pswitch_6
    const v0, 0x7f0200ff

    .line 1859
    goto :goto_3

    .line 1861
    :pswitch_7
    const v0, 0x7f020102

    .line 1862
    goto :goto_3

    .line 1864
    :pswitch_8
    const v0, 0x7f0200fe

    .line 1865
    goto :goto_3

    .line 1871
    :cond_5
    packed-switch v0, :pswitch_data_1

    move v0, v4

    .line 1900
    goto :goto_3

    :pswitch_9
    move v0, v4

    .line 1874
    goto :goto_3

    .line 1876
    :pswitch_a
    const v0, 0x7f020273

    .line 1877
    goto :goto_3

    .line 1879
    :pswitch_b
    const v0, 0x7f020279

    .line 1880
    goto :goto_3

    .line 1882
    :pswitch_c
    const v0, 0x7f02027a

    .line 1883
    goto :goto_3

    .line 1885
    :pswitch_d
    const v0, 0x7f020277

    .line 1886
    goto :goto_3

    .line 1888
    :pswitch_e
    const v0, 0x7f020276

    .line 1889
    goto :goto_3

    .line 1891
    :pswitch_f
    const v0, 0x7f020275

    .line 1892
    goto :goto_3

    .line 1894
    :pswitch_10
    const v0, 0x7f020278

    .line 1895
    goto :goto_3

    .line 1897
    :pswitch_11
    const v0, 0x7f020274

    .line 1898
    goto :goto_3

    .line 1838
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1871
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private getOneHandModeEnable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1934
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private initSafetyAssurance()V
    .locals 3

    .prologue
    .line 592
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-nez v1, :cond_0

    .line 593
    const v1, 0x7f0a012c

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 594
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EmergencyContactItemContainer;

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    .line 596
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v1, p0}, Lcom/android/phone/EmergencyContactItemContainer;->setEmergencyDialerInstance(Lcom/android/phone/EmergencyDialer;)V

    .line 600
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    new-instance v2, Lcom/android/phone/EmergencyDialer$3;

    invoke-direct {v2, p0}, Lcom/android/phone/EmergencyDialer$3;-><init>(Lcom/android/phone/EmergencyDialer;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 637
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v1, :cond_1

    .line 638
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    sget-object v2, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v1, v2}, Lcom/android/phone/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V

    .line 642
    :cond_1
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v1, :cond_2

    .line 643
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 645
    :cond_2
    return-void
.end method

.method private isSystemKeyEventRequested(I)Z
    .locals 4
    .parameter

    .prologue
    .line 1777
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1781
    :goto_0
    return v0

    .line 1778
    :catch_0
    move-exception v0

    .line 1779
    const-string v1, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSystemKeyEventRequested - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 927
    const-string v1, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 928
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/common/HapticFeedback;->vibrate()V

    .line 929
    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 930
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 931
    return-void
.end method

.method private launchEmergencyCallList()V
    .locals 3

    .prologue
    .line 1089
    const-string v0, "com.android.phone.EmergencyDialer.LIST"

    .line 1090
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1091
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1092
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->startActivity(Landroid/content/Intent;)V

    .line 1093
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1094
    return-void
.end method

.method private launchEmergencyContactList()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1103
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1104
    if-nez v0, :cond_4

    move v0, v6

    .line 1106
    :goto_0
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1107
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1108
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 1110
    if-eqz v0, :cond_0

    if-nez v1, :cond_5

    :cond_0
    move v0, v6

    :goto_1
    move v8, v0

    .line 1113
    :goto_2
    const-string v0, "content://com.android.contacts/groups/title/ICE/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1114
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "emergency"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1118
    if-eqz v8, :cond_6

    .line 1121
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "default_emergency"

    aput-object v3, v2, v7

    const-string v3, "default_emergency = 2"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    .line 1127
    :goto_3
    if-eqz v1, :cond_7

    .line 1128
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    move v0, v7

    .line 1131
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1137
    :goto_5
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1138
    const-string v1, "true"

    const-string v2, "ril.domesticOtaStart"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v6, v7

    .line 1143
    :cond_1
    if-eqz v0, :cond_2

    if-nez v8, :cond_3

    :cond_2
    if-eqz v6, :cond_8

    .line 1144
    :cond_3
    const v0, 0x7f0906e4

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->displayToast(Ljava/lang/String;)V

    .line 1164
    :goto_6
    return-void

    :cond_4
    move v0, v7

    .line 1104
    goto/16 :goto_0

    :cond_5
    move v0, v7

    .line 1110
    goto :goto_1

    .line 1123
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    move-object v3, v4

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    :cond_7
    move v0, v7

    .line 1133
    goto :goto_5

    .line 1148
    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/phone/EmergencyDialer;->removeLockScreenAnimationEffects(Z)V

    .line 1151
    const-string v0, "dcm_jcontacts_package_name"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1152
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.jcontacts.action.SHOW_EMERGENCY_CONTACTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1156
    :goto_7
    const-string v1, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchEmergencyContactList: default only : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const-string v1, "default_only"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1159
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1160
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->startActivity(Landroid/content/Intent;)V

    .line 1163
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    goto :goto_6

    .line 1154
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.SHOW_EMERGENCY_CONTACTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    move v0, v6

    goto/16 :goto_4

    :cond_b
    move v8, v0

    goto/16 :goto_2
.end method

.method private loadSoundPoolTone()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1568
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mSoundPool:Landroid/media/SoundPool;

    .line 1569
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mSoundPool:Landroid/media/SoundPool;

    const v1, 0x7f070003

    invoke-virtual {v0, p0, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/phone/EmergencyDialer;->mSoundTone:I

    .line 1571
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1572
    const-string v1, "situation=0;device=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/phone/EmergencyDialer;->mVolumeFloat:F

    .line 1573
    return-void
.end method

.method private onCreateSimSelectDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1609
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "SIM1_TYPE_SELECT"

    aput-object v1, v4, v0

    const-string v0, "SIM2_TYPE_SELECT"

    aput-object v0, v4, v6

    .line 1614
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030128

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1616
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 1619
    new-instance v0, Lcom/android/phone/EmergencyDialer$4;

    const v3, 0x7f0400b8

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/EmergencyDialer$4;-><init>(Lcom/android/phone/EmergencyDialer;Landroid/content/Context;I[Ljava/lang/String;Landroid/view/LayoutInflater;)V

    .line 1663
    new-instance v1, Lcom/android/phone/EmergencyDialer$5;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyDialer$5;-><init>(Lcom/android/phone/EmergencyDialer;)V

    .line 1677
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1678
    const v3, 0x7f0901ab

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1679
    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1680
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1681
    const v0, 0x7f090024

    new-instance v1, Lcom/android/phone/EmergencyDialer$6;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyDialer$6;-><init>(Lcom/android/phone/EmergencyDialer;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1686
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1687
    new-instance v1, Lcom/android/phone/EmergencyDialer$7;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyDialer$7;-><init>(Lcom/android/phone/EmergencyDialer;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1693
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1694
    return-void
.end method

.method private placeCall()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1404
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 1409
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1410
    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1411
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCurrentNetworkPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/EmergencyDialer;->mSimNum:I

    .line 1413
    :cond_0
    iget v0, p0, Lcom/android/phone/EmergencyDialer;->mSimNum:I

    if-ne v0, v10, :cond_8

    .line 1414
    const-string v0, "gsm.current.simnum"

    const-string v3, "2"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1451
    :cond_1
    :goto_0
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "119"

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1452
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1453
    const-string v3, "ril.skt119Cat"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    :cond_2
    :goto_1
    const-string v3, "sec_product_feature_common_dsds_support"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->getDefaultSimForVoiceCalls()I

    move-result v4

    invoke-static {v3, p0, v4}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_3
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v3, p0, v0}, Landroid/telephony/MultiSimPhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v3, p0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "emergency_for_cyber_terror"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "118"

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    const-string v3, "china_cmcc_emergency_call"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "110"

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "119"

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "999"

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1468
    :cond_6
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1470
    :cond_7
    const-string v0, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1471
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->playTone()V

    .line 1524
    :goto_2
    return-void

    .line 1416
    :cond_8
    const-string v0, "gsm.current.simnum"

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    .line 1418
    :cond_9
    const-string v0, "ctc_dual_mode_single_phone_byqc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1419
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v10, :cond_a

    .line 1420
    const-string v0, "gsm.current.simnum"

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    .line 1422
    :cond_a
    const-string v0, "gsm.current.simnum"

    const-string v3, "2"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    .line 1424
    :cond_b
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1425
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    .line 1426
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    new-array v5, v0, [I

    .line 1427
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v6

    .line 1429
    iget v0, p0, Lcom/android/phone/EmergencyDialer;->mSimNum:I

    if-ne v0, v2, :cond_c

    move v0, v1

    .line 1436
    :goto_3
    iput v1, p0, Lcom/android/phone/EmergencyDialer;->mSimNum:I

    move v3, v1

    .line 1437
    :goto_4
    if-ge v3, v6, :cond_e

    .line 1438
    iget-object v7, v4, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v7, v7, v3

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    aput v7, v5, v3

    .line 1439
    const-string v7, "EmergencyDialer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "placing call simId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", simState["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1431
    :cond_c
    iget v0, p0, Lcom/android/phone/EmergencyDialer;->mSimNum:I

    if-ne v0, v10, :cond_d

    move v0, v2

    .line 1432
    goto :goto_3

    .line 1434
    :cond_d
    iget-object v0, v4, Lcom/android/phone/PhoneGlobals;->phoneMgrs:[Lcom/android/phone/PhoneInterfaceManager;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSimForVoiceCalls()I

    move-result v0

    goto :goto_3

    .line 1442
    :cond_e
    aget v3, v5, v0

    if-ne v3, v2, :cond_1

    if-lt v6, v10, :cond_1

    .line 1443
    if-nez v0, :cond_f

    aget v3, v5, v2

    if-eq v3, v2, :cond_f

    move v0, v2

    .line 1444
    goto/16 :goto_0

    .line 1445
    :cond_f
    if-ne v0, v2, :cond_1

    aget v3, v5, v1

    if-eq v3, v2, :cond_1

    move v0, v1

    .line 1446
    goto/16 :goto_0

    .line 1455
    :cond_10
    const-string v3, "ril.skt119Cat"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1473
    :cond_11
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto/16 :goto_2

    .line 1477
    :cond_12
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->removeLockScreenAnimationEffects(Z)V

    .line 1482
    const-string v3, "emergency_for_cyber_terror"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "118"

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    :cond_13
    const-string v3, "china_cmcc_emergency_call"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "110"

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "119"

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "999"

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1484
    :cond_14
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1489
    :goto_5
    const-string v4, "tel"

    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1490
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1492
    const-string v4, "SKTRADDialOption"

    const-string v5, "abroad"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1494
    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1495
    const-string v4, "simSlot"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1498
    :cond_15
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1499
    const-string v0, "simnum"

    iget v2, p0, Lcom/android/phone/EmergencyDialer;->mSimNum:I

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1500
    iput v1, p0, Lcom/android/phone/EmergencyDialer;->mSimNum:I

    .line 1510
    :cond_16
    :goto_6
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->startActivity(Landroid/content/Intent;)V

    .line 1512
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    if-eqz v0, :cond_1a

    .line 1513
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto/16 :goto_2

    .line 1486
    :cond_17
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 1501
    :cond_18
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1503
    const-string v0, "ril.ICC2_TYPE"

    const-string v4, "0"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_19

    const-string v0, "ril.ICC2_TYPE"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_16

    .line 1505
    :cond_19
    const-string v0, "gsm.current.simnum"

    const-string v2, "2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneGlobals;->setCurrentPhone(Lcom/android/internal/telephony/Phone;)V

    goto :goto_6

    .line 1515
    :cond_1a
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    goto/16 :goto_2

    .line 1521
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1522
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->showDialog(I)V

    goto/16 :goto_2

    :cond_1c
    move v0, v1

    goto/16 :goto_0
.end method

.method private playTone()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1576
    const-string v0, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    if-nez v0, :cond_1

    .line 1581
    :cond_0
    :goto_0
    return-void

    .line 1579
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/phone/EmergencyDialer;->mSoundTone:I

    iget v2, p0, Lcom/android/phone/EmergencyDialer;->mVolumeFloat:F

    iget v3, p0, Lcom/android/phone/EmergencyDialer;->mVolumeFloat:F

    const/high16 v6, 0x3f80

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private recreateEmergencyDialer()V
    .locals 15

    .prologue
    const/4 v11, 0x4

    const/4 v14, 0x0

    const/4 v9, 0x1

    const/16 v12, 0x8

    const/4 v10, 0x0

    .line 1958
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isOnehandModeOn()Z

    move-result v3

    .line 1960
    .local v3, mIsOnehandOn:Z
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1965
    .local v5, mSavedNumber:Ljava/lang/String;
    const-string v8, "feature_chn_duos_cdma_gsm"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1966
    const-string v8, "support_onehand_operation"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    if-eqz v3, :cond_d

    .line 1967
    const v8, 0x7f04003a

    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    .line 1988
    :goto_0
    const-string v8, "safety_assurance"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1989
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v8, :cond_0

    .line 1990
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v8}, Lcom/android/phone/EmergencyContactItemContainer;->reset()V

    .line 1991
    iput-object v14, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    .line 1995
    :cond_0
    const v8, 0x7f0a012b

    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    .line 1996
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1997
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1998
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1999
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 2000
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setInputType(I)V

    .line 2001
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2003
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelected(Z)V

    .line 2006
    :cond_1
    const-string v8, "support_onehand_operation"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v3, :cond_3

    .line 2007
    const v8, 0x7f0a0131

    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    .line 2008
    const v8, 0x7f0a0130

    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    .line 2010
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2011
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2012
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v13, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v8, v13, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_10

    move v4, v9

    .line 2014
    .local v4, mIsOnehandOptionRight:Z
    :goto_1
    const-string v8, "ssuport_hand_adapt_operation"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 2015
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getHandAdaptEnable()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/phone/EmergencyDialer;->mIsHandAdaptOn:Z

    .line 2016
    iget-boolean v8, p0, Lcom/android/phone/EmergencyDialer;->mIsHandAdaptOn:Z

    if-eqz v8, :cond_13

    .line 2017
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    if-eqz v8, :cond_2

    iget-object v13, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    if-eqz v4, :cond_11

    move v8, v11

    :goto_2
    invoke-virtual {v13, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2018
    :cond_2
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    if-eqz v8, :cond_3

    iget-object v13, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    if-eqz v4, :cond_12

    move v8, v12

    :goto_3
    invoke-virtual {v13, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2031
    .end local v4           #mIsOnehandOptionRight:Z
    :cond_3
    :goto_4
    sget-object v8, Lcom/android/phone/EmergencyDialer;->sTypeface:Landroid/graphics/Typeface;

    if-nez v8, :cond_4

    .line 2032
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v13, "fonts/Num47_TW.ttf"

    invoke-static {v8, v13}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    sput-object v8, Lcom/android/phone/EmergencyDialer;->sTypeface:Landroid/graphics/Typeface;

    .line 2035
    :cond_4
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    sget-object v13, Lcom/android/phone/EmergencyDialer;->sTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v8, v13}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2037
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->maybeAddNumberFormatting()V

    .line 2039
    const-string v8, "safety_assurance"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2040
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->initSafetyAssurance()V

    .line 2044
    :cond_5
    const v8, 0x7f0a00ef

    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 2045
    .local v7, view:Landroid/view/View;
    if-eqz v7, :cond_6

    .line 2046
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->setupKeypad()V

    .line 2049
    :cond_6
    const v8, 0x7f0a00fb

    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    .line 2052
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2053
    .local v6, res:Landroid/content/res/Resources;
    const v8, 0x7f0c0009

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 2055
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v13, 0x7f0a00fc

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2057
    .local v0, emergenyContactsButton:Landroid/view/View;
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v13, 0x7f0a00fd

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    .line 2058
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2059
    const-string v8, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2060
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 2061
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2064
    :cond_7
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v13, 0x7f0a0100

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    .line 2065
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2066
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2067
    const-string v8, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2068
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 2069
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2072
    :cond_8
    const-string v8, "emergency_contacts"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isEncryptionMode()Z

    move-result v8

    if-nez v8, :cond_1b

    .line 2074
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2075
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2076
    const-string v8, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2077
    invoke-virtual {v0, v10}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 2078
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2115
    :cond_9
    :goto_5
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v11, 0x7f0a00fe

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    .line 2116
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    check-cast v8, Landroid/widget/ImageButton;

    invoke-direct {p0, v9}, Lcom/android/phone/EmergencyDialer;->getDuosCallSimIcon(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2117
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2118
    const-string v8, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2119
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 2120
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2123
    :cond_a
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v9, 0x7f0a00ff

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    .line 2124
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    check-cast v8, Landroid/widget/ImageButton;

    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/android/phone/EmergencyDialer;->getDuosCallSimIcon(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2125
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2126
    const-string v8, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2127
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 2128
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2131
    :cond_b
    const-string v8, "feature_chn_duos_cdma_gsm"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 2132
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 2133
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2134
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2148
    .end local v0           #emergenyContactsButton:Landroid/view/View;
    :goto_6
    if-eqz v5, :cond_c

    .line 2149
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2152
    :cond_c
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2153
    .local v1, etext:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-static {v1, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2155
    return-void

    .line 1969
    .end local v1           #etext:Landroid/text/Editable;
    .end local v6           #res:Landroid/content/res/Resources;
    .end local v7           #view:Landroid/view/View;
    :cond_d
    const v8, 0x7f040038

    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    goto/16 :goto_0

    .line 1970
    :cond_e
    const-string v8, "support_onehand_operation"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    if-eqz v3, :cond_f

    .line 1971
    const v8, 0x7f040039

    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    goto/16 :goto_0

    .line 1973
    :cond_f
    const v8, 0x7f040037

    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    goto/16 :goto_0

    :cond_10
    move v4, v10

    .line 2012
    goto/16 :goto_1

    .restart local v4       #mIsOnehandOptionRight:Z
    :cond_11
    move v8, v12

    .line 2017
    goto/16 :goto_2

    :cond_12
    move v8, v11

    .line 2018
    goto/16 :goto_3

    .line 2021
    :cond_13
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    if-eqz v8, :cond_14

    iget-object v13, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    if-eqz v4, :cond_15

    move v8, v10

    :goto_7
    invoke-virtual {v13, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2022
    :cond_14
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    if-eqz v8, :cond_3

    iget-object v13, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    if-eqz v4, :cond_16

    move v8, v12

    :goto_8
    invoke-virtual {v13, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_15
    move v8, v12

    .line 2021
    goto :goto_7

    :cond_16
    move v8, v10

    .line 2022
    goto :goto_8

    .line 2026
    :cond_17
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    if-eqz v8, :cond_18

    iget-object v13, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    if-eqz v4, :cond_19

    move v8, v10

    :goto_9
    invoke-virtual {v13, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2027
    :cond_18
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    if-eqz v8, :cond_3

    iget-object v13, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    if-eqz v4, :cond_1a

    move v8, v12

    :goto_a
    invoke-virtual {v13, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_19
    move v8, v12

    .line 2026
    goto :goto_9

    :cond_1a
    move v8, v10

    .line 2027
    goto :goto_a

    .line 2084
    .end local v4           #mIsOnehandOptionRight:Z
    .restart local v0       #emergenyContactsButton:Landroid/view/View;
    .restart local v6       #res:Landroid/content/res/Resources;
    .restart local v7       #view:Landroid/view/View;
    :cond_1b
    const-string v8, "tablet_device"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 2085
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 2104
    :goto_b
    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-boolean v8, p0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    if-eqz v8, :cond_9

    .line 2105
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2106
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2107
    const-string v8, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2108
    invoke-virtual {v0, v10}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 2109
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_5

    .line 2087
    :cond_1c
    const-string v8, "Emergency_dialer_expandable_dial"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 2088
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 2089
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 2090
    .local v2, mDialParams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x4000

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2092
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v8, v11, :cond_1d

    .line 2093
    const/16 v8, 0xa

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2097
    :goto_c
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    .line 2095
    :cond_1d
    iput v12, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_c

    .line 2100
    .end local v2           #mDialParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1e
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 2137
    :cond_1f
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 2138
    iput-object v14, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    .line 2139
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 2140
    iput-object v14, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    goto/16 :goto_6

    .line 2144
    .end local v0           #emergenyContactsButton:Landroid/view/View;
    :cond_20
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 2145
    iput-object v14, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    goto/16 :goto_6
.end method

.method private registerOnehandAnyScreenObserver()V
    .locals 4

    .prologue
    .line 1942
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_running"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mOnehandAnyScreenObserver:Lcom/android/phone/EmergencyDialer$OnehandAnyScreenObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1943
    const-string v0, "EmergencyDialer"

    const-string v1, "registerOnehandAnyScreenObserver"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1944
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1769
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1773
    :goto_0
    return v0

    .line 1770
    :catch_0
    move-exception v0

    .line 1771
    const-string v1, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSystemKeyEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setHandGripCondition(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1908
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1909
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1910
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "Phone_dialer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1911
    const-string v1, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1912
    const-string v1, "PackageName"

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1913
    const-string v1, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1914
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->sendBroadcast(Landroid/content/Intent;)V

    .line 1915
    return-void
.end method

.method private setupKeypad()V
    .locals 7

    .prologue
    .line 765
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget v2, v0, v1

    .line 766
    .local v2, id:I
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 767
    .local v3, key:Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 769
    const-string v6, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 770
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 765
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    .end local v2           #id:I
    .end local v3           #key:Landroid/view/View;
    :cond_1
    const v6, 0x7f0a00f9

    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 774
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 775
    const-string v6, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 776
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 777
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->disableHovering()V

    .line 778
    return-void
.end method

.method private unregisterOnehandAnyScreenObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1948
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mOnehandAnyScreenObserver:Lcom/android/phone/EmergencyDialer$OnehandAnyScreenObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1952
    :goto_0
    const-string v0, "EmergencyDialer"

    const-string v1, "unregisterOnehandAnyScreenObserver"

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1953
    return-void

    .line 1949
    :catch_0
    move-exception v0

    .line 1950
    const-string v1, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Observer not registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private updateDialAndDeleteButtonStateEnabledAttr()V
    .locals 2

    .prologue
    .line 1717
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1718
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 1720
    .local v0, notEmpty:Z
    :goto_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1721
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1722
    :cond_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1723
    :cond_1
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1725
    .end local v0           #notEmpty:Z
    :cond_2
    return-void

    .line 1718
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 285
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/SpecialCharSequenceMgr;->handleCharsForLockedDevice(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    .line 291
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 266
    return-void
.end method

.method public getHandAdaptEnable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1938
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->HAND_ADAPTABLE_OPERATION:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getSlotSelectionInformation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1786
    const-string v0, "/sys/class/sec/slot_switch/slot_sel"

    .line 1788
    const-string v1, "0"

    .line 1790
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1791
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1792
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1793
    const-string v1, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slot_Sel [read]<---------------------------------- : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1800
    :goto_0
    if-nez v0, :cond_0

    .line 1801
    const-string v0, "0"

    .line 1804
    :cond_0
    return-object v0

    .line 1795
    :catch_0
    move-exception v0

    .line 1796
    const-string v0, "EmergencyDialer"

    const-string v1, "File open error"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    const-string v0, "0"

    goto :goto_0
.end method

.method public getSystemOneHandSwitchStateSettingValue()I
    .locals 3

    .prologue
    .line 1919
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_switch_state"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected maybeAddNumberFormatting()V
    .locals 0

    .prologue
    .line 750
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1387
    const-string v0, "EmergencyDialer"

    const-string v1, "onBackPressed()..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const-string v0, "safety_assurance"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyContactItemContainer;->reset()V

    .line 1396
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1397
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x2

    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 952
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1072
    :cond_0
    :goto_0
    return-void

    .line 954
    :sswitch_0
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 955
    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 959
    :sswitch_1
    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 960
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 964
    :sswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 965
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 969
    :sswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 970
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 974
    :sswitch_4
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 975
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 979
    :sswitch_5
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 980
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 984
    :sswitch_6
    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 985
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 989
    :sswitch_7
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 990
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 994
    :sswitch_8
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 995
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 999
    :sswitch_9
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 1000
    invoke-direct {p0, v5}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 1004
    :sswitch_a
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 1005
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 1009
    :sswitch_b
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 1010
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 1014
    :sswitch_c
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 1018
    :sswitch_d
    const-string v0, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/common/HapticFeedback;->vibrate()V

    .line 1020
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto/16 :goto_0

    .line 1024
    :sswitch_e
    const-string v0, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1025
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/common/HapticFeedback;->vibrate()V

    .line 1026
    :cond_2
    iput v3, p0, Lcom/android/phone/EmergencyDialer;->mSimNum:I

    .line 1027
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto/16 :goto_0

    .line 1031
    :sswitch_f
    const-string v0, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1032
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/common/HapticFeedback;->vibrate()V

    .line 1033
    :cond_3
    iput v4, p0, Lcom/android/phone/EmergencyDialer;->mSimNum:I

    .line 1034
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto/16 :goto_0

    .line 1038
    :sswitch_10
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 1045
    :sswitch_11
    const-string v0, "safety_assurance"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1046
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v0, :cond_4

    .line 1047
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyContactItemContainer;->reset()V

    .line 1048
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    .line 1051
    :cond_4
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    if-eqz v0, :cond_5

    .line 1052
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->launchEmergencyCallList()V

    goto/16 :goto_0

    .line 1055
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->launchEmergencyContactList()V

    goto/16 :goto_0

    .line 1059
    :sswitch_12
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1061
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1064
    :sswitch_13
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1065
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1066
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 952
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00ef -> :sswitch_0
        0x7f0a00f0 -> :sswitch_1
        0x7f0a00f1 -> :sswitch_2
        0x7f0a00f2 -> :sswitch_3
        0x7f0a00f3 -> :sswitch_4
        0x7f0a00f4 -> :sswitch_5
        0x7f0a00f5 -> :sswitch_6
        0x7f0a00f6 -> :sswitch_7
        0x7f0a00f7 -> :sswitch_8
        0x7f0a00f8 -> :sswitch_b
        0x7f0a00f9 -> :sswitch_9
        0x7f0a00fa -> :sswitch_a
        0x7f0a00fc -> :sswitch_11
        0x7f0a00fd -> :sswitch_d
        0x7f0a00fe -> :sswitch_e
        0x7f0a00ff -> :sswitch_f
        0x7f0a0100 -> :sswitch_c
        0x7f0a012b -> :sswitch_10
        0x7f0a0130 -> :sswitch_13
        0x7f0a0131 -> :sswitch_12
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "icicle"

    .prologue
    .line 295
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 299
    new-instance v4, Landroid/content/Intent;

    const-string v17, "DismissClipboardDialogFromEmergencyDialer"

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v4, dismissClipboard:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/phone/EmergencyDialer;->sendBroadcast(Landroid/content/Intent;)V

    .line 303
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 304
    const-string v17, "statusbar"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/StatusBarManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 305
    const-string v17, "accessibility"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EmergencyDialer;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 309
    .local v8, lp:Landroid/view/WindowManager$LayoutParams;
    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v17, v0

    const/high16 v18, 0x8

    or-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 311
    const-string v17, "tablet_device"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 313
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyDialer;->setRequestedOrientation(I)V

    .line 314
    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v17, v0

    const/high16 v18, 0x10

    or-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 317
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/PhoneGlobals;->proximitySensorModeEnabled()Z

    move-result v17

    if-nez v17, :cond_1

    .line 319
    const-wide/16 v17, 0x3a98

    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 321
    :cond_1
    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v17, v0

    const/high16 v18, 0x400

    or-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/Intent;

    const-string v19, "intent.stop.app-in-app"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    .line 327
    const-string v17, "lock"

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "missing_phone_lock"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    .line 329
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 331
    const-string v17, "feature_lgt"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    move-object/from16 v17, v0

    const/high16 v18, 0x977

    invoke-virtual/range {v17 .. v18}, Landroid/app/StatusBarManager;->disable(I)V

    .line 343
    const-string v17, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PowerManager;

    .line 344
    .local v14, pm:Landroid/os/PowerManager;
    const/16 v17, 0xa

    const-string v18, "EmergencyDialer"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v17

    if-nez v17, :cond_2

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 351
    .end local v14           #pm:Landroid/os/PowerManager;
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isOnehandModeOn()Z

    move-result v10

    .line 352
    .local v10, mIsOnehandOn:Z
    const-string v17, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 353
    const-string v17, "support_onehand_operation"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_16

    if-eqz v10, :cond_16

    .line 354
    const v17, 0x7f04003a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    .line 375
    :goto_0
    const v17, 0x7f0a012b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setInputType(I)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setSelected(Z)V

    .line 386
    :cond_3
    const-string v17, "support_onehand_operation"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    if-eqz v10, :cond_5

    .line 387
    const v17, 0x7f0a0131

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    .line 388
    const v17, 0x7f0a0130

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    const/4 v11, 0x1

    .line 394
    .local v11, mIsOnehandOptionRight:Z
    :goto_1
    const-string v17, "ssuport_hand_adapt_operation"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getHandAdaptEnable()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/EmergencyDialer;->mIsHandAdaptOn:Z

    .line 396
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/EmergencyDialer;->mIsHandAdaptOn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1c

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v11, :cond_1a

    const/16 v17, 0x4

    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 398
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v11, :cond_1b

    const/16 v17, 0x8

    :goto_3
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    .end local v11           #mIsOnehandOptionRight:Z
    :cond_5
    :goto_4
    sget-object v17, Lcom/android/phone/EmergencyDialer;->sTypeface:Landroid/graphics/Typeface;

    if-nez v17, :cond_6

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    const-string v18, "fonts/Num47_TW.ttf"

    invoke-static/range {v17 .. v18}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v17

    sput-object v17, Lcom/android/phone/EmergencyDialer;->sTypeface:Landroid/graphics/Typeface;

    .line 417
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/phone/EmergencyDialer;->sTypeface:Landroid/graphics/Typeface;

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->maybeAddNumberFormatting()V

    .line 421
    const-string v17, "safety_assurance"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 422
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->initSafetyAssurance()V

    .line 426
    :cond_7
    const v17, 0x7f0a00ef

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 427
    .local v16, view:Landroid/view/View;
    if-eqz v16, :cond_8

    .line 428
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->setupKeypad()V

    .line 431
    :cond_8
    const v17, 0x7f0a00fb

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 435
    .local v15, res:Landroid/content/res/Resources;
    const v17, 0x7f0c0009

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-eqz v17, :cond_29

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a00fc

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 439
    .local v6, emergenyContactsButton:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a00fd

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    const-string v17, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 446
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a0100

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 449
    const-string v17, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 454
    :cond_a
    const-string v17, "emergency_contacts"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_24

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isEncryptionMode()Z

    move-result v17

    if-nez v17, :cond_24

    .line 456
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 457
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    const-string v17, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 459
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 460
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 496
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a00fe

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/ImageButton;

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/EmergencyDialer;->getDuosCallSimIcon(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    const-string v17, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 504
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a00ff

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/ImageButton;

    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/EmergencyDialer;->getDuosCallSimIcon(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    const-string v17, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 512
    :cond_d
    const-string v17, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_28

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 529
    .end local v6           #emergenyContactsButton:Landroid/view/View;
    :goto_6
    if-eqz p1, :cond_e

    .line 530
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 534
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 535
    .local v3, data:Landroid/net/Uri;
    if-eqz v3, :cond_10

    const-string v17, "tel"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 536
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 537
    .local v13, number:Ljava/lang/String;
    const-string v17, "feature_multisim"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/MultiSimPhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 541
    :cond_f
    if-eqz v13, :cond_10

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 548
    .end local v13           #number:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 549
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    move-object/from16 v17, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v17, :cond_11

    .line 551
    :try_start_1
    new-instance v17, Landroid/media/ToneGenerator;

    const/16 v19, 0x8

    const/16 v20, 0x50

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 557
    :cond_11
    :goto_7
    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 559
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 560
    .local v7, intentFilter:Landroid/content/IntentFilter;
    const-string v17, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    const-string v17, "missing_phone_lock"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 563
    const-string v17, "com.android.phone.Emergencydialer.MISSING_PHONE_UNLOCK"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 566
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Lcom/android/phone/EmergencyDialer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 569
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    move-object/from16 v17, v0

    const v18, 0x7f0c0003

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/common/HapticFeedback;->init(Landroid/content/Context;Z)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 574
    :goto_8
    const-string v17, "window"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EmergencyDialer;->mWindowManager:Landroid/view/IWindowManager;

    .line 575
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/EmergencyDialer;->mLocked:Z

    .line 576
    const-string v17, "feature_ktt"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_13

    const-string v17, "20"

    const-string v18, "ril.simtype"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_14

    :cond_13
    const-string v17, "feature_lgt"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    const-string v17, "18"

    const-string v18, "ril.simtype"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 579
    :cond_14
    const/16 v17, 0x1a

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    .line 580
    const/16 v17, 0x3

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    .line 581
    const/16 v17, 0x6

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    .line 584
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/EmergencyDialer;->isSystemKeyEventRequested(I)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/EmergencyDialer;->mLocked:Z

    .line 586
    :cond_15
    const-string v17, "ril.domesticOtaStart"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EmergencyDialer;->mDomesticOtaStart:Ljava/lang/String;

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x64

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 589
    return-void

    .line 356
    .end local v3           #data:Landroid/net/Uri;
    .end local v7           #intentFilter:Landroid/content/IntentFilter;
    .end local v15           #res:Landroid/content/res/Resources;
    .end local v16           #view:Landroid/view/View;
    :cond_16
    const v17, 0x7f040038

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    goto/16 :goto_0

    .line 357
    :cond_17
    const-string v17, "support_onehand_operation"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_18

    if-eqz v10, :cond_18

    .line 358
    const v17, 0x7f040039

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    goto/16 :goto_0

    .line 360
    :cond_18
    const v17, 0x7f040037

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    goto/16 :goto_0

    .line 392
    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 397
    .restart local v11       #mIsOnehandOptionRight:Z
    :cond_1a
    const/16 v17, 0x8

    goto/16 :goto_2

    .line 398
    :cond_1b
    const/16 v17, 0x4

    goto/16 :goto_3

    .line 401
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v11, :cond_1e

    const/16 v17, 0x0

    :goto_9
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 402
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v11, :cond_1f

    const/16 v17, 0x8

    :goto_a
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 401
    :cond_1e
    const/16 v17, 0x8

    goto :goto_9

    .line 402
    :cond_1f
    const/16 v17, 0x0

    goto :goto_a

    .line 407
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v11, :cond_22

    const/16 v17, 0x0

    :goto_b
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 408
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v11, :cond_23

    const/16 v17, 0x8

    :goto_c
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 407
    :cond_22
    const/16 v17, 0x8

    goto :goto_b

    .line 408
    :cond_23
    const/16 v17, 0x0

    goto :goto_c

    .line 466
    .end local v11           #mIsOnehandOptionRight:Z
    .restart local v6       #emergenyContactsButton:Landroid/view/View;
    .restart local v15       #res:Landroid/content/res/Resources;
    .restart local v16       #view:Landroid/view/View;
    :cond_24
    const-string v17, "tablet_device"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_25

    .line 467
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 486
    :goto_d
    const-string v17, "feature_lgt"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 487
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 488
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    const-string v17, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 490
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 491
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_5

    .line 469
    :cond_25
    const-string v17, "Emergency_dialer_expandable_dial"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_27

    .line 470
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 472
    .local v9, mDialParams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v17, 0x4000

    move/from16 v0, v17

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_26

    .line 475
    const/16 v17, 0xa

    move/from16 v0, v17

    iput v0, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 479
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    .line 477
    :cond_26
    const/16 v17, 0x8

    move/from16 v0, v17

    iput v0, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_e

    .line 482
    .end local v9           #mDialParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_27
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 518
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 519
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 521
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    goto/16 :goto_6

    .line 525
    .end local v6           #emergenyContactsButton:Landroid/view/View;
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 526
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    goto/16 :goto_6

    .line 552
    .restart local v3       #data:Landroid/net/Uri;
    :catch_0
    move-exception v5

    .line 553
    .local v5, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v17, "EmergencyDialer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception caught while creating local tone generator: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_7

    .line 557
    .end local v5           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v17

    .line 570
    .restart local v7       #intentFilter:Landroid/content/IntentFilter;
    :catch_1
    move-exception v12

    .line 571
    .local v12, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v17, "EmergencyDialer"

    const-string v18, "Vibrate control bool missing."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v12}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1593
    .line 1594
    if-nez p1, :cond_0

    .line 1596
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0901ab

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090021

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1605
    :cond_0
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 649
    const-string v0, "safety_assurance"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 652
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 718
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 719
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 720
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 724
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 726
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 727
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    const-string v0, "EmergencyDialer"

    const-string v1, "onDestroy() : SCREEN_BRIGHT_WAKE_LOCK Release"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 731
    :cond_1
    return-void

    .line 724
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    .line 1174
    iget-object v6, p0, Lcom/android/phone/EmergencyDialer;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/EmergencyDialer;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1177
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1197
    :cond_0
    :goto_0
    return v8

    .line 1180
    :pswitch_0
    invoke-virtual {p1, v8}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 1183
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 1184
    .local v1, left:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int v2, v6, v7

    .line 1185
    .local v2, right:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 1186
    .local v3, top:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 1187
    .local v0, bottom:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 1188
    .local v4, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 1189
    .local v5, y:I
    if-le v4, v1, :cond_1

    if-ge v4, v2, :cond_1

    if-le v5, v3, :cond_1

    if-ge v5, v0, :cond_1

    .line 1190
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 1192
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 1177
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 935
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 947
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 939
    :pswitch_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 940
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 941
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    .line 942
    const/4 v0, 0x1

    goto :goto_0

    .line 935
    :pswitch_data_0
    .packed-switch 0x7f0a012b
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 800
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "20"

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 801
    if-ne p1, v3, :cond_1

    .line 802
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 857
    :cond_0
    :goto_0
    return v0

    .line 805
    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->mLocked:Z

    if-nez v1, :cond_0

    .line 809
    :cond_2
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    if-eqz v1, :cond_3

    .line 810
    if-eq p1, v3, :cond_0

    .line 815
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 857
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 818
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 822
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    if-nez v1, :cond_0

    .line 823
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    goto :goto_0

    .line 825
    :cond_6
    const-string v1, "support_folder_hardkey"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 826
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->onCreateSimSelectDialog()V

    goto :goto_0

    .line 829
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto :goto_0

    .line 835
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 836
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_0

    .line 849
    :cond_8
    :sswitch_2
    const-string v1, "disable_camera_in_call"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 815
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x7 -> :sswitch_1
        0x1b -> :sswitch_2
        0x43 -> :sswitch_1
        0x50 -> :sswitch_2
        0xa8 -> :sswitch_2
        0xa9 -> :sswitch_2
        0x100 -> :sswitch_2
        0x104 -> :sswitch_2
        0x105 -> :sswitch_2
        0x106 -> :sswitch_2
        0x107 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 913
    sparse-switch p1, :sswitch_data_0

    .line 923
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 915
    :sswitch_0
    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 919
    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 913
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 862
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    if-eqz v0, :cond_1

    .line 864
    const-string v0, "play_emergency_dialer_key_tone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    invoke-virtual {p0, p1}, Lcom/android/phone/EmergencyDialer;->playToneByKey(I)V

    .line 867
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 890
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 881
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    .line 882
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 883
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    .line 885
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 867
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1206
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    move v1, v2

    .line 1220
    :goto_0
    return v1

    .line 1208
    :sswitch_0
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    .line 1212
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 1216
    :sswitch_1
    const/16 v2, 0x51

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 1206
    :sswitch_data_0
    .sparse-switch
        0x7f0a00f9 -> :sswitch_1
        0x7f0a0100 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 684
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 713
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 686
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    sget-object v1, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V

    .line 690
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    goto :goto_0

    .line 694
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyContactItemContainer;->removeContacts(Z)V

    .line 696
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    sget-object v1, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V

    .line 699
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    goto :goto_0

    .line 702
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v0, :cond_2

    .line 703
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyContactItemContainer;->removeContacts(Z)V

    .line 704
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    sget-object v1, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V

    .line 707
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    goto :goto_0

    .line 684
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a022c -> :sswitch_2
        0x7f0a03b6 -> :sswitch_0
        0x7f0a03b7 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 1326
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1327
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDomesticOtaStart:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDomesticOtaStart:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1328
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    .line 1329
    const/16 v1, 0x1a

    invoke-direct {p0, v1, v0}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    .line 1330
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    .line 1332
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1336
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1338
    const-string v1, "emergency_dialer_tones"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1339
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1340
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v2, :cond_1

    .line 1341
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v2}, Landroid/media/ToneGenerator;->release()V

    .line 1342
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 1344
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1347
    :cond_2
    const-string v1, "ctc_dual_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1348
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "DSNETWORK"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1350
    new-instance v1, Landroid/content/Intent;

    const-string v2, "ACTION_DUALMODE_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->sendBroadcast(Landroid/content/Intent;)V

    .line 1353
    :cond_3
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v1, :cond_5

    .line 1354
    :goto_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 1355
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v1, v1, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4

    .line 1356
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v1, v1, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1357
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v1, v1, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v1, v1, v0

    iput-object v3, v1, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    .line 1354
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1344
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1363
    :cond_5
    const-string v0, "support_onehand_any_screen"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1364
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->unregisterOnehandAnyScreenObserver()V

    .line 1366
    :cond_6
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 754
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 760
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 761
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1698
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1699
    if-nez p1, :cond_0

    move-object v0, p2

    .line 1700
    check-cast v0, Landroid/app/AlertDialog;

    .line 1701
    .local v0, alert:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1703
    .end local v0           #alert:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f0a03b7

    const v5, 0x7f0a03b6

    const v4, 0x7f0a022c

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 657
    const-string v1, "safety_assurance"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 658
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 679
    :cond_0
    :goto_0
    return v0

    .line 659
    :cond_1
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v1, :cond_2

    .line 660
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v1}, Lcom/android/phone/EmergencyContactItemContainer;->getEmergencyContactExist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    sget-object v1, Lcom/android/phone/EmergencyDialer$9;->$SwitchMap$com$android$phone$EmergencyContactItemContainer$ScreenType:[I

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyContactItemContainer;->getScreenType()Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 679
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 663
    :pswitch_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 664
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 665
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 668
    :pswitch_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 669
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 670
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 661
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 735
    const-string v0, "lastNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 736
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1225
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1227
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->removeLockScreenAnimationEffects(Z)V

    .line 1230
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    .line 1234
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/common/HapticFeedback;->checkSystemSetting()V

    .line 1238
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1239
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1241
    :try_start_1
    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v3, 0x8

    const/16 v4, 0x50

    invoke-direct {v0, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1248
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1250
    const-string v0, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1251
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->loadSoundPoolTone()V

    .line 1256
    :cond_2
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1257
    const-string v0, "emergency_dialer_home_recent_block"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1258
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v2, 0x120

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1261
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    .line 1263
    const-string v0, "lock"

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "missing_phone_lock"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    .line 1264
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    if-eqz v0, :cond_4

    .line 1265
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v2, 0x977

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1277
    :cond_4
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1278
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDomesticOtaStart:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDomesticOtaStart:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1280
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    .line 1281
    const/16 v0, 0x1a

    invoke-direct {p0, v0, v1}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    .line 1282
    const/4 v0, 0x6

    invoke-direct {p0, v0, v1}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    .line 1284
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v2, 0x47

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1291
    :cond_5
    const-string v0, "safety_assurance"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1292
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v0, :cond_6

    .line 1293
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyContactItemContainer;->makeEmergencyContactQuery()V

    .line 1297
    :cond_6
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1298
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "DSNETWORK"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1300
    new-instance v0, Landroid/content/Intent;

    const-string v2, "ACTION_DUALMODE_SETTING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->sendBroadcast(Landroid/content/Intent;)V

    .line 1304
    :cond_7
    const-string v0, "ssuport_hand_adapt_operation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1305
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getHandAdaptEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mIsHandAdaptOn:Z

    .line 1306
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->getOneHandModeEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mIsOneHandOn:Z

    .line 1309
    :cond_8
    const-string v0, "ssuport_hand_adapt_operation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mIsHandAdaptOn:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mIsOneHandOn:Z

    if-eqz v0, :cond_9

    .line 1310
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->registCallHandGripChangeObserver()V

    .line 1311
    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->setHandGripCondition(Z)V

    .line 1314
    :cond_9
    const-string v0, "support_onehand_any_screen"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1315
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->registerOnehandAnyScreenObserver()V

    .line 1318
    :cond_a
    return-void

    .line 1243
    :catch_0
    move-exception v0

    .line 1244
    :try_start_3
    const-string v3, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught while creating local tone generator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_0

    .line 1248
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 740
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 741
    const-string v0, "lastNumber"

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1370
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1371
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1372
    const-string v0, "safety_assurance"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v0, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyContactItemContainer;->storeContainerState()V

    .line 1378
    :cond_0
    const-string v0, "ssuport_hand_adapt_operation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mIsHandAdaptOn:Z

    if-eqz v0, :cond_1

    .line 1379
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->unregistCallHandGripChangeObserver()V

    .line 1380
    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->setHandGripCondition(Z)V

    .line 1383
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 271
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1075
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    const-string v0, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->playTone()V

    .line 1078
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1081
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method playTone(I)V
    .locals 4
    .parameter

    .prologue
    .line 1537
    const-string v0, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    if-nez v0, :cond_1

    .line 1565
    :cond_0
    :goto_0
    return-void

    .line 1546
    :cond_1
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1547
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 1548
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1553
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1554
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v2, :cond_2

    .line 1555
    const-string v0, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    monitor-exit v1

    goto :goto_0

    .line 1564
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1558
    :cond_2
    :try_start_1
    const-string v2, "use_situation_gain_for_emergency_dialer_tones"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1559
    const-string v2, "situation=9;device=0"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1560
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v2, v0}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 1563
    :cond_3
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x96

    invoke-virtual {v0, p1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1564
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method playToneByKey(I)V
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 894
    packed-switch p1, :pswitch_data_0

    .line 909
    :goto_0
    return-void

    .line 895
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    .line 896
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    .line 897
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    .line 898
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    .line 899
    :pswitch_4
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    .line 900
    :pswitch_5
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    .line 901
    :pswitch_6
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    .line 902
    :pswitch_7
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    .line 903
    :pswitch_8
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    .line 904
    :pswitch_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    .line 905
    :pswitch_a
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    .line 906
    :pswitch_b
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    .line 894
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public registCallHandGripChangeObserver()V
    .locals 4

    .prologue
    .line 1924
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1925
    const-string v1, "onehand_switch_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mCallHandGripChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1926
    return-void
.end method

.method removeLockScreenAnimationEffects(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1744
    :try_start_0
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "PRIVATE_FLAG_FORCE_SHOW_WHEN_LOCKED"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1745
    if-eqz v0, :cond_1

    .line 1746
    invoke-virtual {v0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 1747
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1748
    if-eqz p1, :cond_0

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1750
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1765
    :goto_1
    return-void

    .line 1749
    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 1754
    :catch_0
    move-exception v0

    .line 1755
    const-string v1, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execption - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1752
    :cond_1
    :try_start_1
    const-string v0, "EmergencyDialer"

    const-string v1, "field not exist"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    .line 1756
    :catch_1
    move-exception v0

    .line 1757
    const-string v1, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execption - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1758
    :catch_2
    move-exception v0

    .line 1759
    const-string v1, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execption - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1760
    :catch_3
    move-exception v0

    .line 1761
    const-string v1, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execption - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1762
    :catch_4
    move-exception v0

    .line 1763
    const-string v1, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execption - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public unregistCallHandGripChangeObserver()V
    .locals 2

    .prologue
    .line 1929
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1930
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mCallHandGripChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1931
    return-void
.end method
