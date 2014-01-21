.class public Lcom/android/phone/PenGestureReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PenGestureReceiver.java"


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PenGestureReceiver;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PenGestureReceiver;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v21, "PenGestureReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onReceive action "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v10

    .line 60
    .local v10, inCallScreen:Lcom/android/phone/InCallScreen;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneGlobals;->getInVTCallScreenInstance()Lcom/android/phone/InVTCallScreen;

    move-result-object v11

    .line 62
    .local v11, inVTCallScreen:Lcom/android/phone/InVTCallScreen;
    const/16 v16, 0x0

    .line 64
    .local v16, mhasSystemFeature_SpenUsp:Z
    const-string v21, "android.intent.action.QUICKMEMO_LAUNCH_BY_CALL"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string v21, "com.samsung.pen.INSERT"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string v21, "android.intent.spengesture.DOUBLE_TAB"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string v21, "com.android.phone.MEMO_OPEN"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 66
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneUtils;->isCSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 67
    if-eqz v11, :cond_3

    .line 68
    invoke-virtual {v11}, Lcom/android/phone/InVTCallScreen;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    const-string v22, "com.sec.feature.spen_usp"

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    .line 75
    :cond_3
    :goto_1
    const/16 v17, 0x1

    .line 76
    .local v17, needMemoLaunch:Z
    const-string v21, "penInsert"

    const/16 v22, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 77
    .local v19, penInsert:Z
    const-string v21, "com.samsung.pen.INSERT"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    if-nez v19, :cond_5

    .line 78
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "pen_detachment_option"

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 80
    .local v18, penDetachOption:I
    if-eqz v18, :cond_4

    const/16 v21, 0x2

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    :cond_4
    const/16 v17, 0x0

    .line 83
    .end local v18           #penDetachOption:I
    :cond_5
    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 85
    const-string v21, "isFactoryMode"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 86
    .local v13, isFactoryMode:Z
    const/4 v14, 0x0

    .line 88
    .local v14, isKeyguardLocked:Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneGlobals;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v15

    .line 89
    .local v15, keyguarMgr:Landroid/app/KeyguardManager;
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 91
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isInCallScreenTopActivity()Z

    move-result v21

    if-nez v21, :cond_6

    .line 93
    const/4 v14, 0x1

    .line 94
    if-nez v19, :cond_6

    invoke-virtual {v15}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v21

    if-nez v21, :cond_6

    .line 97
    const/4 v14, 0x0

    .line 101
    :cond_6
    if-eqz v19, :cond_7

    const-string v21, "android.intent.action.QUICKMEMO_LAUNCH_BY_CALL"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    const-string v21, "android.intent.spengesture.DOUBLE_TAB"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    const-string v21, "com.android.phone.MEMO_OPEN"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    :cond_7
    if-nez v14, :cond_0

    if-nez v13, :cond_0

    .line 103
    const-string v8, ""

    .line 104
    .local v8, fgnumbers:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v7

    .line 106
    .local v7, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_a

    .line 107
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 108
    .local v6, connection:Lcom/android/internal/telephony/Connection;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v6, v1, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v12

    .line 109
    .local v12, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v4, v12, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 111
    .local v4, ci:Lcom/android/internal/telephony/CallerInfo;
    if-nez v9, :cond_9

    .line 112
    iget-object v8, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 106
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 71
    .end local v4           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v6           #connection:Lcom/android/internal/telephony/Connection;
    .end local v7           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v8           #fgnumbers:Ljava/lang/String;
    .end local v9           #i:I
    .end local v12           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v13           #isFactoryMode:Z
    .end local v14           #isKeyguardLocked:Z
    .end local v15           #keyguarMgr:Landroid/app/KeyguardManager;
    .end local v17           #needMemoLaunch:Z
    .end local v19           #penInsert:Z
    :cond_8
    if-eqz v10, :cond_3

    .line 72
    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    const-string v22, "com.sec.feature.spen_usp"

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    goto/16 :goto_1

    .line 114
    .restart local v4       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v6       #connection:Lcom/android/internal/telephony/Connection;
    .restart local v7       #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .restart local v8       #fgnumbers:Ljava/lang/String;
    .restart local v9       #i:I
    .restart local v12       #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v13       #isFactoryMode:Z
    .restart local v14       #isKeyguardLocked:Z
    .restart local v15       #keyguarMgr:Landroid/app/KeyguardManager;
    .restart local v17       #needMemoLaunch:Z
    .restart local v19       #penInsert:Z
    :cond_9
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 118
    .end local v4           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v6           #connection:Lcom/android/internal/telephony/Connection;
    .end local v12           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_a
    const-string v21, "PenGestureReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "open quick note in call,  action "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v5, Landroid/content/ComponentName;

    const-string v21, "com.diotek.mini_penmemo"

    const-string v22, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .local v5, component:Landroid/content/ComponentName;
    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    .line 122
    .local v9, i:Landroid/content/Intent;
    const-string v21, "phonenumbers"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneUtils;->isCSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 125
    if-eqz v11, :cond_0

    .line 126
    invoke-virtual {v11, v9}, Lcom/android/phone/InVTCallScreen;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 127
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.QUICKMEMO_LAUNCH"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v20, qi:Landroid/content/Intent;
    const-string v21, "phonenumbers"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 133
    .end local v20           #qi:Landroid/content/Intent;
    :cond_b
    if-eqz v10, :cond_0

    .line 134
    invoke-virtual {v10, v9}, Lcom/android/phone/InCallScreen;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 135
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.QUICKMEMO_LAUNCH"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .restart local v20       #qi:Landroid/content/Intent;
    const-string v21, "phonenumbers"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
