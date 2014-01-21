.class Lcom/android/phone/RejectCallWithMsgContent$7;
.super Ljava/lang/Object;
.source "RejectCallWithMsgContent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RejectCallWithMsgContent;->RemindmeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgContent;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsgContent;)V
    .locals 0
    .parameter

    .prologue
    .line 699
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent$7;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v6, 0x0

    .line 701
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 702
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_1

    .line 703
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 704
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    .line 705
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent$7;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/phone/RejectCallWithMsgContent;->access$502(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;)Ljava/lang/String;

    .line 707
    :cond_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 709
    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    :cond_1
    const-string v3, "roaming_auto_dial"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 710
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent$7;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent$7;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/RejectCallWithMsgContent;->access$500(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/RejectCallWithMsgContent;->setRejectCallNumber(Ljava/lang/String;)V

    .line 712
    :cond_2
    packed-switch p2, :pswitch_data_0

    .line 729
    sput v6, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    .line 732
    :goto_0
    sget v3, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    if-eqz v3, :cond_3

    .line 733
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent$7;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent$7;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    invoke-static {v4, v5}, Lcom/android/phone/RejectCallWithMsgContent;->constructReminderLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 734
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 736
    .end local v2           #toast:Landroid/widget/Toast;
    :cond_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 737
    return-void

    .line 714
    :pswitch_0
    const/4 v3, 0x5

    sput v3, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    goto :goto_0

    .line 717
    :pswitch_1
    const/16 v3, 0xf

    sput v3, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    goto :goto_0

    .line 720
    :pswitch_2
    const/16 v3, 0x1e

    sput v3, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    goto :goto_0

    .line 723
    :pswitch_3
    const/16 v3, 0x3c

    sput v3, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    goto :goto_0

    .line 726
    :pswitch_4
    const/16 v3, 0x78

    sput v3, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    goto :goto_0

    .line 712
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
