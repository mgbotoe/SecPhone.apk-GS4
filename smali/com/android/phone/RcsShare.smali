.class public Lcom/android/phone/RcsShare;
.super Ljava/lang/Object;
.source "RcsShare.java"

# interfaces
.implements Lcom/android/phone/RcsTransferConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RcsShare$5;,
        Lcom/android/phone/RcsShare$SessionState;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String;

.field private static completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private static errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private static mHasRcsServices:Z

.field private static mIsActiveCall:Z

.field private static mIsOwnFtCapable:Z

.field private static mIsOwnIshCapable:Z

.field private static mIsOwnVshCapable:Z

.field private static mPromotedService:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    sput-boolean v1, Lcom/android/phone/RcsShare;->mHasRcsServices:Z

    .line 73
    sput-boolean v1, Lcom/android/phone/RcsShare;->mIsActiveCall:Z

    .line 74
    sput-boolean v1, Lcom/android/phone/RcsShare;->mPromotedService:Z

    .line 76
    const-class v0, Lcom/android/phone/RcsShare;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    .line 83
    sput-boolean v1, Lcom/android/phone/RcsShare;->mIsOwnFtCapable:Z

    .line 84
    sput-boolean v1, Lcom/android/phone/RcsShare;->mIsOwnVshCapable:Z

    .line 85
    sput-boolean v1, Lcom/android/phone/RcsShare;->mIsOwnIshCapable:Z

    .line 808
    new-instance v0, Lcom/android/phone/RcsShare$3;

    invoke-direct {v0}, Lcom/android/phone/RcsShare$3;-><init>()V

    sput-object v0, Lcom/android/phone/RcsShare;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 820
    new-instance v0, Lcom/android/phone/RcsShare$4;

    invoke-direct {v0}, Lcom/android/phone/RcsShare$4;-><init>()V

    sput-object v0, Lcom/android/phone/RcsShare;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static IsOwnCapable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 949
    invoke-static {p0}, Lcom/android/phone/RcsShare;->queryOwn(Landroid/content/Context;)V

    .line 950
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    sget-boolean v0, Lcom/android/phone/RcsShare;->mIsOwnFtCapable:Z

    .line 957
    :goto_0
    return v0

    .line 952
    :cond_0
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 953
    sget-boolean v0, Lcom/android/phone/RcsShare;->mIsOwnIshCapable:Z

    goto :goto_0

    .line 954
    :cond_1
    const-string v0, "+g.3gpp.cs-voice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 955
    sget-boolean v0, Lcom/android/phone/RcsShare;->mIsOwnVshCapable:Z

    goto :goto_0

    .line 957
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static acceptInvitation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .parameter "context"
    .parameter "displayName"
    .parameter "tel"
    .parameter "callStartMilis"

    .prologue
    .line 458
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.INCOMING_SHARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    .line 459
    invoke-static/range {v0 .. v5}, Lcom/android/phone/RcsShare;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 461
    return-void
.end method

