.class Lcom/android/phone/callsettings/RejectCallWithMsg$13;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;
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
    .line 1072
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$13;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    .line 1075
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1076
    .local v1, id:I
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$13;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick(View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V
    invoke-static {v3, v5, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$400(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V

    .line 1079
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$13;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAllCheck:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3}, Landroid/widget/Checkable;->isChecked()Z

    move-result v2

    .line 1082
    .local v2, selectAllchecked:Z
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$13;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAllCheck:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1084
    packed-switch v1, :pswitch_data_0

    .line 1100
    :goto_0
    :pswitch_0
    return-void

    .line 1086
    :pswitch_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$13;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1087
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$13;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v5, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    if-nez v2, :cond_0

    move v3, v4

    :goto_2
    invoke-virtual {v5, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1086
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1087
    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    .line 1088
    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$13;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->updateDeleteItems()V
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1000(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    goto :goto_0

    .line 1091
    .end local v0           #i:I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$13;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1092
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$13;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1091
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1094
    :cond_2
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$13;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAllCheck:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1095
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$13;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->updateDeleteItems()V
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1000(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    goto :goto_0

    .line 1084
    :pswitch_data_0
    .packed-switch 0x7f0a0233
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
