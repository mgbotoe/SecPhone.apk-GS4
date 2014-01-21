.class Lcom/android/phone/InCallScreen$75;
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
    .line 12396
    iput-object p1, p0, Lcom/android/phone/InCallScreen$75;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 12398
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 12399
    .local v7, action:Ljava/lang/String;
    const-string v0, "com.uplus.agent.action.VT_REQUEST"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12401
    const-string v0, "VT_PHONE_NUMBER_LIST"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12402
    .local v2, vtNumber:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v6, 0x3

    move-object v0, p1

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;I)I

    .line 12409
    .end local v2           #vtNumber:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 12403
    :cond_1
    const-string v0, "com.uplus.agent.action.VTCALL_ACCEPT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12405
    iget-object v0, p0, Lcom/android/phone/InCallScreen$75;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$6400(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 12406
    :cond_2
    const-string v0, "com.uplus.agent.action.CONVERT_CALL"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12407
    iget-object v0, p0, Lcom/android/phone/InCallScreen$75;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->onModifyCall(I)V
    invoke-static {v0, v4}, Lcom/android/phone/InCallScreen;->access$6600(Lcom/android/phone/InCallScreen;I)V

    goto :goto_0
.end method
