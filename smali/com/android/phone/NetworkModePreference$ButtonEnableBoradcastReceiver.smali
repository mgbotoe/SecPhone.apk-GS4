.class Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkModePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonEnableBoradcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 1070
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mActivePhone:I
    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$1000(Lcom/android/phone/NetworkModePreference;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mIsActiveSimDisable:Z
    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$2100(Lcom/android/phone/NetworkModePreference;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1072
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1073
    .local v0, action:Ljava/lang/String;
    const-string v3, "NetworkModePreference"

    const-string v4, "onReceive"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const-string v3, "action.ButtonEnable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1076
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v3}, Lcom/android/phone/NetworkModePreference;->getPreferredNetworkType()V

    .line 1077
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v3}, Lcom/android/phone/NetworkModePreference;->checkAndSetEnabled()V

    goto :goto_0

    .line 1078
    :cond_2
    const-string v3, "android.net.conn.DATA_CONNECTION_CHANGE_FAIL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1079
    const-string v3, "NetworkModePreference"

    const-string v4, "ACTION_DATA_CONNECTION_CHANGE_FAIL"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    const-string v3, "persist.sys.dataprefer.simid"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1082
    .local v2, dataPrefered:Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 1083
    .local v1, clicked:I
    :cond_3
    const-string v3, "persist.sys.dataprefer.simid"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
