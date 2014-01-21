.class Lcom/android/phone/callsettings/RejectCallWithMsg$6;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;->softkeyLeftRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 444
    const/4 v2, 0x0

    .line 446
    .local v2, isDeleted:Z
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_3

    .line 447
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 448
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 449
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fragment finished. We ignore deleteRejectMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$400(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V

    .line 479
    :cond_0
    :goto_1
    return-void

    .line 452
    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1100(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 453
    .local v0, del_id:I
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->deleteRejectMessage(I)V
    invoke-static {v3, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1200(Lcom/android/phone/callsettings/RejectCallWithMsg;I)V

    .line 454
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$800(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 455
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1100(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 456
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$900(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 457
    const/4 v2, 0x1

    .line 458
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage()V
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1300(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    .line 446
    .end local v0           #del_id:I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 462
    :cond_3
    if-eqz v2, :cond_0

    .line 467
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const v5, 0x7f09035a

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1400(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)V

    .line 468
    const-string v3, "feature_remind_me_later_support "

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 469
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1500(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;->notifyDataSetInvalidated()V

    .line 470
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;
    invoke-static {v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1500(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 475
    :goto_2
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 476
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage()V
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1300(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    .line 477
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$300(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 478
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 472
    :cond_4
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1600(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    .line 473
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1600(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2
.end method
