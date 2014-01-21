.class public Lcom/android/phone/SettingSearchProvider;
.super Landroid/content/ContentProvider;
.source "SettingSearchProvider.java"


# static fields
.field static final RESULTE:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 39
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/phone/SettingSearchProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 40
    sget-object v0, Lcom/android/phone/SettingSearchProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.settingsearch.provider"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "active"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/SettingSearchProvider;->RESULTE:[Ljava/lang/String;

    .line 49
    sput-object v3, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 24
    const-string v0, "SettingSearchProvider"

    iput-object v0, p0, Lcom/android/phone/SettingSearchProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method private DataPaser(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "data"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 96
    const/4 v3, 0x0

    .line 120
    :cond_0
    return-object v3

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/SettingSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    sput-object v6, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    .line 100
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/phone/SettingSearchProvider;->RESULTE:[Ljava/lang/String;

    invoke-direct {v3, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 103
    .local v3, result:Landroid/database/MatrixCursor;
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, dataArray:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_0

    .line 106
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, rowdata:Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, menuInfo:[Ljava/lang/String;
    aget-object v6, v2, v9

    invoke-direct {p0, v6}, Lcom/android/phone/SettingSearchProvider;->getCheckValue(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v9, :cond_2

    const-string v5, "1"

    .line 112
    .local v5, value:Ljava/lang/String;
    :goto_1
    aget-object v6, v2, v9

    invoke-direct {p0, v6}, Lcom/android/phone/SettingSearchProvider;->isEnable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 113
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    aget-object v7, v2, v10

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 105
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v5           #value:Ljava/lang/String;
    :cond_2
    const-string v5, "0"

    goto :goto_1

    .line 115
    .restart local v5       #value:Ljava/lang/String;
    :cond_3
    const-string v6, "SettingSearchProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v2, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is deactivated"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    aget-object v7, v2, v10

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    const/16 v7, 0x100

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_2
.end method

.method private getCheckValue(Ljava/lang/String;)Z
    .locals 14
    .parameter "id_key"

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 150
    const-string v11, "button_data_enabled_key"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 152
    sget-object v9, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 153
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v9

    .line 300
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v9

    .line 155
    :cond_1
    const-string v11, "button_roaming_key"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 157
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 158
    .local v5, mPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v9

    goto :goto_0

    .line 160
    .end local v5           #mPhone:Lcom/android/internal/telephony/Phone;
    :cond_2
    const-string v11, "anykey_mode_preference"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 162
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "anykey_mode"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-gtz v11, :cond_0

    move v9, v10

    goto :goto_0

    .line 164
    :cond_3
    const-string v11, "voice_cmd_preference"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 166
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "voice_input_control_incomming_calls"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 167
    .local v3, incomingEnabled:I
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "voice_input_control"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 168
    .local v8, voiceInputControl:I
    if-ne v8, v9, :cond_4

    if-eq v3, v9, :cond_0

    :cond_4
    move v9, v10

    goto :goto_0

    .line 170
    .end local v3           #incomingEnabled:I
    .end local v8           #voiceInputControl:I
    :cond_5
    const-string v11, "powerkey_end_preference"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 172
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "incall_power_button_behavior"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 175
    .local v1, endcallbutton:I
    if-eq v1, v13, :cond_0

    move v9, v10

    .line 178
    goto :goto_0

    .line 180
    .end local v1           #endcallbutton:I
    :cond_6
    const-string v11, "proximity_sensor_preference"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 182
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "proximity_sensor"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eq v11, v9, :cond_0

    move v9, v10

    goto :goto_0

    .line 185
    :cond_7
    const-string v11, "call_popup_preference"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 187
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "popup_incoming_call"

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 188
    .local v6, popupIncoming:I
    if-ne v6, v13, :cond_8

    .line 189
    const-string v11, "support_incomingcall_popup"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 190
    const/4 v6, 0x1

    .line 195
    :cond_8
    :goto_1
    if-eq v6, v9, :cond_0

    move v9, v10

    goto/16 :goto_0

    .line 192
    :cond_9
    const/4 v6, 0x0

    goto :goto_1

    .line 197
    .end local v6           #popupIncoming:I
    :cond_a
    const-string v11, "answer_vibration_preference"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 199
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "call_answer_vib"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-gtz v11, :cond_0

    move v9, v10

    goto/16 :goto_0

    .line 201
    :cond_b
    const-string v11, "end_vibration_preference"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 203
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "call_end_vib"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-gtz v11, :cond_0

    move v9, v10

    goto/16 :goto_0

    .line 205
    :cond_c
    const-string v11, "connect_tone_preference"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 207
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "call_conn_tone"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-gtz v11, :cond_0

    move v9, v10

    goto/16 :goto_0

    .line 209
    :cond_d
    const-string v11, "minute_minder_preference"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 211
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "min_minder"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-gtz v11, :cond_0

    move v9, v10

    goto/16 :goto_0

    .line 213
    :cond_e
    const-string v11, "end_tone_preference"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 215
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "call_end_tone"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-gtz v11, :cond_0

    move v9, v10

    goto/16 :goto_0

    .line 217
    :cond_f
    const-string v11, "alertoncall_preference"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 219
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "alertoncall_mode"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-gtz v11, :cond_0

    move v9, v10

    goto/16 :goto_0

    .line 221
    :cond_10
    const-string v11, "automatic_answer_preference"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 223
    sget-object v9, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 224
    .local v7, prefs:Landroid/content/SharedPreferences;
    const-string v9, "automatic_answering_enable_sharedpref"

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .local v4, isOn:Z
    move v9, v4

    .line 227
    goto/16 :goto_0

    .line 229
    .end local v4           #isOn:Z
    .end local v7           #prefs:Landroid/content/SharedPreferences;
    :cond_11
    const-string v11, "callsettings_vibrate_when_ringing"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 231
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "vibrate_when_ringing"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_0

    move v9, v10

    goto/16 :goto_0

    .line 233
    :cond_12
    const-string v11, "callsettings_keytones"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 235
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dtmf_tone"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_0

    move v9, v10

    goto/16 :goto_0

    .line 237
    :cond_13
    const-string v11, "button_noise_reduction_key"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 239
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "call_noise_reduction"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ge v11, v9, :cond_0

    move v9, v10

    goto/16 :goto_0

    .line 241
    :cond_14
    const-string v11, "extra_ringtone_preference"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 243
    const/4 v2, 0x0

    .line 244
    .local v2, extraRingerChecked:I
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "extra_ringer"

    const-string v11, "extra_ringer_default_on"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    move v11, v9

    :goto_2
    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 247
    if-gtz v2, :cond_0

    move v9, v10

    goto/16 :goto_0

    :cond_15
    move v11, v10

    .line 244
    goto :goto_2

    .line 249
    .end local v2           #extraRingerChecked:I
    :cond_16
    const-string v11, "failoption_preference"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 251
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "usecall_fail_option"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ge v11, v9, :cond_0

    move v9, v10

    goto/16 :goto_0

    .line 253
    :cond_17
    const-string v11, "button_voicemail_notification_vibrate_key"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 255
    sget-object v9, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 256
    .restart local v7       #prefs:Landroid/content/SharedPreferences;
    const-string v9, "button_voicemail_notification_vibrate_key"

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    goto/16 :goto_0

    .line 258
    .end local v7           #prefs:Landroid/content/SharedPreferences;
    :cond_18
    const-string v11, "button_hac_key"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 260
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "hearing_aid"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_0

    move v9, v10

    goto/16 :goto_0

    .line 262
    :cond_19
    const-string v11, "sip_receive_calls_key"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 264
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "sip_receive_calls"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_0

    move v9, v10

    goto/16 :goto_0

    .line 266
    :cond_1a
    const-string v11, "toggle_internationalcall"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 268
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "internationalcall_settings"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_0

    move v9, v10

    goto/16 :goto_0

    .line 270
    :cond_1b
    const-string v11, "voicecall_protection_preference"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 272
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "enable_call_protect_when_calling"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_0

    move v9, v10

    goto/16 :goto_0

    .line 274
    :cond_1c
    const-string v11, "kt_hd_voice"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 276
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "voicecall_type"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_0

    move v9, v10

    goto/16 :goto_0

    .line 278
    :cond_1d
    const-string v11, "kt_hd_voice_lte_pref"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 280
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "hd_voice_network_pref"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_0

    move v9, v10

    goto/16 :goto_0

    .line 282
    :cond_1e
    const-string v11, "volte_noti_preference"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 284
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "volte_noti_settings"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_0

    move v9, v10

    goto/16 :goto_0

    .line 286
    :cond_1f
    const-string v11, "toggle_videocall"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    .line 288
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "videocall_settings"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_0

    move v9, v10

    goto/16 :goto_0

    .line 290
    :cond_20
    const-string v11, "videocall_message"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_21

    .line 292
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "videocallmessage_settings"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_0

    move v9, v10

    goto/16 :goto_0

    .line 294
    :cond_21
    const-string v11, "toggle_videocall_speaker"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_22

    .line 296
    sget-object v11, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "videocall_speaker"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_0

    move v9, v10

    goto/16 :goto_0

    :cond_22
    move v9, v10

    .line 300
    goto/16 :goto_0
.end method

.method private getPhoneSilentModeSettingValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    sget-object v1, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 136
    .local v0, mAudioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 145
    const-string v1, "off"

    :goto_0
    return-object v1

    .line 138
    :pswitch_0
    const-string v1, "off"

    goto :goto_0

    .line 140
    :pswitch_1
    const-string v1, "vibrate"

    goto :goto_0

    .line 142
    :pswitch_2
    const-string v1, "mute"

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isEnable(Ljava/lang/String;)Z
    .locals 3
    .parameter "id_key"

    .prologue
    const/4 v0, 0x0

    .line 124
    const-string v1, "button_roaming_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    const-string v1, "button_data_enabled_key"

    invoke-direct {p0, v1}, Lcom/android/phone/SettingSearchProvider;->getCheckValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    const-string v1, "callsettings_vibrate_when_ringing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    invoke-direct {p0}, Lcom/android/phone/SettingSearchProvider;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vibrate"

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/SettingSearchProvider;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mute"

    if-eq v1, v2, :cond_0

    .line 131
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, result:Landroid/database/Cursor;
    sget-object v1, Lcom/android/phone/SettingSearchProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 84
    :goto_0
    return-object v0

    .line 81
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/android/phone/SettingSearchProvider;->DataPaser(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method
