.class Lcom/android/phone/CallMotion$1;
.super Ljava/lang/Object;
.source "CallMotion.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallMotion;


# direct methods
.method constructor <init>(Lcom/android/phone/CallMotion;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 8
    .parameter "motionEvent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 49
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v1

    .line 50
    .local v1, motion:I
    const-string v3, "CallMotion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "motion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 52
    sparse-switch v1, :sswitch_data_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 54
    :sswitch_0
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mMotionType:I
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$000(Lcom/android/phone/CallMotion;)I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 55
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 57
    .local v0, foregroundPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneGlobals;->getNotifier(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/CallNotifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneGlobals;->getRinger(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/phone/Ringer;->setIsDone(Z)V

    .line 62
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneGlobals;->getNotifier(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/CallNotifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto :goto_0

    .line 64
    .end local v0           #foregroundPhone:Lcom/android/internal/telephony/Phone;
    :cond_1
    const-string v3, "sec_product_feature_common_dsds_support"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 65
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v6

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v7

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_0

    .line 72
    :cond_3
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 73
    const/4 v2, 0x0

    .local v2, simSlotNum:I
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 77
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mRinger:Lcom/android/phone/Ringer;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$200(Lcom/android/phone/CallMotion;)Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/phone/Ringer;->setIsDone(Z)V

    .line 79
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_0

    .line 73
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 84
    .end local v2           #simSlotNum:I
    :cond_5
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mRinger:Lcom/android/phone/Ringer;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$200(Lcom/android/phone/CallMotion;)Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/phone/Ringer;->setIsDone(Z)V

    .line 89
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_0

    .line 96
    :sswitch_1
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mMotionType:I
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$000(Lcom/android/phone/CallMotion;)I

    move-result v3

    const/16 v4, 0x56

    if-ne v3, v4, :cond_0

    .line 97
    const-string v3, "sec_product_feature_common_dsds_support"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 98
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v6

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 100
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    iget-object v3, v3, Lcom/android/phone/CallMotion;->mNotiFlash:Lcom/sec/android/hardware/SecHardwareInterface;

    invoke-static {v6}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 101
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mRinger:Lcom/android/phone/Ringer;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$200(Lcom/android/phone/CallMotion;)Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopNotiFlash()V

    goto/16 :goto_0

    .line 102
    :cond_6
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v7

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    iget-object v3, v3, Lcom/android/phone/CallMotion;->mNotiFlash:Lcom/sec/android/hardware/SecHardwareInterface;

    invoke-static {v6}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 105
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mRinger:Lcom/android/phone/Ringer;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$200(Lcom/android/phone/CallMotion;)Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopNotiFlash()V

    goto/16 :goto_0

    .line 107
    :cond_7
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 108
    const/4 v2, 0x0

    .restart local v2       #simSlotNum:I
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 109
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 111
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    iget-object v3, v3, Lcom/android/phone/CallMotion;->mNotiFlash:Lcom/sec/android/hardware/SecHardwareInterface;

    invoke-static {v6}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 112
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mRinger:Lcom/android/phone/Ringer;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$200(Lcom/android/phone/CallMotion;)Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopNotiFlash()V

    goto/16 :goto_0

    .line 108
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 118
    .end local v2           #simSlotNum:I
    :cond_9
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 119
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 120
    .restart local v0       #foregroundPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneGlobals;->getNotifier(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/CallNotifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    iget-object v3, v3, Lcom/android/phone/CallMotion;->mNotiFlash:Lcom/sec/android/hardware/SecHardwareInterface;

    invoke-static {v6}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 123
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneGlobals;->getRinger(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopNotiFlash()V

    goto/16 :goto_0

    .line 127
    .end local v0           #foregroundPhone:Lcom/android/internal/telephony/Phone;
    :cond_a
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    iget-object v3, v3, Lcom/android/phone/CallMotion;->mNotiFlash:Lcom/sec/android/hardware/SecHardwareInterface;

    invoke-static {v6}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 130
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mRinger:Lcom/android/phone/Ringer;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$200(Lcom/android/phone/CallMotion;)Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopNotiFlash()V

    goto/16 :goto_0

    .line 52
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x56 -> :sswitch_1
    .end sparse-switch
.end method
