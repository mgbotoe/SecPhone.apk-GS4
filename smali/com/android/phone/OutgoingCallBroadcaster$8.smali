.class Lcom/android/phone/OutgoingCallBroadcaster$8;
.super Ljava/lang/Object;
.source "OutgoingCallBroadcaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OutgoingCallBroadcaster;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;

.field final synthetic val$mTelephonyService:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;Lcom/android/internal/telephony/ITelephony;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2641
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iput-object p2, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->val$mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2643
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2644
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->val$mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_0

    .line 2646
    if-nez p2, :cond_1

    .line 2647
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->val$mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCallsDuringCall(I)V

    .line 2648
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->onStop()V

    .line 2649
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1400(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/android/phone/OutgoingCallBroadcaster;->EXTRA_SIM_ID:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2650
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1400(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1500(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->startSendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1300(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Intent;Ljava/lang/String;)V

    .line 2692
    :cond_0
    :goto_0
    return-void

    .line 2652
    :cond_1
    if-ne p2, v4, :cond_2

    .line 2653
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->val$mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCallsDuringCall(I)V

    .line 2654
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->onStop()V

    .line 2655
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1400(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/android/phone/OutgoingCallBroadcaster;->EXTRA_SIM_ID:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2656
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1400(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1500(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->startSendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1300(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2665
    :catch_0
    move-exception v0

    .line 2666
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ITelephony threw RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2659
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->val$mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCallsDuringCall(I)V

    .line 2660
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->onStop()V

    .line 2661
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1400(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/android/phone/OutgoingCallBroadcaster;->EXTRA_SIM_ID:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2662
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1400(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1500(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->startSendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1300(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2670
    :cond_3
    if-ne p2, v4, :cond_6

    .line 2671
    const-string v1, "feature_marvell_dsds"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2672
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->syncPhoneAudio(I)V
    invoke-static {v1, v4}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1600(Lcom/android/phone/OutgoingCallBroadcaster;I)V

    .line 2674
    :cond_4
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsDsds;->setDefaultSimForVoiceCalls(I)I

    .line 2675
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->onStop()V

    .line 2676
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1400(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/android/phone/OutgoingCallBroadcaster;->DS_EXTRA_SIM_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2677
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1400(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ipcall"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2678
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1500(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/OutgoingCallBroadcaster;->makeIpCallNum(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1502(Lcom/android/phone/OutgoingCallBroadcaster;Ljava/lang/String;)Ljava/lang/String;

    .line 2679
    :cond_5
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1400(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1500(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->startSendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1300(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2681
    :cond_6
    const-string v1, "feature_marvell_dsds"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2682
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->syncPhoneAudio(I)V
    invoke-static {v1, v5}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1600(Lcom/android/phone/OutgoingCallBroadcaster;I)V

    .line 2684
    :cond_7
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsDsds;->setDefaultSimForVoiceCalls(I)I

    .line 2685
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->onStop()V

    .line 2686
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1400(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/android/phone/OutgoingCallBroadcaster;->DS_EXTRA_SIM_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2687
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1400(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ipcall"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2688
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1500(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/OutgoingCallBroadcaster;->makeIpCallNum(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1502(Lcom/android/phone/OutgoingCallBroadcaster;Ljava/lang/String;)Ljava/lang/String;

    .line 2689
    :cond_8
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1400(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster$8;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1500(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->startSendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1300(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
