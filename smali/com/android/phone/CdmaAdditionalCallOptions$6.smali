.class Lcom/android/phone/CdmaAdditionalCallOptions$6;
.super Landroid/os/Handler;
.source "CdmaAdditionalCallOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaAdditionalCallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$6;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 531
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage() msg.what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$100(Ljava/lang/String;)V

    .line 532
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 541
    :goto_0
    return-void

    .line 535
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions$6;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    #calls: Lcom/android/phone/CdmaAdditionalCallOptions;->handleSetCWMessage()V
    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1600(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    goto :goto_0

    .line 532
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch
.end method
