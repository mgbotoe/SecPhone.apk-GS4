.class public Lcom/android/phone/RcsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RcsBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

.field private mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const-class v0, Lcom/android/phone/RcsBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 137
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iput-object p1, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/RcsBroadcastReceiver;->mRegistered:Z

    .line 141
    :cond_0
    return-void
.end method

.method public static createIntentFilter()Landroid/content/IntentFilter;
    .locals 4

    .prologue
    .line 283
    sget-object v1, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "createIntentFilter()"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 284
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 285
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.rcs.intent.action.END_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v1, "com.samsung.rcs.intent.action.MUTE_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string v1, "com.samsung.rcs.intent.action.MUTE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v1, "com.samsung.rcs.intent.action.SPEAKER_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    const-string v1, "com.samsung.rcs.intent.action.SPEAKER_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v1, "com.samsung.rcs.intent.action.CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v1, "com.samsung.rcs.intent.action.ADD_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    const-string v1, "com.samsung.rcs.intent.action.NOTES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    const-string v1, "com.samsung.rcs.intent.action.SIM_SERVICES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v1, "com.samsung.rcs.intent.action.NOISE_REDUCTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v1, "com.samsung.rcs.intent.action.BLUETOOTH_HANDSET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v1, "com.samsung.rcs.intent.action.INIT_SPEAKER_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v1, "com.samsung.rcs.intent.action.ACTION_RCS_SPEAKER_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string v1, "com.samsung.rcs.intent.action.UPDATE_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v1, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    const-string v1, "com.samsung.rcs.contentsharing.action.CSH_INFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    const-string v1, "com.samsung.rcs.intent.action.RESUME_SHARING_SERVICE_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v1, "com.samsung.rcs.intent.action.STOP_SHARING_SERVICE_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string v1, "com.samsung.rcs.intent.action.REBOOT_SHARING_SERVICE_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v1, "com.samsung.rcs.framework.instantmessaging"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 310
    const-string v1, "com.samsung.rcs.framework.instantmessaging.notifiation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 312
    const-string v1, "com.samsung.rcs.framework.filetransfer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 313
    const-string v1, "com.samsung.rcs.framework.filetransfer.notifiation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 315
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_TRANSFERING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INTERRUPTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_TERMINATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 325
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INTERRUPTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_TERMINATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 335
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 337
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 162
    sget-object v14, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive() "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 163
    const-string v14, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 164
    .local v8, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, action:Ljava/lang/String;
    const-wide/16 v11, -0x1

    .line 167
    .local v11, sessionId:J
    const/4 v10, -0x1

    .line 168
    .local v10, reason:I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 169
    .local v4, bundle:Landroid/os/Bundle;
    const-string v14, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v14

    if-nez v14, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/android/phone/RcsShare;->isCshTopMostActivity(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 172
    const-string v13, ""

    .line 174
    .local v13, text:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 175
    new-instance v14, Ljava/lang/NullPointerException;

    const-string v15, "Intent.getExtras() returned with null."

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 177
    :cond_1
    const-string v14, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 178
    const-string v14, "com.sec.rcs.mediatransfer.csh.extra.BYTES_TOTAL"

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 179
    .local v5, bytes:I
    const v14, 0x7f090621

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    int-to-long v0, v5

    move-wide/from16 v17, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 184
    .end local v5           #bytes:I
    :goto_0
    new-instance v7, Landroid/content/Intent;

    const-string v14, "com.android.phone.SHOW_SCREEN"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v7, notificationIntent:Landroid/content/Intent;
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v7, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 187
    .local v9, pendingIntent:Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/Notification;

    const v14, 0x7f0205e1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-wide v0, v15

    invoke-direct {v6, v14, v13, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 188
    .local v6, notification:Landroid/app/Notification;
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v13, v14, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 189
    const/16 v14, 0x10

    iput v14, v6, Landroid/app/Notification;->flags:I

    .line 190
    sget-object v14, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v15, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 198
    .end local v6           #notification:Landroid/app/Notification;
    .end local v7           #notificationIntent:Landroid/content/Intent;
    .end local v9           #pendingIntent:Landroid/app/PendingIntent;
    .end local v13           #text:Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_2

    .line 199
    const-string v14, "ims_rcs_ver2"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 200
    const-string v14, "com.sec.rcs.mediatransfer.csh.extra.REASON"

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 201
    const-string v14, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 207
    :cond_2
    :goto_2
    const-string v14, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 208
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    const/4 v15, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleInvitation(ZLandroid/os/Bundle;)V

    .line 280
    :cond_3
    :goto_3
    return-void

    .line 181
    .restart local v13       #text:Ljava/lang/String;
    :cond_4
    const v14, 0x7f090620

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 194
    .end local v13           #text:Ljava/lang/String;
    :cond_5
    sget-object v14, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v15}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_1

    .line 203
    :cond_6
    const-string v14, "reason"

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 204
    const-string v14, "sessionId"

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    goto :goto_2

    .line 209
    :cond_7
    const-string v14, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 210
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    const/4 v15, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleInvitation(ZLandroid/os/Bundle;)V

    goto :goto_3

    .line 211
    :cond_8
    const-string v14, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 212
    sget-object v14, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onShareIncoming sessionId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_3

    .line 213
    :cond_9
    const-string v14, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_PROGRESS"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 214
    sget-object v14, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onShareProgress : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_3

    .line 215
    :cond_a
    const-string v14, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INTERRUPTED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 216
    sget-object v14, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onShareInterrupted sessionId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 217
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v14, v10}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_3

    .line 218
    :cond_b
    const-string v14, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_COMPLETED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 219
    sget-object v14, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onShareCompleted sessionId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_3

    .line 220
    :cond_c
    const-string v14, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CANCELED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 221
    sget-object v14, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onShareCanceled sessionId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 222
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v14, v10}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_3

    .line 223
    :cond_d
    const-string v14, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CONNECTED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 224
    sget-object v14, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onShareConnected sessionId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_3

    .line 225
    :cond_e
    const-string v14, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_TERMINATED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 226
    sget-object v14, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onShareTerminated sessionId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 227
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    const/16 v15, 0xb

    invoke-interface {v14, v15}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_3

    .line 230
    :cond_f
    const-string v14, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    const-string v14, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 231
    :cond_10
    sget-object v14, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onShareIncoming sessionId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 232
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    const/4 v15, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleInvitation(ZLandroid/os/Bundle;)V

    goto/16 :goto_3

    .line 233
    :cond_11
    const-string v14, "com.sec.rcs.mediatransfer.ish.notification.SHARE_PROGRESS"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 234
    sget-object v14, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onShareProgress : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_3

    .line 235
    :cond_12
    const-string v14, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INTERRUPTED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 236
    sget-object v14, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onShareInterrupted sessionId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 237
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v14, v10}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_3

    .line 238
    :cond_13
    const-string v14, "com.sec.rcs.mediatransfer.ish.notification.SHARE_COMPLETED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 239
    sget-object v14, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onShareCompleted sessionId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_3

    .line 240
    :cond_14
    const-string v14, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CANCELED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_15

    const-string v14, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CANCELED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 241
    :cond_15
    sget-object v14, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onShareCanceled sessionId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " reason: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 242
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v14, v10}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_3

    .line 243
    :cond_16
    const-string v14, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CONNECTED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_17

    const-string v14, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CONNECTED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 244
    :cond_17
    sget-object v14, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onShareConnected sessionId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_3

    .line 245
    :cond_18
    const-string v14, "com.sec.rcs.mediatransfer.ish.notification.SHARE_TERMINATED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 246
    sget-object v14, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onShareTerminated sessionId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    const/16 v15, 0xb

    invoke-interface {v14, v15}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_3

    .line 248
    :cond_19
    const-string v14, "com.samsung.rcs.intent.action.CONTACTS"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    const-string v14, "com.samsung.rcs.intent.action.ADD_CALL"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    const-string v14, "com.samsung.rcs.intent.action.MANAGE_CONFERENCE_CALL"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    const-string v14, "com.samsung.rcs.intent.action.NOTES"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    const-string v14, "com.samsung.rcs.intent.action.SIM_SERVICES"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    const-string v14, "com.samsung.rcs.intent.action.INIT_SPEAKER_ON"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    const-string v14, "com.samsung.rcs.intent.action.UPDATE_PROXIMITY"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    const-string v14, "com.samsung.rcs.intent.action.SPEAKER_ON"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    const-string v14, "com.samsung.rcs.intent.action.SPEAKER_OFF"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    const-string v14, "com.samsung.rcs.intent.action.MUTE_ON"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    const-string v14, "com.samsung.rcs.intent.action.MUTE_OFF"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    const-string v14, "com.samsung.rcs.intent.action.NOISE_REDUCTION"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    const-string v14, "com.samsung.rcs.intent.action.BLUETOOTH_HANDSET"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    const-string v14, "com.samsung.rcs.intent.action.ACTION_RCS_SPEAKER_OFF"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    const-string v14, "com.samsung.rcs.intent.action.END_CALL"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 264
    :cond_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v14, v3}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 265
    :cond_1b
    const-string v14, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1c

    const-string v14, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 267
    :cond_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleIncommingIMandFT(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 268
    :cond_1d
    const-string v14, "com.samsung.rcs.contentsharing.action.CSH_INFO"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleCshInfo(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 270
    :cond_1e
    const-string v14, "com.samsung.rcs.intent.action.RESUME_SHARING_SERVICE_DIALOG"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v14, v3}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 272
    :cond_1f
    const-string v14, "com.samsung.rcs.intent.action.STOP_SHARING_SERVICE_DIALOG"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_20

    .line 273
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v14, v3}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 274
    :cond_20
    const-string v14, "com.samsung.rcs.intent.action.REBOOT_SHARING_SERVICE_DIALOG"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v14, v3}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public register(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/phone/RcsBroadcastReceiver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/RcsBroadcastReceiver;->mRegistered:Z

    .line 146
    invoke-static {}, Lcom/android/phone/RcsBroadcastReceiver;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/phone/RcsBroadcastReceiver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/RcsBroadcastReceiver;->mRegistered:Z

    .line 153
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    :cond_0
    return-void
.end method
