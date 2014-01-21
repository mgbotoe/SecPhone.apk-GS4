.class Lcom/android/phone/InCallScreen$78;
.super Landroid/content/BroadcastReceiver;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 12557
    iput-object p1, p0, Lcom/android/phone/InCallScreen$78;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 12560
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 12563
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12564
    iget-object v3, p0, Lcom/android/phone/InCallScreen$78;->this$0:Lcom/android/phone/InCallScreen;

    const-string v4, "ACTION_BATTERY_LOW"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 12565
    sget-boolean v3, Lcom/android/phone/PhoneUtilsIms;->mIsBatteryLow:Z

    if-nez v3, :cond_0

    .line 12566
    sput-boolean v6, Lcom/android/phone/PhoneUtilsIms;->mIsBatteryLow:Z

    .line 12567
    iget-object v3, p0, Lcom/android/phone/InCallScreen$78;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->performBatteryLowProcess()V

    .line 12585
    :cond_0
    :goto_0
    return-void

    .line 12569
    :cond_1
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12570
    const-string v3, "status"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 12571
    .local v2, mBatteryStatus:I
    const-string v3, "level"

    const-string v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 12573
    .local v1, mBatteryLevel:I
    iget-object v3, p0, Lcom/android/phone/InCallScreen$78;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mLowBatteryWarningLevel:I
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$6700(Lcom/android/phone/InCallScreen;)I

    move-result v3

    if-gt v1, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 12574
    sget-boolean v3, Lcom/android/phone/PhoneUtilsIms;->mIsBatteryLow:Z

    if-nez v3, :cond_0

    .line 12575
    sput-boolean v6, Lcom/android/phone/PhoneUtilsIms;->mIsBatteryLow:Z

    .line 12576
    iget-object v3, p0, Lcom/android/phone/InCallScreen$78;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->performBatteryLowProcess()V

    goto :goto_0

    .line 12579
    :cond_2
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/phone/PhoneUtilsIms;->mIsBatteryLow:Z

    goto :goto_0
.end method
