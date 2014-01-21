.class Lcom/android/phone/NetworkNotificationUI$2;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkNotificationUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkNotificationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 3
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 581
    const-string v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged-S:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " T:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #setter for: Lcom/android/phone/NetworkNotificationUI;->mDataState:I
    invoke-static {v0, p1}, Lcom/android/phone/NetworkNotificationUI;->access$2102(Lcom/android/phone/NetworkNotificationUI;I)I

    .line 585
    const-string v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify3gWarning mDataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mDataState:I
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$2100(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPrevDataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$2200(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsWifiConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$2300(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m3gwarningPopup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$300(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify3gWarning updateWifistate() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->updateWifistate()Z
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$2400(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mDataState:I
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$2100(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->updateWifistate()Z
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$2400(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$300(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$2500(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$2200(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v0

    if-nez v0, :cond_1

    .line 596
    :cond_0
    const-string v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify3gWarning mPrevDataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$2200(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mDataState:I
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$2100(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->notify3gWarning()V
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$2600(Lcom/android/phone/NetworkNotificationUI;)V

    .line 598
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z
    invoke-static {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->access$302(Lcom/android/phone/NetworkNotificationUI;Z)Z

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mDataState:I
    invoke-static {v1}, Lcom/android/phone/NetworkNotificationUI;->access$2100(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v1

    #setter for: Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I
    invoke-static {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->access$2202(Lcom/android/phone/NetworkNotificationUI;I)I

    .line 601
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 14
    .parameter "state"

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x64

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 422
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$800()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 423
    const-string v9, "NetworkNotificationUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onServiceStateChanged-S:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iput-object p1, v9, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    .line 427
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v9, v9, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v9, v9, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-eqz v9, :cond_14

    :cond_1
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v9, v9, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v9, v9, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-nez v9, :cond_14

    move v1, v7

    .line 429
    .local v1, hasRegistered:Z
    :goto_0
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v10, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v10, v10, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    iput-object v10, v9, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    .line 432
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$900()Z

    move-result v9

    if-nez v9, :cond_2

    .line 435
    :cond_2
    const-string v9, "feature_skt"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 436
    if-eqz v1, :cond_4

    .line 437
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 438
    .local v5, sp:Landroid/content/SharedPreferences;
    const-string v9, "persist_sys_rplmn"

    const-string v10, ""

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, rplmn:Ljava/lang/String;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 440
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "NetworkNotificationUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RPLMN :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , roaming :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z
    invoke-static {v11}, Lcom/android/phone/NetworkNotificationUI;->access$1200(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_3
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1200(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 442
    const-string v9, "persist_sys_rplmn"

    const-string v10, "domestic"

    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 443
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 505
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #rplmn:Ljava/lang/String;
    .end local v5           #sp:Landroid/content/SharedPreferences;
    :cond_4
    :goto_1
    const-string v9, "feature_ktt"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 506
    const-string v9, "20"

    const-string v10, "ril.simtype"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 507
    if-eqz v1, :cond_5

    .line 508
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.REGIST_HOME"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 509
    .local v2, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 513
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iput-object p1, v9, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    .line 514
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v9, v9, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "0"

    const-string v10, "ril.IsManualSelection"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 515
    :cond_6
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "NetworkNotificationUI"

    const-string v10, "Reset mNoservicePopupSelectionNagativeButton for Switching to Automatic Selection"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_7
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #setter for: Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z
    invoke-static {v9, v8}, Lcom/android/phone/NetworkNotificationUI;->access$1402(Lcom/android/phone/NetworkNotificationUI;Z)Z

    .line 519
    :cond_8
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-ne v9, v7, :cond_a

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 520
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1500(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v9

    if-nez v9, :cond_a

    .line 522
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1600(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$700(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 523
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "NetworkNotificationUI"

    const-string v10, "send EVENT_MANUAL_SELECTION_NO_SVC msg"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_9
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1600(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 525
    .local v3, m:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1600(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x61a8

    invoke-virtual {v9, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 532
    .end local v3           #m:Landroid/os/Message;
    :cond_a
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-nez v9, :cond_12

    .line 533
    const-string v9, "feature_ktt"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 534
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->refleshRTSValue()V
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1700(Lcom/android/phone/NetworkNotificationUI;)V

    .line 535
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mRtsValue:[Ljava/lang/Integer;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1800(Lcom/android/phone/NetworkNotificationUI;)[Ljava/lang/Integer;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v7, :cond_b

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mRtsValue:[Ljava/lang/Integer;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1800(Lcom/android/phone/NetworkNotificationUI;)[Ljava/lang/Integer;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_c

    :cond_b
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mRtsValue:[Ljava/lang/Integer;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1800(Lcom/android/phone/NetworkNotificationUI;)[Ljava/lang/Integer;

    move-result-object v9

    aget-object v7, v9, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mRtsValue:[Ljava/lang/Integer;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$1800(Lcom/android/phone/NetworkNotificationUI;)[Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x2

    aget-object v7, v7, v9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mRtsValue:[Ljava/lang/Integer;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$1800(Lcom/android/phone/NetworkNotificationUI;)[Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x3

    aget-object v7, v7, v9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_c

    .line 536
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->dissmissRTSPopup()V
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$1900(Lcom/android/phone/NetworkNotificationUI;)V

    .line 542
    :cond_c
    :goto_2
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$2000(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 543
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "NetworkNotificationUI"

    const-string v9, "mNotifyNetworkRegisteringDialog.dismiss"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_d
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$2000(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 545
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #setter for: Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v13}, Lcom/android/phone/NetworkNotificationUI;->access$2002(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 548
    :cond_e
    const-string v7, "feature_ktt"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 549
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #setter for: Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z
    invoke-static {v7, v8}, Lcom/android/phone/NetworkNotificationUI;->access$1402(Lcom/android/phone/NetworkNotificationUI;Z)Z

    .line 550
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$1600(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 551
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$1600(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 553
    :cond_f
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$1500(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 555
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "NetworkNotificationUI"

    const-string v8, "mNoServiceAndManualSelectionDialog.dismiss"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_10
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$1500(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 557
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #setter for: Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v13}, Lcom/android/phone/NetworkNotificationUI;->access$1502(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 561
    :cond_11
    const-string v7, "hd_voice_network_prefer"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 562
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->checkKTHDVoice()V

    .line 566
    :cond_12
    const-string v7, "missing_phone_lock"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 567
    const-string v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    const-string v7, "lock"

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "missing_phone_lock"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 569
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-nez v7, :cond_13

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v7

    const/16 v8, 0xe

    if-ne v7, v8, :cond_13

    .line 570
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "missing_phone_lock"

    const-string v9, "unlock"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 571
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.Emergencydialer.MISSING_PHONE_UNLOCK"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    .local v6, statusIntent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 573
    const-string v7, "NetworkNotificationUI"

    const-string v8, "onServiceStateChanged : COMMAND_MISSINGPHONE_UNLOCK"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    .end local v6           #statusIntent:Landroid/content/Intent;
    :cond_13
    return-void

    .end local v1           #hasRegistered:Z
    :cond_14
    move v1, v8

    .line 427
    goto/16 :goto_0

    .line 444
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #hasRegistered:Z
    .restart local v4       #rplmn:Ljava/lang/String;
    .restart local v5       #sp:Landroid/content/SharedPreferences;
    :cond_15
    const-string v9, "domestic"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    const-string v9, ""

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 445
    :cond_16
    const-string v9, "persist_sys_rplmn"

    const-string v10, "oversea"

    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 446
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 447
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->notifyRoaming()V
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1300(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_1

    .line 538
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #rplmn:Ljava/lang/String;
    .end local v5           #sp:Landroid/content/SharedPreferences;
    :cond_17
    const-string v7, "feature_kor_open"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 539
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->dissmissRTSPopup()V
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$1900(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_2
.end method
