.class Lcom/android/phone/CallNotifier$7;
.super Landroid/content/BroadcastReceiver;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .parameter

    .prologue
    .line 4540
    iput-object p1, p0, Lcom/android/phone/CallNotifier$7;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4543
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4545
    .local v0, action:Ljava/lang/String;
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4546
    iget-object v2, p0, Lcom/android/phone/CallNotifier$7;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v2

    if-nez v2, :cond_1

    .line 4547
    const-string v1, "android.intent.action.AUTO_REDIAL_TIMER"

    .line 4555
    .local v1, redial_action:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4556
    iget-object v2, p0, Lcom/android/phone/CallNotifier$7;->this$0:Lcom/android/phone/CallNotifier;

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Lcom/android/phone/CallNotifier;->sendEmptyMessage(I)Z

    .line 4558
    :cond_0
    return-void

    .line 4549
    .end local v1           #redial_action:Ljava/lang/String;
    :cond_1
    const-string v1, "android.intent.action.AUTO_REDIAL_TIMER_2"

    .restart local v1       #redial_action:Ljava/lang/String;
    goto :goto_0

    .line 4551
    .end local v1           #redial_action:Ljava/lang/String;
    :cond_2
    const-string v1, "android.intent.action.AUTO_REDIAL_TIMER"

    .restart local v1       #redial_action:Ljava/lang/String;
    goto :goto_0
.end method
