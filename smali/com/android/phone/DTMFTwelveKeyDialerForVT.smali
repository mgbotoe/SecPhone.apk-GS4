.class public Lcom/android/phone/DTMFTwelveKeyDialerForVT;
.super Ljava/lang/Object;
.source "DTMFTwelveKeyDialerForVT.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final mDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final mToneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mDTMFBurstCnfPending:Z

.field private mDTMFQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private mDTMFToneEnabled:Z

.field private mDTMFToneType:I

.field private mDialerDrawer:Landroid/widget/SlidingDrawer;

.field private mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

.field private mDialpadDigits:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

.field private mIsHardwareKeyPressed:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mVTManager:Lsiso/vt/VTManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x2a

    const/16 v5, 0x23

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    if-lt v0, v4, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    .line 98
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v3, 0x31

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0a00ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0a00f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0a00f1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0a00f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0a00f3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0a00f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0a00f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0a00f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0a00f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0a00f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0a00fa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0a00f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void

    :cond_0
    move v0, v2

    .line 57
    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/android/phone/InVTCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;Landroid/widget/SlidingDrawer;)V
    .locals 5
    .parameter "parent"
    .parameter "dialerView"
    .parameter "dialerDrawer"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGeneratorLock:Ljava/lang/Object;

    .line 73
    iput-object v4, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mVTManager:Lsiso/vt/VTManager;

    .line 79
    iput-boolean v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFBurstCnfPending:Z

    .line 82
    iput-boolean v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mIsHardwareKeyPressed:Z

    .line 85
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFQueue:Ljava/util/Queue;

    .line 401
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;

    invoke-direct {v0, p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mHandler:Landroid/os/Handler;

    .line 436
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_0

    .line 437
    const-string v0, "DTMFTwelveKeyDialer constructor..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 439
    :cond_0
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    .line 440
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 442
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 447
    if-nez p2, :cond_1

    .line 448
    const-string v0, "DTMFTwelveKeyDialerForVT"

    const-string v1, "DTMFTwelveKeyDialer: null dialerView!"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    :cond_1
    iput-object p2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    .line 453
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_2

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Got passed-in mDialerView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 456
    :cond_2
    iput-object p3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    .line 457
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_3

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Got passed-in mDialerDrawer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 460
    :cond_3
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    if-eqz v0, :cond_5

    .line 461
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isOneHandOperationEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 462
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->setDialer(Lcom/android/phone/DTMFTwelveKeyDialerForVT;Lcom/android/phone/InVTCallScreen;)V

    .line 471
    :goto_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mDialerEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    .line 473
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 474
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;

    invoke-direct {v0, p0, v4}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;

    .line 475
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 478
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 487
    :cond_4
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-direct {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setupKeypad(Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;)V

    .line 490
    :cond_5
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_6

    .line 491
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, p0}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 492
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, p0}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 495
    :cond_6
    return-void

    .line 464
    :cond_7
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-virtual {v0, p0}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->setDialer(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/phone/InVTCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;Landroid/widget/SlidingDrawer;I)V
    .locals 5
    .parameter "parent"
    .parameter "dialerView"
    .parameter "dialerDrawer"
    .parameter "simCardId"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGeneratorLock:Ljava/lang/Object;

    .line 73
    iput-object v4, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mVTManager:Lsiso/vt/VTManager;

    .line 79
    iput-boolean v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFBurstCnfPending:Z

    .line 82
    iput-boolean v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mIsHardwareKeyPressed:Z

    .line 85
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFQueue:Ljava/util/Queue;

    .line 401
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;

    invoke-direct {v0, p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mHandler:Landroid/os/Handler;

    .line 499
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_0

    .line 500
    const-string v0, "DTMFTwelveKeyDialer constructor..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 502
    :cond_0
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    .line 504
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-lez p4, :cond_7

    .line 505
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p4

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 510
    :goto_0
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 515
    if-nez p2, :cond_1

    .line 516
    const-string v0, "DTMFTwelveKeyDialerForVT"

    const-string v1, "DTMFTwelveKeyDialer: null dialerView!"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    :cond_1
    iput-object p2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    .line 521
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_2

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Got passed-in mDialerView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 524
    :cond_2
    iput-object p3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    .line 525
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_3

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Got passed-in mDialerDrawer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 528
    :cond_3
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    if-eqz v0, :cond_5

    .line 529
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isOneHandOperationEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 530
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->setDialer(Lcom/android/phone/DTMFTwelveKeyDialerForVT;Lcom/android/phone/InVTCallScreen;)V

    .line 539
    :goto_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mDialerEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    .line 541
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 542
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;

    invoke-direct {v0, p0, v4}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;

    .line 543
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 547
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 556
    :cond_4
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-direct {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setupKeypad(Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;)V

    .line 559
    :cond_5
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_6

    .line 560
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, p0}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 561
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, p0}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 564
    :cond_6
    return-void

    .line 507
    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 532
    :cond_8
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-virtual {v0, p0}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->setDialer(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V

    goto :goto_1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/phone/DTMFTwelveKeyDialerForVT;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mIsHardwareKeyPressed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/DTMFTwelveKeyDialerForVT;C)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->processDtmf(C)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopTone()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1136
    const-string v0, "DTMFTwelveKeyDialerForVT"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    return-void
