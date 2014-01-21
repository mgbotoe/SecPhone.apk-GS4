.class Lcom/android/phone/IMSConferenceCallMain$1;
.super Landroid/os/Handler;
.source "IMSConferenceCallMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IMSConferenceCallMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IMSConferenceCallMain;


# direct methods
.method constructor <init>(Lcom/android/phone/IMSConferenceCallMain;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallMain$1;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 162
    if-nez p1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const-string v1, "[IMSConferenceCallMain]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleMessage] msg.what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 173
    :pswitch_0
    const-string v1, "[IMSConferenceCallMain]"

    const-string v2, "inside IMSConferenceCallMain Handler : finishing activity..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain$1;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/phone/IMSConferenceCallMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 175
    .local v0, mInputMethodMgr:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    .line 176
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain$1;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    #getter for: Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/android/phone/IMSConferenceCallMain;->access$100(Lcom/android/phone/IMSConferenceCallMain;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 178
    :cond_2
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMain;->access$200()Lcom/android/phone/IMSConferenceCallMain;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 179
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMain;->access$200()Lcom/android/phone/IMSConferenceCallMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMain;->finish()V

    goto :goto_0

    .line 168
    .end local v0           #mInputMethodMgr:Landroid/view/inputmethod/InputMethodManager;
    :pswitch_1
    const-string v1, "[IMSConferenceCallMain]"

    const-string v2, "inside mHandler : ENABLE_TOAST :  enabling toast."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain$1;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/IMSConferenceCallMain;->bToastShowInProgress:Z
    invoke-static {v1, v2}, Lcom/android/phone/IMSConferenceCallMain;->access$002(Lcom/android/phone/IMSConferenceCallMain;Z)Z

    goto :goto_0

    .line 184
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain$1;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    #getter for: Lcom/android/phone/IMSConferenceCallMain;->mGenericErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/IMSConferenceCallMain;->access$300(Lcom/android/phone/IMSConferenceCallMain;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain$1;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    #getter for: Lcom/android/phone/IMSConferenceCallMain;->mGenericErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/IMSConferenceCallMain;->access$300(Lcom/android/phone/IMSConferenceCallMain;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 187
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain$1;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/IMSConferenceCallMain;->mGenericErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/phone/IMSConferenceCallMain;->access$302(Lcom/android/phone/IMSConferenceCallMain;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
