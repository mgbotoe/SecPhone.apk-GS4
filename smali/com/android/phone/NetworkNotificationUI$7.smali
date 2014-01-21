.class Lcom/android/phone/NetworkNotificationUI$7;
.super Ljava/lang/Object;
.source "NetworkNotificationUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 950
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 952
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f100062

    invoke-direct {v1, v9, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 953
    .local v1, dialogContext:Landroid/content/Context;
    const-string v9, "layout_inflater"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 954
    .local v2, dialogInflater:Landroid/view/LayoutInflater;
    const v9, 0x7f040072

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 957
    .local v6, layout:Landroid/view/View;
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 959
    packed-switch p2, :pswitch_data_0

    .line 1018
    const-string v9, "NetworkNotificationUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected resource: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 961
    :pswitch_0
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v10, 0x1

    #setter for: Lcom/android/phone/NetworkNotificationUI;->isRoamingDataset:Z
    invoke-static {v9, v10}, Lcom/android/phone/NetworkNotificationUI;->access$3102(Lcom/android/phone/NetworkNotificationUI;Z)Z

    .line 962
    const-string v9, "LGT"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 963
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mDataRoamingUseSwtich:Landroid/widget/Switch;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$3300(Lcom/android/phone/NetworkNotificationUI;)Landroid/widget/Switch;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Switch;->isChecked()Z

    move-result v7

    .line 964
    .local v7, roaming:Z
    const/4 v0, 0x0

    .line 965
    .local v0, background:Z
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mGlobalRoamoing1_9:Z
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$3400(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 966
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mDataRoamingUseSwtich:Landroid/widget/Switch;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$3300(Lcom/android/phone/NetworkNotificationUI;)Landroid/widget/Switch;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 970
    :goto_1
    const-string v9, "NetworkNotificationUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "roaming = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", background = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->setDataRoamingEnabled(Z)V
    invoke-static {v9, v7}, Lcom/android/phone/NetworkNotificationUI;->access$3200(Lcom/android/phone/NetworkNotificationUI;Z)V

    .line 972
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v10, 0x1

    #calls: Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V
    invoke-static {v9, v7, v10}, Lcom/android/phone/NetworkNotificationUI;->access$2800(Lcom/android/phone/NetworkNotificationUI;ZZ)V

    .line 974
    new-instance v4, Landroid/content/Intent;

    const-string v9, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 975
    .local v4, intent:Landroid/content/Intent;
    const-string v9, "ENABLED"

    invoke-virtual {v4, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 976
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 979
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mGlobalRoamoing1_9:Z
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$3400(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 980
    if-nez v7, :cond_2

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f090562

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 991
    .local v8, toastmsg:Ljava/lang/String;
    :goto_2
    const/4 v9, 0x1

    invoke-static {v1, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 992
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.settings.ACTION_DATA_ROAMING_CONFIRM"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 993
    .local v3, i:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 994
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mGlobalRoamoing1_9:Z
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$3400(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 995
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.android.settings.ACTION_DATA_ROAMING_POSITIVE"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 996
    .local v5, intentPositive:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 968
    .end local v3           #i:Landroid/content/Intent;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #intentPositive:Landroid/content/Intent;
    .end local v8           #toastmsg:Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mBackGroundData:Landroid/view/View;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$3500(Lcom/android/phone/NetworkNotificationUI;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Checkable;

    invoke-interface {v9}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    goto/16 :goto_1

    .line 981
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_2
    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    const/4 v9, 0x1

    if-ne v0, v9, :cond_3

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f090589

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #toastmsg:Ljava/lang/String;
    goto :goto_2

    .line 982
    .end local v8           #toastmsg:Ljava/lang/String;
    :cond_3
    const/4 v9, 0x1

    if-ne v7, v9, :cond_4

    if-nez v0, :cond_4

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f09058a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #toastmsg:Ljava/lang/String;
    goto :goto_2

    .line 983
    .end local v8           #toastmsg:Ljava/lang/String;
    :cond_4
    const-string v8, "error"

    .restart local v8       #toastmsg:Ljava/lang/String;
    goto :goto_2

    .line 985
    .end local v8           #toastmsg:Ljava/lang/String;
    :cond_5
    const/4 v9, 0x1

    if-ne v7, v9, :cond_6

    const/4 v9, 0x1

    if-ne v0, v9, :cond_6

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f090569

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #toastmsg:Ljava/lang/String;
    goto :goto_2

    .line 986
    .end local v8           #toastmsg:Ljava/lang/String;
    :cond_6
    const/4 v9, 0x1

    if-ne v7, v9, :cond_7

    if-nez v0, :cond_7

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f09056a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #toastmsg:Ljava/lang/String;
    goto/16 :goto_2

    .line 987
    .end local v8           #toastmsg:Ljava/lang/String;
    :cond_7
    if-nez v7, :cond_8

    if-nez v0, :cond_8

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f09056b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #toastmsg:Ljava/lang/String;
    goto/16 :goto_2

    .line 988
    .end local v8           #toastmsg:Ljava/lang/String;
    :cond_8
    if-nez v7, :cond_9

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f09056b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #toastmsg:Ljava/lang/String;
    goto/16 :goto_2

    .line 989
    .end local v8           #toastmsg:Ljava/lang/String;
    :cond_9
    const-string v8, "error"

    .restart local v8       #toastmsg:Ljava/lang/String;
    goto/16 :goto_2

    .line 1000
    .end local v0           #background:Z
    .end local v4           #intent:Landroid/content/Intent;
    .end local v7           #roaming:Z
    .end local v8           #toastmsg:Ljava/lang/String;
    :cond_a
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v10, 0x1

    #calls: Lcom/android/phone/NetworkNotificationUI;->setDataRoamingEnabled(Z)V
    invoke-static {v9, v10}, Lcom/android/phone/NetworkNotificationUI;->access$3200(Lcom/android/phone/NetworkNotificationUI;Z)V

    .line 1001
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v10, 0x1

    const/4 v11, 0x1

    #calls: Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/phone/NetworkNotificationUI;->access$2800(Lcom/android/phone/NetworkNotificationUI;ZZ)V

    goto/16 :goto_0

    .line 1006
    :pswitch_1
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v10, 0x0

    #calls: Lcom/android/phone/NetworkNotificationUI;->setDataRoamingEnabled(Z)V
    invoke-static {v9, v10}, Lcom/android/phone/NetworkNotificationUI;->access$3200(Lcom/android/phone/NetworkNotificationUI;Z)V

    .line 1007
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v10, 0x0

    const/4 v11, 0x1

    #calls: Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/phone/NetworkNotificationUI;->access$2800(Lcom/android/phone/NetworkNotificationUI;ZZ)V

    .line 1008
    const-string v9, "LGT"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1009
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f090562

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v1, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 1011
    :cond_b
    const-string v9, "SKT"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1012
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.settings.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1013
    .restart local v3       #i:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 959
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
