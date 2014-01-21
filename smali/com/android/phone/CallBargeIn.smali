.class public Lcom/android/phone/CallBargeIn;
.super Landroid/os/Handler;
.source "CallBargeIn.java"

# interfaces
.implements Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;


# instance fields
.field private mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

.field private mBargeInType:I

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mPreviousCallStateForBargeIn:Lcom/android/internal/telephony/Call$State;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "cm"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 45
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/CallBargeIn;->mPreviousCallStateForBargeIn:Lcom/android/internal/telephony/Call$State;

    .line 48
    iput-object p1, p0, Lcom/android/phone/CallBargeIn;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 49
    return-void
.end method

.method private isAutoAnswering()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 234
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "autoanswering_without_device"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 237
    .local v1, forceAutoAnswer:I
    if-eqz v1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v2

    .line 240
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAutoAnswering()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 241
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "answeringmode_auto_time"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 246
    .local v0, autoTimeMode:I
    const/4 v4, 0x5

    if-lt v0, v4, :cond_0

    .line 250
    .end local v0           #autoTimeMode:I
    :cond_2
    const-string v4, "isAutoAnswering : false"

    invoke-direct {p0, v4, v2}, Lcom/android/phone/CallBargeIn;->log(Ljava/lang/String;Z)V

    move v2, v3

    .line 251
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 256
    const-string v0, "CallBargeIn"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 260
    const-string v0, "CallBargeIn"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 261
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg.what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallBargeIn;->log(Ljava/lang/String;)V

    .line 54
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 56
    :pswitch_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 57
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    const/4 v1, 0x0

    .line 58
    .local v1, isBTAudioOn:Z
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 59
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallBargeIn;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->mIsProximityCloseDistance:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    const-string v2, "TURN_ON_SPEAKER_FOR_BARGE_IN : turn on speaker"

    invoke-direct {p0, v2, v4}, Lcom/android/phone/CallBargeIn;->log(Ljava/lang/String;Z)V

    .line 65
    invoke-static {v0, v4, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    .line 75
    iget-object v0, p0, Lcom/android/phone/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    iget-boolean v0, v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-nez v0, :cond_0

    .line 76
    const-string v0, "onCreate(): bargeIn disabled.."

    invoke-direct {p0, v0}, Lcom/android/phone/CallBargeIn;->log(Ljava/lang/String;)V

    .line 77
    const-string v0, "barge_in"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->disableFeature(Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->InitBargeInRecognizer(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;)V

    goto :goto_0
.end method

.method public onResults([Ljava/lang/String;)V
    .locals 13
    .parameter "strResult"

    .prologue
    const/4 v12, 0x1

    .line 84
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IWSpeechRecognizerListener : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v12}, Lcom/android/phone/CallBargeIn;->log(Ljava/lang/String;Z)V

    .line 85
    const/4 v8, -0x1

    .line 86
    .local v8, result:I
    iget-object v10, p0, Lcom/android/phone/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-eqz v10, :cond_0

    .line 87
    iget-object v10, p0, Lcom/android/phone/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v10}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getIntBargeInResult()I

    move-result v8

    .line 89
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IWSpeechRecognizerListener : result"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v12}, Lcom/android/phone/CallBargeIn;->log(Ljava/lang/String;Z)V

    .line 90
    const/4 v10, -0x1

    if-eq v8, v10, :cond_1

    .line 91
    iget v10, p0, Lcom/android/phone/CallBargeIn;->mBargeInType:I

    sparse-switch v10, :sswitch_data_0

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 93
    :sswitch_0
    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 95
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/CallBargeIn;->stopBargeIn()V

    .line 96
    const-string v10, "answer call by Barge-In"

    invoke-direct {p0, v10, v12}, Lcom/android/phone/CallBargeIn;->log(Ljava/lang/String;Z)V

    .line 97
    iget-object v10, p0, Lcom/android/phone/CallBargeIn;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 99
    const/16 v10, 0x99

    const-wide/16 v11, 0x3e8

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/phone/CallBargeIn;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 103
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/CallBargeIn;->stopBargeIn()V

    .line 104
    const-string v10, "reject call by Barge-In"

    invoke-direct {p0, v10, v12}, Lcom/android/phone/CallBargeIn;->log(Ljava/lang/String;Z)V

    .line 105
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 106
    .local v1, app:Lcom/android/phone/PhoneGlobals;
    iget-object v10, p0, Lcom/android/phone/CallBargeIn;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    .line 107
    .local v9, ringingCall:Lcom/android/internal/telephony/Call;
    const-string v10, "enhanced_driving_mode"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 108
    invoke-static {v1, v9}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 109
    .local v0, allowRespondViaSms:Z
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz v0, :cond_3

    .line 110
    const/4 v6, 0x0

    .line 111
    .local v6, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 113
    .local v7, number:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 114
    .local v2, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_2

    .line 115
    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .line 116
    .local v4, info:Lcom/android/internal/telephony/CallerInfo;
    iget-object v6, v4, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 117
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 119
    .end local v4           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "send msg name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " number : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/CallBargeIn;->log(Ljava/lang/String;)V

    .line 121
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.VOICE_DRIVINGMODE_MESSAGE"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v5, intent:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    const-string v10, "name"

    invoke-virtual {v5, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v10, "number"

    invoke-virtual {v5, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {v1, v5}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0           #allowRespondViaSms:Z
    .end local v2           #conn:Lcom/android/internal/telephony/Connection;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #number:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 126
    .restart local v0       #allowRespondViaSms:Z
    .restart local v2       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v6       #name:Ljava/lang/String;
    .restart local v7       #number:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 127
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 140
    .end local v0           #allowRespondViaSms:Z
    .end local v1           #app:Lcom/android/phone/PhoneGlobals;
    .end local v2           #conn:Lcom/android/internal/telephony/Connection;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #number:Ljava/lang/String;
    .end local v9           #ringingCall:Lcom/android/internal/telephony/Call;
    :sswitch_1
    if-ne v8, v12, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/android/phone/CallBargeIn;->stopBargeIn()V

    .line 142
    iget-object v10, p0, Lcom/android/phone/CallBargeIn;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_0

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startBargeIn(I)V
    .locals 3
    .parameter "bargeInType"

    .prologue
    const/4 v2, 0x1

    .line 201
    iget-object v0, p0, Lcom/android/phone/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getState()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/phone/CallBargeIn;->mBargeInType:I

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startBargeIn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallBargeIn;->log(Ljava/lang/String;Z)V

    .line 206
    iput p1, p0, Lcom/android/phone/CallBargeIn;->mBargeInType:I

    .line 207
    iget-object v0, p0, Lcom/android/phone/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    iget v1, p0, Lcom/android/phone/CallBargeIn;->mBargeInType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->startBargeIn(I)V

    .line 209
    :cond_0
    return-void
.end method

.method public stopBargeIn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 220
    iget-object v0, p0, Lcom/android/phone/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopBargeIn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CallBargeIn;->mBargeInType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallBargeIn;->log(Ljava/lang/String;Z)V

    .line 224
    iget-object v0, p0, Lcom/android/phone/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->stopBargeIn()V

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallBargeIn;->mBargeInType:I

    .line 227
    :cond_0
    return-void
.end method

.method public stopBargeIn(I)V
    .locals 2
    .parameter "bargeInType"

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopBargeIn : mBargeInType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CallBargeIn;->mBargeInType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bargeInType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallBargeIn;->log(Ljava/lang/String;Z)V

    .line 214
    iget v0, p0, Lcom/android/phone/CallBargeIn;->mBargeInType:I

    if-ne v0, p1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/phone/CallBargeIn;->stopBargeIn()V

    .line 217
    :cond_0
    return-void
.end method

.method public updateBargeInState()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 153
    iget-object v8, p0, Lcom/android/phone/CallBargeIn;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    .line 154
    .local v6, state:Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v8, p0, Lcom/android/phone/CallBargeIn;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 155
    .local v4, ringingCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v8, p0, Lcom/android/phone/CallBargeIn;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 156
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 165
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    const-string v8, "updateBargeInState: BARGE_IN voiceInputControl : "

    invoke-direct {p0, v8, v7}, Lcom/android/phone/CallBargeIn;->log(Ljava/lang/String;Z)V

    .line 166
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isVoiceControlOnForIncomingCall(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-direct {p0}, Lcom/android/phone/CallBargeIn;->isAutoAnswering()Z

    move-result v8

    if-nez v8, :cond_5

    .line 168
    iget-object v8, p0, Lcom/android/phone/CallBargeIn;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    .line 169
    .local v3, hasActiveCall:Z
    sget-object v8, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v8, :cond_3

    iget-object v8, v0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    invoke-virtual {v8}, Lcom/android/phone/Ringer;->shouldVibrate()Z

    move-result v8

    if-nez v8, :cond_3

    if-nez v3, :cond_3

    iget-object v8, p0, Lcom/android/phone/CallBargeIn;->mPreviousCallStateForBargeIn:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_3

    .line 172
    const-string v8, "audio"

    invoke-virtual {v0, v8}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 173
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->CheckVoiceRecorder()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    if-eqz v8, :cond_2

    move v5, v7

    .line 176
    .local v5, shouldVibForVoiceRecoding:Z
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateBargeInState-shouldVibForVoiceRecoding : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v7}, Lcom/android/phone/CallBargeIn;->log(Ljava/lang/String;Z)V

    .line 177
    iget-object v7, p0, Lcom/android/phone/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-eqz v7, :cond_0

    if-nez v5, :cond_0

    .line 178
    invoke-static {}, Lcom/android/phone/PhoneUtils;->showBargeInNotification()V

    .line 179
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/phone/CallBargeIn;->startBargeIn(I)V

    .line 194
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v3           #hasActiveCall:Z
    .end local v5           #shouldVibForVoiceRecoding:Z
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/phone/CallBargeIn;->mPreviousCallStateForBargeIn:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v4, :cond_1

    .line 195
    iput-object v4, p0, Lcom/android/phone/CallBargeIn;->mPreviousCallStateForBargeIn:Lcom/android/internal/telephony/Call$State;

    .line 197
    :cond_1
    return-void

    .line 173
    .restart local v1       #audioManager:Landroid/media/AudioManager;
    .restart local v3       #hasActiveCall:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 182
    .end local v1           #audioManager:Landroid/media/AudioManager;
    :cond_3
    const-string v7, "enhanced_driving_mode"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 188
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/CallBargeIn;->stopBargeIn()V

    goto :goto_1

    .line 191
    .end local v3           #hasActiveCall:Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/CallBargeIn;->stopBargeIn()V

    goto :goto_1
.end method
