.class Lcom/android/phone/InCallScreen$71;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->DuosPhoneSwitch()V
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
    .line 12218
    iput-object p1, p0, Lcom/android/phone/InCallScreen$71;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "di"
    .parameter "pos"

    .prologue
    const/4 v2, 0x0

    .line 12220
    packed-switch p2, :pswitch_data_0

    .line 12235
    :goto_0
    return-void

    .line 12222
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen$71;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$3300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->holdCall(Lcom/android/internal/telephony/Phone;)Z

    .line 12224
    iget-object v0, p0, Lcom/android/phone/InCallScreen$71;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mOtherPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$5000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 12225
    iget-object v0, p0, Lcom/android/phone/InCallScreen$71;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mOtherPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$5000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->retrieveCall(Lcom/android/internal/telephony/Phone;)Z

    .line 12227
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen$71;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, p0, Lcom/android/phone/InCallScreen$71;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mOtherPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$5000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->changePhone(Lcom/android/internal/telephony/Phone;)V

    .line 12228
    iget-object v0, p0, Lcom/android/phone/InCallScreen$71;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I
    invoke-static {v0, v2}, Lcom/android/phone/InCallScreen;->access$6202(Lcom/android/phone/InCallScreen;I)I

    goto :goto_0

    .line 12231
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen$71;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$3300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Phone;)Z

    .line 12232
    iget-object v0, p0, Lcom/android/phone/InCallScreen$71;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I
    invoke-static {v0, v2}, Lcom/android/phone/InCallScreen;->access$6202(Lcom/android/phone/InCallScreen;I)I

    goto :goto_0

    .line 12220
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
