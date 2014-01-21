.class Lcom/android/phone/NetworkSetting$15;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkSetting;->showFemtoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 2041
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2043
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "ok clicked. display search dialog"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 2044
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v1, v1, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getOCSGLAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2045
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v2, 0x384

    invoke-virtual {v1, v2}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 2046
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$2700(Lcom/android/phone/NetworkSetting;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 2047
    .local v0, state:I
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->isDataConnectedNow(I)Z
    invoke-static {v1, v0}, Lcom/android/phone/NetworkSetting;->access$3600(Lcom/android/phone/NetworkSetting;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2048
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "ok clicked. disconnecting data"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 2049
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->setMobileDataEnabled(Z)V
    invoke-static {v1, v4}, Lcom/android/phone/NetworkSetting;->access$3200(Lcom/android/phone/NetworkSetting;Z)V

    .line 2050
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v2, -0x2714

    #setter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$2602(Lcom/android/phone/NetworkSetting;I)I

    .line 2051
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->mIsDataDisconnectingFemto:Z
    invoke-static {v1, v3}, Lcom/android/phone/NetworkSetting;->access$3102(Lcom/android/phone/NetworkSetting;Z)Z

    .line 2061
    .end local v0           #state:I
    :goto_0
    return-void

    .line 2053
    .restart local v0       #state:I
    :cond_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "ok clicked. selectCSG"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 2054
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v1, v1, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->selectCsg(Landroid/os/Message;)V

    goto :goto_0

    .line 2058
    .end local v0           #state:I
    :cond_1
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "ok but !getOCSGLAvailable()... fail"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 2059
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v1, v1, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    const v2, 0x7f09044b

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
