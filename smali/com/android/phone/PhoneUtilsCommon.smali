.class public Lcom/android/phone/PhoneUtilsCommon;
.super Ljava/lang/Object;
.source "PhoneUtilsCommon.java"


# static fields
.field private static sIsMySoundListening:Z

.field private static sIsPutDownListening:Z

.field private static final sSContextListener:Landroid/hardware/scontext/SContextListener;

.field private static sSContextManager:Landroid/hardware/scontext/SContextManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 278
    new-instance v0, Lcom/android/phone/PhoneUtilsCommon$1;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtilsCommon$1;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 335
    sput-boolean v1, Lcom/android/phone/PhoneUtilsCommon;->sIsMySoundListening:Z

    .line 336
    sput-boolean v1, Lcom/android/phone/PhoneUtilsCommon;->sIsPutDownListening:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static changeCoverLockUI(Z)V
    .locals 5
    .parameter "isSuppress"

    .prologue
    const/4 v4, 0x1

    .line 557
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 560
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 561
    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    if-eqz p0, :cond_0

    .line 563
    const-string v2, "changeCoverLockUI - do not because IDLE"

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 584
    :goto_0
    return-void

    .line 566
    :cond_0
    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_3

    :cond_1
    if-nez p0, :cond_3

    .line 568
    const-string v2, "changeCoverLockUI - do not because OFFHOOK"

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 572
    :cond_2
    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_3

    if-eqz p0, :cond_3

    .line 573
    const-string v2, "changeCoverLockUI - do not because IDLE"

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 578
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeCoverLockUI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 579
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 580
    .local v1, mCallEndIntent:Landroid/content/Intent;
    const-string v2, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    const-string v2, "sender"

    const-string v3, "PhoneUtilsCommon"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const-string v2, "suppressCoverUI"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 583
    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static doActionPutUpDown(Z)V
    .locals 5
    .parameter "isPutDown"

    .prologue
    const/4 v4, 0x1

    .line 339
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 340
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isScreenOn()Z

    move-result v1

    .line 349
    .local v1, screenOn:Z
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->hasRingingCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive event for LCD on/off : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 354
    if-eqz p0, :cond_2

    if-nez v1, :cond_2

    .line 355
    const-string v2, "doActionPutUpDown : forceWakeUpScreen"

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 356
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->forceWakeUpScreen()V

    goto :goto_0

    .line 357
    :cond_2
    if-nez p0, :cond_0

    if-eqz v1, :cond_0

    .line 358
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->makeGoToSleepWithNoLockSound()V

    goto :goto_0
.end method

.method public static getBTWatchDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 9

    .prologue
    .line 708
    const/4 v5, 0x0

    .line 710
    .local v5, result:Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 711
    .local v1, app:Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    .line 712
    .local v0, aBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    const/4 v2, 0x0

    .line 714
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 715
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    .line 717
    .local v3, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 718
    .local v4, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 719
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 720
    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->getSamsungHandsfreeDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    .line 721
    .local v6, type:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isConnectedBTWithWatch type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    .line 723
    const-string v7, "WA"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 724
    const/4 v5, 0x1

    .line 730
    .end local v3           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v4           #i:Ljava/util/Iterator;
    .end local v6           #type:Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBTWatchDevice result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    .line 732
    if-nez v5, :cond_2

    .line 733
    const/4 v2, 0x0

    .line 735
    :cond_2
    return-object v2
.end method

.method public static getIncomingCallNotifications()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 596
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "popup_incoming_call"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 597
    .local v0, incomingCallPopup:Z
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIncomingCallNotifications : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 598
    return v0
.end method

