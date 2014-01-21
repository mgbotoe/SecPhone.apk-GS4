.class public Lcom/android/phone/InCallQuickPanel;
.super Landroid/widget/RemoteViews;
.source "InCallQuickPanel.java"


# static fields
.field private static final mQuickPanelReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mPhoneApp:Lcom/android/phone/PhoneGlobals;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/android/phone/InCallQuickPanel$1;

    invoke-direct {v0}, Lcom/android/phone/InCallQuickPanel$1;-><init>()V

    sput-object v0, Lcom/android/phone/InCallQuickPanel;->mQuickPanelReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "layoutId"

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 178
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    .line 179
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 180
    invoke-direct {p0}, Lcom/android/phone/InCallQuickPanel;->initInCallQuickPanel()V

    .line 181
    return-void
.end method

.method private getCallBaseTime()J
    .locals 6

    .prologue
    .line 484
    iget-object v4, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 485
    .local v3, foregroundCall:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 487
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v4

    if-nez v4, :cond_0

    .line 488
    move-object v3, v0

    .line 491
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 492
    :cond_1
    const-wide/16 v4, -0x1

    .line 496
    :goto_0
    return-wide v4

    .line 495
    :cond_2
    invoke-static {v3}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v1

    .line 496
    .local v1, duration:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    goto :goto_0
.end method

.method private getCallerNameforConf()Ljava/lang/String;
    .locals 8

    .prologue
    .line 456
    const/4 v2, 0x0

    .line 457
    .local v2, callerName:Ljava/lang/String;
    const/4 v1, 0x1

    .line 458
    .local v1, bFirstInfo:Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v0, activeParticipants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v3

    .line 461
    .local v3, icCM:Lcom/android/phone/IMSConferenceCallMgr;
    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr;->getActiveParticipantNumberList()Ljava/util/ArrayList;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 463
    :cond_0
    const-string v6, "InCallQuickPanel"

    const-string v7, "[getCallerNameforConf] activeParticipants is null"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v6, 0x0

    .line 480
    :goto_0
    return-object v6

    .line 467
    :cond_1
    const/4 v4, 0x0

    .local v4, index:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 468
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsIms;->getCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 470
    .local v5, tempInfo:Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 471
    if-eqz v1, :cond_3

    .line 472
    move-object v2, v5

    .line 473
    const/4 v1, 0x0

    .line 467
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 475
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .end local v5           #tempInfo:Ljava/lang/String;
    :cond_4
    move-object v6, v2

    .line 480
    goto :goto_0
.end method

.method private getRecordBaseTime()J
    .locals 5

    .prologue
    .line 500
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v2

    .line 501
    .local v2, recorder:Lcom/android/phone/PhoneVoiceRecorder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 502
    invoke-virtual {v2}, Lcom/android/phone/PhoneVoiceRecorder;->getRecordTime()J

    move-result-wide v0

    .line 503
    .local v0, duration:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 505
    .end local v0           #duration:J
    :goto_0
    return-wide v3

    :cond_0
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method private initInCallQuickPanel()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 185
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.SHOW_SCREEN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 187
    .local v0, PI:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.MUTE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 189
    .local v1, PI2:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.SPEAKER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 191
    .local v2, PI3:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.UNHOLD"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 193
    .local v3, PI4:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.END"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 196
    .local v4, PI5:Landroid/app/PendingIntent;
    const v5, 0x7f0a028c

    invoke-virtual {p0, v5, v0}, Lcom/android/phone/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 197
    const v5, 0x7f0a028d

    invoke-virtual {p0, v5, v0}, Lcom/android/phone/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 198
    const v5, 0x7f0a028e

    invoke-virtual {p0, v5, v0}, Lcom/android/phone/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 200
    const v5, 0x7f0a0291

    invoke-virtual {p0, v5, v1}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 201
    const v5, 0x7f0a0292

    invoke-virtual {p0, v5, v1}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 203
    const v5, 0x7f0a0295

    invoke-virtual {p0, v5, v2}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 204
    const v5, 0x7f0a0296

    invoke-virtual {p0, v5, v2}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 206
    const v5, 0x7f0a028f

    invoke-virtual {p0, v5, v3}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 207
    const v5, 0x7f0a0298

    invoke-virtual {p0, v5, v4}, Lcom/android/phone/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 208
    return-void
