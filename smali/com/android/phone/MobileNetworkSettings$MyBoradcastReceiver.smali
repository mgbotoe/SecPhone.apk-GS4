.class Lcom/android/phone/MobileNetworkSettings$MyBoradcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyBoradcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1671
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$MyBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1674
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1675
    .local v0, action:Ljava/lang/String;
    const-string v2, "MobileNetworkSettings"

    const-string v3, "onReceive"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    const-string v2, "com.sk.action.update2GButtonEnable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1677
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings$MyBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v2, v2, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v2}, Lcom/android/phone/GsmUmtsOptions;->update2GButtonEnable()V

    .line 1683
    :cond_0
    :goto_0
    return-void

    .line 1678
    :cond_1
    const-string v2, "com.sk.action.dataButtonEnable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1679
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings$MyBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1680
    .local v1, cm:Landroid/net/ConnectivityManager;
    const-string v2, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cm.getMobileDataEnabled() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings$MyBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v2}, Lcom/android/phone/MobileNetworkSettings;->onResume()V

    goto :goto_0
.end method
