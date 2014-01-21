.class public Lcom/android/phone/EmergencyCallbackMode;
.super Landroid/app/Activity;
.source "EmergencyCallbackMode.java"

# interfaces
.implements Lcom/android/phone/IncomingCallWidget$OnTriggerListener;


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 155
    new-instance v0, Lcom/android/phone/EmergencyCallbackMode$3;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackMode$3;-><init>(Lcom/android/phone/EmergencyCallbackMode;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyCallbackMode;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackMode;->emergencyCall()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/EmergencyCallbackMode;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackMode;->finishEmergencyCallbackMode()V

    return-void
.end method

.method private emergencyCall()V
    .locals 3

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    const-string v2, "tel:911"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->startActivity(Landroid/content/Intent;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->finish()V

    .line 197
    return-void
.end method

.method private finishEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->updateKeyguardPolicy(Z)V

    .line 201
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->finish()V

    .line 202
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 4
    .parameter "keyCode"
    .parameter "request"

    .prologue
    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackMode;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 210
    :goto_0
    return v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EmergencyCallbackMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSystemKeyEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateKeyguardPolicy(Z)V
    .locals 3
    .parameter "dismissKeyguard"

    .prologue
    const/high16 v2, 0x40

    const/high16 v1, 0x8

    .line 183
    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 185
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 188
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->showDialog(I)V

    .line 126
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const-string v2, "feature_kdi"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyCallbackMode;->requestWindowFeature(I)Z

    .line 65
    :cond_0
    const v2, 0x7f040032

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallbackMode;->setContentView(I)V

    .line 67
    const v2, 0x7f0a0123

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallbackMode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 68
    .local v1, mEmergencyCallButton:Landroid/widget/Button;
    new-instance v2, Lcom/android/phone/EmergencyCallbackMode$1;

    invoke-direct {v2, p0}, Lcom/android/phone/EmergencyCallbackMode$1;-><init>(Lcom/android/phone/EmergencyCallbackMode;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const-string v2, "feature_kdi"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    :cond_1
    const v2, 0x7f0a0122

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallbackMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallWidget;

    .line 80
    .local v0, emergencyCallbackWidget:Lcom/android/phone/IncomingCallWidget;
    const v2, 0x7f090468

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallWidget;->setLeftHintText(I)V

    .line 81
    const v2, 0x7f090467

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallWidget;->setRightHintText(I)V

    .line 83
    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingCallWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallWidget$OnTriggerListener;)V

    .line 85
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackMode;->mWindowManager:Landroid/view/IWindowManager;

    .line 86
    const/4 v2, 0x3

    invoke-direct {p0, v2, v3}, Lcom/android/phone/EmergencyCallbackMode;->requestSystemKeyEvent(IZ)Z

    .line 87
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 131
    packed-switch p1, :pswitch_data_0

    .line 148
    const-string v1, "EmergencyCallbackMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog: unexpected ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x0

    .line 152
    .local v0, dialog:Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 133
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090466

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09046a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/EmergencyCallbackMode$2;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyCallbackMode$2;-><init>(Lcom/android/phone/EmergencyCallbackMode;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 145
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 168
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 112
    packed-switch p1, :pswitch_data_0

    .line 120
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 114
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackMode;->emergencyCall()V

    goto :goto_0

    .line 117
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->showDialog(I)V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 102
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    const-string v0, "wifi_diable_during_emergency_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->enableWifiAfterEmergencyCall()V

    .line 106
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->removeDialog(I)V

    .line 107
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 92
    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallbackMode;->updateKeyguardPolicy(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/EmergencyCallbackMode;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v3}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNotificationAlerts(Z)V

    .line 97
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    .line 171
    packed-switch p2, :pswitch_data_0

    .line 180
    :goto_0
    return-void

    .line 173
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackMode;->finishEmergencyCallbackMode()V

    goto :goto_0

    .line 177
    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
