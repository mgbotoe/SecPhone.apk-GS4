.class Lcom/android/phone/NetworkModePreference$1;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkModePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    .line 103
    packed-switch p1, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$000(Lcom/android/phone/NetworkModePreference;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$000(Lcom/android/phone/NetworkModePreference;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const-string v1, "NetworkModePreference"

    const-string v2, "Should not be here! Do cancel operation!"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 109
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$200(Lcom/android/phone/NetworkModePreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Lcom/android/phone/NetworkModePreference$MyHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkModePreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$000(Lcom/android/phone/NetworkModePreference;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NetworkModePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataConnectionStateChanged exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    .line 119
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$300(Lcom/android/phone/NetworkModePreference;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 120
    const-string v1, "NetworkModePreference"

    const-string v2, "onDataConnectionStateChanged.."

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 121
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$400(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/phone/MobileNetworkSettings;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/phone/MobileNetworkSettings;->removeDialog(I)V

    .line 122
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    #calls: Lcom/android/phone/NetworkModePreference;->changeNetworkType()V
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$500(Lcom/android/phone/NetworkModePreference;)V

    .line 126
    const-string v1, "NetworkModePreference"

    const-string v2, "onDataConnectionStateChanged2.."

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    #calls: Lcom/android/phone/NetworkModePreference;->changeNetworkType()V
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$500(Lcom/android/phone/NetworkModePreference;)V

    goto/16 :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