.method public static getNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 6
    .parameter "conn"

    .prologue
    .line 602
    const/4 v3, 0x0

    .line 603
    .local v3, phoneNumber:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 604
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 605
    .local v2, context:Landroid/content/Context;
    invoke-static {v2, p0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 607
    .local v1, callerInfo:Lcom/android/internal/telephony/CallerInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNumber: conn.getAddress() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNumber: conn.getOrigDialString() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    .line 609
    if-eqz v1, :cond_0

    .line 610
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNumber: callerInfo.phoneNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 613
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 638
    :cond_1
    :goto_0
    return-object v3

    .line 620
    :cond_2
    if-eqz v1, :cond_3

    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->hasExtentionNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 623
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 626
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 628
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 631
    :cond_5
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 633
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 634
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getRejectMessageCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 17
    .parameter "rejectmsg"

    .prologue
    .line 75
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 76
    .local v1, app:Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 77
    .local v3, context:Landroid/content/Context;
    new-instance v11, Landroid/database/MatrixCursor;

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "_id"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "REJECT_MESSAGE"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "EDIT_CHECKED"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "REMIND_TIME"

    aput-object v16, v14, v15

    invoke-direct {v11, v14}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 84
    .local v11, result:Landroid/database/MatrixCursor;
    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 86
    :cond_0
    const/4 v10, 0x0

    .line 87
    .local v10, rejectMessage:Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 88
    .local v7, id:J
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 90
    .local v5, edited:I
    const/4 v14, 0x1

    if-ne v5, v14, :cond_3

    const/4 v9, 0x1

    .line 91
    .local v9, isChanged:Z
    :goto_0
    if-eqz v9, :cond_4

    .line 92
    const-string v14, "PhoneUtilsCommon"

    const-string v15, "Edited"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 93
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 108
    :goto_1
    if-eqz v10, :cond_1

    .line 109
    const/4 v14, 0x4

    new-array v2, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v2, v14

    const/4 v14, 0x1

    aput-object v10, v2, v14

    const/4 v14, 0x2

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v2, v14

    const/4 v14, 0x3

    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v2, v14

    .line 115
    .local v2, column:[Ljava/lang/Object;
    invoke-virtual {v11, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 117
    .end local v2           #column:[Ljava/lang/Object;
    :cond_1
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_0

    .line 123
    .end local v5           #edited:I
    .end local v7           #id:J
    .end local v9           #isChanged:Z
    .end local v10           #rejectMessage:Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v11

    .line 90
    .restart local v5       #edited:I
    .restart local v7       #id:J
    .restart local v10       #rejectMessage:Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 95
    .restart local v9       #isChanged:Z
    :cond_4
    const-wide/16 v14, 0x1

    sub-long v12, v7, v14

    .line 97
    .local v12, stringIdx:J
    const-string v14, "modify_reject_message"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 98
    sget-object v14, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListKor:[Ljava/lang/String;

    long-to-int v15, v12

    aget-object v6, v14, v15

    .line 102
    .local v6, entryName:Ljava/lang/String;
    :goto_3
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, "string"

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v6, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 104
    const-string v14, "PhoneUtilsCommon"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Not Edited, Use Default valuerejectMessage = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 119
    .end local v5           #edited:I
    .end local v6           #entryName:Ljava/lang/String;
    .end local v7           #id:J
    .end local v9           #isChanged:Z
    .end local v10           #rejectMessage:Ljava/lang/String;
    .end local v12           #stringIdx:J
    :catch_0
    move-exception v4

    .line 120
    .local v4, e:Ljava/lang/Exception;
    const-string v14, "PhoneUtilsCommon"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getRejectMessageCursor exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_2

    .line 100
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v5       #edited:I
    .restart local v7       #id:J
    .restart local v9       #isChanged:Z
    .restart local v10       #rejectMessage:Ljava/lang/String;
    .restart local v12       #stringIdx:J
    :cond_5
    :try_start_1
    sget-object v14, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[Ljava/lang/String;

    long-to-int v15, v12

    aget-object v6, v14, v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v6       #entryName:Ljava/lang/String;
    goto :goto_3
.end method

.method public static getVoiceEqListValue()I
    .locals 1

    .prologue
    .line 443
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->getVoiceEqListValue(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getVoiceEqListValue(Landroid/content/Context;)I
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 457
    invoke-static {p0}, Lcom/android/phone/PhoneFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 458
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hearing_revision"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 460
    .local v4, isHearingRevisionOn:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_eq_list_value"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 463
    .local v2, eqListValue:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080014

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, eqListEntries:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVoiceEqListValue_noCallPose : isHearingRevisionOn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " eqListValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 468
    if-eq v2, v10, :cond_0

    if-ne v2, v11, :cond_2

    :cond_0
    move v5, v7

    .line 471
    .local v5, mySoundEnabled:Z
    :goto_0
    if-lez v4, :cond_4

    if-nez v5, :cond_4

    .line 472
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "hearing_direction"

    const/4 v9, -0x1

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 473
    .local v0, direction:I
    if-nez v0, :cond_3

    .line 474
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voicecall_eq_list_value"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 476
    const/4 v2, 0x3

    .line 477
    const-string v6, "getVoiceEqListValue : My sound is on! change eqlist value"

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    .end local v0           #direction:I
    :cond_1
    :goto_1
    move v3, v2

    .line 522
    .end local v2           #eqListValue:I
    .end local v5           #mySoundEnabled:Z
    .local v3, eqListValue:I
    :goto_2
    return v3

    .end local v3           #eqListValue:I
    .restart local v2       #eqListValue:I
    :cond_2
    move v5, v6

    .line 468
    goto :goto_0

    .line 478
    .restart local v0       #direction:I
    .restart local v5       #mySoundEnabled:Z
    :cond_3
    if-ne v0, v7, :cond_1

    .line 479
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voicecall_eq_list_value"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 481
    const/4 v2, 0x4

    .line 482
    const-string v6, "getVoiceEqListValue : My sound is on! change eqlist value"

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 484
    .end local v0           #direction:I
    :cond_4
    if-nez v4, :cond_1

    if-eqz v5, :cond_1

    .line 485
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voicecall_eq_list_value"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 487
    const/4 v2, 0x0

    .line 488
    const-string v6, "getVoiceEqListValue : My sound is off! change eqlist value"

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 494
    .end local v1           #eqListEntries:[Ljava/lang/String;
    .end local v2           #eqListValue:I
    .end local v4           #isHearingRevisionOn:I
    .end local v5           #mySoundEnabled:Z
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hearing_revision"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 496
    .restart local v4       #isHearingRevisionOn:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_eq_list_value"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 499
    .restart local v2       #eqListValue:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080012

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 502
    .restart local v1       #eqListEntries:[Ljava/lang/String;
    array-length v8, v1

    if-lt v2, v8, :cond_6

    .line 503
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_eq_list_value"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 505
    const/4 v2, 0x3

    .line 506
    const-string v8, "change eqListValue for upgrade "

    invoke-static {v8, v7}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 509
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVoiceEqListValue : isHearingRevisionOn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " eqListValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 511
    if-lez v4, :cond_8

    if-eqz v2, :cond_8

    .line 512
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voicecall_eq_list_value"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 514
    const/4 v2, 0x0

    .line 515
    const-string v6, "getVoiceEqListValue : My sound is on! change eqlist value"

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    :cond_7
    :goto_3
    move v3, v2

    .line 522
    .end local v2           #eqListValue:I
    .restart local v3       #eqListValue:I
    goto/16 :goto_2

    .line 516
    .end local v3           #eqListValue:I
    .restart local v2       #eqListValue:I
    :cond_8
    if-nez v4, :cond_7

    if-nez v2, :cond_7

    .line 517
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voicecall_eq_list_value"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 519
    const/4 v2, 0x3

    .line 520
    const-string v6, "getVoiceEqListValue : My sound is off! change eqlist value"

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static hasExtentionNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 537
    const/4 v3, 0x0

    .line 539
    .local v3, result:Z
    if-nez p0, :cond_0

    .line 540
    const/4 v4, 0x0

    .line 552
    :goto_0
    return v4

    .line 543
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 544
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_1

    .line 545
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 546
    .local v0, c:C
    const/16 v4, 0x23

    if-ne v0, v4, :cond_2

    if-eqz v1, :cond_2

    .line 547
    const/4 v3, 0x1

    .end local v0           #c:C
    :cond_1
    move v4, v3

    .line 552
    goto :goto_0

    .line 544
    .restart local v0       #c:C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static hasRingingCall()Z
    .locals 3

    .prologue
    .line 149
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 150
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 151
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 154
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isAirMotionOn(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 158
    const/4 v2, 0x0

    .line 159
    .local v2, result:Z
    const-string v5, "air_motion_wave"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 171
    :goto_0
    return v4

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_motion_engine"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v0, v3

    .line 164
    .local v0, isOnAirMotion:Z
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_motion_call_accept"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v1, v3

    .line 167
    .local v1, isOnAirMotionCallAcccept:Z
    :goto_2
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 168
    const/4 v2, 0x1

    :cond_1
    move v4, v2

    .line 171
    goto :goto_0

    .end local v0           #isOnAirMotion:Z
    .end local v1           #isOnAirMotionCallAcccept:Z
    :cond_2
    move v0, v4

    .line 162
    goto :goto_1

    .restart local v0       #isOnAirMotion:Z
    :cond_3
    move v1, v4

    .line 164
    goto :goto_2
.end method

.method public static isDrivingModeOn(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 232
    const-string v0, "driving_mode_on"

    .line 233
    .local v0, DB_KEY_DRIVING_MODE_ON:Ljava/lang/String;
    const/4 v1, 0x0

    .line 234
    .local v1, driveModeForIncoming:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_mode_incoming_call_notification"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 239
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDrivingModeOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 240
    return v1

    :cond_0
    move v1, v3

    .line 234
    goto :goto_0
.end method

.method public static isOnehandAnyScreen()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 263
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "any_screen_running"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 264
    .local v0, isOnehandAnyScreen:Z
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOnehandAnyScreen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 265
    return v0
.end method

.method public static isOnehandModeOn()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 269
    const-string v0, "onehand_dialer_enabled"

    .line 270
    .local v0, ONE_HAND_ENABLED:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "onehand_dialer_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 271
    .local v1, isOnehandModeOn:Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOnehandModeOn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 272
    const-string v4, "support_onehand_any_screen"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 273
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isOnehandAnyScreen()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    and-int/2addr v1, v2

    .line 275
    :cond_0
    return v1

    .end local v1           #isOnehandModeOn:Z
    :cond_1
    move v1, v3

    .line 270
    goto :goto_0

    .restart local v1       #isOnehandModeOn:Z
    :cond_2
    move v2, v3

    .line 273
    goto :goto_1
.end method

.method public static isVoiceControlIncomingCallOn(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_incomming_calls"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 251
    .local v0, voiceControlIncomingCallOn:Z
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVoiceControlIncomingCallOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 252
    return v0
.end method

.method public static isVoiceControlOn(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 245
    .local v0, voiceControlOn:Z
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVoiceControlOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 246
    return v0
.end method

.method public static isVoiceControlOnForIncomingCall(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 257
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->isVoiceControlOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->isVoiceControlIncomingCallOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 258
    .local v0, voiceControlOnForIncomingCall:Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVoiceControlOnForIncomingCall : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 259
    return v0

    .line 257
    .end local v0           #voiceControlOnForIncomingCall:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 783
    const-string v0, "PhoneUtilsCommon"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "always"

    .prologue
    .line 787
    const-string v0, "PhoneUtilsCommon"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 788
    return-void
.end method

.method public static sendCallTimeToOtherDevice(Landroid/bluetooth/BluetoothHeadset;ILjava/lang/String;)V
    .locals 8
    .parameter "bluetoothHeadset"
    .parameter "id"
    .parameter "number"

    .prologue
    .line 652
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 653
    .local v4, fgCall:Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 655
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    if-nez p2, :cond_2

    .line 656
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v0

    .line 657
    .local v1, call:Lcom/android/internal/telephony/Call;
    :goto_0
    invoke-static {v1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v2

    .line 658
    .local v2, duration:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 659
    .local v5, value:Ljava/lang/String;
    const-string v6, "R_CT"

    invoke-static {p0, v6, v5}, Lcom/android/phone/PhoneUtilsCommon;->sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #duration:J
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v1, v4

    .line 656
    goto :goto_0

    .line 662
    :cond_2
    invoke-static {p0, v4, p1, p2}, Lcom/android/phone/PhoneUtilsCommon;->sendCallTimeToOtherDevice(Landroid/bluetooth/BluetoothHeadset;Lcom/android/internal/telephony/Call;ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 663
    invoke-static {p0, v0, p1, p2}, Lcom/android/phone/PhoneUtilsCommon;->sendCallTimeToOtherDevice(Landroid/bluetooth/BluetoothHeadset;Lcom/android/internal/telephony/Call;ILjava/lang/String;)Z

    goto :goto_1
.end method

.method public static sendCallTimeToOtherDevice(Landroid/bluetooth/BluetoothHeadset;Lcom/android/internal/telephony/Call;ILjava/lang/String;)Z
    .locals 12
    .parameter "bluetoothHeadset"
    .parameter "call"
    .parameter "id"
    .parameter "number"

    .prologue
    .line 669
    const-wide/16 v4, 0x0

    .line 670
    .local v4, duration:J
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 671
    .local v1, connections:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 674
    .local v2, count:I
    const/4 v10, 0x1

    if-ne v2, v10, :cond_0

    .line 675
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 676
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 677
    .local v3, currentNumber:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v4

    .line 679
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendCallTimeToOtherDevice: current = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    .line 680
    if-eqz v3, :cond_3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 681
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 682
    .local v9, value:Ljava/lang/String;
    const-string v10, "R_CT"

    invoke-static {p0, v10, v9}, Lcom/android/phone/PhoneUtilsCommon;->sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const/4 v10, 0x1

    .line 704
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v3           #currentNumber:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :goto_0
    return v10

    .line 687
    :cond_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v2, :cond_3

    .line 688
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 689
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 690
    .restart local v3       #currentNumber:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v7

    .line 691
    .local v7, t:J
    cmp-long v10, v7, v4

    if-lez v10, :cond_1

    .line 692
    move-wide v4, v7

    .line 694
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 695
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 696
    .restart local v9       #value:Ljava/lang/String;
    const-string v10, "R_CT"

    invoke-static {p0, v10, v9}, Lcom/android/phone/PhoneUtilsCommon;->sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const/4 v10, 0x1

    goto :goto_0

    .line 687
    .end local v9           #value:Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 703
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v3           #currentNumber:Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #t:J
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendCallTimeToOtherDevice: no find "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    .line 704
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static sendIncomingVT(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 4
    .parameter "bluetoothHeadset"

    .prologue
    .line 642
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 643
    .local v1, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 644
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    .line 645
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isCSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 646
    :cond_0
    const-string v2, "R_VT"

    invoke-static {p0, v2, v0}, Lcom/android/phone/PhoneUtilsCommon;->sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Lcom/android/internal/telephony/Connection;)V

    .line 649
    :cond_1
    return-void
.end method

.method public static sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "bluetoothHeadset"
    .parameter "command"
    .parameter "c"

    .prologue
    .line 739
    const/4 v0, 0x0

    .line 741
    .local v0, number:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 742
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 745
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/phone/PhoneUtilsCommon;->sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    return-void
.end method

.method public static sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "bluetoothHeadset"
    .parameter "command"
    .parameter "extra"

    .prologue
    .line 749
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendSecBluetoothATCommand: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    .line 761
    const-string v7, "sec_bt_at_command"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 762
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 763
    .local v1, app:Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    .line 764
    .local v0, aBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    const/4 v2, 0x0

    .line 766
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    .line 769
    .local v3, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 770
    .local v4, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 771
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 772
    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->getSamsungHandsfreeDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    .line 773
    .local v6, type:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isConnectedBTWithWatch type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    .line 775
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 776
    .local v5, message:Ljava/lang/String;
    const/16 v7, 0xb

    invoke-virtual {p0, v2, v7, v5}, Landroid/bluetooth/BluetoothHeadset;->sendMessageToHeadset(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)Z

    goto :goto_0

    .line 780
    .end local v0           #aBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    .end local v1           #app:Lcom/android/phone/PhoneGlobals;
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v4           #i:Ljava/util/Iterator;
    .end local v5           #message:Ljava/lang/String;
    .end local v6           #type:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static setFolderStatusToAudio(Z)V
    .locals 3
    .parameter "open"

    .prologue
    .line 587
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 588
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz p0, :cond_0

    .line 589
    const-string v1, "folder_open=true"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 593
    :goto_0
    return-void

    .line 591
    :cond_0
    const-string v1, "folder_open=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static shouldAcceptByTapping()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, result:Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 137
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "answering_accessibility_tapping"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v1, v3

    .line 140
    .local v1, isOn:Z
    :cond_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->hasRingingCall()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    const/4 v2, 0x1

    .line 143
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldAcceptByTapping is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 145
    return v2
.end method

.method public static shouldHideSNS()Z
    .locals 2

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 177
    .local v0, result:Z
    const-string v1, "enbale_voicerecording_popup_when_incoming"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->hasRingingCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->CheckVoiceRecorder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const/4 v0, 0x1

    .line 183
    :cond_0
    const-string v1, "support_easy_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    const/4 v0, 0x1

    .line 188
    :cond_1
    return v0
.end method

.method public static startMySoundDirectionListening(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 407
    const-string v0, "startCallPose"

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 409
    invoke-static {p0}, Lcom/android/phone/PhoneFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneUtilsCommon;->sIsMySoundListening:Z

    if-nez v0, :cond_0

    .line 414
    const-string v0, "scontext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    sput-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 415
    sget-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_2

    .line 416
    sget-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v1, Lcom/android/phone/PhoneUtilsCommon;->sSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 417
    sput-boolean v3, Lcom/android/phone/PhoneUtilsCommon;->sIsMySoundListening:Z

    goto :goto_0

    .line 419
    :cond_2
    const-string v0, "getting sSContextManager failed"

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static startPutDownListening(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 365
    invoke-static {p0}, Lcom/android/phone/PhoneFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    const-string v3, "startPutDownListening"

    invoke-static {v3, v6}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 371
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 372
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v1

    .line 373
    .local v1, bthf:Landroid/bluetooth/IBluetoothHeadsetPhone;
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    .line 375
    .local v2, isSpeakerON:Z
    sget-boolean v3, Lcom/android/phone/PhoneUtilsCommon;->sIsPutDownListening:Z

    if-nez v3, :cond_0

    .line 376
    const-string v3, "scontext"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/scontext/SContextManager;

    sput-object v3, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 377
    sget-object v3, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isCoverClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v3

    if-nez v3, :cond_2

    .line 381
    sget-object v3, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v4, Lcom/android/phone/PhoneUtilsCommon;->sSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v5, 0xf

    invoke-virtual {v3, v4, v5}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 382
    sput-boolean v6, Lcom/android/phone/PhoneUtilsCommon;->sIsPutDownListening:Z

    goto :goto_0

    .line 384
    :cond_2
    const-string v3, "getting sSContextManager failed"

    invoke-static {v3, v6}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static stopMySoundDirectionListening(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 425
    const-string v0, "stopCallPose"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 427
    invoke-static {p0}, Lcom/android/phone/PhoneFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneUtilsCommon;->sIsMySoundListening:Z

    if-ne v0, v1, :cond_0

    .line 432
    const-string v0, "scontext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    sput-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 433
    sget-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_2

    .line 434
    sget-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v1, Lcom/android/phone/PhoneUtilsCommon;->sSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 435
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneUtilsCommon;->sIsMySoundListening:Z

    goto :goto_0

    .line 437
    :cond_2
    const-string v0, "getting sSContextManager failed"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static stopPutDownListening(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 390
    invoke-static {p0}, Lcom/android/phone/PhoneFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    const-string v0, "stopPutDownListening"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 395
    sget-boolean v0, Lcom/android/phone/PhoneUtilsCommon;->sIsPutDownListening:Z

    if-ne v0, v1, :cond_0

    .line 396
    const-string v0, "scontext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    sput-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 397
    sget-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_2

    .line 398
    sget-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v1, Lcom/android/phone/PhoneUtilsCommon;->sSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 399
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneUtilsCommon;->sIsPutDownListening:Z

    goto :goto_0

    .line 401
    :cond_2
    const-string v0, "getting sSContextManager failed"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method
