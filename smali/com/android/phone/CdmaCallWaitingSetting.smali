.class public Lcom/android/phone/CdmaCallWaitingSetting;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CdmaCallWaitingSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaCallWaitingSetting$3;,
        Lcom/android/phone/CdmaCallWaitingSetting$AppState;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field private mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

.field private mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mCWDataStale:Z

.field private mContactListIntent:Landroid/content/Intent;

.field private mDisplayMode:I

.field private mGetMoreOptionsComplete:Landroid/os/Handler;

.field private mIsBusyDialogAvailable:Z

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSetState_check:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    .line 71
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/phone/CdmaCallWaitingSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 72
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "{0}"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/CdmaCallWaitingSetting;->SRC_TAGS:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 68
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mIsBusyDialogAvailable:Z

    .line 140
    const/4 v0, -0x4

    iput v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mDisplayMode:I

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mCWDataStale:Z

    .line 355
    new-instance v0, Lcom/android/phone/CdmaCallWaitingSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaCallWaitingSetting$1;-><init>(Lcom/android/phone/CdmaCallWaitingSetting;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    .line 377
    new-instance v0, Lcom/android/phone/CdmaCallWaitingSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaCallWaitingSetting$2;-><init>(Lcom/android/phone/CdmaCallWaitingSetting;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mGetMoreOptionsComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CdmaCallWaitingSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CdmaCallWaitingSetting;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private final dismissBusyDialog()V
    .locals 2

    .prologue
    .line 604
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissBusyDialog: mIsBusyDialogAvailable => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mIsBusyDialogAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 606
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mIsBusyDialogAvailable:Z

    if-eqz v0, :cond_1

    .line 607
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissDialog(I)V

    .line 609
    :cond_1
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 734
    const-string v0, "CDMA call waiting settings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V
    .locals 2
    .parameter "requestedState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 483
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 484
    :cond_0
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_2

    .line 485
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "setAppState: illegal error state without reason."

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 486
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_2
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;I)V

    .line 489
    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;I)V
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

    .line 494
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_2

    .line 497
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 595
    :cond_1
    :goto_0
    return-void

    .line 503
    :cond_2
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_6

    .line 504
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 505
    :cond_3
    sparse-switch p2, :sswitch_data_0

    .line 530
    :goto_1
    iput-object p1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    goto :goto_0

    .line 507
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne v0, v1, :cond_4

    .line 508
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissDialog(I)V

    .line 512
    :goto_2
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_1

    .line 510
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissBusyDialog()V

    goto :goto_2

    .line 515
    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_1

    .line 518
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne v0, v1, :cond_5

    .line 519
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissDialog(I)V

    .line 523
    :goto_3
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_1

    .line 521
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissBusyDialog()V

    goto :goto_3

    .line 534
    :cond_6
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$3;->$SwitchMap$com$android$phone$CdmaCallWaitingSetting$AppState:[I

    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 594
    :cond_7
    :goto_4
    iput-object p1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    goto :goto_0

    .line 538
    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq p1, v0, :cond_7

    .line 539
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 540
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :pswitch_1
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 546
    :cond_9
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_a

    .line 547
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_4

    .line 548
    :cond_a
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_b

    .line 549
    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_4

    .line 550
    :cond_b
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_7

    .line 551
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "setAppState: illegal transition from INPUT_READY"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 552
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INPUT_READY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :pswitch_2
    const-string v0, "setAppState: DIALOG_OPEN"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 558
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq p1, v0, :cond_7

    .line 561
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "setAppState: DIALOG_OPEN => BUSY_DIALOG"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 562
    :cond_d
    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_4

    .line 567
    :pswitch_3
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq p1, v0, :cond_f

    .line 568
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 569
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_f
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_10

    const-string v0, "setAppState: INITIAL_QUERY => INITIAL_BUSY_DIALOG"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 573
    :cond_10
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissDialog(I)V

    goto/16 :goto_4

    .line 576
    :pswitch_4
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq p1, v0, :cond_12

    .line 577
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_11

    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 578
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_12
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_13

    const-string v0, "setAppState: BUSY_NETWORK_CONNECT =>dismissBusyDialog"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 582
    :cond_13
    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissBusyDialog()V

    goto/16 :goto_4

    .line 585
    :pswitch_5
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq p1, v0, :cond_15

    .line 586
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "setAppState: illegal transition from WAITING_NUMBER_SELECT"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 587
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from WAITING_NUMBER_SELECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_15
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_16

    const-string v0, "setAppState: WAITING_NUMBER_SELECT =>dismissBusyDialog"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 591
    :cond_16
    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissBusyDialog()V

    goto/16 :goto_4

    .line 505
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x320 -> :sswitch_1
    .end sparse-switch

    .line 534
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


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 301
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq v0, v1, :cond_2

    .line 304
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onActivityResult: wrong state, ignoring message from contact picker."

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 333
    :cond_1
    :goto_0
    return-void

    .line 307
    :cond_2
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    .line 310
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 311
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onActivityResult: contact picker result not OK."

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaCallWaitingSetting;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 317
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    .line 318
    :cond_4
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "onActivityResult: bad contact data, no results found."

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 319
    :cond_5
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 323
    :cond_6
    packed-switch p1, :pswitch_data_0

    .line 331
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 325
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    .line 323
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 460
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 462
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 463
    packed-switch p2, :pswitch_data_0

    .line 475
    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    .line 478
    :goto_0
    :pswitch_1
    return-void

    .line 470
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->finish()V

    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const v7, 0x7f090499

    const v6, 0x7f090056

    const/4 v3, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 638
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 639
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 640
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 646
    const v2, 0x7f060015

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->addPreferencesFromResource(I)V

    .line 647
    sget-boolean v2, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "onCreate START"

    invoke-static {v2}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 649
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 650
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "button_cdma_cw_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    .line 651
    const-string v2, "button_cdma_cw_dis_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    .line 663
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_1

    .line 664
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    .line 665
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0, v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 666
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 668
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v6}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 669
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v7}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 671
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_2

    .line 672
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    .line 673
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0, v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 674
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 676
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v6}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 677
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v7}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 682
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mContactListIntent:Landroid/content/Intent;

    .line 683
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mContactListIntent:Landroid/content/Intent;

    const-string v3, "vnd.android.cursor.item/phone"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    sget-object v2, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    iput-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    .line 687
    sget-boolean v2, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate icicle => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 689
    :cond_3
    if-eqz p1, :cond_8

    .line 690
    const-string v2, "app_state_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    iput-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    .line 691
    const-string v2, "button_cdma_cw_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mSetState_check:Z

    .line 692
    const-string v2, "MSET_STATE_CHECK_KEY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mSetState_check:Z

    .line 698
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 699
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_4

    .line 701
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 704
    :cond_4
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v5, :cond_7

    .line 712
    :cond_5
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    .line 713
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    .line 714
    :cond_6
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    .line 717
    :cond_7
    return-void

    .line 694
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_8
    iput-boolean v5, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mCWDataStale:Z

    .line 695
    iput-boolean v4, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mSetState_check:Z

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f09007d

    const/4 v6, 0x1

    .line 388
    sget-boolean v4, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

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

    invoke-static {v4}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 390
    :cond_0
    const/16 v4, 0x64

    if-eq p1, v4, :cond_1

    const/16 v4, 0x384

    if-ne p1, v4, :cond_2

    .line 391
    :cond_1
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 392
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v4, 0x7f090074

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallWaitingSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 393
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 395
    sparse-switch p1, :sswitch_data_0

    .line 410
    :goto_0
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 452
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :goto_1
    return-object v1

    .line 397
    .restart local v1       #dialog:Landroid/app/ProgressDialog;
    :sswitch_0
    iput-boolean v6, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mIsBusyDialogAvailable:Z

    .line 398
    invoke-virtual {v1, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 399
    const v4, 0x7f090077

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallWaitingSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 403
    :sswitch_1
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 404
    iget-object v4, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v5, 0x258

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    .line 406
    const v4, 0x7f090076

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallWaitingSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 415
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_2
    const/16 v4, 0x12c

    if-eq p1, v4, :cond_3

    const/16 v4, 0xc8

    if-eq p1, v4, :cond_3

    const/16 v4, 0x320

    if-ne p1, v4, :cond_4

    .line 418
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 421
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f090075

    .line 422
    .local v3, titleId:I
    sparse-switch p1, :sswitch_data_1

    .line 436
    const v2, 0x7f09007a

    .line 439
    .local v2, msgId:I
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 443
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallWaitingSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 444
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 445
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 446
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 447
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_1

    .line 424
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #msgId:I
    :sswitch_2
    const v2, 0x7f090079

    .line 427
    .restart local v2       #msgId:I
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 430
    .end local v2           #msgId:I
    :sswitch_3
    const v2, 0x7f09007c

    .line 432
    .restart local v2       #msgId:I
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 452
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v2           #msgId:I
    .end local v3           #titleId:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 395
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x384 -> :sswitch_1
    .end sparse-switch

    .line 422
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
    .line 230
    iget-object v6, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v7, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq v6, v7, :cond_1

    .line 231
    sget-boolean v6, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "onDialogClosed: preference request denied, currently busy."

    invoke-static {v6}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    const/4 v6, -0x2

    if-ne p2, v6, :cond_3

    .line 234
    sget-boolean v6, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v6, :cond_2

    const-string v6, "onDialogClosed: DialogInterface.BUTTON2"

    invoke-static {v6}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 235
    :cond_2
    sget-object v6, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v6}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    goto :goto_0

    .line 239
    :cond_3
    sget-boolean v6, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

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

    invoke-static {v6}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 241
    :cond_4
    sget-object v2, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    .line 242
    .local v2, nextState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;
    instance-of v6, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v6, :cond_0

    .line 243
    move-object v0, p1

    .line 244
    .local v0, epn:Lcom/android/phone/EditPhoneNumberPreference;
    const/4 v4, 0x0

    .line 245
    .local v4, reason:I
    const/4 v5, 0x0

    .line 246
    .local v5, time:I
    const-string v3, ""

    .line 247
    .local v3, number:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 248
    sget-boolean v6, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "onDialogClosed: AppState.BUSY_NETWORK_CONNECT"

    invoke-static {v6}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 250
    :cond_5
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

    .line 251
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "simnum"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaCallWaitingSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 1
    .parameter "preference"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_0

    .line 264
    const-string v0, "*74"

    .line 270
    :goto_0
    return-object v0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_1

    .line 267
    const-string v0, "*740"

    goto :goto_0

    .line 270
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 183
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 184
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->finish()V

    .line 186
    const/4 v1, 0x1

    .line 188
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v3, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq v2, v3, :cond_1

    .line 161
    sget-boolean v2, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "onPreferencesHierarchyClick: preference request denied, currently busy."

    invoke-static {v2}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 179
    :cond_0
    :goto_0
    return v1

    .line 165
    :cond_1
    sget-boolean v2, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "onPreferencesHierarchyClick: request preference click."

    invoke-static {v2}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 167
    :cond_2
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    .line 169
    .local v0, nextState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v2, :cond_4

    .line 170
    :cond_3
    const/4 v2, -0x4

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->setDisplayMode(I)V

    .line 171
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    .line 172
    sget-boolean v2, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick => nextState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 174
    :cond_4
    sget-object v2, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq v0, v2, :cond_0

    .line 175
    sget-boolean v1, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "onPreferenceTreeClick => != AppState.INPUT_READY"

    invoke-static {v1}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 176
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    .line 177
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 613
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 614
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 617
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 619
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 626
    :cond_0
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onResume Start"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 630
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 721
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 723
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onSaveInstanceState: saving relevant UI state."

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 726
    :cond_0
    const-string v0, "app_state_key"

    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 727
    const-string v0, "button_cdma_cw_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mCWDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 728
    const-string v0, "display_mode_key"

    iget v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mDisplayMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mSetState_check:Z

    .line 730
    const-string v0, "MSET_STATE_CHECK_KEY"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mSetState_check:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 731
    return-void
