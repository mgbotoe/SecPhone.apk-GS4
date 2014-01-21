.class public Lcom/android/phone/PhoneUtilsIms;
.super Ljava/lang/Object;
.source "PhoneUtilsIms.java"


# static fields
.field private static final DBG:Z

.field public static InitialNumber:Ljava/lang/String;

.field public static mIsBatteryLow:Z

.field public static mLowBatteryCheckForCallLog:Z

.field public static mPSBarredSilentRedial:Z

.field public static mVideoSpeakerState:Z

.field public static mVoiceSpeakerState:Z

.field public static sIsvoltehold:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    .line 74
    sput-boolean v2, Lcom/android/phone/PhoneUtilsIms;->mLowBatteryCheckForCallLog:Z

    .line 75
    sput-boolean v2, Lcom/android/phone/PhoneUtilsIms;->mIsBatteryLow:Z

    .line 76
    sput-boolean v1, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    .line 77
    sput-boolean v2, Lcom/android/phone/PhoneUtilsIms;->mVoiceSpeakerState:Z

    .line 79
    sput-boolean v2, Lcom/android/phone/PhoneUtilsIms;->sIsvoltehold:Z

    .line 80
    sput-boolean v2, Lcom/android/phone/PhoneUtilsIms;->mPSBarredSilentRedial:Z

    return-void

    :cond_0
    move v0, v2

    .line 48
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPrefixIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    .line 1069
    if-nez p0, :cond_1

    .line 1070
    const-string v1, "Number is null!!"

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    .line 1071
    const/4 p0, 0x0

    .line 1077
    :cond_0
    :goto_0
    return-object p0

    .line 1073
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1074
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsIms;->getMobileNumberPrefix(I)Ljava/lang/String;

    move-result-object v0

    .line 1075
    .local v0, prefix:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static canDiverttoVoLTECall(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Phone;)Z
    .locals 9
    .parameter "conn"
    .parameter "phone"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, bDiverttoVoLTE:Z
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 88
    .local v3, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_2

    move v2, v5

    .line 89
    .local v2, isLTEConnected:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v4

    .line 90
    .local v4, nCallType:Lcom/android/internal/telephony/Call$CallType;
    sget-object v7, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-eq v4, v7, :cond_0

    sget-object v7, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QCIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne v4, v7, :cond_3

    :cond_0
    move v1, v5

    .line 91
    .local v1, bisVideoCall:Z
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 92
    const/4 v0, 0x1

    .line 94
    :cond_1
    return v0

    .end local v1           #bisVideoCall:Z
    .end local v2           #isLTEConnected:Z
    .end local v4           #nCallType:Lcom/android/internal/telephony/Call$CallType;
    :cond_2
    move v2, v6

    .line 88
    goto :goto_0

    .restart local v2       #isLTEConnected:Z
    .restart local v4       #nCallType:Lcom/android/internal/telephony/Call$CallType;
    :cond_3
    move v1, v6

    .line 90
    goto :goto_1
.end method

