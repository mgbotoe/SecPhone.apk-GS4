.class Lcom/android/phone/CallCardCovered$1;
.super Landroid/os/Handler;
.source "CallCardCovered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCardCovered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCardCovered;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCardCovered;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/phone/CallCardCovered$1;->this$0:Lcom/android/phone/CallCardCovered;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 257
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 297
    const-string v1, "CallCardCovered"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler: unexpected message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 259
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/CallCardCovered$1;->this$0:Lcom/android/phone/CallCardCovered;

    #calls: Lcom/android/phone/CallCardCovered;->CallEndTimeBlink()V
    invoke-static {v1}, Lcom/android/phone/CallCardCovered;->access$000(Lcom/android/phone/CallCardCovered;)V

    goto :goto_0

    .line 262
    :sswitch_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/android/phone/CallCardCovered$1;->this$0:Lcom/android/phone/CallCardCovered;

    const-string v2, "Stop animation in IDLE or ACTIVE state!"

    #calls: Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallCardCovered;->access$100(Lcom/android/phone/CallCardCovered;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/android/phone/CallCardCovered$1;->this$0:Lcom/android/phone/CallCardCovered;

    #calls: Lcom/android/phone/CallCardCovered;->destroyImageCache()V
    invoke-static {v1}, Lcom/android/phone/CallCardCovered;->access$200(Lcom/android/phone/CallCardCovered;)V

    .line 266
    const-string v1, "caller_animation_small_images"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/phone/CallCardCovered$1;->this$0:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v1}, Lcom/android/phone/CallCardCovered;->resetCallCardAnimation()V

    goto :goto_0

    .line 273
    :cond_1
    const-string v1, "caller_animation_small_images"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    iget-object v1, p0, Lcom/android/phone/CallCardCovered$1;->this$0:Lcom/android/phone/CallCardCovered;

    #calls: Lcom/android/phone/CallCardCovered;->setSmallCallCardAnimation()V
    invoke-static {v1}, Lcom/android/phone/CallCardCovered;->access$300(Lcom/android/phone/CallCardCovered;)V

    .line 279
    :goto_1
    const/16 v1, 0x82

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/CallCardCovered$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallCardCovered$1;->this$0:Lcom/android/phone/CallCardCovered;

    #calls: Lcom/android/phone/CallCardCovered;->setCallCardAnimation()V
    invoke-static {v1}, Lcom/android/phone/CallCardCovered;->access$400(Lcom/android/phone/CallCardCovered;)V

    goto :goto_1

    .line 282
    :sswitch_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/phone/CallCardCovered$1;->this$0:Lcom/android/phone/CallCardCovered;

    #getter for: Lcom/android/phone/CallCardCovered;->mCurrentPeriodMarkIndex:I
    invoke-static {v1}, Lcom/android/phone/CallCardCovered;->access$500(Lcom/android/phone/CallCardCovered;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/CallCardCovered$1;->this$0:Lcom/android/phone/CallCardCovered;

    #getter for: Lcom/android/phone/CallCardCovered;->mPeriodMarkList:[I
    invoke-static {v2}, Lcom/android/phone/CallCardCovered;->access$600(Lcom/android/phone/CallCardCovered;)[I

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_3

    .line 284
    iget-object v1, p0, Lcom/android/phone/CallCardCovered$1;->this$0:Lcom/android/phone/CallCardCovered;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/CallCardCovered;->mCurrentPeriodMarkIndex:I
    invoke-static {v1, v2}, Lcom/android/phone/CallCardCovered;->access$502(Lcom/android/phone/CallCardCovered;I)I

    .line 286
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallCardCovered$1;->this$0:Lcom/android/phone/CallCardCovered;

    #getter for: Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/phone/CallCardCovered;->access$700(Lcom/android/phone/CallCardCovered;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/CallCardCovered$1;->this$0:Lcom/android/phone/CallCardCovered;

    #getter for: Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/phone/CallCardCovered;->access$700(Lcom/android/phone/CallCardCovered;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCardCovered$1;->this$0:Lcom/android/phone/CallCardCovered;

    #getter for: Lcom/android/phone/CallCardCovered;->mPeriodMarkList:[I
    invoke-static {v2}, Lcom/android/phone/CallCardCovered;->access$600(Lcom/android/phone/CallCardCovered;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallCardCovered$1;->this$0:Lcom/android/phone/CallCardCovered;

    invoke-static {v3}, Lcom/android/phone/CallCardCovered;->access$508(Lcom/android/phone/CallCardCovered;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    :cond_4
    const/16 v1, 0x8c

    const-wide/16 v2, 0x190

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/CallCardCovered$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 290
    :sswitch_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 291
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/phone/CallCardCovered$1;->this$0:Lcom/android/phone/CallCardCovered;

    iget-object v2, p0, Lcom/android/phone/CallCardCovered$1;->this$0:Lcom/android/phone/CallCardCovered;

    #getter for: Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;
    invoke-static {v2}, Lcom/android/phone/CallCardCovered;->access$800(Lcom/android/phone/CallCardCovered;)Lcom/android/phone/InCallContactPhoto;

    move-result-object v2

    const v3, 0x7f0201e0

    #calls: Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/CallCardCovered;->access$900(Lcom/android/phone/CallCardCovered;Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    .line 257
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_3
        0x82 -> :sswitch_1
        0x8c -> :sswitch_2
    .end sparse-switch
.end method
