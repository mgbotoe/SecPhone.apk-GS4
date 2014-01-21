.class Lcom/android/phone/callsettings/PhoneNumberLocator$1;
.super Landroid/os/Handler;
.source "PhoneNumberLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/PhoneNumberLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 129
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLanguageChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocator;Ljava/lang/String;)V

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocator;->restartService()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    .line 133
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->dismiss()V

    .line 136
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocator;->refreshVersion()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$300(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    const-string v1, "handleMessage, EVENT_DOWNLOAD_FINISH"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$400(Lcom/android/phone/callsettings/PhoneNumberLocator;Ljava/lang/String;Z)V

    .line 141
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocator;->restartService()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    .line 142
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->dismiss()V

    .line 145
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocator;->refreshVersion()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$300(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    goto :goto_0

    .line 153
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    const-string v1, "handleMessage, EVENT_HTTP_EXCEPTION"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$400(Lcom/android/phone/callsettings/PhoneNumberLocator;Ljava/lang/String;Z)V

    .line 154
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocator;->restartService()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    .line 155
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->dismiss()V

    .line 158
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 163
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    const-string v1, "handleMessage, EVENT_FILE_EXCEPTION"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$400(Lcom/android/phone/callsettings/PhoneNumberLocator;Ljava/lang/String;Z)V

    .line 164
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->dismiss()V

    .line 167
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 172
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    const-string v1, "handleMessage, EVENT_VERSION_SAME"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$400(Lcom/android/phone/callsettings/PhoneNumberLocator;Ljava/lang/String;Z)V

    .line 173
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocator;->restartService()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    .line 174
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->dismiss()V

    .line 177
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 183
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    const-string v1, "handleMessage, EVENT_COPY_FINISH"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$400(Lcom/android/phone/callsettings/PhoneNumberLocator;Ljava/lang/String;Z)V

    .line 184
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->dismiss()V

    .line 187
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocator;->refreshVersion()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$300(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    goto/16 :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
