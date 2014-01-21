.class public Lcom/android/phone/EmergencyContactItemContainer;
.super Landroid/widget/LinearLayout;
.source "EmergencyContactItemContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EmergencyContactItemContainer$1;,
        Lcom/android/phone/EmergencyContactItemContainer$ItemType;,
        Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;,
        Lcom/android/phone/EmergencyContactItemContainer$ScreenType;
    }
.end annotation


# static fields
.field public static isContactItemExist:Z

.field private static isNoService:Z


# instance fields
.field private final EMERGENCY_ITEM_CHECKED_SHAREDPREF:Ljava/lang/String;

.field public final EMERGENCY_ITEM_COUNT:I

.field private final EMERGENCY_NORMAL_TYPE_SHAREDPREF:Ljava/lang/String;

.field private final INVALID_ID:I

.field private final LOG_TAG:Ljava/lang/String;

.field public contact_id:[J

.field public mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

.field public mItems:[Lcom/android/phone/EmergencyContactItem;

.field private mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    sput-boolean v0, Lcom/android/phone/EmergencyContactItemContainer;->isNoService:Z

    .line 54
    sput-boolean v0, Lcom/android/phone/EmergencyContactItemContainer;->isContactItemExist:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x4

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const-string v0, "EmergencyContactItemContainer"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->LOG_TAG:Ljava/lang/String;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->INVALID_ID:I

    .line 47
    const-string v0, "shared_pref_emergency_contact_item_checked"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_ITEM_CHECKED_SHAREDPREF:Ljava/lang/String;

    .line 48
    const-string v0, "shared_pref_emergency_contact_screen_type"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_NORMAL_TYPE_SHAREDPREF:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mToast:Landroid/widget/Toast;

    .line 60
    iput v1, p0, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_ITEM_COUNT:I

    .line 62
    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    .line 66
    new-array v0, v1, [Lcom/android/phone/EmergencyContactItem;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    .line 68
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x4

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const-string v0, "EmergencyContactItemContainer"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->LOG_TAG:Ljava/lang/String;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->INVALID_ID:I

    .line 47
    const-string v0, "shared_pref_emergency_contact_item_checked"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_ITEM_CHECKED_SHAREDPREF:Ljava/lang/String;

    .line 48
    const-string v0, "shared_pref_emergency_contact_screen_type"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_NORMAL_TYPE_SHAREDPREF:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mToast:Landroid/widget/Toast;

    .line 60
    iput v1, p0, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_ITEM_COUNT:I

    .line 62
    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    .line 66
    new-array v0, v1, [Lcom/android/phone/EmergencyContactItem;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    .line 68
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x4

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const-string v0, "EmergencyContactItemContainer"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->LOG_TAG:Ljava/lang/String;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->INVALID_ID:I

    .line 47
    const-string v0, "shared_pref_emergency_contact_item_checked"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_ITEM_CHECKED_SHAREDPREF:Ljava/lang/String;

    .line 48
    const-string v0, "shared_pref_emergency_contact_screen_type"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_NORMAL_TYPE_SHAREDPREF:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mToast:Landroid/widget/Toast;

    .line 60
    iput v1, p0, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_ITEM_COUNT:I

    .line 62
    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    .line 66
    new-array v0, v1, [Lcom/android/phone/EmergencyContactItem;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    .line 68
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    .line 73
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 346
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mToast:Landroid/widget/Toast;

    .line 349
    :goto_0
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 350
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 97
    const-string v2, "EmergencyContactItemContainer"

    const-string v3, "init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItemContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 99
    iget-object v3, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyContactItemContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EmergencyContactItem;

    aput-object v2, v3, v0

    .line 100
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lcom/android/phone/EmergencyContactItem;->setParent(Lcom/android/phone/EmergencyContactItemContainer;)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    new-array v1, v4, [Landroid/view/View;

    .line 103
    .local v1, mItemsIndex:[Landroid/view/View;
    const/4 v2, 0x0

    const v3, 0x7f0a0126

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyContactItemContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 104
    const/4 v2, 0x1

    const v3, 0x7f0a0127

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyContactItemContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 105
    const/4 v2, 0x2

    const v3, 0x7f0a0128

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyContactItemContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 106
    const/4 v2, 0x3

    const v3, 0x7f0a0129

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyContactItemContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 108
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 109
    aget-object v2, v1, v0

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_1
    return-void
.end method


# virtual methods
.method public getEmergencyContactExist()Z
    .locals 1

    .prologue
    .line 358
    sget-boolean v0, Lcom/android/phone/EmergencyContactItemContainer;->isNoService:Z

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x0

    .line 361
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/phone/EmergencyContactItemContainer;->isContactItemExist:Z

    goto :goto_0
.end method

.method public getScreenType()Lcom/android/phone/EmergencyContactItemContainer$ScreenType;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    return-object v0
.end method

.method public makeEmergencyContactQuery()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 114
    const-string v4, "EmergencyContactItemContainer"

    const-string v7, "makeEmergencyContactQuery"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 117
    .local v3, radioState:I
    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phoneMgrs:[Lcom/android/phone/PhoneInterfaceManager;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSimForVoiceCalls()I

    move-result v0

    .line 119
    .local v0, currentSimSlot:I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v0

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 122
    .end local v0           #currentSimSlot:I
    :cond_0
    if-nez v3, :cond_5

    move v4, v5

    :goto_0
    sput-boolean v4, Lcom/android/phone/EmergencyContactItemContainer;->isNoService:Z

    .line 124
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 125
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 126
    .local v1, radio1State:I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 128
    .local v2, radio2State:I
    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    move v6, v5

    :cond_2
    sput-boolean v6, Lcom/android/phone/EmergencyContactItemContainer;->isNoService:Z

    .line 141
    .end local v1           #radio1State:I
    .end local v2           #radio2State:I
    :cond_3
    sget-boolean v4, Lcom/android/phone/EmergencyContactItemContainer;->isNoService:Z

    if-nez v4, :cond_4

    .line 142
    new-instance v4, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItemContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;-><init>(Lcom/android/phone/EmergencyContactItemContainer;Landroid/content/ContentResolver;)V

    sget-object v5, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    invoke-virtual {v4, v5}, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->startQuery(Lcom/android/phone/EmergencyContactItemContainer$ItemType;)V

    .line 145
    :cond_4
    return-void

    :cond_5
    move v4, v6

    .line 122
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 311
    const-string v2, "EmergencyContactItemContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick(View.getId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, isOtaRegistration:Z
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    const-string v2, "true"

    const-string v5, "ril.domesticOtaStart"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    const/4 v0, 0x1

    .line 320
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 321
    .local v1, radioState:I
    if-nez v1, :cond_2

    move v2, v3

    :goto_0
    sput-boolean v2, Lcom/android/phone/EmergencyContactItemContainer;->isNoService:Z

    .line 323
    sget-boolean v2, Lcom/android/phone/EmergencyContactItemContainer;->isNoService:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_3

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItemContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0906e4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyContactItemContainer;->displayToast(Ljava/lang/String;)V

    .line 342
    :goto_1
    return-void

    :cond_2
    move v2, v4

    .line 321
    goto :goto_0

    .line 328
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 330
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v2, v2, v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EmergencyContactItem;->updateEmergencyContact(I)V

    goto :goto_1

    .line 333
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v2, v2, v4

    invoke-virtual {v2, v4}, Lcom/android/phone/EmergencyContactItem;->updateEmergencyContact(I)V

    goto :goto_1

    .line 336
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v2, v2, v7

    invoke-virtual {v2, v7}, Lcom/android/phone/EmergencyContactItem;->updateEmergencyContact(I)V

    goto :goto_1

    .line 339
    :pswitch_3
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v2, v2, v8

    invoke-virtual {v2, v8}, Lcom/android/phone/EmergencyContactItem;->updateEmergencyContact(I)V

    goto :goto_1

    .line 328
    :pswitch_data_0
    .packed-switch 0x7f0a0126
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 89
    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItemContainer;->init()V

    .line 90
    return-void
.end method

.method public removeContacts(Z)V
    .locals 6
    .parameter "set"

    .prologue
    .line 179
    const-string v4, "EmergencyContactItemContainer"

    const-string v5, "removeContacts : "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    .local v0, arr$:[Lcom/android/phone/EmergencyContactItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 181
    .local v2, item:Lcom/android/phone/EmergencyContactItem;
    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {v2, p1}, Lcom/android/phone/EmergencyContactItem;->removeEmergencyContact(Z)V

    .line 180
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v2           #item:Lcom/android/phone/EmergencyContactItem;
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    .local v0, arr$:[Lcom/android/phone/EmergencyContactItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 189
    .local v2, item:Lcom/android/phone/EmergencyContactItem;
    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {v2}, Lcom/android/phone/EmergencyContactItem;->reset()V

    .line 188
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v2           #item:Lcom/android/phone/EmergencyContactItem;
    :cond_1
    sget-object v4, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v4, p0, Lcom/android/phone/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    .line 194
    return-void
.end method

.method public restoreContainerState()V
    .locals 6

    .prologue
    .line 365
    const-string v3, "EmergencyContactItemContainer"

    const-string v4, "restoreContainerState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 367
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "shared_pref_emergency_contact_screen_type"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 368
    .local v1, normalType:Z
    if-eqz v1, :cond_1

    sget-object v3, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V

    .line 369
    if-eqz v1, :cond_2

    .line 375
    :cond_0
    :goto_1
    return-void

    .line 368
    :cond_1
    sget-object v3, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    goto :goto_0

    .line 370
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/4 v3, 0x4

    if-ge v0, v3, :cond_3

    .line 371
    iget-object v3, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v3, v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shared_pref_emergency_contact_item_checked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/EmergencyContactItem;->setChecked(Z)V

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 373
    :cond_3
    iget-object v3, p0, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    if-eqz v3, :cond_0

    .line 374
    iget-object v3, p0, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v3}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    goto :goto_1
.end method

.method public setContactsId()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-wide/16 v3, -0x1

    .line 296
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItemContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_contact_position_zero"

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    aput-wide v1, v0, v5

    .line 298
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItemContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_contact_position_one"

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    aput-wide v1, v0, v6

    .line 300
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItemContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_contact_position_two"

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    aput-wide v1, v0, v7

    .line 302
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItemContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_contact_position_three"

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    aput-wide v1, v0, v8

    .line 304
    const-string v0, "EmergencyContactItemContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContactsId : id[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    aget-wide v2, v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",id[1]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    aget-wide v2, v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",id[2]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    aget-wide v2, v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",id[3]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    aget-wide v2, v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method public setEmergencyContactExist(Z)V
    .locals 3
    .parameter "itemExist"

    .prologue
    .line 353
    sput-boolean p1, Lcom/android/phone/EmergencyContactItemContainer;->isContactItemExist:Z

    .line 354
    const-string v0, "EmergencyContactItemContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isContactItemExist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/EmergencyContactItemContainer;->isContactItemExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method public setEmergencyDialerInstance(Lcom/android/phone/EmergencyDialer;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    .line 94
    return-void
.end method

.method public setScreenType(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 148
    const-string v0, "EmergencyContactItemContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iput-object p1, p0, Lcom/android/phone/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    .line 150
    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItemContainer;->updateContactItemContainer()V

    .line 151
    return-void
.end method

.method public storeContainerState()V
    .locals 6

    .prologue
    .line 378
    const-string v4, "EmergencyContactItemContainer"

    const-string v5, "storeContainerState"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 380
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 381
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItemContainer;->getScreenType()Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    move-result-object v4

    sget-object v5, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    .line 382
    .local v2, normalType:Z
    :goto_0
    const-string v4, "shared_pref_emergency_contact_screen_type"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 383
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    if-nez v2, :cond_1

    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shared_pref_emergency_contact_item_checked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/phone/EmergencyContactItem;->isChecked()Z

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 381
    .end local v1           #i:I
    .end local v2           #normalType:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 386
    .restart local v1       #i:I
    .restart local v2       #normalType:Z
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 387
    return-void
.end method

.method public updateContactItemContainer()V
    .locals 7

    .prologue
    .line 161
    const-string v5, "EmergencyContactItemContainer"

    const-string v6, "updateContactItemContainer : "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    .local v0, arr$:[Lcom/android/phone/EmergencyContactItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 163
    .local v3, item:Lcom/android/phone/EmergencyContactItem;
    if-eqz v3, :cond_0

    .line 164
    iget-object v5, p0, Lcom/android/phone/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v3, v5}, Lcom/android/phone/EmergencyContactItem;->updateContactItem(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V

    .line 162
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v3           #item:Lcom/android/phone/EmergencyContactItem;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyContactItemContainer;->setEmergencyContactExist(Z)V

    .line 169
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v5, 0x4

    if-ge v1, v5, :cond_2

    .line 170
    iget-object v5, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/phone/EmergencyContactItem;->getItemId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 172
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyContactItemContainer;->setEmergencyContactExist(Z)V

    .line 176
    :cond_2
    return-void

    .line 169
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