.method public static checkLowBattForVT()Z
    .locals 1

    .prologue
    .line 958
    sget-boolean v0, Lcom/android/phone/PhoneUtilsIms;->mIsBatteryLow:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsIms;->hasIMSVideoCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static englog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "string"

    .prologue
    .line 1100
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    invoke-static {p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_0
    return-void
.end method

.method public static getCallerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 1020
    const-string v3, "inside getCallerName()"

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    .line 1021
    const/4 v0, 0x0

    .line 1022
    .local v0, cResolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 1023
    .local v8, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1024
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 1026
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1027
    const-string v3, "inside getCallerName() : number is null"

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    .line 1053
    :goto_0
    return-object v2

    .line 1032
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1033
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1034
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1035
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1036
    const-string v2, "display_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1044
    :goto_1
    if-nez v8, :cond_1

    .line 1045
    move-object v8, p0

    .line 1046
    :cond_1
    if-eqz v6, :cond_2

    .line 1047
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1048
    const/4 v6, 0x0

    .line 1050
    :cond_2
    const/4 v1, 0x0

    .line 1051
    const/4 v0, 0x0

    :goto_2
    move-object v2, v8

    .line 1053
    goto :goto_0

    .line 1038
    :cond_3
    move-object v8, p0

    goto :goto_1

    .line 1040
    :catch_0
    move-exception v7

    .line 1041
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1042
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside getCallerName() : Exception !!! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1044
    if-nez v8, :cond_4

    .line 1045
    move-object v8, p0

    .line 1046
    :cond_4
    if-eqz v6, :cond_5

    .line 1047
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1048
    const/4 v6, 0x0

    .line 1050
    :cond_5
    const/4 v1, 0x0

    .line 1051
    const/4 v0, 0x0

    .line 1052
    goto :goto_2

    .line 1044
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-nez v8, :cond_6

    .line 1045
    move-object v8, p0

    .line 1046
    :cond_6
    if-eqz v6, :cond_7

    .line 1047
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1048
    const/4 v6, 0x0

    .line 1050
    :cond_7
    const/4 v1, 0x0

    .line 1051
    const/4 v0, 0x0

    throw v2
.end method

.method public static getError(I)Ljava/lang/String;
    .locals 4
    .parameter "sip_error"

    .prologue
    .line 769
    const-string v0, ""

    .line 771
    .local v0, error:Ljava/lang/String;
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    sparse-switch p0, :sswitch_data_0

    .line 801
    :cond_0
    :goto_0
    const-string v1, "PhoneUtilsIms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getError : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    return-object v0

    .line 785
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 786
    goto :goto_0

    .line 789
    :sswitch_1
    const-string v0, "(606)"

    .line 790
    goto :goto_0

    .line 793
    :sswitch_2
    const-string v0, "(499)"

    .line 794
    goto :goto_0

    .line 772
    :sswitch_data_0
    .sparse-switch
        0x193 -> :sswitch_0
        0x194 -> :sswitch_0
        0x198 -> :sswitch_0
        0x19f -> :sswitch_0
        0x1e0 -> :sswitch_0
        0x1e4 -> :sswitch_0
        0x1e6 -> :sswitch_0
        0x1e7 -> :sswitch_0
        0x1f4 -> :sswitch_0
        0x1f7 -> :sswitch_0
        0x1f8 -> :sswitch_0
        0x25b -> :sswitch_0
        0x835 -> :sswitch_1
        0x836 -> :sswitch_2
    .end sparse-switch
.end method

.method private static getMobileNumberPrefix(I)Ljava/lang/String;
    .locals 4
    .parameter "numberLength"

    .prologue
    const/4 v3, 0x0

    .line 1081
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->getSIMNumber()Ljava/lang/String;

    move-result-object v1

    .line 1082
    .local v1, selfNumber:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1084
    .local v0, mobilePrefix:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1085
    const/16 v2, 0x8

    if-ne p0, v2, :cond_1

    .line 1086
    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1091
    :cond_0
    :goto_0
    return-object v0

    .line 1087
    :cond_1
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1088
    const/4 v2, 0x7

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSIMNumber()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1006
    const/4 v1, 0x0

    .line 1007
    .local v1, mPublicUserUri:Ljava/lang/String;
    const/4 v0, 0x3

    .line 1008
    .local v0, MOBILE_PREFIX_LEN:I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1009
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 1010
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 1011
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "+82"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1012
    const-string v3, "+82"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1015
    :cond_0
    const-string v3, "PhoneUtilsIms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPublicUserUri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    return-object v1
.end method

.method public static getvoltehold()Z
    .locals 1

    .prologue
    .line 966
    sget-boolean v0, Lcom/android/phone/PhoneUtilsIms;->sIsvoltehold:Z

    return v0
.end method

.method public static handleCallFailError(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Phone;)Landroid/os/Bundle;
    .locals 23
    .parameter "conn"
    .parameter "phone"

    .prologue
    .line 97
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v19, retBundle:Landroid/os/Bundle;
    if-nez p0, :cond_1

    .line 99
    sget-boolean v20, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v20, :cond_0

    const-string v20, "PhoneUtilsIms"

    const-string v21, "handleCallFailError Connection is null --- return"

    invoke-static/range {v20 .. v21}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    const-string v20, "bRetVal"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 731
    :goto_0
    return-object v19

    .line 104
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getSipErrorCode()I

    move-result v13

    .line 105
    .local v13, cause:I
    sget-boolean v20, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v20, :cond_2

    const-string v20, "PhoneUtilsIms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "handleCallFailError DisconnectCause : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_2
    const/16 v17, -0x1

    .line 108
    .local v17, resid:I
    const-string v14, ""

    .line 110
    .local v14, message:Ljava/lang/String;
    const/4 v9, 0x0

    .line 111
    .local v9, bToast:Z
    const/4 v4, 0x0

    .line 112
    .local v4, bDialog:Z
    const/4 v5, 0x0

    .line 113
    .local v5, bDivert:Z
    const/4 v8, 0x0

    .line 114
    .local v8, bSilentRedial:Z
    const/4 v7, 0x1

    .line 115
    .local v7, bRetVal:Z
    const/4 v6, 0x0

    .line 116
    .local v6, bDiverttoVolte:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v15

    .line 117
    .local v15, nCallType:Lcom/android/internal/telephony/Call$CallType;
    const/4 v3, 0x0

    .line 118
    .local v3, autoretrySetting:I
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v20

    sget-object v21, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 119
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "videocall_settings"

    const-string v20, "feature_skt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_3

    const-string v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    :cond_3
    const/16 v20, 0x0

    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-nez v20, :cond_b

    const/4 v3, 0x0

    .line 124
    :cond_4
    :goto_2
    sget-object v20, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    move-object/from16 v0, v20

    if-eq v15, v0, :cond_5

    sget-object v20, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QCIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    move-object/from16 v0, v20

    if-eq v15, v0, :cond_5

    sget-object v20, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO:Lcom/android/internal/telephony/Call$CallType;

    move-object/from16 v0, v20

    if-ne v15, v0, :cond_c

    :cond_5
    const/4 v10, 0x1

    .line 125
    .local v10, bisVideoCall:Z
    :goto_3
    sget-object v20, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    move-object/from16 v0, v20

    if-ne v15, v0, :cond_d

    const/4 v12, 0x1

    .line 126
    .local v12, bisVolteCall:Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v11

    .line 129
    .local v11, bisVideoConfCall:Z
    sparse-switch v13, :sswitch_data_0

    .line 627
    :cond_6
    :goto_5
    const-string v20, "ps_barring"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    sget-boolean v20, Lcom/android/phone/PhoneUtilsIms;->mPSBarredSilentRedial:Z

    if-eqz v20, :cond_7

    .line 628
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/phone/PhoneUtilsIms;->mPSBarredSilentRedial:Z

    .line 629
    if-eqz v12, :cond_72

    .line 630
    const/4 v8, 0x1

    .line 641
    :cond_7
    :goto_6
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[handleCallFailError] - bisVolteCall     : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    .line 642
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[handleCallFailError] - autoretrySetting : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    .line 643
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[handleCallFailError] - bSilentRedial    : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    .line 644
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[handleCallFailError] - bDiverttoVolte   : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    .line 645
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[handleCallFailError] - bDivert          : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    .line 646
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[handleCallFailError] - bDialog          : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    .line 647
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[handleCallFailError] - bToast           : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    .line 649
    if-eqz v8, :cond_74

    .line 651
    const-string v20, "bDivert"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v16

    .line 654
    .local v16, number:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 655
    sget-object v20, Lcom/android/phone/PhoneUtilsIms;->InitialNumber:Ljava/lang/String;

    if-eqz v20, :cond_8

    .line 656
    sget-object v16, Lcom/android/phone/PhoneUtilsIms;->InitialNumber:Ljava/lang/String;

    .line 657
    const/16 v20, 0x0

    sput-object v20, Lcom/android/phone/PhoneUtilsIms;->InitialNumber:Ljava/lang/String;

    .line 660
    :cond_8
    const-string v20, "number"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/4 v7, 0x0

    .line 730
    .end local v16           #number:Ljava/lang/String;
    :cond_9
    :goto_7
    const-string v20, "bRetVal"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 119
    .end local v10           #bisVideoCall:Z
    .end local v11           #bisVideoConfCall:Z
    .end local v12           #bisVolteCall:Z
    :cond_a
    const/16 v20, 0x1

    goto/16 :goto_1

    :cond_b
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 124
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 125
    .restart local v10       #bisVideoCall:Z
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 131
    .restart local v11       #bisVideoConfCall:Z
    .restart local v12       #bisVolteCall:Z
    :sswitch_0
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 132
    if-eqz v10, :cond_6

    .line 133
    const v17, 0x7f090539

    .line 134
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 139
    :sswitch_1
    sget-boolean v20, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v20, :cond_e

    const-string v20, "PhoneUtilsIms"

    const-string v21, "handleCallFailError RTP timed-out !!!"

    invoke-static/range {v20 .. v21}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_e
    if-eqz v10, :cond_11

    .line 141
    const-string v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 142
    const v17, 0x7f090866

    .line 154
    :cond_f
    :goto_8
    const/4 v9, 0x1

    .line 155
    goto/16 :goto_5

    .line 144
    :cond_10
    const v17, 0x7f090777

    goto :goto_8

    .line 145
    :cond_11
    if-eqz v12, :cond_12

    .line 146
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_f

    .line 149
    const v17, 0x7f090776

    goto :goto_8

    .line 152
    :cond_12
    const v17, 0x7f090775

    goto :goto_8

    .line 158
    :sswitch_2
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 159
    const-string v20, "single_lte"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 160
    const v17, 0x7f09077f

    .line 161
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 164
    :cond_13
    const v17, 0x7f0906df

    .line 165
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 171
    :sswitch_3
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 172
    const v17, 0x7f0906e0

    .line 173
    const-string v20, "single_lte"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 174
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 176
    :cond_14
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 182
    :sswitch_4
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 183
    const-string v20, "single_lte"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 184
    const v17, 0x7f090780

    .line 185
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 188
    :cond_15
    const v17, 0x7f0906e1

    .line 189
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 195
    :sswitch_5
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 196
    const-string v20, "single_lte"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 197
    const v17, 0x7f09077e

    .line 198
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 201
    :cond_16
    const v17, 0x7f0906e2

    .line 202
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 208
    :sswitch_6
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_19

    .line 209
    const-string v20, "single_lte"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_18

    .line 210
    if-eqz v10, :cond_17

    .line 211
    const v17, 0x7f0906df

    .line 225
    :goto_9
    const-string v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1b

    .line 226
    const/4 v5, 0x1

    .line 227
    const/4 v3, 0x1

    goto/16 :goto_5

    .line 213
    :cond_17
    const v17, 0x7f090780

    goto :goto_9

    .line 216
    :cond_18
    const v17, 0x7f0906df

    goto :goto_9

    .line 219
    :cond_19
    if-eqz v12, :cond_1a

    .line 220
    const v17, 0x7f090868

    goto :goto_9

    .line 222
    :cond_1a
    const v17, 0x7f090869

    goto :goto_9

    .line 229
    :cond_1b
    const/4 v4, 0x1

    .line 232
    goto/16 :goto_5

    .line 235
    :sswitch_7
    const-string v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 236
    const v17, 0x7f09086a

    .line 245
    :cond_1c
    :goto_a
    const/4 v9, 0x1

    .line 246
    goto/16 :goto_5

    .line 238
    :cond_1d
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 239
    if-eqz v10, :cond_1c

    .line 240
    const v17, 0x7f09086b

    goto :goto_a

    .line 242
    :cond_1e
    const v17, 0x7f09086b

    goto :goto_a

    .line 249
    :sswitch_8
    const-string v20, "feature_skt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_21

    .line 250
    if-eqz v10, :cond_20

    .line 251
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_1f

    const v17, 0x7f09052b

    .line 252
    :goto_b
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 251
    :cond_1f
    const v17, 0x7f09052c

    goto :goto_b

    .line 254
    :cond_20
    const v17, 0x7f09086e

    .line 255
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 257
    :cond_21
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 258
    if-eqz v10, :cond_6

    .line 259
    const v17, 0x7f09086d

    .line 260
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 266
    :sswitch_9
    const-string v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 267
    if-eqz v12, :cond_22

    const v17, 0x7f090871

    .line 269
    :goto_c
    const/4 v5, 0x1

    .line 270
    const/4 v3, 0x1

    goto/16 :goto_5

    .line 267
    :cond_22
    const v17, 0x7f090870

    goto :goto_c

    .line 275
    :sswitch_a
    const-string v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 276
    if-eqz v10, :cond_6

    .line 277
    invoke-static/range {p0 .. p1}, Lcom/android/phone/PhoneUtilsIms;->canDiverttoVoLTECall(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Phone;)Z

    move-result v20

    if-eqz v20, :cond_24

    .line 278
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_23

    .line 279
    const v17, 0x7f090872

    .line 292
    :goto_d
    const/4 v5, 0x1

    .line 293
    invoke-static/range {p0 .. p1}, Lcom/android/phone/PhoneUtilsIms;->canDiverttoVoLTECall(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Phone;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 294
    const/4 v6, 0x1

    goto/16 :goto_5

    .line 281
    :cond_23
    const v17, 0x7f090873

    goto :goto_d

    .line 284
    :cond_24
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_26

    .line 285
    if-eqz v12, :cond_25

    const v17, 0x7f090892

    :goto_e
    goto :goto_d

    :cond_25
    const v17, 0x7f090531

    goto :goto_e

    .line 288
    :cond_26
    if-eqz v12, :cond_27

    const v17, 0x7f090892

    :goto_f
    goto :goto_d

    :cond_27
    const v17, 0x7f090532

    goto :goto_f

    .line 301
    :sswitch_b
    const-string v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 302
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 307
    :sswitch_c
    const-string v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 308
    if-eqz v10, :cond_29

    .line 309
    const v17, 0x7f090893

    .line 312
    :cond_28
    :goto_10
    const/4 v5, 0x1

    .line 313
    const/4 v3, 0x1

    goto/16 :goto_5

    .line 310
    :cond_29
    if-eqz v12, :cond_28

    .line 311
    const v17, 0x7f090892

    goto :goto_10

    .line 318
    :sswitch_d
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2b

    .line 319
    if-eqz v10, :cond_2a

    .line 320
    const v17, 0x7f090874

    .line 324
    :cond_2a
    :goto_11
    const/4 v9, 0x1

    .line 325
    goto/16 :goto_5

    .line 322
    :cond_2b
    const v17, 0x7f090876

    goto :goto_11

    .line 328
    :sswitch_e
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 329
    if-eqz v10, :cond_2c

    .line 330
    const v17, 0x7f090877

    .line 331
    :cond_2c
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 336
    :sswitch_f
    if-eqz v11, :cond_30

    .line 337
    const v17, 0x7f090879

    .line 359
    :cond_2d
    :goto_12
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2e

    .line 360
    const/4 v9, 0x1

    .line 362
    :cond_2e
    const-string v20, "feature_skt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2f

    const-string v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 363
    :cond_2f
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 339
    :cond_30
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_31

    .line 340
    if-eqz v10, :cond_2d

    .line 341
    const v17, 0x7f09087a

    goto :goto_12

    .line 343
    :cond_31
    const-string v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_35

    .line 344
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_33

    .line 345
    if-eqz v12, :cond_32

    const v17, 0x7f09087d

    :goto_13
    goto :goto_12

    :cond_32
    const v17, 0x7f09087b

    goto :goto_13

    .line 347
    :cond_33
    if-eqz v12, :cond_34

    const v17, 0x7f09087e

    :goto_14
    goto :goto_12

    :cond_34
    const v17, 0x7f09087c

    goto :goto_14

    .line 349
    :cond_35
    const-string v20, "feature_skt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2d

    .line 350
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_37

    .line 351
    if-eqz v12, :cond_36

    const v17, 0x7f09087d

    .line 355
    :goto_15
    const/4 v5, 0x1

    goto :goto_12

    .line 351
    :cond_36
    const v17, 0x7f09052b

    goto :goto_15

    .line 353
    :cond_37
    if-eqz v12, :cond_38

    const v17, 0x7f09087e

    :goto_16
    goto :goto_15

    :cond_38
    const v17, 0x7f09052c

    goto :goto_16

    .line 367
    :sswitch_10
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3b

    .line 368
    if-eqz v10, :cond_39

    .line 369
    const v17, 0x7f090539

    .line 370
    :cond_39
    if-eqz v11, :cond_3a

    .line 371
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 373
    :cond_3a
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 374
    :cond_3b
    const-string v20, "feature_skt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_3c

    const-string v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 375
    :cond_3c
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_3e

    .line 376
    if-eqz v12, :cond_3d

    const v17, 0x7f090880

    .line 380
    :goto_17
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 376
    :cond_3d
    const v17, 0x7f09052d

    goto :goto_17

    .line 378
    :cond_3e
    if-eqz v12, :cond_3f

    const v17, 0x7f090881

    :goto_18
    goto :goto_17

    :cond_3f
    const v17, 0x7f09052e

    goto :goto_18

    .line 385
    :sswitch_11
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_41

    .line 386
    if-eqz v10, :cond_40

    .line 387
    const v17, 0x7f090882

    .line 391
    :cond_40
    :goto_19
    const/4 v9, 0x1

    .line 392
    goto/16 :goto_5

    .line 389
    :cond_41
    const v17, 0x7f09053d

    goto :goto_19

    .line 395
    :sswitch_12
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_44

    .line 396
    const-string v20, "single_lte"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_42

    .line 397
    const v17, 0x7f09077d

    .line 398
    const/4 v5, 0x1

    .line 399
    const/4 v3, 0x0

    .line 400
    const/4 v6, 0x1

    goto/16 :goto_5

    .line 403
    :cond_42
    if-eqz v10, :cond_43

    .line 404
    const v17, 0x7f090883

    .line 405
    :cond_43
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 408
    :cond_44
    const v17, 0x7f090883

    .line 409
    const/4 v9, 0x1

    .line 411
    goto/16 :goto_5

    .line 414
    :sswitch_13
    const-string v20, "feature_skt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 415
    if-eqz v12, :cond_45

    .line 416
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 419
    :cond_45
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_46

    const v17, 0x7f090527

    .line 420
    :goto_1a
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 419
    :cond_46
    const v17, 0x7f090528

    goto :goto_1a

    .line 426
    :sswitch_14
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_47

    if-eqz v12, :cond_47

    .line 431
    :goto_1b
    const/4 v9, 0x1

    .line 432
    goto/16 :goto_5

    .line 429
    :cond_47
    const v17, 0x7f090887

    goto :goto_1b

    .line 435
    :sswitch_15
    if-eqz v11, :cond_4a

    .line 436
    const v17, 0x7f090888

    .line 437
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_49

    .line 438
    const-string v20, "single_lte"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_48

    .line 439
    const v17, 0x7f09077c

    .line 440
    :cond_48
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 443
    :cond_49
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 445
    :cond_4a
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4e

    .line 446
    const-string v20, "single_lte"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4b

    if-eqz v12, :cond_4b

    .line 447
    const v17, 0x7f09077c

    .line 448
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 451
    :cond_4b
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_4d

    .line 452
    if-eqz v10, :cond_4c

    .line 453
    const v17, 0x7f090531

    .line 460
    :cond_4c
    :goto_1c
    const/4 v5, 0x1

    .line 461
    invoke-static/range {p0 .. p1}, Lcom/android/phone/PhoneUtilsIms;->canDiverttoVoLTECall(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Phone;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 462
    const/4 v6, 0x1

    goto/16 :goto_5

    .line 456
    :cond_4d
    if-eqz v10, :cond_4c

    .line 457
    const v17, 0x7f090532

    goto :goto_1c

    .line 464
    :cond_4e
    const-string v20, "feature_skt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4f

    const-string v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 465
    :cond_4f
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_51

    .line 466
    if-eqz v12, :cond_50

    const v17, 0x7f090889

    .line 470
    :goto_1d
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 466
    :cond_50
    const v17, 0x7f090531

    goto :goto_1d

    .line 468
    :cond_51
    if-eqz v12, :cond_52

    const v17, 0x7f09088a

    :goto_1e
    goto :goto_1d

    :cond_52
    const v17, 0x7f090532

    goto :goto_1e

    .line 476
    :sswitch_16
    if-eqz v11, :cond_54

    .line 477
    const v17, 0x7f09088b

    .line 478
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_53

    .line 479
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 481
    :cond_53
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 483
    :cond_54
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_57

    .line 484
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_56

    .line 485
    if-eqz v10, :cond_55

    .line 486
    const v17, 0x7f09052f

    .line 493
    :cond_55
    :goto_1f
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 489
    :cond_56
    if-eqz v10, :cond_55

    .line 490
    const v17, 0x7f090530

    goto :goto_1f

    .line 494
    :cond_57
    const-string v20, "feature_skt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_58

    const-string v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 495
    :cond_58
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_5a

    .line 496
    if-eqz v12, :cond_59

    const v17, 0x7f09088c

    .line 501
    :goto_20
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 496
    :cond_59
    const v17, 0x7f09052f

    goto :goto_20

    .line 498
    :cond_5a
    if-eqz v12, :cond_5b

    const v17, 0x7f09088d

    :goto_21
    goto :goto_20

    :cond_5b
    const v17, 0x7f090530

    goto :goto_21

    .line 507
    :sswitch_17
    if-eqz v10, :cond_5d

    .line 508
    const v17, 0x7f090777

    .line 516
    :cond_5c
    :goto_22
    const/4 v9, 0x1

    .line 517
    goto/16 :goto_5

    .line 510
    :cond_5d
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_5c

    .line 513
    const v17, 0x7f090884

    goto :goto_22

    .line 520
    :sswitch_18
    const-string v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5f

    .line 521
    const v17, 0x7f090885

    .line 529
    :cond_5e
    :goto_23
    const/4 v9, 0x1

    .line 530
    goto/16 :goto_5

    .line 523
    :cond_5f
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_60

    if-nez v12, :cond_5e

    .line 526
    :cond_60
    const v17, 0x7f090886

    goto :goto_23

    .line 534
    :sswitch_19
    const-string v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_63

    .line 535
    if-eqz v12, :cond_62

    const v17, 0x7f090892

    .line 547
    :cond_61
    :goto_24
    const-string v20, "feature_skt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_67

    .line 548
    if-eqz v12, :cond_66

    .line 549
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 535
    :cond_62
    const v17, 0x7f090893

    goto :goto_24

    .line 538
    :cond_63
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_64

    .line 539
    if-eqz v10, :cond_61

    .line 540
    const v17, 0x7f0906e3

    goto :goto_24

    .line 543
    :cond_64
    if-eqz v12, :cond_65

    const v17, 0x7f090894

    :goto_25
    goto :goto_24

    :cond_65
    const v17, 0x7f090895

    goto :goto_25

    .line 551
    :cond_66
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 552
    :cond_67
    const-string v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_68

    .line 553
    const/4 v5, 0x1

    .line 554
    const/4 v3, 0x1

    goto/16 :goto_5

    .line 555
    :cond_68
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 556
    if-eqz v10, :cond_6

    .line 557
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 562
    :sswitch_1a
    const-string v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6c

    .line 563
    if-eqz v12, :cond_6b

    const v17, 0x7f090892

    .line 573
    :cond_69
    :goto_26
    const-string v20, "feature_skt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6a

    .line 574
    if-eqz v12, :cond_6f

    .line 575
    const/4 v5, 0x1

    .line 579
    :cond_6a
    :goto_27
    const-string v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 580
    const/4 v5, 0x1

    .line 581
    const/4 v3, 0x1

    goto/16 :goto_5

    .line 563
    :cond_6b
    const v17, 0x7f090893

    goto :goto_26

    .line 565
    :cond_6c
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6d

    .line 566
    if-eqz v10, :cond_69

    .line 567
    const v17, 0x7f090895

    goto :goto_26

    .line 570
    :cond_6d
    if-eqz v12, :cond_6e

    const v17, 0x7f090894

    :goto_28
    goto :goto_26

    :cond_6e
    const v17, 0x7f090895

    goto :goto_28

    .line 577
    :cond_6f
    const/4 v9, 0x1

    goto :goto_27

    .line 586
    :sswitch_1b
    const-string v20, "notiType"

    const-string v21, "toast"

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const v17, 0x7f090883

    .line 588
    const-string v20, "message"

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v20, "bRetVal"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 594
    :sswitch_1c
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    if-eqz v10, :cond_6

    .line 595
    const v17, 0x7f090534

    .line 596
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 601
    :sswitch_1d
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    if-eqz v10, :cond_6

    .line 603
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_70

    const v17, 0x7f090527

    move/from16 v18, v17

    .line 604
    .end local v17           #resid:I
    .local v18, resid:I
    :goto_29
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v20

    if-nez v20, :cond_8a

    .line 605
    const/4 v5, 0x1

    move/from16 v17, v18

    .end local v18           #resid:I
    .restart local v17       #resid:I
    goto/16 :goto_5

    .line 603
    :cond_70
    const v18, 0x7f090528

    goto :goto_29

    .line 610
    :sswitch_1e
    const-string v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 611
    if-eqz v12, :cond_71

    const v17, 0x7f090871

    .line 613
    :goto_2a
    const/4 v5, 0x1

    .line 614
    const/4 v3, 0x1

    goto/16 :goto_5

    .line 611
    :cond_71
    const v17, 0x7f090870

    goto :goto_2a

    .line 631
    :cond_72
    if-eqz v10, :cond_7

    .line 632
    const/4 v5, 0x1

    .line 633
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_73

    .line 634
    const v17, 0x7f090527

    goto/16 :goto_6

    .line 636
    :cond_73
    const v17, 0x7f090528

    goto/16 :goto_6

    .line 663
    :cond_74
    if-eqz v6, :cond_7c

    .line 664
    sget-boolean v20, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v20, :cond_75

    const-string v20, "PhoneUtilsIms"

    const-string v21, "[handleCallFailError] Divert to VoLTE"

    invoke-static/range {v20 .. v21}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_75
    const-string v20, "bDivert"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 667
    const-string v20, "bDivertVolte"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 668
    const-string v20, "number"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_79

    .line 671
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_76

    .line 672
    if-eqz v12, :cond_78

    const v17, 0x7f090896

    .line 674
    :cond_76
    :goto_2b
    const-string v20, "notiType"

    const-string v21, "toast"

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :goto_2c
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 684
    const-string v20, "feature_skt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_77

    .line 685
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Lcom/android/phone/PhoneUtilsIms;->getError(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 686
    :cond_77
    const-string v20, "message"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 672
    :cond_78
    const v17, 0x7f09052a

    goto :goto_2b

    .line 677
    :cond_79
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_7a

    .line 678
    if-eqz v12, :cond_7b

    const v17, 0x7f090529

    .line 680
    :cond_7a
    :goto_2d
    const-string v20, "notiType"

    const-string v21, "yndialog"

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 678
    :cond_7b
    const v17, 0x7f090897

    goto :goto_2d

    .line 689
    :cond_7c
    if-eqz v5, :cond_84

    .line 690
    sget-boolean v20, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v20, :cond_7d

    const-string v20, "PhoneUtilsIms"

    const-string v21, "handleCallFailError Divert to 1x Call"

    invoke-static/range {v20 .. v21}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_7d
    const-string v20, "bDivert"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 693
    const-string v20, "number"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_81

    .line 696
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_7e

    .line 697
    if-eqz v12, :cond_80

    const v17, 0x7f090896

    .line 699
    :cond_7e
    :goto_2e
    const-string v20, "notiType"

    const-string v21, "toast"

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :goto_2f
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 708
    const-string v20, "feature_skt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7f

    .line 709
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Lcom/android/phone/PhoneUtilsIms;->getError(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 710
    :cond_7f
    const-string v20, "message"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 697
    :cond_80
    const v17, 0x7f09052a

    goto :goto_2e

    .line 701
    :cond_81
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_82

    .line 702
    if-eqz v12, :cond_83

    const v17, 0x7f090529

    .line 704
    :cond_82
    :goto_30
    const-string v20, "notiType"

    const-string v21, "yndialog"

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 702
    :cond_83
    const v17, 0x7f090897

    goto :goto_30

    .line 714
    :cond_84
    if-eqz v4, :cond_86

    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_86

    .line 715
    sget-boolean v20, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v20, :cond_85

    const-string v20, "PhoneUtilsIms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "handleCallFailError bDialog error "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_85
    const-string v20, "notiType"

    const-string v21, "dialog"

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v20, "resid"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 718
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 719
    :cond_86
    if-eqz v9, :cond_89

    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_89

    .line 720
    sget-boolean v20, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v20, :cond_87

    const-string v20, "PhoneUtilsIms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "handleCallFailError bToast error "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_87
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 722
    const-string v20, "feature_skt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_88

    .line 723
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Lcom/android/phone/PhoneUtilsIms;->getError(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 724
    :cond_88
    const-string v20, "notiType"

    const-string v21, "toast"

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v20, "message"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 727
    :cond_89
    sget-boolean v20, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v20, :cond_9

    const-string v20, "PhoneUtilsIms"

    const-string v21, "handleCallFailError - not handling case"

    invoke-static/range {v20 .. v21}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .end local v17           #resid:I
    .restart local v18       #resid:I
    :cond_8a
    move/from16 v17, v18

    .end local v18           #resid:I
    .restart local v17       #resid:I
    goto/16 :goto_5

    .line 129
    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_13
        0x190 -> :sswitch_1d
        0x193 -> :sswitch_6
        0x194 -> :sswitch_f
        0x198 -> :sswitch_18
        0x19f -> :sswitch_15
        0x1e0 -> :sswitch_8
        0x1e4 -> :sswitch_11
        0x1e6 -> :sswitch_7
        0x1e7 -> :sswitch_e
        0x1f4 -> :sswitch_19
        0x1f7 -> :sswitch_1a
        0x1f8 -> :sswitch_19
        0x25b -> :sswitch_d
        0x25e -> :sswitch_0
        0x44f -> :sswitch_17
        0x453 -> :sswitch_1b
        0x45a -> :sswitch_1e
        0x579 -> :sswitch_1
        0x6a5 -> :sswitch_12
        0x835 -> :sswitch_10
        0x836 -> :sswitch_16
        0x899 -> :sswitch_c
        0x89a -> :sswitch_a
        0x89b -> :sswitch_9
        0x89c -> :sswitch_b
        0x8fd -> :sswitch_1c
        0x8fe -> :sswitch_3
        0x8ff -> :sswitch_5
        0x900 -> :sswitch_4
        0x901 -> :sswitch_2
        0x2712 -> :sswitch_14
    .end sparse-switch
.end method

.method public static handleConfError()V
    .locals 8

    .prologue
    .line 735
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 736
    .local v2, conn:Lcom/android/internal/telephony/Connection;
    if-nez v2, :cond_1

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    .line 741
    .local v0, callDetails:Lcom/android/internal/telephony/CallDetails;
    const-string v5, "conferror"

    .line 742
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 744
    .local v1, confError:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 745
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 746
    .local v3, errorCode:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleConfError] errorCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    .line 748
    packed-switch v3, :pswitch_data_0

    .line 764
    :cond_2
    :goto_1
    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/CallDetails;->setExtraValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 750
    :pswitch_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    const v7, 0x7f0906e2

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsExt;->showToast(Ljava/lang/String;)V

    .line 752
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v4

    .line 753
    .local v4, icCM:Lcom/android/phone/IMSConferenceCallMgr;
    if-eqz v4, :cond_2

    .line 754
    invoke-virtual {v4}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 755
    invoke-virtual {v4}, Lcom/android/phone/IMSConferenceCallMgr;->initParticipantsList()V

    goto :goto_1

    .line 748
    :pswitch_data_0
    .packed-switch 0x451
        :pswitch_0
    .end packed-switch
.end method

.method public static hasIMSVideoCall(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .parameter "phone"

    .prologue
    const/4 v3, 0x1

    .line 988
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 989
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 990
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 992
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-ne v4, v3, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return v3

    .line 995
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eq v4, v3, :cond_0

    .line 998
    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eq v4, v3, :cond_0

    .line 1002
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isIMSRegistered()Z
    .locals 5

    .prologue
    .line 826
    const-string v2, "ims_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 827
    const-string v2, "true"

    const-string v3, "persist.sys.ims.reg"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 837
    .local v0, isIMSRegistered:Z
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    :goto_0
    return v0

    .line 828
    .end local v0           #isIMSRegistered:Z
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    const-string v2, "common_volte_vt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 829
    :cond_1
    const/4 v0, 0x0

    .line 830
    .restart local v0       #isIMSRegistered:Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getIMSPhone(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 831
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_2

    .line 832
    const/4 v0, 0x1

    .line 834
    :cond_2
    const-string v2, "PhoneUtilsIms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIMSRegistered : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 837
    .end local v0           #isIMSRegistered:Z
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLowBatt()Z
    .locals 1

    .prologue
    .line 953
    sget-boolean v0, Lcom/android/phone/PhoneUtilsIms;->mIsBatteryLow:Z

    return v0
.end method

.method public static isVoLTESettingEnabled()Z
    .locals 6

    .prologue
    .line 841
    const-string v3, "common_volte"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 842
    const/4 v1, 0x0

    .line 843
    .local v1, isServiceStatus:Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 844
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    const/4 v2, 0x0

    .line 845
    .local v2, mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    const/4 v3, 0x7

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    check-cast v2, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 846
    .restart local v2       #mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 847
    if-eqz v2, :cond_0

    .line 848
    invoke-virtual {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getServiceStatus()Z

    move-result v1

    .line 862
    :cond_0
    :goto_0
    const-string v3, "PhoneUtilsIms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isServiceStatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    :goto_1
    return v1

    .line 860
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v1

    goto :goto_0

    .line 865
    .end local v0           #app:Lcom/android/phone/PhoneGlobals;
    .end local v1           #isServiceStatus:Z
    .end local v2           #mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isVolteIconPossible(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 920
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v2

    .line 921
    .local v2, isRegistered:Z
    const/4 v0, 0x1

    .line 922
    .local v0, default_value:I
    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 923
    const/4 v0, 0x0

    .line 925
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_type"

    invoke-static {v8, v9, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 926
    .local v5, voicecall_type:I
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 927
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_3

    move v1, v6

    .line 928
    .local v1, isLTEConnected:Z
    :goto_0
    const-string v8, "ims_volte"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 929
    const-string v8, "persist.sys.ims.volte_supported"

    const-string v9, "-1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 930
    .local v3, isVolteSupported:I
    sget-boolean v8, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v8, :cond_1

    .line 931
    const-string v8, "PhoneUtilsIms"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isRegistered = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isVolteSupported = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " voicecall_type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isLTEConnected = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_1
    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    if-nez v5, :cond_2

    if-eqz v1, :cond_2

    move v7, v6

    .line 949
    .end local v3           #isVolteSupported:I
    :cond_2
    :goto_1
    return v7

    .end local v1           #isLTEConnected:Z
    :cond_3
    move v1, v7

    .line 927
    goto :goto_0

    .line 938
    .restart local v1       #isLTEConnected:Z
    :cond_4
    const-string v8, "common_volte"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 939
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isVoLTESettingEnabled()Z

    move-result v3

    .line 940
    .local v3, isVolteSupported:Z
    sget-boolean v8, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v8, :cond_5

    .line 941
    const-string v8, "PhoneUtilsIms"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isRegistered = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isVolteSupported = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " voicecall_type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isLTEConnected = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_5
    if-eqz v2, :cond_2

    if-ne v6, v3, :cond_2

    if-nez v5, :cond_2

    if-eqz v1, :cond_2

    move v7, v6

    .line 944
    goto :goto_1
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1096
    sget-boolean v0, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneUtilsIms"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_0
    return-void
.end method

.method public static needToPlayEndToneForIMS(Lcom/android/internal/telephony/Connection;)Z
    .locals 5
    .parameter "conn"

    .prologue
    .line 806
    const/4 v0, 0x0

    .line 808
    .local v0, retval:Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->IMS_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v3, v4, :cond_1

    :cond_0
    move v1, v0

    .line 822
    .end local v0           #retval:Z
    .local v1, retval:I
    :goto_0
    return v1

    .line 811
    .end local v1           #retval:I
    .restart local v0       #retval:Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getSipErrorCode()I

    move-result v2

    .line 813
    .local v2, sip_error:I
    sparse-switch v2, :sswitch_data_0

    :goto_1
    move v1, v0

    .line 822
    .restart local v1       #retval:I
    goto :goto_0

    .line 816
    .end local v1           #retval:I
    :sswitch_0
    const/4 v0, 0x1

    .line 817
    goto :goto_1

    .line 813
    :sswitch_data_0
    .sparse-switch
        0x44d -> :sswitch_0
        0x579 -> :sswitch_0
    .end sparse-switch
.end method

.method public static setInitialSpeakerStateForVT(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 979
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 980
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 981
    .local v1, rCall:Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 982
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "videocall_speaker"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    sput-boolean v2, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    .line 984
    :cond_2
    sget-boolean v2, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "PhoneUtilsIms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setInitialSpeakerState] mVideoSpeakerState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_3
    return-void
.end method

.method public static setvoltehold(Z)V
    .locals 0
    .parameter "hold"

    .prologue
    .line 962
    sput-boolean p0, Lcom/android/phone/PhoneUtilsIms;->sIsvoltehold:Z

    .line 963
    return-void
.end method

.method public static shouldOutgoingIMSCall(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 889
    const/4 v2, 0x0

    .line 890
    .local v2, outgoingIMSCall:Z
    const/4 v1, 0x0

    .line 891
    .local v1, isForceDivertToCSCall:Z
    const-string v3, "isDirect1xCall"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 892
    const-string v3, "isDirect1xCall"

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 894
    :cond_0
    const-string v3, "android.phone.extra.CALL_TYPE"

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 896
    .local v0, extraCallType:I
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 897
    const/4 v2, 0x0

    .line 913
    :cond_1
    :goto_0
    const-string v3, "PhoneUtilsIms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldOutgoingIMSCall : outgoingIMSCall : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " [ isForceDivertTo1XCall : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ extraCallType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ isIMSRegistered : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    return v2

    .line 898
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 899
    const/4 v2, 0x1

    goto :goto_0

    .line 901
    :cond_3
    const-string v3, "single_lte"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 902
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "3"

    const-string v4, "ril.simtype"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 905
    const/4 v2, 0x1

    goto :goto_0

    .line 907
    :cond_4
    const-string v3, "common_volte_vt_kor"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 908
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 909
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static updateSpeakerState(Z)V
    .locals 3
    .parameter "speakerstate"

    .prologue
    .line 969
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 970
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 971
    .local v1, rCall:Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 972
    :cond_0
    sput-boolean p0, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    .line 976
    :goto_0
    return-void

    .line 974
    :cond_1
    sput-boolean p0, Lcom/android/phone/PhoneUtilsIms;->mVoiceSpeakerState:Z

    goto :goto_0
.end method

.method public static validatePhNumberLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "phNumber"

    .prologue
    const/16 v1, 0x20

    .line 1058
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1059
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1061
    .end local p0
    :cond_0
    return-object p0
.end method