.end method

.method public setDisplayMode(I)V
    .locals 5
    .parameter "displayMode"

    .prologue
    .line 195
    iput p1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mDisplayMode:I

    .line 197
    sget-boolean v1, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayMode => displayMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCWDataStale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mCWDataStale:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 199
    :cond_0
    sget-boolean v1, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "setDisplayMode: performing requested expansion."

    invoke-static {v1}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDMA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    .line 226
    :goto_0
    return-void

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_5

    .line 210
    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    .line 212
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 214
    .local v0, radioState:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 215
    sget-boolean v1, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "onCreate: radio not ready, waiting for signal."

    invoke-static {v1}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 216
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 219
    :cond_4
    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;I)V

    goto :goto_0

    .line 222
    .end local v0           #radioState:I
    :cond_5
    sget-boolean v1, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "setDisplayMode: radio is off!"

    invoke-static {v1}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 223
    :cond_6
    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    const/16 v2, 0x320

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;I)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 277
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 279
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 281
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 293
    :cond_1
    :goto_0
    return-void

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq v0, v1, :cond_3

    .line 286
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "startSubActivity: dialog start activity request denied, currently busy."

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_3
    sget-boolean v0, Lcom/android/phone/CdmaCallWaitingSetting;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "startSubActivity: starting requested subactivity"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    .line 291
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 292
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    goto :goto_0
.end method