.end method

.method public static registerQuickPanelReceiver()V
    .locals 3

    .prologue
    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.phone.SHOW_SCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "com.android.phone.MUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v1, "com.android.phone.SPEAKER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "com.android.phone.UNHOLD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "com.android.phone.END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    sget-object v2, Lcom/android/phone/InCallQuickPanel;->mQuickPanelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    return-void
.end method


# virtual methods
.method public updateInCallQuickPanel()V
    .locals 34

    .prologue
    .line 211
    const-wide/high16 v4, -0x8000

    .line 214
    .local v4, callDurationBaseTime:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    .line 216
    .local v22, call:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 217
    :cond_0
    const v2, 0x7f0a028e

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 218
    const v2, 0x7f0a028c

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 219
    const v2, 0x7f0a028d

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 220
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v25

    .line 222
    .local v25, context:Landroid/content/Context;
    const v2, 0x7f0a0295

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0904f7

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 223
    const v2, 0x7f0a0296

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0904f7

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 224
    const v2, 0x7f0a0297

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0904f7

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 243
    .end local v25           #context:Landroid/content/Context;
    :cond_1
    :goto_0
    const/16 v32, 0x0

    .line 244
    .local v32, notMuteCase:Z
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v28

    .line 246
    .local v28, isECM:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 248
    const v2, 0x7f0a028f

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 249
    const v2, 0x7f0a0290

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 250
    const v2, 0x7f0a0294

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 295
    :goto_1
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getMute(Lcom/android/internal/telephony/Phone;)Z

    move-result v29

    .line 301
    .local v29, isMute:Z
    :goto_2
    const-string v2, "no_receiver_in_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 302
    if-nez v29, :cond_18

    .line 303
    const v2, 0x7f0a0291

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 304
    const v2, 0x7f0a0292

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 326
    :goto_3
    const-string v2, "headset_highest_priority_for_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 329
    const v2, 0x7f0a0295

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 330
    const v2, 0x7f0a0296

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 331
    const v2, 0x7f0a0297

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 353
    :goto_4
    const-string v2, "answering_call_in_external_screen"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isHardKeyboardOpened()Z

    move-result v2

    if-nez v2, :cond_2

    .line 355
    const v2, 0x7f0a0295

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 356
    const v2, 0x7f0a0296

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 357
    const v2, 0x7f0a0297

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 360
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_3

    .line 361
    const v2, 0x7f0a0291

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 362
    const v2, 0x7f0a0292

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 363
    const v2, 0x7f0a0293

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 364
    const v2, 0x7f0a0295

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 365
    const v2, 0x7f0a0296

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 366
    const v2, 0x7f0a0297

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 369
    :cond_3
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v27

    .line 372
    .local v27, inCallScreen:Lcom/android/phone/InCallScreen;
    if-eqz v27, :cond_4

    .line 373
    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v23

    .line 374
    .local v23, callCard:Lcom/android/phone/CallCard;
    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/CallCard;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 375
    const v2, 0x7f0a0291

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 376
    const v2, 0x7f0a0292

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 377
    const v2, 0x7f0a0293

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 379
    const v2, 0x7f0a0295

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 380
    const v2, 0x7f0a0296

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 381
    const v2, 0x7f0a0297

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 387
    .end local v23           #callCard:Lcom/android/phone/CallCard;
    .end local v27           #inCallScreen:Lcom/android/phone/InCallScreen;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallQuickPanel;->getCallBaseTime()J

    move-result-wide v4

    .line 388
    const-wide/16 v2, -0x1

    cmp-long v2, v4, v2

    if-lez v2, :cond_20

    .line 389
    const v2, 0x7f0a029a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 390
    const v3, 0x7f0a029a

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/phone/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    .line 396
    :goto_5
    const-string v31, ""

    .line 397
    .local v31, name:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-nez v2, :cond_21

    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallQuickPanel;->getCallerNameforConf()Ljava/lang/String;

    move-result-object v31

    .line 403
    :goto_6
    if-eqz v31, :cond_5

    .line 404
    const v2, 0x7f0a0299

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 407
    :cond_5
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 408
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallQuickPanel;->getRecordBaseTime()J

    move-result-wide v8

    .line 409
    .local v8, recordDurationBaseTime:J
    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-lez v2, :cond_22

    .line 410
    const v2, 0x7f0a029c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 411
    const v7, 0x7f0a029c

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/phone/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    .line 412
    const v2, 0x7f0a029b

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v25

    .line 414
    .restart local v25       #context:Landroid/content/Context;
    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v30

    .line 415
    .local v30, metrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, v30

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v14, v2, 0x3

    .line 416
    .local v14, rightPadding:I
    const v11, 0x7f0a0299

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lcom/android/phone/InCallQuickPanel;->setViewPadding(IIIII)V

    .line 427
    .end local v8           #recordDurationBaseTime:J
    .end local v14           #rightPadding:I
    .end local v25           #context:Landroid/content/Context;
    .end local v30           #metrics:Landroid/util/DisplayMetrics;
    :goto_7
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v26

    .line 430
    .local v26, foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v21

    .line 431
    .local v21, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v25

    .line 432
    .restart local v25       #context:Landroid/content/Context;
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    if-nez v2, :cond_6

    .line 433
    move-object/from16 v26, v21

    .line 435
    :cond_6
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v33

    .line 436
    .local v33, simSlotID:I
    const v2, 0x7f0a029d

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 437
    const v2, 0x7f0a029d

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsDsds;->getSimIconMini(Landroid/content/Context;I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setImageViewResource(II)V

    .line 453
    .end local v21           #backgroundCall:Lcom/android/internal/telephony/Call;
    .end local v25           #context:Landroid/content/Context;
    .end local v26           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v33           #simSlotID:I
    :cond_7
    :goto_8
    return-void

    .line 227
    .end local v28           #isECM:Z
    .end local v29           #isMute:Z
    .end local v31           #name:Ljava/lang/String;
    .end local v32           #notMuteCase:Z
    :cond_8
    const v2, 0x7f0a028e

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 228
    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_a

    .line 230
    const-string v2, "hd_voice_network_prefer"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 231
    const v2, 0x7f0a028c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 232
    const v2, 0x7f0a028d

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 234
    :cond_9
    const v2, 0x7f0a028c

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 235
    const v2, 0x7f0a028d

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 238
    :cond_a
    const v2, 0x7f0a028c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 239
    const v2, 0x7f0a028d

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 251
    .restart local v28       #isECM:Z
    .restart local v32       #notMuteCase:Z
    :cond_b
    const-string v2, "support_nsri_secure"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isNSRISecureCall()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 253
    const v2, 0x7f0a028f

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 254
    const v2, 0x7f0a0290

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 255
    const v2, 0x7f0a0294

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 257
    :cond_c
    const v2, 0x7f0a028f

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v24

    .line 259
    .local v24, conn:Lcom/android/internal/telephony/Connection;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-nez v2, :cond_d

    if-eqz v24, :cond_11

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    if-eqz v28, :cond_11

    :cond_d
    const/16 v32, 0x1

    .line 262
    :goto_9
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-nez v2, :cond_e

    if-eqz v24, :cond_12

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    if-eqz v28, :cond_12

    :cond_e
    const/16 v32, 0x1

    .line 267
    :cond_f
    :goto_a
    if-eqz v32, :cond_13

    .line 268
    const-string v2, "no_receiver_in_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 269
    const v2, 0x7f0a0290

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 287
    :cond_10
    :goto_b
    const-string v2, "no_receiver_in_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 288
    const v2, 0x7f0a0294

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 259
    :cond_11
    const/16 v32, 0x0

    goto :goto_9

    .line 263
    :cond_12
    const/16 v32, 0x0

    goto :goto_a

    .line 271
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_14

    .line 272
    const-string v2, "InCallQuickPanel"

    const-string v3, "Don\'t update mute button visibility"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v2, "support_easy_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 275
    const v2, 0x7f0a0290

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto :goto_b

    .line 278
    :cond_14
    const-string v2, "support_easy_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 280
    const v2, 0x7f0a0290

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto :goto_b

    .line 282
    :cond_15
    const v2, 0x7f0a0290

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto :goto_b

    .line 290
    :cond_16
    const v2, 0x7f0a0294

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 298
    .end local v24           #conn:Lcom/android/internal/telephony/Connection;
    :cond_17
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v29

    .restart local v29       #isMute:Z
    goto/16 :goto_2

    .line 306
    :cond_18
    const v2, 0x7f0a0291

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 307
    const v2, 0x7f0a0292

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 310
    :cond_19
    if-eqz v32, :cond_1a

    .line 311
    const v2, 0x7f0a0291

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 312
    const v2, 0x7f0a0292

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 313
    const v2, 0x7f0a0293

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 315
    :cond_1a
    const v2, 0x7f0a0293

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 316
    if-nez v29, :cond_1b

    .line 317
    const v2, 0x7f0a0291

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 318
    const v2, 0x7f0a0292

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 320
    :cond_1b
    const v2, 0x7f0a0291

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 321
    const v2, 0x7f0a0292

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 332
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 333
    const v2, 0x7f0a0295

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 334
    const v2, 0x7f0a0296

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 335
    const v2, 0x7f0a0297

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_4

    .line 337
    :cond_1d
    const v2, 0x7f0a0295

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 338
    const v2, 0x7f0a0296

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 339
    const v2, 0x7f0a0297

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_4

    .line 343
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 344
    const v2, 0x7f0a0295

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 345
    const v2, 0x7f0a0296

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 350
    :goto_c
    const v2, 0x7f0a0297

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_4

    .line 347
    :cond_1f
    const v2, 0x7f0a0295

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 348
    const v2, 0x7f0a0296

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto :goto_c

    .line 392
    :cond_20
    const v2, 0x7f0a029a

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 393
    const v3, 0x7f0a029a

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/phone/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    goto/16 :goto_5

    .line 400
    .restart local v31       #name:Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_6

    .line 418
    .restart local v8       #recordDurationBaseTime:J
    :cond_22
    const v2, 0x7f0a029c

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 419
    const v7, 0x7f0a029c

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/phone/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    .line 420
    const v2, 0x7f0a029b

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 421
    const v16, 0x7f0a0299

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v15, p0

    invoke-virtual/range {v15 .. v20}, Lcom/android/phone/InCallQuickPanel;->setViewPadding(IIIII)V

    goto/16 :goto_7

    .line 424
    .end local v8           #recordDurationBaseTime:J
    :cond_23
    const v2, 0x7f0a029c

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 425
    const v2, 0x7f0a029b

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_7

    .line 438
    :cond_24
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 439
    const-string v2, "feature_multisim_enable_dynamic"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_25

    .line 440
    const v2, 0x7f0a029d

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_8

    .line 442
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v26

    .line 443
    .restart local v26       #foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v21

    .line 444
    .restart local v21       #backgroundCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    if-nez v2, :cond_26

    .line 445
    move-object/from16 v26, v21

    .line 447
    :cond_26
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v33

    .line 448
    .restart local v33       #simSlotID:I
    const v2, 0x7f0a029d

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 449
    const v2, 0x7f0a029d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    move/from16 v0, v33

    invoke-static {v3, v0}, Lcom/android/phone/PhoneMultiSimUtils;->getCallControllerSimIcon(Landroid/content/Context;I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallQuickPanel;->setImageViewResource(II)V

    goto/16 :goto_8
.end method
