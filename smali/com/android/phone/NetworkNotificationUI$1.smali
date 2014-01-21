.class Lcom/android/phone/NetworkNotificationUI$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 177
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 180
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIntentReceiver onReceive intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->updateConnectivity(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;Landroid/content/Intent;)V

    .line 356
    :cond_2
    :goto_0
    return-void

    .line 254
    :cond_3
    const-string v1, "android.net.conn.FAILOVER_CHANGED_TO_MOBILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 256
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v2, 0x1

    #setter for: Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z
    invoke-static {v1, v2}, Lcom/android/phone/NetworkNotificationUI;->access$302(Lcom/android/phone/NetworkNotificationUI;Z)Z

    goto :goto_0

    .line 258
    :cond_4
    const-string v1, "android.intent.action.MANUAL_SET_TIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 259
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->isRtsPopupAllowed()Z
    invoke-static {v1}, Lcom/android/phone/NetworkNotificationUI;->access$400(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$500()Landroid/app/AlertDialog;

    move-result-object v1

    if-nez v1, :cond_2

    .line 260
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->showAutoTimeSetDialog()V
    invoke-static {v1}, Lcom/android/phone/NetworkNotificationUI;->access$600(Lcom/android/phone/NetworkNotificationUI;)V

    goto :goto_0

    .line 263
    :cond_5
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 264
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z
    invoke-static {v1, v2}, Lcom/android/phone/NetworkNotificationUI;->access$702(Lcom/android/phone/NetworkNotificationUI;Z)Z

    .line 265
    const-string v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z
    invoke-static {v3}, Lcom/android/phone/NetworkNotificationUI;->access$700(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z
    invoke-static {v1}, Lcom/android/phone/NetworkNotificationUI;->access$700(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 278
    :cond_6
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method