.method public static acquireSessionInfo(Landroid/content/Context;)Lcom/android/phone/RcsShare$SessionState;
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x1

    .line 696
    new-instance v9, Lcom/android/phone/RcsShare$SessionState;

    invoke-direct {v9}, Lcom/android/phone/RcsShare$SessionState;-><init>()V

    .line 698
    .local v9, state:Lcom/android/phone/RcsShare$SessionState;
    const/4 v10, 0x0

    :try_start_0
    iput-boolean v10, v9, Lcom/android/phone/RcsShare$SessionState;->mIsActive:Z

    .line 699
    invoke-static {p0}, Lcom/android/phone/RcsShare;->getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 700
    .local v1, q:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 701
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 703
    :cond_0
    const-string v10, "id"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 706
    .local v5, sessionId:J
    const-string v10, "dir"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 709
    .local v2, sessionDirection:I
    const-string v10, "state"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 712
    .local v7, sessionState:I
    const-string v10, "type"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 715
    .local v8, sessionType:I
    const-string v10, "size"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 718
    .local v3, sessionFileSize:J
    if-nez v2, :cond_1

    .line 719
    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/phone/RcsShare$SessionState;->mIsActive:Z

    .line 720
    sget-object v10, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "verifySessionStates incoming session id:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 722
    iput v7, v9, Lcom/android/phone/RcsShare$SessionState;->mState:I

    .line 723
    iput v8, v9, Lcom/android/phone/RcsShare$SessionState;->mType:I

    .line 724
    iput v2, v9, Lcom/android/phone/RcsShare$SessionState;->mDirection:I

    .line 725
    iput-wide v5, v9, Lcom/android/phone/RcsShare$SessionState;->mId:J

    .line 726
    iput-wide v3, v9, Lcom/android/phone/RcsShare$SessionState;->mSize:J

    .line 728
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 732
    .end local v2           #sessionDirection:I
    .end local v3           #sessionFileSize:J
    .end local v5           #sessionId:J
    .end local v7           #sessionState:I
    .end local v8           #sessionType:I
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 739
    .end local v1           #q:Landroid/database/Cursor;
    :goto_1
    return-object v9

    .line 730
    .restart local v1       #q:Landroid/database/Cursor;
    :cond_2
    sget-object v10, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v11, "verifySessionStates no sessions"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 736
    .end local v1           #q:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 737
    .local v0, e:Ljava/lang/Exception;
    sget-object v10, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v11, "acquireSessionInfo() exception"

    invoke-static {v10, v11, v13}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    .line 734
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #q:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    sget-object v10, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v11, "verifySessionStates no sessions"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static addRcsExtras(Ljava/lang/String;Ljava/lang/String;JLandroid/content/Intent;Landroid/content/Context;)V
    .locals 2
    .parameter "phone"
    .parameter "name"
    .parameter "callStartMilis"
    .parameter "i"
    .parameter "context"

    .prologue
    .line 529
    const-string v0, "contactNumber"

    invoke-virtual {p4, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    const-string v0, "contactName"

    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    const-string v0, "com.samsung.rcs.framework.mediatransfer.extra.CALL_START_TIME"

    invoke-virtual {p4, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 533
    const-string v0, "com.samsung.rcs.framework.mediatransfer.extra.PHONE_MUTE"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 534
    const-string v0, "com.samsung.rcs.framework.mediatransfer.extra.PHONE_SPEAKER"

    invoke-static {p5}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 536
    const-string v0, "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_CONNECTED"

    invoke-static {}, Lcom/android/phone/RcsShare;->isBluetoothConnected()Z

    move-result v1

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 537
    const-string v0, "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_AVAILABLE"

    invoke-static {}, Lcom/android/phone/RcsShare;->isBluetoothAvailable()Z

    move-result v1

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 539
    const-string v0, "com.samsung.rcs.framework.mediatransfer.extra.NOISE_FEATURE"

    invoke-static {p5}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 540
    const-string v0, "com.samsung.rcs.framework.mediatransfer.extra.NOISE_ON"

    invoke-static {p5}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 541
    return-void
.end method

.method public static disconnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "phone"
    .parameter "name"

    .prologue
    .line 439
    sget-object v1, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnected! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.DISCONNECT_SHARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 443
    return-void
.end method

.method public static generateTelUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "telNumber"

    .prologue
    .line 359
    if-nez p0, :cond_0

    .line 360
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null telephone number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 366
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/RcsShare;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 370
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, result:Ljava/lang/String;
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-object v0
.end method

.method public static getCallStartTime(Lcom/android/internal/telephony/CallManager;)J
    .locals 4
    .parameter "cm"

    .prologue
    .line 745
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static final getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 378
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 379
    .local v0, detector:Landroid/location/CountryDetector;
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getInvitationText(Landroid/content/res/Resources;Ljava/lang/String;Lcom/android/phone/RcsTransferConstants$SessionType;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "resources"
    .parameter "displayName"
    .parameter "sessionType"

    .prologue
    .line 622
    sget-object v0, Lcom/android/phone/RcsShare$5;->$SwitchMap$com$android$phone$RcsTransferConstants$SessionType:[I

    invoke-virtual {p2}, Lcom/android/phone/RcsTransferConstants$SessionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 635
    const-string v0, ""

    :goto_0
    return-object v0

    .line 624
    :pswitch_0
    const v0, 0x7f09061f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 626
    :pswitch_1
    const v0, 0x7f09061b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 628
    :pswitch_2
    const v0, 0x7f09061c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 630
    :pswitch_3
    const v0, 0x7f09061d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 632
    :pswitch_4
    const v0, 0x7f09061e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 622
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;
    .locals 7
    .parameter "cm"

    .prologue
    .line 751
    const/4 v3, 0x0

    .line 755
    .local v3, string:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 756
    .local v2, foregroundCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 757
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 758
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 765
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v2           #foregroundCall:Lcom/android/internal/telephony/Call;
    :goto_0
    return-object v3

    .line 762
    :catch_0
    move-exception v1

    .line 763
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v5, "getPhoneNumber() is null "

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private static getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 684
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/RcsTransferConstants$Cs;->ACTIVE_SESSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "state"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "dir"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "type"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/phone/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/phone/RcsTransferConstants$SessionType;

    invoke-virtual {v5}, Lcom/android/phone/RcsTransferConstants$SessionType;->getValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/phone/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/phone/RcsTransferConstants$SessionType;

    invoke-virtual {v5}, Lcom/android/phone/RcsTransferConstants$SessionType;->getValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static isBluetoothAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 558
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 560
    .local v0, instance:Lcom/android/phone/PhoneGlobals;
    if-nez v0, :cond_1

    .line 566
    :cond_0
    :goto_0
    return v1

    .line 563
    :cond_1
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 566
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isBluetoothConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 545
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 547
    .local v0, instance:Lcom/android/phone/PhoneGlobals;
    if-nez v0, :cond_1

    .line 553
    :cond_0
    :goto_0
    return v1

    .line 550
    :cond_1
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 553
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v1

    goto :goto_0
.end method

.method public static isCshTopMostActivity(Landroid/content/Context;)Z
    .locals 1
    .parameter "ctx"

    .prologue
    .line 882
    const-string v0, "com.samsung.rcs.share.ContentShareActivity"

    invoke-static {p0, v0}, Lcom/android/phone/RcsShare;->isTopMostActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRcsFTAvailable(Landroid/database/Cursor;)Z
    .locals 6
    .parameter "c"

    .prologue
    const/4 v5, 0x1

    .line 338
    const/4 v1, 0x0

    .line 340
    .local v1, isAvailableFT:Z
    if-eqz p0, :cond_2

    .line 341
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 343
    :cond_0
    const-string v2, "is_enabled"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    const-string v2, "feature_tag"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, featureTag:Ljava/lang/String;
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "featureTag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 346
    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    const/4 v1, 0x1

    .line 349
    .end local v0           #featureTag:Ljava/lang/String;
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 352
    :cond_2
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailableFT : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 353
    return v1
.end method

.method public static isRcsServiceAvailable()Z
    .locals 3

    .prologue
    .line 329
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRcsServiceAvailable? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/RcsShare;->mHasRcsServices:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 330
    sget-boolean v0, Lcom/android/phone/RcsShare;->mHasRcsServices:Z

    return v0
.end method

.method public static isShareActive(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 411
    sget-object v3, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v4, "is Share active? "

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 412
    const/4 v2, 0x0

    .line 414
    .local v2, returnVal:Z
    :try_start_0
    invoke-static {p0}, Lcom/android/phone/RcsShare;->getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 415
    .local v1, q:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 416
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 419
    :cond_0
    const-string v3, "dir"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "state"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    .line 422
    :cond_1
    sget-object v3, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v4, "found active session connecting/in progress "

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 423
    const/4 v2, 0x1

    .line 428
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 429
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 435
    .end local v1           #q:Landroid/database/Cursor;
    :cond_3
    :goto_1
    return v2

    .line 426
    .restart local v1       #q:Landroid/database/Cursor;
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 431
    .end local v1           #q:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 432
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Bad RCS query, no actives shares? "

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1
.end method

.method public static isShareInSession(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 389
    sget-object v3, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v4, "is ShareInSession? "

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 390
    const/4 v2, 0x0

    .line 392
    .local v2, returnVal:Z
    :try_start_0
    invoke-static {p0}, Lcom/android/phone/RcsShare;->getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 393
    .local v1, q:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 394
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 395
    const/4 v2, 0x1

    .line 399
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v1           #q:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v2

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Bad RCS query, no actives shares? "

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private static isTopMostActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 890
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 891
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 892
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 894
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "top most activity is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 896
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static notifyIMAndFT(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "i"

    .prologue
    .line 834
    const-string v2, "alertoncall_mode"

    .line 835
    .local v2, alertoncall_mode:Ljava/lang/String;
    const/4 v1, 0x1

    .line 836
    .local v1, alertoncallModeIndex:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 837
    .local v3, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    invoke-static {v3, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 839
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, action:Ljava/lang/String;
    const/4 v5, 0x0

    .line 842
    .local v5, textToSpeachVariant:I
    const-string v6, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 843
    sget-object v4, Lcom/android/phone/RcsTransferConstants$SessionType;->FILE_TRANSFER:Lcom/android/phone/RcsTransferConstants$SessionType;

    .line 844
    .local v4, sessionType:Lcom/android/phone/RcsTransferConstants$SessionType;
    const/4 v5, 0x7

    .line 847
    .end local v4           #sessionType:Lcom/android/phone/RcsTransferConstants$SessionType;
    :cond_0
    const-string v6, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 848
    sget-object v4, Lcom/android/phone/RcsTransferConstants$SessionType;->IM:Lcom/android/phone/RcsTransferConstants$SessionType;

    .line 849
    .restart local v4       #sessionType:Lcom/android/phone/RcsTransferConstants$SessionType;
    const/4 v5, 0x5

    .line 853
    .end local v4           #sessionType:Lcom/android/phone/RcsTransferConstants$SessionType;
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 872
    :goto_0
    :pswitch_0
    return-void

    .line 865
    :pswitch_1
    new-instance v6, Lcom/android/phone/CallTextToSpeech;

    invoke-direct {v6, p0, v5}, Lcom/android/phone/CallTextToSpeech;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 853
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static notifyUser(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V
    .locals 9
    .parameter "context"
    .parameter "cm"

    .prologue
    const/4 v6, 0x0

    .line 769
    const-string v1, "alertoncall_mode"

    .line 770
    .local v1, alertoncall_mode:Ljava/lang/String;
    const/4 v0, 0x1

    .line 771
    .local v0, alertoncallModeIndex:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 772
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-static {v2, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 774
    packed-switch v0, :pswitch_data_0

    .line 806
    :goto_0
    return-void

    .line 776
    :pswitch_0
    const-string v6, "vibrator"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    .line 777
    .local v5, v:Landroid/os/Vibrator;
    const-wide/16 v6, 0x5dc

    invoke-virtual {v5, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 783
    .end local v5           #v:Landroid/os/Vibrator;
    :pswitch_1
    :try_start_0
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    .line 784
    .local v4, mp:Landroid/media/MediaPlayer;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 785
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 786
    const-string v6, "android.resource://com.sec.android.app.clockpackage/raw/alert_on_call"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, p0, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 787
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 788
    sget-object v6, Lcom/android/phone/RcsShare;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 789
    sget-object v6, Lcom/android/phone/RcsShare;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 790
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 791
    .end local v4           #mp:Landroid/media/MediaPlayer;
    :catch_0
    move-exception v3

    .line 792
    .local v3, e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "falied to play sound :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    .line 798
    .end local v3           #e:Ljava/lang/Exception;
    :pswitch_2
    new-instance v6, Lcom/android/phone/CallTextToSpeech;

    const/4 v7, 0x4

    invoke-direct {v6, p0, v7}, Lcom/android/phone/CallTextToSpeech;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 774
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static prepareRcsUiElements(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/widget/Button;Z)V
    .locals 11
    .parameter "context"
    .parameter "inCallButtonsView"
    .parameter "promotedButton"
    .parameter "shareButton"
    .parameter "isWebExEnabled"

    .prologue
    .line 124
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v2, "setupDialPadAndRcsButton()"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 126
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    .line 127
    .local v10, telephony:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    .line 129
    .local v7, callState:Lcom/android/internal/telephony/Call$State;
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 130
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/phone/RcsShare;->mIsActiveCall:Z

    .line 133
    invoke-static {v10}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v9

    .line 135
    .local v9, telNum:Ljava/lang/String;
    const/4 v6, 0x0

    .line 137
    .local v6, c:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 138
    sget-object v0, Lcom/android/phone/RcsShare;->INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

    invoke-static {v0, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 139
    .local v1, uri:Landroid/net/Uri;
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/phone/RcsShare;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 146
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 147
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/RcsShare;->mHasRcsServices:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v1           #uri:Landroid/net/Uri;
    :goto_1
    invoke-static {p0, p1, p2, v6, p4}, Lcom/android/phone/RcsShare;->setupPromotedServiceButton(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/database/Cursor;Z)V

    .line 162
    invoke-static {p0, p1, p3, v6}, Lcom/android/phone/RcsShare;->setupRcsServicesButton(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/database/Cursor;)V

    .line 164
    if-eqz v6, :cond_0

    .line 165
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_0
    return-void

    .line 130
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #telNum:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v9       #telNum:Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v2, "No go Mr. RCS"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 150
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/RcsShare;->mHasRcsServices:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 152
    :catch_0
    move-exception v8

    .line 153
    .local v8, e:Ljava/lang/Exception;
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Bad RCS query, No go Mr. RCS"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 154
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/RcsShare;->mHasRcsServices:Z

    goto :goto_1

    .line 157
    .end local v1           #uri:Landroid/net/Uri;
    .end local v8           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/RcsShare;->mHasRcsServices:Z

    goto :goto_1
.end method

.method static queryOwn(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 901
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryOwn"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/RcsTransferConstants;->SERVICE_OWN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 905
    if-nez v0, :cond_0

    .line 906
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/RcsShare;->mIsOwnFtCapable:Z

    .line 907
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/RcsShare;->mIsOwnIshCapable:Z

    .line 908
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/RcsShare;->mIsOwnVshCapable:Z

    .line 909
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryOwn : ownCursor == null"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :goto_0
    return-void

    .line 912
    :cond_0
    invoke-static {v0}, Lcom/android/phone/RcsShare;->readDataFromQueryOwn(Landroid/database/Cursor;)V

    .line 913
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 915
    :catch_0
    move-exception v0

    .line 916
    sget-object v1, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryOwn : RCS Query Failed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static readDataFromQueryOwn(Landroid/database/Cursor;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 921
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v1, "readDataFromQueryOwn"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 925
    const-string v0, "feature_tag"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 926
    const-string v1, "is_enabled"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 927
    sput-boolean v2, Lcom/android/phone/RcsShare;->mIsOwnFtCapable:Z

    .line 928
    sput-boolean v2, Lcom/android/phone/RcsShare;->mIsOwnIshCapable:Z

    .line 929
    sput-boolean v2, Lcom/android/phone/RcsShare;->mIsOwnVshCapable:Z

    .line 930
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor.getCount()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 933
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 934
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 935
    sget-object v4, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readDataFromQueryOwn tag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", enabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    if-eqz v2, :cond_3

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-lez v3, :cond_3

    .line 938
    sput-boolean v7, Lcom/android/phone/RcsShare;->mIsOwnFtCapable:Z

    .line 944
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 947
    :cond_2
    return-void

    .line 939
    :cond_3
    if-eqz v2, :cond_4

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-lez v3, :cond_4

    .line 940
    sput-boolean v7, Lcom/android/phone/RcsShare;->mIsOwnIshCapable:Z

    goto :goto_0

    .line 941
    :cond_4
    if-eqz v2, :cond_1

    const-string v4, "+g.3gpp.cs-voice"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez v3, :cond_1

    .line 942
    sput-boolean v7, Lcom/android/phone/RcsShare;->mIsOwnVshCapable:Z

    goto :goto_0
.end method

.method public static resumeShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .parameter "context"
    .parameter "phone"
    .parameter "name"
    .parameter "callStartMilis"

    .prologue
    .line 446
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.RESUME_SHARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 447
    invoke-static/range {v0 .. v5}, Lcom/android/phone/RcsShare;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 448
    return-void
.end method

.method public static sendToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "ctx"
    .parameter "message"

    .prologue
    .line 875
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 876
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.intent.action.RCS_TOAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    const-string v1, "com.samsung.rcs.intent.extra.RCS_TOAST_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 878
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 879
    return-void
.end method

.method private static setupInviteCallCardButtons(Lcom/android/phone/RcsInvitation;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .parameter "invitation"
    .parameter "displayName"
    .parameter "tel"
    .parameter "callStartMilis"

    .prologue
    .line 642
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupInviteCallCardButtons "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const v2, 0x7f0a02a2

    invoke-virtual {p0, v2}, Lcom/android/phone/RcsInvitation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 645
    .local v0, accept:Landroid/widget/Button;
    const v2, 0x7f0a029f

    invoke-virtual {p0, v2}, Lcom/android/phone/RcsInvitation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 647
    .local v1, reject:Landroid/widget/Button;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 648
    new-instance v2, Lcom/android/phone/RcsShare$1;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/phone/RcsShare$1;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    new-instance v2, Lcom/android/phone/RcsShare$2;

    invoke-direct {v2, p1, p2, p0}, Lcom/android/phone/RcsShare$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/phone/RcsInvitation;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    :cond_0
    return-void
.end method

.method public static setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;)V
    .locals 5
    .parameter "mTopLeftButton"
    .parameter "mBluetoothButton"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 308
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setupLegacyInCallButtons()"

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 310
    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setupLegacyInCallButtons remove"

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 312
    if-eqz p0, :cond_0

    .line 313
    sget-boolean v0, Lcom/android/phone/RcsShare;->mPromotedService:Z

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {p0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 320
    :cond_0
    :goto_0
    invoke-virtual {p1, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 326
    :goto_1
    return-void

    .line 316
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 322
    :cond_2
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setupLegacyInCallButtons no RCS"

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 323
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 324
    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_1
.end method

.method static setupPromotedServiceButton(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/database/Cursor;Z)V
    .locals 11
    .parameter "context"
    .parameter "inCallButtonsView"
    .parameter "button"
    .parameter "c"
    .parameter "isWebExEnabled"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 179
    sget-object v6, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setupPromotedServiceButton()"

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 182
    if-nez p2, :cond_0

    .line 183
    sget-object v6, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setupPromotedServiceButton null button"

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 231
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_2

    .line 189
    :cond_1
    sget-object v6, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setupPromotedServiceButton gone"

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 190
    invoke-virtual {p2, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {p2, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    sget-object v6, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setupPromotedServiceButton VISIBLE"

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 198
    const-string v6, "feature_tag"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 199
    .local v4, feature_tag_idx:I
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, featureTag:Ljava/lang/String;
    const-string v6, "int_name"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 203
    .local v1, action_idx:I
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, action:Ljava/lang/String;
    if-nez p4, :cond_3

    const-string v6, "+g.3gpp.cs-voice"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "com.samsung.rcs.contentsharing.action.VIDEO_SHARE_CAMERA"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 209
    :cond_3
    sget-object v6, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setupPromotedServiceButton not promoted"

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 210
    sput-boolean v9, Lcom/android/phone/RcsShare;->mPromotedService:Z

    .line 211
    invoke-virtual {p2, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 215
    :cond_4
    sput-boolean v8, Lcom/android/phone/RcsShare;->mPromotedService:Z

    .line 218
    const/4 v2, 0x0

    .line 219
    .local v2, enabled:I
    const-string v6, "is_enabled"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 220
    .local v5, is_enabled_idx:I
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 222
    if-eqz v2, :cond_5

    sget-boolean v6, Lcom/android/phone/RcsShare;->mIsActiveCall:Z

    if-eqz v6, :cond_5

    .line 223
    sget-object v6, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setupPromotedServiceButton is enabled"

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 224
    invoke-virtual {p2, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 229
    :goto_1
    invoke-virtual {p2, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 230
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 226
    :cond_5
    invoke-virtual {p2, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public static setupRcsCallCard(Lcom/android/phone/RcsInvitation;Ljava/lang/String;Ljava/lang/String;JLcom/android/internal/telephony/CallManager;)V
    .locals 17
    .parameter "invitation"
    .parameter "tel"
    .parameter "displayName"
    .parameter "callStartMilis"
    .parameter "cm"

    .prologue
    .line 570
    sget-object v11, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setupRcsCallCard "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    if-nez p0, :cond_0

    .line 617
    :goto_0
    return-void

    .line 574
    :cond_0
    const v11, 0x7f0a029e

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/phone/RcsInvitation;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 575
    .local v5, rcsLayout:Landroid/widget/RelativeLayout;
    const v11, 0x7f0a02a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/phone/RcsInvitation;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 576
    .local v7, rcsTextView:Landroid/widget/TextView;
    const v11, 0x7f0a02a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/phone/RcsInvitation;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 578
    .local v6, rcsTextType:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/RcsShare;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/phone/RcsShare$SessionState;

    move-result-object v9

    .line 579
    .local v9, session:Lcom/android/phone/RcsShare$SessionState;
    iget-boolean v11, v9, Lcom/android/phone/RcsShare$SessionState;->mIsActive:Z

    if-eqz v11, :cond_3

    iget v11, v9, Lcom/android/phone/RcsShare$SessionState;->mState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v11

    if-nez v11, :cond_3

    .line 580
    sget-object v11, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v12, "RcsCallCard hasInvite"

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 582
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/phone/RcsShare;->setupInviteCallCardButtons(Lcom/android/phone/RcsInvitation;Ljava/lang/String;Ljava/lang/String;J)V

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 585
    .local v8, resources:Landroid/content/res/Resources;
    if-nez p2, :cond_1

    .line 586
    if-eqz p1, :cond_2

    .line 587
    move-object/from16 p2, p1

    .line 593
    :cond_1
    :goto_1
    iget v11, v9, Lcom/android/phone/RcsShare$SessionState;->mType:I

    invoke-static {v11}, Lcom/android/phone/RcsTransferConstants$SessionType;->getFromInt(I)Lcom/android/phone/RcsTransferConstants$SessionType;

    move-result-object v10

    .line 594
    .local v10, sessionType:Lcom/android/phone/RcsTransferConstants$SessionType;
    move-object/from16 v0, p2

    invoke-static {v8, v0, v10}, Lcom/android/phone/RcsShare;->getInvitationText(Landroid/content/res/Resources;Ljava/lang/String;Lcom/android/phone/RcsTransferConstants$SessionType;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    sget-object v11, Lcom/android/phone/RcsShare$5;->$SwitchMap$com$android$phone$RcsTransferConstants$SessionType:[I

    invoke-virtual {v10}, Lcom/android/phone/RcsTransferConstants$SessionType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 609
    const-string v11, ""

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 589
    .end local v10           #sessionType:Lcom/android/phone/RcsTransferConstants$SessionType;
    :cond_2
    const v11, 0x104000e

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 599
    .restart local v10       #sessionType:Lcom/android/phone/RcsTransferConstants$SessionType;
    :pswitch_0
    const v11, 0x7f090621

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v14

    iget-wide v15, v9, Lcom/android/phone/RcsShare$SessionState;->mSize:J

    invoke-static/range {v14 .. v16}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v8, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 604
    :pswitch_1
    const v11, 0x7f090620

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 614
    .end local v8           #resources:Landroid/content/res/Resources;
    .end local v10           #sessionType:Lcom/android/phone/RcsTransferConstants$SessionType;
    :cond_3
    sget-object v11, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v12, "RcsCallCard has no invites"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 615
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 597
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static setupRcsServicesButton(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/database/Cursor;)V
    .locals 12
    .parameter "context"
    .parameter "inCallButtonsView"
    .parameter "button"
    .parameter "c"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 240
    sget-object v7, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton()"

    invoke-static {v7, v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 242
    if-nez p2, :cond_0

    .line 243
    sget-object v7, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton null button"

    invoke-static {v7, v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 297
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_2

    .line 249
    :cond_1
    sget-object v7, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton gone"

    invoke-static {v7, v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 250
    const/16 v7, 0x8

    invoke-virtual {p2, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {p2, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 255
    sget-object v7, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton VISIBLE"

    invoke-static {v7, v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 257
    const/4 v0, 0x0

    .line 260
    .local v0, enabled:I
    const-string v7, "service_name"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 261
    .local v6, service_name_idx:I
    const-string v7, "is_enabled"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 264
    .local v4, is_enabled_idx:I
    :cond_3
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, serviceName:Ljava/lang/String;
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 266
    .local v3, isEnabled:I
    const-string v7, "feature_tag"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 267
    .local v2, feature_tag_idx:I
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, featureTag:Ljava/lang/String;
    sget-object v7, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "serviceName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "isEnabled? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 271
    const-string v7, "+g.3gpp.cs-voice"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 272
    sget-object v7, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "featureTag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " skip!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 281
    :cond_4
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v0, :cond_3

    .line 283
    :cond_5
    sget-object v7, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsActiveCall? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/phone/RcsShare;->mIsActiveCall:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isEnabled? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 286
    if-eqz v0, :cond_7

    sget-boolean v7, Lcom/android/phone/RcsShare;->mIsActiveCall:Z

    if-eqz v7, :cond_7

    .line 287
    invoke-virtual {p2, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 294
    :goto_2
    invoke-virtual {p2, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 296
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 277
    :cond_6
    if-eqz v3, :cond_4

    .line 278
    sget-object v7, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton found enabled"

    invoke-static {v7, v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 279
    move v0, v3

    goto :goto_1

    .line 289
    :cond_7
    invoke-virtual {p2, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 290
    sget-object v7, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton disabled"

    invoke-static {v7, v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_2
.end method

.method public static startLiveVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .parameter "context"
    .parameter "phone"
    .parameter "name"
    .parameter "callStartMilis"

    .prologue
    .line 451
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.VIDEO_SHARE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 452
    invoke-static/range {v0 .. v5}, Lcom/android/phone/RcsShare;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 454
    return-void
.end method

.method public static startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "i"
    .parameter "context"
    .parameter "phone"
    .parameter "name"
    .parameter "callStartMilis"

    .prologue
    const/4 v2, 0x1

    .line 469
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 470
    :cond_0
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v1, "null info"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 487
    :cond_1
    :goto_0
    return-void

    .line 474
    :cond_2
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start RCS action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", call started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    move-object v1, p3

    move-wide v2, p4

    move-object v4, p0

    move-object v5, p1

    .line 477
    invoke-static/range {v0 .. v5}, Lcom/android/phone/RcsShare;->addRcsExtras(Ljava/lang/String;Ljava/lang/String;JLandroid/content/Intent;Landroid/content/Context;)V

    .line 479
    :try_start_0
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 481
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->turnRcs(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 483
    :catch_0
    move-exception v6

    .line 484
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Did not find RCS activity..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static startRcsService(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter "i"
    .parameter "context"
    .parameter "phone"
    .parameter "name"
    .parameter "callStartMilis"

    .prologue
    const/4 v7, 0x1

    .line 503
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 504
    :cond_0
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v1, "null info"

    invoke-static {v0, v1, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 518
    :cond_1
    :goto_0
    return-void

    .line 507
    :cond_2
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start RCS context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", call started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    move-object v1, p3

    move-wide v2, p4

    move-object v4, p0

    move-object v5, p1

    .line 509
    invoke-static/range {v0 .. v5}, Lcom/android/phone/RcsShare;->addRcsExtras(Ljava/lang/String;Ljava/lang/String;JLandroid/content/Intent;Landroid/content/Context;)V

    .line 511
    :try_start_0
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 513
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->turnRcs(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 515
    :catch_0
    move-exception v6

    .line 516
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Did not find RCS activity..."

    invoke-static {v0, v1, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method public static startRcsSharingDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .parameter "context"
    .parameter "phone"
    .parameter "name"
    .parameter "timeCallStartedMiliSeconds"

    .prologue
    .line 521
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.INCALL_SERVICES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    .local v0, i:Landroid/content/Intent;
    sget-boolean v1, Lcom/android/phone/RcsShare;->mPromotedService:Z

    if-eqz v1, :cond_0

    .line 523
    const-string v1, "com.samsung.rcs.framework.mediatransfer.extra.NO_PROMOTED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 525
    invoke-static/range {v0 .. v5}, Lcom/android/phone/RcsShare;->startRcsService(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 526
    return-void
.end method