.end method

.method private onDialerClose()V
    .locals 2

    .prologue
    .line 672
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_0

    .line 673
    const-string v0, "onDialerClose()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 682
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->onDialerClose()V

    .line 683
    return-void
.end method

.method private onDialerOpen()V
    .locals 4

    .prologue
    .line 611
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_0

    .line 612
    const-string v0, "onDialerOpen()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 623
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->onDialerOpen()V

    .line 624
    return-void
.end method

.method private final processDtmf(C)V
    .locals 1
    .parameter "c"

    .prologue
    .line 991
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->processDtmf(CZ)V

    .line 992
    return-void
.end method

.method private final processDtmf(CZ)V
    .locals 2
    .parameter "c"
    .parameter "forceShortTone"

    .prologue
    .line 1001
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1002
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_0

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updating display and sending dtmf tone for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 1016
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mIsHardwareKeyPressed:Z

    if-nez v0, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 1019
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mIsHardwareKeyPressed:Z

    .line 1022
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1023
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/InVTCallState;->mDtmfString:Ljava/lang/String;

    .line 1028
    :cond_2
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1030
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->startTone(C)V

    .line 1037
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->pokeUserActivity()V

    .line 1038
    return-void

    .line 1032
    :cond_4
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_3

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoring dtmf request for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendShortDtmfToNetwork(C)V
    .locals 5
    .parameter "dtmfDigit"

    .prologue
    const/4 v3, 0x1

    .line 1221
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v2

    .line 1222
    :try_start_0
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFBurstCnfPending:Z

    if-ne v1, v3, :cond_0

    .line 1224
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFQueue:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1234
    :goto_0
    monitor-exit v2

    .line 1235
    return-void

    .line 1226
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 1227
    .local v0, dtmfStr:Ljava/lang/String;
    sget-boolean v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "DTMFTwelveKeyDialerForVT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dtmfsent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFBurstCnfPending:Z

    goto :goto_0

    .line 1234
    .end local v0           #dtmfStr:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setupKeypad(Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;)V
    .locals 5
    .parameter "dialerView"

    .prologue
    .line 725
    sget-object v3, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 727
    .local v2, viewId:I
    invoke-virtual {p1, v2}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 729
    .local v0, button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 730
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 731
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 732
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 733
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 738
    .end local v0           #button:Landroid/view/View;
    .end local v2           #viewId:I
    :cond_0
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v3, v3, Lcom/android/phone/InVTCallState;->mDtmfString:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v3, v3, Lcom/android/phone/InVTCallState;->mDtmfString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 739
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v4, v4, Lcom/android/phone/InVTCallState;->mDtmfString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 740
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v4, v4, Lcom/android/phone/InVTCallState;->mDtmfString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 742
    :cond_1
    return-void
.end method

