.class public Lcom/android/phone/CdmaCallForwardOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CdmaCallForwardOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaCallForwardOptions$5;,
        Lcom/android/phone/CdmaCallForwardOptions$AppState;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field private mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

.field private mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mCFBDataStale:Z

.field private mCFDataStale:Z

.field private mCFNRcDataStale:Z

.field private mCFNRyDataStale:Z

.field private mCFUDataStale:Z

.field private mCancelDataStale:Z

.field private mContactListIntent:Landroid/content/Intent;

.field private mDialingNumCFB:Ljava/lang/String;

.field private mDialingNumCFNRc:Ljava/lang/String;

.field private mDialingNumCFNRy:Ljava/lang/String;

.field private mDialingNumCFU:Ljava/lang/String;

.field private mDisplayMode:I

.field private mGetAllCFOptionsComplete:Landroid/os/Handler;

.field private mIsBusyDialogAvailable:Z

.field private mMoreDataStale:Z

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSetState_check:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mpreference:Landroid/preference/Preference;

.field private mpreferenceint:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    .line 73
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/phone/CdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    .line 74
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "{0}"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/CdmaCallForwardOptions;->SRC_TAGS:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 70
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 59
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 169
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDisplayMode:I

    .line 170
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z

    .line 173
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z

    .line 174
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z

    .line 175
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z

    .line 176
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mMoreDataStale:Z

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mIsBusyDialogAvailable:Z

    .line 599
    new-instance v0, Lcom/android/phone/CdmaCallForwardOptions$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaCallForwardOptions$2;-><init>(Lcom/android/phone/CdmaCallForwardOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    .line 633
    new-instance v0, Lcom/android/phone/CdmaCallForwardOptions$3;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaCallForwardOptions$3;-><init>(Lcom/android/phone/CdmaCallForwardOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mGetAllCFOptionsComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-static {p0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/CdmaCallForwardOptions;Lcom/android/phone/CdmaCallForwardOptions$AppState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CdmaCallForwardOptions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDisplayMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/CdmaCallForwardOptions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->queryAllCFOptions()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CdmaCallForwardOptions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CdmaCallForwardOptions;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CdmaCallForwardOptions;Landroid/os/AsyncResult;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CdmaCallForwardOptions;->handleGetCFMessage(Landroid/os/AsyncResult;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/CdmaCallForwardOptions;Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z

    return p1
.end method

.method private adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V
    .locals 4
    .parameter "epn"
    .parameter "isActive"
    .parameter "template"
    .parameter "number"

    .prologue
    .line 541
    sget-boolean v2, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustCFbuttonState epn => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " template =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 543
    :cond_0
    if-nez p1, :cond_1

    .line 557
    :goto_0
    return-void

    .line 546
    :cond_1
    const-string v0, ""

    .line 547
    .local v0, summaryOn:Ljava/lang/CharSequence;
    if-eqz p2, :cond_3

    .line 548
    if-eqz p4, :cond_2

    .line 549
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    .line 550
    .local v1, values:[Ljava/lang/String;
    invoke-virtual {p0, p3}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaCallForwardOptions;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 552
    .end local v1           #values:[Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 556
    :cond_3
    invoke-virtual {p1, p4}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_0
.end method

.method private final dismissBusyDialog()V
    .locals 2

    .prologue
    .line 920
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissBusyDialog: mIsBusyDialogAvailable => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mIsBusyDialogAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 922
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mIsBusyDialogAvailable:Z

    if-eqz v0, :cond_1

    .line 923
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissDialog(I)V

    .line 925
    :cond_1
    return-void
.end method

.method private handleGetCFMessage(Landroid/os/AsyncResult;I)I
    .locals 6
    .parameter "ar"
    .parameter "reason"

    .prologue
    const/16 v4, 0x12c

    .line 498
    sget-boolean v3, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCFMessage ar = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " reason = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 500
    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 501
    sget-boolean v3, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "handleGetCFMessage: Error getting CF enable state."

    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 502
    :cond_1
    const/16 v3, 0xc8

    .line 533
    :goto_0
    return v3

    .line 503
    :cond_2
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    .line 507
    sget-boolean v3, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCFMessage: Error during set call, reason: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " exception: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_3
    move v3, v4

    .line 509
    goto :goto_0

    .line 511
    :cond_4
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v3

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 512
    .local v0, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    if-nez v3, :cond_6

    .line 513
    sget-boolean v3, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "handleGetCFMessage: Error getting CF state, unexpected value."

    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_5
    move v3, v4

    .line 514
    goto :goto_0

    .line 520
    :cond_6
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v0

    .local v2, length:I
    :goto_1
    if-ge v1, v2, :cond_8

    .line 521
    aget-object v3, v0, v1

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9

    .line 523
    sget-boolean v3, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v3, :cond_7

    .line 524
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCFMessage: CF state successfully queried for reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 527
    :cond_7
    aget-object v3, v0, v1

    invoke-direct {p0, p2, v3}, Lcom/android/phone/CdmaCallForwardOptions;->syncCFUIState(ILcom/android/internal/telephony/CallForwardInfo;)V

    .line 533
    :cond_8
    const/16 v3, 0x64

    goto :goto_0

    .line 520
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1149
    const-string v0, "CdmaCallForwardOptions"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    return-void
.end method

.method private queryAllCFOptions()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 626
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "queryAllCFOptions: begin querying call features."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mGetAllCFOptionsComplete:Landroid/os/Handler;

    const/16 v2, 0x190

    invoke-static {v1, v2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 630
    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V
    .locals 2
    .parameter "requestedState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 799
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState First => requestedState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 800
    :cond_0
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_2

    .line 801
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "setAppState: illegal error state without reason."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 802
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_2
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V

    .line 805
    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V
    .locals 4
    .parameter "requestedState"
    .parameter "msgStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x64

    const/16 v2, 0x384

    .line 810
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState Second => requestedState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msgStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_2

    .line 813
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 911
    :cond_1
    :goto_0
    return-void

    .line 819
    :cond_2
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_6

    .line 820
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 821
    :cond_3
    sparse-switch p2, :sswitch_data_0

    .line 846
    :goto_1
    iput-object p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    goto :goto_0

    .line 823
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne v0, v1, :cond_4

    .line 824
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->dismissDialog(I)V

    .line 828
    :goto_2
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_1

    .line 826
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissBusyDialog()V

    goto :goto_2

    .line 831
    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_1

    .line 834
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne v0, v1, :cond_5

    .line 835
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->dismissDialog(I)V

    .line 839
    :goto_3
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_1

    .line 837
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissBusyDialog()V

    goto :goto_3

    .line 850
    :cond_6
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$5;->$SwitchMap$com$android$phone$CdmaCallForwardOptions$AppState:[I

    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallForwardOptions$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 910
    :cond_7
    :goto_4
    iput-object p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    goto :goto_0

    .line 854
    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_7

    .line 855
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 856
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :pswitch_1
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: displaying busy dialog, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 862
    :cond_9
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_a

    .line 863
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_4

    .line 864
    :cond_a
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_b

    .line 865
    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_4

    .line 866
    :cond_b
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_7

    .line 867
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "setAppState: illegal transition from INPUT_READY"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 868
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INPUT_READY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :pswitch_2
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "setAppState: DIALOG_OPEN"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 874
    :cond_d
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_7

    .line 877
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "setAppState: DIALOG_OPEN => BUSY_DIALOG"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 878
    :cond_e
    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_4

    .line 883
    :pswitch_3
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_10

    .line 884
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 885
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 888
    :cond_10
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_11

    const-string v0, "setAppState: INITIAL_QUERY => INITIAL_BUSY_DIALOG"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 889
    :cond_11
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->dismissDialog(I)V

    goto/16 :goto_4

    .line 892
    :pswitch_4
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_13

    .line 893
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_12

    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 894
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_13
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "setAppState: BUSY_NETWORK_CONNECT =>dismissBusyDialog"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 898
    :cond_14
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissBusyDialog()V

    goto/16 :goto_4

    .line 901
    :pswitch_5
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_16

    .line 902
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_15

    const-string v0, "setAppState: illegal transition from WAITING_NUMBER_SELECT"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 903
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from WAITING_NUMBER_SELECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_16
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_17

    const-string v0, "setAppState: WAITING_NUMBER_SELECT =>dismissBusyDialog"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 907
    :cond_17
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissBusyDialog()V

    goto/16 :goto_4

    .line 821
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x320 -> :sswitch_1
    .end sparse-switch

    .line 850
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private syncCFUIState(ILcom/android/internal/telephony/CallForwardInfo;)V
    .locals 4
    .parameter "reason"
    .parameter "info"

    .prologue
    const/4 v0, 0x1

    .line 561
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v1, v0, :cond_1

    .line 563
    .local v0, active:Z
    :goto_0
    sget-boolean v1, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncCFUIState reason => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " active =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 564
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 586
    :goto_1
    return-void

    .line 561
    .end local v0           #active:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 566
    .restart local v0       #active:Z
    :pswitch_0
    sget-boolean v1, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "syncCFUIState: Setting UI state consistent with CFU."

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 567
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    const v2, 0x7f09005f

    iget-object v3, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/phone/CdmaCallForwardOptions;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    .line 568
    iget-object v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDialingNumCFU:Ljava/lang/String;

    goto :goto_1

    .line 571
    :pswitch_1
    sget-boolean v1, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "syncCFUIState: Setting UI state consistent with CFB."

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 572
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    const v2, 0x7f090064

    iget-object v3, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/phone/CdmaCallForwardOptions;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    .line 573
    iget-object v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDialingNumCFB:Ljava/lang/String;

    goto :goto_1

    .line 576
    :pswitch_2
    sget-boolean v1, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "syncCFUIState: Setting UI state consistent with CFNRy."

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 577
    :cond_4
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    const v2, 0x7f09006a

    iget-object v3, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/phone/CdmaCallForwardOptions;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    .line 578
    iget-object v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDialingNumCFNRy:Ljava/lang/String;

    goto :goto_1

    .line 581
    :pswitch_3
    sget-boolean v1, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "syncCFUIState: Setting UI state consistent with CFNRc."

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 582
    :cond_5
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    const v2, 0x7f090070

    iget-object v3, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/phone/CdmaCallForwardOptions;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    .line 583
    iget-object v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDialingNumCFNRc:Ljava/lang/String;

    goto :goto_1

    .line 564
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 437
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v0, v1, :cond_2

    .line 440
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onActivityResult: wrong state, ignoring message from contact picker."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 482
    :cond_1
    :goto_0
    return-void

    .line 443
    :cond_2
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    .line 446
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 447
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onActivityResult: contact picker result not OK."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 453
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    .line 454
    :cond_4
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "onActivityResult: bad contact data, no results found."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 455
    :cond_5
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 459
    :cond_6
    packed-switch p1, :pswitch_data_0

    .line 481
    :goto_1
    :pswitch_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 461
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*72"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    .line 464
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*90"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    .line 467
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*92"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    .line 470
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*68"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    .line 474
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 776
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 778
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 779
    packed-switch p2, :pswitch_data_0

    .line 791
    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    .line 794
    :goto_0
    :pswitch_1
    return-void

    .line 786
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->finish()V

    goto :goto_0

    .line 779
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const v4, 0x7f09005a

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 977
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 978
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 979
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 985
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->addPreferencesFromResource(I)V

    .line 986
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onCreate START"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 988
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 989
    const-string v0, "button_cfu_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    .line 990
    const-string v0, "button_cfb_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    .line 991
    const-string v0, "button_cfnry_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    .line 992
    const-string v0, "button_cfnrc_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    .line 994
    const-string v0, "button_cfu_dis_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    .line 995
    const-string v0, "button_cfb_dis_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    .line 996
    const-string v0, "button_cfnry_dis_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    .line 997
    const-string v0, "button_cfnrc_dis_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    .line 999
    const-string v0, "cdma_cf_cancelall_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    .line 1002
    const-string v0, "cdma_cf_busy_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    .line 1003
    const-string v0, "cdma_cf_noreply_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    .line 1004
    const-string v0, "cdma_cf_notrechable_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    .line 1005
    const-string v0, "cdma_cf_unconditional_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    .line 1011
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_1

    .line 1012
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1013
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1014
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1015
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 1017
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_2

    .line 1018
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    .line 1019
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1020
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1021
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1022
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 1025
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_3

    .line 1026
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1027
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1028
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1029
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f090063

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 1031
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_4

    .line 1032
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    .line 1033
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1034
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1035
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1036
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f090063

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 1039
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_5

    .line 1040
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v5, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1041
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1042
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1043
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 1045
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_6

    .line 1046
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    .line 1047
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v5, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1048
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1049
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1050
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 1053
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_7

    .line 1054
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v6, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1055
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1056
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1057
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f09006f

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 1059
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_8

    .line 1060
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    .line 1061
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v6, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1062
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1063
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1064
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f09006f

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 1066
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_9

    .line 1067
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    .line 1068
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1069
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1070
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1071
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f09049d

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 1075
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mContactListIntent:Landroid/content/Intent;

    .line 1076
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mContactListIntent:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1079
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    .line 1080
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate icicle => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 1082
    :cond_a
    if-eqz p1, :cond_10

    .line 1083
    const-string v0, "app_state_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    .line 1084
    const-string v0, "cdma_cf_busy_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    .line 1085
    const-string v0, "cdma_cf_noreply_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    .line 1086
    const-string v0, "cdma_cf_notrechable_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    .line 1087
    const-string v0, "cdma_cf_unconditional_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    .line 1088
    const-string v0, "cdma_cf_cancelall_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    .line 1089
    const-string v0, "MSET_STATE_CHECK_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    .line 1090
    const-string v0, "mpreference_int"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    .line 1101
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1102
    if-eqz v0, :cond_b

    .line 1104
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1107
    :cond_b
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v3, :cond_f

    .line 1115
    :cond_c
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1116
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    .line 1118
    :cond_d
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    .line 1119
    :cond_e
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1120
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1121
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1122
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1126
    :cond_f
    return-void

    .line 1092
    :cond_10
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z

    .line 1093
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z

    .line 1094
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z

    .line 1095
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z

    .line 1096
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z

    .line 1097
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z

    .line 1098
    iput-boolean v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f09007d

    const/4 v6, 0x1

    .line 704
    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateDialog id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 706
    :cond_0
    const/16 v4, 0x64

    if-eq p1, v4, :cond_1

    const/16 v4, 0x384

    if-ne p1, v4, :cond_2

    .line 707
    :cond_1
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 708
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v4, 0x7f090074

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 709
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 711
    sparse-switch p1, :sswitch_data_0

    .line 726
    :goto_0
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 768
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :goto_1
    return-object v1

    .line 713
    .restart local v1       #dialog:Landroid/app/ProgressDialog;
    :sswitch_0
    iput-boolean v6, p0, Lcom/android/phone/CdmaCallForwardOptions;->mIsBusyDialogAvailable:Z

    .line 714
    invoke-virtual {v1, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 715
    const v4, 0x7f090077

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 719
    :sswitch_1
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 720
    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v5, 0x258

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    .line 722
    const v4, 0x7f090076

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 731
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_2
    const/16 v4, 0x12c

    if-eq p1, v4, :cond_3

    const/16 v4, 0xc8

    if-eq p1, v4, :cond_3

    const/16 v4, 0x320

    if-ne p1, v4, :cond_4

    .line 734
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 737
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f090075

    .line 738
    .local v3, titleId:I
    sparse-switch p1, :sswitch_data_1

    .line 752
    const v2, 0x7f09007a

    .line 755
    .local v2, msgId:I
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 759
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 760
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 761
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 762
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 763
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_1

    .line 740
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #msgId:I
    :sswitch_2
    const v2, 0x7f090079

    .line 743
    .restart local v2       #msgId:I
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 746
    .end local v2           #msgId:I
    :sswitch_3
    const v2, 0x7f09007c

    .line 748
    .restart local v2       #msgId:I
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 768
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v2           #msgId:I
    .end local v3           #titleId:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 711
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x384 -> :sswitch_1
    .end sparse-switch

    .line 738
    :sswitch_data_1
    .sparse-switch
        0x12c -> :sswitch_2
        0x320 -> :sswitch_3
    .end sparse-switch
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 9
    .parameter "preference"
    .parameter "buttonClicked"

    .prologue
    .line 336
    iget-object v6, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v7, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v6, v7, :cond_1

    .line 337
    sget-boolean v6, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "onDialogClosed: preference request denied, currently busy."

    invoke-static {v6}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    const/4 v6, -0x2

    if-ne p2, v6, :cond_3

    .line 341
    sget-boolean v6, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v6, :cond_2

    const-string v6, "onDialogClosed: DialogInterface.BUTTON2"

    invoke-static {v6}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 342
    :cond_2
    sget-object v6, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-direct {p0, v6}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    goto :goto_0

    .line 346
    :cond_3
    sget-boolean v6, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDialogClosed: preference = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " buttonClicked = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 348
    :cond_4
    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    .line 350
    .local v2, nextState:Lcom/android/phone/CdmaCallForwardOptions$AppState;
    instance-of v6, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v6, :cond_0

    .line 351
    move-object v0, p1

    .line 352
    .local v0, epn:Lcom/android/phone/EditPhoneNumberPreference;
    const/4 v4, 0x0

    .line 353
    .local v4, reason:I
    const/4 v5, 0x0

    .line 354
    .local v5, time:I
    const-string v3, ""

    .line 355
    .local v3, number:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    sget-boolean v6, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "onDialogClosed: AppState.BUSY_NETWORK_CONNECT"

    invoke-static {v6}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 357
    :cond_5
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 358
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 359
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "simnum"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaCallForwardOptions;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 1
    .parameter "preference"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_0

    .line 373
    const-string v0, "*72"

    .line 406
    :goto_0
    return-object v0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_1

    .line 376
    const-string v0, "*720"

    goto :goto_0

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_2

    .line 379
    const-string v0, "*90"

    goto :goto_0

    .line 381
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_3

    .line 382
    const-string v0, "*900"

    goto :goto_0

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_4

    .line 385
    const-string v0, "*68"

    goto :goto_0

    .line 387
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_5

    .line 388
    const-string v0, "*680"

    goto :goto_0

    .line 390
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_6

    .line 391
    const-string v0, "*92"

    goto :goto_0

    .line 393
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_7

    .line 394
    const-string v0, "*920"

    goto :goto_0

    .line 396
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_8

    .line 397
    const-string v0, "*74"

    goto :goto_0

    .line 399
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_9

    .line 400
    const-string v0, "*740"

    goto :goto_0

    .line 402
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_a

    .line 403
    const-string v0, "*730"

    goto :goto_0

    .line 406
    :cond_a
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 283
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 284
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->finish()V

    .line 286
    const/4 v1, 0x1

    .line 288
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 222
    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_5

    .line 223
    iput v5, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    .line 230
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    if-eq p2, v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    if-eq p2, v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    if-eq p2, v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_3

    :cond_1
    move-object v4, p2

    .line 232
    check-cast v4, Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 233
    .local v1, dlg:Landroid/app/Dialog;
    if-eqz v1, :cond_3

    .line 234
    invoke-virtual {v1}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 235
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 237
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 239
    :cond_2
    const v4, 0x102002c

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 240
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    new-instance v7, Lcom/android/phone/CdmaCallForwardOptions$1;

    invoke-direct {v7, p0, v1}, Lcom/android/phone/CdmaCallForwardOptions$1;-><init>(Lcom/android/phone/CdmaCallForwardOptions;Landroid/app/Dialog;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #dlg:Landroid/app/Dialog;
    .end local v3           #view:Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v7, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v4, v7, :cond_8

    .line 250
    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_4

    .line 251
    const-string v4, "onPreferencesHierarchyClick: preference request denied, currently busy."

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_4
    move v4, v5

    .line 278
    :goto_1
    return v4

    .line 224
    :cond_5
    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_6

    .line 225
    iput v6, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    goto :goto_0

    .line 226
    :cond_6
    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_7

    .line 227
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    goto :goto_0

    .line 228
    :cond_7
    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_0

    .line 229
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    goto :goto_0

    .line 256
    :cond_8
    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_9

    const-string v4, "onPreferencesHierarchyClick: request preference click."

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 257
    :cond_9
    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    .line 259
    .local v2, nextState:Lcom/android/phone/CdmaCallForwardOptions$AppState;
    instance-of v4, p2, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v4, :cond_b

    .line 269
    :cond_a
    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    .line 270
    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceTreeClick => nextState = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 272
    :cond_b
    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_c

    const-string v4, "onPreferenceTreeClick => mButtonCFExpand"

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 273
    :cond_c
    sget-object v4, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v2, v4, :cond_e

    .line 274
    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_d

    const-string v4, "onPreferenceTreeClick => != AppState.INPUT_READY"

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 275
    :cond_d
    invoke-direct {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    move v4, v6

    .line 276
    goto/16 :goto_1

    :cond_e
    move v4, v5

    .line 278
    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 929
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 930
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 933
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 935
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 942
    :cond_0
    sget-boolean v3, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume Start   mpreferenceint  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 943
    :cond_1
    iget v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    packed-switch v3, :pswitch_data_0

    .line 949
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreference:Landroid/preference/Preference;

    check-cast v3, Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 950
    .local v1, dlg:Landroid/app/Dialog;
    if-eqz v1, :cond_3

    .line 951
    invoke-virtual {v1}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 952
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 953
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 954
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 955
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 957
    :cond_2
    const v3, 0x102002c

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 958
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    new-instance v4, Lcom/android/phone/CdmaCallForwardOptions$4;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/CdmaCallForwardOptions$4;-><init>(Lcom/android/phone/CdmaCallForwardOptions;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 969
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v2           #view:Landroid/view/View;
    :cond_3
    return-void

    .line 944
    .end local v1           #dlg:Landroid/app/Dialog;
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreference:Landroid/preference/Preference;

    goto :goto_0

    .line 945
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreference:Landroid/preference/Preference;

    goto :goto_0

    .line 946
    :pswitch_2
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreference:Landroid/preference/Preference;

    goto :goto_0

    .line 947
    :pswitch_3
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreference:Landroid/preference/Preference;

    goto :goto_0

    .line 943
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1130
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1132
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onSaveInstanceState: saving relevant UI state."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 1135
    :cond_0
    const-string v0, "app_state_key"

    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1136
    const-string v0, "cdma_cf_busy_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1137
    const-string v0, "cdma_cf_busy_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1138
    const-string v0, "cdma_cf_noreply_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1139
    const-string v0, "cdma_cf_notrechable_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1140
    const-string v0, "cdma_cf_cancelall_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1141
    const-string v0, "cdma_cf_unconditional_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1142
    const-string v0, "display_mode_key"

    iget v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDisplayMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    .line 1144
    const-string v0, "MSET_STATE_CHECK_KEY"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1145
    const-string v0, "mpreference_int"

    iget v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1146
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 413
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivityForResult intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 415
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 417
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 429
    :cond_1
    :goto_0
    return-void

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v0, v1, :cond_3

    .line 422
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "startSubActivity: mAppState != AppState.DIALOG_OPEN"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_3
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "startSubActivity: starting requested subactivity"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 427
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 428
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    goto :goto_0
.end method
