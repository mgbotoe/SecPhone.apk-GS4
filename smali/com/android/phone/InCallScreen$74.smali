.class Lcom/android/phone/InCallScreen$74;
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
    .line 12372
    iput-object p1, p0, Lcom/android/phone/InCallScreen$74;->this$0:Lcom/android/phone/InCallScreen;

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

    const/4 v5, 0x0

    .line 12374
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 12375
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.lguplus.ltecall.ACTION_SPEAKER_ON_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12376
    iget-object v3, p0, Lcom/android/phone/InCallScreen$74;->this$0:Lcom/android/phone/InCallScreen;

    const-string v4, "mReceiver: com.lguplus.ltecall.ACTION_SPEAKER_ON_OFF"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 12377
    const-string v3, "intentfrom"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12378
    .local v2, isfromRms:Ljava/lang/String;
    const-string v3, "set"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 12379
    .local v1, isSpeakerSet:Z
    if-eqz v1, :cond_2

    .line 12380
    iget-object v3, p0, Lcom/android/phone/InCallScreen$74;->this$0:Lcom/android/phone/InCallScreen;

    const-string v4, "turnOnSpeaker"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 12381
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 12382
    invoke-static {p1, v6, v6}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 12391
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 12393
    .end local v1           #isSpeakerSet:Z
    .end local v2           #isfromRms:Ljava/lang/String;
    :cond_1
    return-void

    .line 12385
    .restart local v1       #isSpeakerSet:Z
    .restart local v2       #isfromRms:Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_0

    .line 12386
    iget-object v3, p0, Lcom/android/phone/InCallScreen$74;->this$0:Lcom/android/phone/InCallScreen;

    const-string v4, "turnOffSpeaker"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 12387
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12388
    invoke-static {p1, v5, v5}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method
