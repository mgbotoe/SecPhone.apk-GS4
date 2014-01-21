.class Lcom/android/phone/CdmaCallForwardOptions$3;
.super Landroid/os/Handler;
.source "CdmaCallForwardOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaCallForwardOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaCallForwardOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaCallForwardOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 637
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 638
    .local v0, ar:Landroid/os/AsyncResult;
    const/16 v2, 0x64

    .line 639
    .local v2, status:I
    invoke-static {}, Lcom/android/phone/CdmaCallForwardOptions;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGetAllCFOptionsComplete: ar = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mag.what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Ljava/lang/String;)V

    .line 641
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 697
    :goto_0
    return-void

    .line 643
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    iget v4, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/phone/CdmaCallForwardOptions;->handleGetCFMessage(Landroid/os/AsyncResult;I)I
    invoke-static {v3, v0, v4}, Lcom/android/phone/CdmaCallForwardOptions;->access$600(Lcom/android/phone/CdmaCallForwardOptions;Landroid/os/AsyncResult;I)I

    move-result v2

    .line 644
    const/4 v1, -0x1

    .line 645
    .local v1, nextReason:I
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_1

    .line 675
    :cond_1
    :goto_1
    :pswitch_1
    const/16 v3, 0x64

    if-eq v2, v3, :cond_5

    .line 676
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    sget-object v4, Lcom/android/phone/CdmaCallForwardOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    #calls: Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V
    invoke-static {v3, v4, v2}, Lcom/android/phone/CdmaCallForwardOptions;->access$700(Lcom/android/phone/CdmaCallForwardOptions;Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V

    goto :goto_0

    .line 647
    :pswitch_2
    invoke-static {}, Lcom/android/phone/CdmaCallForwardOptions;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "mGetAllOptionsComplete: CFU query done, querying CFB."

    #calls: Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Ljava/lang/String;)V

    .line 648
    :cond_2
    const/4 v1, 0x1

    .line 649
    goto :goto_1

    .line 651
    :pswitch_3
    invoke-static {}, Lcom/android/phone/CdmaCallForwardOptions;->access$000()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 652
    const-string v3, "mGetAllOptionsComplete: CFB query done, querying CFNRy."

    #calls: Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Ljava/lang/String;)V

    .line 654
    :cond_3
    const/4 v1, 0x2

    .line 655
    goto :goto_1

    .line 657
    :pswitch_4
    invoke-static {}, Lcom/android/phone/CdmaCallForwardOptions;->access$000()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 658
    const-string v3, "mGetAllOptionsComplete: CFNRy query done, querying CFNRc."

    #calls: Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Ljava/lang/String;)V

    .line 660
    :cond_4
    const/4 v1, 0x3

    .line 661
    goto :goto_1

    .line 663
    :pswitch_5
    invoke-static {}, Lcom/android/phone/CdmaCallForwardOptions;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 664
    const-string v3, "mGetAllOptionsComplete: CFNRc query done, querying CLIR."

    #calls: Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Ljava/lang/String;)V

    goto :goto_1

    .line 668
    :pswitch_6
    invoke-static {}, Lcom/android/phone/CdmaCallForwardOptions;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 669
    const-string v3, "mGetAllOptionsComplete: CFNRc query done, querying CANCEL ALL."

    #calls: Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Ljava/lang/String;)V

    goto :goto_1

    .line 678
    :cond_5
    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    .line 679
    const-string v3, "mGetAllOptionsComplete: nextReason != -1"

    #calls: Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :cond_6
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    #setter for: Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z
    invoke-static {v3, v5}, Lcom/android/phone/CdmaCallForwardOptions;->access$802(Lcom/android/phone/CdmaCallForwardOptions;Z)Z

    .line 683
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    #setter for: Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z
    invoke-static {v3, v5}, Lcom/android/phone/CdmaCallForwardOptions;->access$902(Lcom/android/phone/CdmaCallForwardOptions;Z)Z

    .line 684
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    #setter for: Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z
    invoke-static {v3, v5}, Lcom/android/phone/CdmaCallForwardOptions;->access$1002(Lcom/android/phone/CdmaCallForwardOptions;Z)Z

    .line 685
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    #setter for: Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z
    invoke-static {v3, v5}, Lcom/android/phone/CdmaCallForwardOptions;->access$1102(Lcom/android/phone/CdmaCallForwardOptions;Z)Z

    .line 686
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    #setter for: Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z
    invoke-static {v3, v5}, Lcom/android/phone/CdmaCallForwardOptions;->access$1202(Lcom/android/phone/CdmaCallForwardOptions;Z)Z

    .line 687
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    #setter for: Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z
    invoke-static {v3, v5}, Lcom/android/phone/CdmaCallForwardOptions;->access$1302(Lcom/android/phone/CdmaCallForwardOptions;Z)Z

    .line 688
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    sget-object v4, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    #calls: Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V
    invoke-static {v3, v4}, Lcom/android/phone/CdmaCallForwardOptions;->access$1400(Lcom/android/phone/CdmaCallForwardOptions;Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    goto/16 :goto_0

    .line 641
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch

    .line 645
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method