.method private startTone(C)V
    .locals 4
    .parameter "c"

    .prologue
    .line 1143
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1144
    .local v0, phoneType:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1145
    invoke-virtual {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->startDtmfTone(C)V

    .line 1151
    :goto_0
    return-void

    .line 1146
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1147
    invoke-virtual {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->startToneCdma(C)V

    goto :goto_0

    .line 1149
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private stopTone()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1157
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1158
    .local v0, phoneType:I
    if-ne v0, v2, :cond_1

    .line 1159
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopDtmfTone()V

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1162
    iget v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneType:I

    if-ne v1, v2, :cond_0

    .line 1163
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopToneCdma()V

    goto :goto_0

    .line 1166
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private stopToneCdma()V
    .locals 1

    .prologue
    .line 1242
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_0

    .line 1243
    const-string v0, "stopping remote tone."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 1246
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopLocalToneCdma()V

    .line 1247
    return-void
.end method


# virtual methods
.method clearInCallScreenReference()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 572
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_0

    .line 573
    const-string v0, "clearInCallScreenReference()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 574
    :cond_0
    iput-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    .line 575
    iput-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mVTManager:Lsiso/vt/VTManager;

    .line 576
    iput-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;

    .line 577
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    .line 578
    const-string v0, "mPhone.unregisterForDisconnect(mHandler)"

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 580
    iput-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_2

    .line 583
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 584
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 586
    :cond_2
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    if-eqz v0, :cond_3

    .line 587
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->reset()V

    .line 589
    iput-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    .line 604
    :cond_3
    return-void
.end method

.method public closeDialer(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 933
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_0

    .line 934
    const-string v0, "closeDialer()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 936
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_3

    .line 939
    if-eqz p1, :cond_2

    .line 940
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateToggle()V

    .line 956
    :cond_1
    :goto_0
    return-void

    .line 942
    :cond_2
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->toggle()V

    goto :goto_0

    .line 948
    :cond_3
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->setVisibility(I)V

    .line 953
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onDialerClose()V

    goto :goto_0
.end method

.method handleBurstDtmfConfirmation()V
    .locals 6

    .prologue
    .line 1274
    const/4 v1, 0x0

    .line 1275
    .local v1, dtmfChar:Ljava/lang/Character;
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v3

    .line 1276
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFBurstCnfPending:Z

    .line 1277
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1278
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Character;

    move-object v1, v0

    .line 1279
    sget-boolean v2, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "DTMFTwelveKeyDialerForVT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The dtmf character removed from queue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    if-eqz v1, :cond_1

    .line 1283
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->sendShortDtmfToNetwork(C)V

    .line 1285
    :cond_1
    return-void

    .line 1281
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public isOpened()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 873
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v1, :cond_1

    .line 876
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    .line 882
    :cond_0
    :goto_0
    return v0

    .line 879
    :cond_1
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    if-eqz v1, :cond_0

    .line 880
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 857
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 860
    .local v0, id:I
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->processDtmf(CZ)V

    .line 864
    .end local v0           #id:I
    :cond_0
    return-void
.end method

.method public onDialerKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 704
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_0

    .line 705
    const-string v0, "Notifying dtmf key down."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onDrawerClosed()V
    .locals 0

    .prologue
    .line 980
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onDialerClose()V

    .line 981
    return-void
.end method

.method public onDrawerOpened()V
    .locals 0

    .prologue
    .line 973
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onDialerOpen()V

    .line 974
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    .line 827
    iget-object v6, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 829
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 830
    .local v1, left:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int v2, v6, v7

    .line 831
    .local v2, right:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 832
    .local v3, top:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 834
    .local v0, bottom:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 850
    .end local v0           #bottom:I
    .end local v1           #left:I
    .end local v2           #right:I
    .end local v3           #top:I
    :cond_0
    :goto_0
    return v8

    .line 837
    .restart local v0       #bottom:I
    .restart local v1       #left:I
    .restart local v2       #right:I
    .restart local v3       #top:I
    :pswitch_0
    invoke-virtual {p1, v8}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 840
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 841
    .local v4, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 842
    .local v5, y:I
    if-le v4, v1, :cond_1

    if-ge v4, v2, :cond_1

    if-le v5, v3, :cond_1

    if-ge v5, v0, :cond_1

    .line 843
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 845
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 834
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 803
    const/16 v1, 0x17

    if-eq p2, v1, :cond_0

    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 804
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 805
    .local v0, viewId:I
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 806
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 820
    .end local v0           #viewId:I
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 808
    .restart local v0       #viewId:I
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 809
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->processDtmf(C)V

    goto :goto_0

    .line 813
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopTone()V

    goto :goto_0

    .line 806
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 749
    packed-switch p1, :pswitch_data_0

    .line 758
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InVTCallScreen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 753
    :pswitch_0
    sget-boolean v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v1, :cond_0

    .line 754
    const-string v1, "exit requested"

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 755
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->closeDialer(Z)V

    goto :goto_0

    .line 749
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InVTCallScreen;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 773
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 776
    .local v0, viewId:I
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 777
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 793
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 782
    :pswitch_1
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->processDtmf(C)V

    goto :goto_0

    .line 787
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopTone()V

    goto :goto_0

    .line 777
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public openDialer(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 901
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_0

    .line 902
    const-string v0, "openDialer()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 904
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 905
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_3

    .line 907
    if-eqz p1, :cond_2

    .line 908
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateToggle()V

    .line 924
    :cond_1
    :goto_0
    return-void

    .line 910
    :cond_2
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->toggle()V

    goto :goto_0

    .line 916
    :cond_3
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->setVisibility(I)V

    .line 921
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onDialerOpen()V

    goto :goto_0
.end method

.method public setHandleVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    .line 965
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 967
    :cond_0
    return-void

    .line 965
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setVTManagerInstance(Lsiso/vt/VTManager;)V
    .locals 0
    .parameter "vtManager"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mVTManager:Lsiso/vt/VTManager;

    .line 196
    return-void
.end method

.method public startDialerSession()V
    .locals 5

    .prologue
    .line 645
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneEnabled:Z

    .line 652
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneEnabled:Z

    if-eqz v1, :cond_1

    .line 653
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 654
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 656
    :try_start_1
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v3, 0x8

    const/16 v4, 0x50

    invoke-direct {v1, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 663
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 665
    :cond_1
    return-void

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v1, :cond_2

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught while creating local tone generator: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 660
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    .line 663
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method startDtmfTone(C)V
    .locals 4
    .parameter "tone"

    .prologue
    .line 1076
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_0

    .line 1077
    const-string v0, "startDtmfTone()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mVTManager:Lsiso/vt/VTManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsiso/vt/VTManager;->sendDTMF(Ljava/lang/String;I)V

    .line 1081
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_2

    .line 1082
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1083
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_3

    .line 1084
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_1

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmfTone: mToneGenerator == null, tone: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 1091
    :cond_1
    :goto_0
    monitor-exit v1

    .line 1093
    :cond_2
    return-void

    .line 1087
    :cond_3
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_4

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting local tone "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 1089
    :cond_4
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_0

    .line 1091
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startLocalToneCdma(C)V
    .locals 5
    .parameter "tone"

    .prologue
    .line 1195
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneEnabled:Z

    if-eqz v1, :cond_1

    .line 1196
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1197
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_2

    .line 1198
    sget-boolean v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v1, :cond_0

    .line 1199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startToneCdma: mToneGenerator == null, tone: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 1211
    :cond_0
    :goto_0
    monitor-exit v2

    .line 1213
    :cond_1
    return-void

    .line 1201
    :cond_2
    sget-boolean v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v1, :cond_3

    .line 1202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starting local tone "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 1205
    :cond_3
    const/4 v0, -0x1

    .line 1206
    .local v0, toneDuration:I
    iget v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneType:I

    if-nez v1, :cond_4

    .line 1207
    const/16 v0, 0x78

    .line 1209
    :cond_4
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1, v0}, Landroid/media/ToneGenerator;->startTone(II)Z

    goto :goto_0

    .line 1211
    .end local v0           #toneDuration:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method startToneCdma(C)V
    .locals 3
    .parameter "tone"

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dtmf_tone_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneType:I

    .line 1179
    iget v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneType:I

    if-nez v0, :cond_0

    .line 1180
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->sendShortDtmfToNetwork(C)V

    .line 1187
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->startLocalToneCdma(C)V

    .line 1188
    return-void

    .line 1183
    :cond_0
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "DTMFTwelveKeyDialerForVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send long dtmf for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    goto :goto_0
.end method

.method stopDtmfTone()V
    .locals 2

    .prologue
    .line 1104
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_0

    .line 1105
    const-string v0, "stopDtmfTone()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 1109
    :cond_0
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_1

    .line 1110
    const-string v0, "trying to stop local tone..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 1111
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_3

    .line 1112
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1113
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_4

    .line 1114
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_2

    .line 1115
    const-string v0, "stopDtmfTone: mToneGenerator == null"

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 1121
    :cond_2
    :goto_0
    monitor-exit v1

    .line 1123
    :cond_3
    return-void

    .line 1117
    :cond_4
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_5

    .line 1118
    const-string v0, "stopping local tone."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 1119
    :cond_5
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_0

    .line 1121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method stopLocalToneCdma()V
    .locals 2

    .prologue
    .line 1254
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_0

    .line 1255
    const-string v0, "trying to stop local tone..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 1256
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_2

    .line 1257
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1258
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_3

    .line 1259
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_1

    .line 1260
    const-string v0, "stopLocalToneCdma: mToneGenerator == null"

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 1266
    :cond_1
    :goto_0
    monitor-exit v1

    .line 1268
    :cond_2
    return-void

    .line 1262
    :cond_3
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_4

    .line 1263
    const-string v0, "stopping local tone."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 1264
    :cond_4
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_0

    .line 1266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
