.class Lcom/android/phone/callsettings/IpCall$5;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall;->softkeyLeftRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpCall;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 470
    const/4 v2, 0x0

    .line 472
    .local v2, isDeleted:Z
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 473
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 474
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$800(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 475
    .local v0, del_id:I
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->deleteIpNumber(I)V
    invoke-static {v3, v0}, Lcom/android/phone/callsettings/IpCall;->access$900(Lcom/android/phone/callsettings/IpCall;I)V

    .line 476
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$1000(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->access$500(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 477
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    const-string v4, ""

    #calls: Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/IpCall;->access$600(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 478
    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$500(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 479
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$800(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 480
    const/4 v2, 0x1

    .line 481
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->updateIpNumberList(Z)V
    invoke-static {v3, v7}, Lcom/android/phone/callsettings/IpCall;->access$1100(Lcom/android/phone/callsettings/IpCall;Z)V

    .line 472
    .end local v0           #del_id:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 484
    :cond_2
    if-nez v2, :cond_4

    .line 485
    const-string v3, "ip_call_gsm"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 486
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->updateIpNumberList(Z)V
    invoke-static {v3, v6}, Lcom/android/phone/callsettings/IpCall;->access$1100(Lcom/android/phone/callsettings/IpCall;Z)V

    .line 498
    :cond_3
    :goto_1
    return-void

    .line 491
    :cond_4
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    const v5, 0x7f09035a

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/IpCall;->access$1200(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 492
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$400(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->notifyDataSetInvalidated()V

    .line 493
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 494
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->access$400(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 495
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->updateIpNumberList(Z)V
    invoke-static {v3, v6}, Lcom/android/phone/callsettings/IpCall;->access$1100(Lcom/android/phone/callsettings/IpCall;Z)V

    .line 496
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$200(Lcom/android/phone/callsettings/IpCall;)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 497
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$5;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method
