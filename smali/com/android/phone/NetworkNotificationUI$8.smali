.class Lcom/android/phone/NetworkNotificationUI$8;
.super Ljava/lang/Object;
.source "NetworkNotificationUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkNotificationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$8;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 1049
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1050
    .local v0, id:I
    const-string v3, "NetworkNotificationUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick(View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI$8;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mDataUsage:Landroid/view/View;
    invoke-static {v3}, Lcom/android/phone/NetworkNotificationUI;->access$3600(Lcom/android/phone/NetworkNotificationUI;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3}, Landroid/widget/Checkable;->isChecked()Z

    move-result v2

    .line 1052
    .local v2, isDataUsageChecked:Z
    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI$8;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mAutoUpdate:Landroid/view/View;
    invoke-static {v3}, Lcom/android/phone/NetworkNotificationUI;->access$3700(Lcom/android/phone/NetworkNotificationUI;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    .line 1053
    .local v1, isAutoUpdateChecked:Z
    packed-switch v0, :pswitch_data_0

    .line 1064
    :goto_0
    :pswitch_0
    return-void

    .line 1056
    :pswitch_1
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1057
    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI$8;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v4, 0x1

    #calls: Lcom/android/phone/NetworkNotificationUI;->setRoamingButtonEnable(Z)V
    invoke-static {v3, v4}, Lcom/android/phone/NetworkNotificationUI;->access$3800(Lcom/android/phone/NetworkNotificationUI;Z)V

    goto :goto_0

    .line 1059
    :cond_0
    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI$8;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v4, 0x0

    #calls: Lcom/android/phone/NetworkNotificationUI;->setRoamingButtonEnable(Z)V
    invoke-static {v3, v4}, Lcom/android/phone/NetworkNotificationUI;->access$3800(Lcom/android/phone/NetworkNotificationUI;Z)V

    goto :goto_0

    .line 1053
    :pswitch_data_0
    .packed-switch 0x7f0a0305
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
