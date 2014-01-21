.class Lcom/android/phone/PreferredNetworks$1;
.super Landroid/os/Handler;
.source "PreferredNetworks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PreferredNetworks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PreferredNetworks;


# direct methods
.method constructor <init>(Lcom/android/phone/PreferredNetworks;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const v8, 0x7f0906aa

    const/4 v7, 0x0

    .line 64
    const-string v4, "PreferredNetworks"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ilkwon.moon:: msg.what = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v4, "PreferredNetworks"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ilkwon.moon:: msg.obj = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 68
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 69
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 70
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    #getter for: Lcom/android/phone/PreferredNetworks;->isDialogShown:Z
    invoke-static {v4}, Lcom/android/phone/PreferredNetworks;->access$000(Lcom/android/phone/PreferredNetworks;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    .local v3, err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 73
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    const v5, 0x7f090697

    invoke-virtual {v4, v5}, Lcom/android/phone/PreferredNetworks;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 74
    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 75
    const v4, 0x7f090021

    new-instance v5, Lcom/android/phone/PreferredNetworks$1$1;

    invoke-direct {v5, p0}, Lcom/android/phone/PreferredNetworks$1$1;-><init>(Lcom/android/phone/PreferredNetworks$1;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 81
    .local v1, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_2

    .line 82
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-virtual {v4, v8}, Lcom/android/phone/PreferredNetworks;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 86
    :cond_1
    :goto_1
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_1

    .line 84
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-virtual {v4, v8}, Lcom/android/phone/PreferredNetworks;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 89
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v3           #err_builder:Landroid/app/AlertDialog$Builder;
    :cond_3
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    #getter for: Lcom/android/phone/PreferredNetworks;->isDialogShown:Z
    invoke-static {v4}, Lcom/android/phone/PreferredNetworks;->access$000(Lcom/android/phone/PreferredNetworks;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 91
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/phone/PreferredNetworks;->dismissDialog(I)V

    .line 92
    const-string v4, "PreferredNetworks"

    const-string v5, "dismissDialog ############."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/phone/PreferredNetworks;->removeDialog(I)V

    .line 94
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    const/4 v5, 0x0

    #setter for: Lcom/android/phone/PreferredNetworks;->isDialogShown:Z
    invoke-static {v4, v5}, Lcom/android/phone/PreferredNetworks;->access$002(Lcom/android/phone/PreferredNetworks;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/PreferredNetworks;->displayList(Landroid/os/AsyncResult;)V
    invoke-static {v5, v4}, Lcom/android/phone/PreferredNetworks;->access$100(Lcom/android/phone/PreferredNetworks;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "PreferredNetworks"

    const-string v5, "error happen ############."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-virtual {v4}, Lcom/android/phone/PreferredNetworks;->finish()V

    goto :goto_2

    .line 66
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
