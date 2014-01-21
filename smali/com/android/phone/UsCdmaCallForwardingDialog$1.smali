.class Lcom/android/phone/UsCdmaCallForwardingDialog$1;
.super Landroid/os/Handler;
.source "UsCdmaCallForwardingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UsCdmaCallForwardingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/UsCdmaCallForwardingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$1;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$1;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    const-string v1, "set_prefered_network"

    #calls: Lcom/android/phone/UsCdmaCallForwardingDialog;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$000(Lcom/android/phone/UsCdmaCallForwardingDialog;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$1;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/phone/UsCdmaCallForwardingDialog;->showDialog(I)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
