.class Lcom/android/phone/RemoveAutoRejectItemDialog$1;
.super Landroid/os/Handler;
.source "RemoveAutoRejectItemDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RemoveAutoRejectItemDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RemoveAutoRejectItemDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/RemoveAutoRejectItemDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/phone/RemoveAutoRejectItemDialog$1;->this$0:Lcom/android/phone/RemoveAutoRejectItemDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 65
    :pswitch_0
    const-string v0, "RemoveAutoRejectItemDialog"

    const-string v1, "deleteAutoRejectNumber"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/android/phone/RemoveAutoRejectItemDialog$1;->this$0:Lcom/android/phone/RemoveAutoRejectItemDialog;

    iget-object v1, p0, Lcom/android/phone/RemoveAutoRejectItemDialog$1;->this$0:Lcom/android/phone/RemoveAutoRejectItemDialog;

    #getter for: Lcom/android/phone/RemoveAutoRejectItemDialog;->auto_reject_number_id:J
    invoke-static {v1}, Lcom/android/phone/RemoveAutoRejectItemDialog;->access$000(Lcom/android/phone/RemoveAutoRejectItemDialog;)J

    move-result-wide v1

    #calls: Lcom/android/phone/RemoveAutoRejectItemDialog;->deleteAutoRejectNumber(J)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/RemoveAutoRejectItemDialog;->access$100(Lcom/android/phone/RemoveAutoRejectItemDialog;J)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
