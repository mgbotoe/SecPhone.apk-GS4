.class Lcom/android/phone/FdnSetting$1;
.super Landroid/os/Handler;
.source "FdnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FdnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FdnSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const v11, 0x7f09007a

    const v10, 0x7f090133

    const v9, 0x7f09012f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 307
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4}, Lcom/android/phone/FdnSetting;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 308
    const-string v4, "FdnSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFDNHandler() Fragment finished. Ignore handler message :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", msg.what:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 317
    :sswitch_0
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v5, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v5}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v5

    #setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$002(Lcom/android/phone/FdnSetting;I)I

    .line 318
    const-string v4, "FdnSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAttempt in EVENT_PIN2_ENTRY_COMPLETE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 320
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 321
    .local v0, ar:Landroid/os/AsyncResult;
    const-string v4, "FdnSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ar.exception case in mFDNHandler = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 322
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_8

    .line 324
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_7

    .line 325
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 326
    .local v1, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_5

    .line 332
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4}, Lcom/android/phone/FdnSetting;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 334
    .local v2, err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 335
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f090173

    invoke-virtual {v4, v5}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 337
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f09016f

    invoke-virtual {v4, v5}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 339
    const v4, 0x7f090021

    new-instance v5, Lcom/android/phone/FdnSetting$1$1;

    invoke-direct {v5, p0}, Lcom/android/phone/FdnSetting$1$1;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 347
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 348
    new-instance v4, Lcom/android/phone/FdnSetting$1$2;

    invoke-direct {v4, p0}, Lcom/android/phone/FdnSetting$1$2;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 358
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 360
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 361
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 362
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mpukState:Z
    invoke-static {v4, v7}, Lcom/android/phone/FdnSetting;->access$502(Lcom/android/phone/FdnSetting;Z)Z

    .line 363
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    const v5, 0x7f090175

    invoke-virtual {v4, v5}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 364
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget v4, Lcom/android/phone/FdnSetting;->mSimId:I

    if-nez v4, :cond_4

    .line 365
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    const v5, 0x7f090177

    invoke-virtual {v4, v5}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 369
    :goto_1
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v4, v7}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 370
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 394
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v2           #err_builder:Landroid/app/AlertDialog$Builder;
    :goto_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.FDN_MODE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "sec_product_feature_common_dsds_support"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 397
    :cond_2
    sget v4, Lcom/android/phone/FdnSetting;->mSimId:I

    if-ne v4, v7, :cond_3

    .line 398
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.FDN2_MODE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->getApplicationContext()Landroid/content/Context;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$900(Lcom/android/phone/FdnSetting;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 408
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$1000(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 367
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v1       #ce:Lcom/android/internal/telephony/CommandException;
    .restart local v2       #err_builder:Landroid/app/AlertDialog$Builder;
    :cond_4
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    const v5, 0x7f090176

    invoke-virtual {v4, v5}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    goto :goto_1

    .line 373
    .end local v2           #err_builder:Landroid/app/AlertDialog$Builder;
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_6

    .line 374
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f09014b

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;I)V

    goto :goto_2

    .line 376
    :cond_6
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v11}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;I)V

    goto :goto_2

    .line 379
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_7
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v11}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;I)V

    goto :goto_2

    .line 382
    :cond_8
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 383
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 384
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mpukState:Z
    invoke-static {v4, v8}, Lcom/android/phone/FdnSetting;->access$502(Lcom/android/phone/FdnSetting;Z)Z

    .line 385
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 386
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 388
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "puk2_state"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 400
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_9
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 401
    sget v4, Lcom/android/phone/FdnSetting;->mSimId:I

    if-ne v4, v7, :cond_a

    .line 402
    const-string v4, "ICC_TYPE"

    const-string v5, "GSM"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 404
    :cond_a
    const-string v4, "ICC_TYPE"

    const-string v5, "CDMA"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 416
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_1
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v5, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v5}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v5

    #setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$002(Lcom/android/phone/FdnSetting;I)I

    .line 417
    const-string v4, "FdnSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAttempt in EVENT_PIN2_CHANGE_COMPLETE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 419
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 420
    .restart local v0       #ar:Landroid/os/AsyncResult;
    const-string v4, "FdnSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ar.exception in EVENT_PIN2_CHANGE_COMPLETE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 422
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_12

    .line 423
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 424
    .restart local v1       #ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_c

    .line 428
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4}, Lcom/android/phone/FdnSetting;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 430
    .restart local v2       #err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 431
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f090173

    invoke-virtual {v4, v5}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 433
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f09016f

    invoke-virtual {v4, v5}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 435
    const v4, 0x7f090021

    new-instance v5, Lcom/android/phone/FdnSetting$1$3;

    invoke-direct {v5, p0}, Lcom/android/phone/FdnSetting$1$3;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 444
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 445
    new-instance v4, Lcom/android/phone/FdnSetting$1$4;

    invoke-direct {v4, p0}, Lcom/android/phone/FdnSetting$1$4;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 454
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 456
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v4, v7}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 458
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 459
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 460
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mpukState:Z
    invoke-static {v4, v7}, Lcom/android/phone/FdnSetting;->access$502(Lcom/android/phone/FdnSetting;Z)Z

    .line 461
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    const v5, 0x7f090175

    invoke-virtual {v4, v5}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 462
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget v4, Lcom/android/phone/FdnSetting;->mSimId:I

    if-nez v4, :cond_b

    .line 463
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    const v5, 0x7f090177

    invoke-virtual {v4, v5}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 466
    :goto_4
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 467
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v4, v7}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 468
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$1100(Lcom/android/phone/FdnSetting;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "puk2_state"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 465
    :cond_b
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    const v5, 0x7f090176

    invoke-virtual {v4, v5}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    goto :goto_4

    .line 472
    .end local v2           #err_builder:Landroid/app/AlertDialog$Builder;
    :cond_c
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v4, v5, :cond_d

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_e

    .line 475
    :cond_d
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v11}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;I)V

    .line 477
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v5, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v5}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v5

    #setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$002(Lcom/android/phone/FdnSetting;I)I

    .line 478
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$1200(Lcom/android/phone/FdnSetting;)V

    .line 479
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$1000(Lcom/android/phone/FdnSetting;)V

    .line 480
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 481
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 482
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 483
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 485
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$1300(Lcom/android/phone/FdnSetting;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "puk2_state"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 491
    :cond_e
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 492
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f090168

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;I)V

    .line 500
    :goto_5
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 501
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mPinChangeState:I
    invoke-static {v4, v7}, Lcom/android/phone/FdnSetting;->access$1402(Lcom/android/phone/FdnSetting;I)I

    .line 503
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$1200(Lcom/android/phone/FdnSetting;)V

    .line 504
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$1000(Lcom/android/phone/FdnSetting;)V

    .line 505
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 506
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 507
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mpukState:Z
    invoke-static {v4, v8}, Lcom/android/phone/FdnSetting;->access$502(Lcom/android/phone/FdnSetting;Z)Z

    .line 508
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 509
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 512
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$1500(Lcom/android/phone/FdnSetting;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "puk2_state"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 494
    :cond_f
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f090169

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;I)V

    .line 495
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v5, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v5}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v5

    #setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$002(Lcom/android/phone/FdnSetting;I)I

    goto :goto_5

    .line 517
    :cond_10
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v5, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v5}, Lcom/android/phone/FdnSetting;->getPUK2retry()I

    move-result v5

    #setter for: Lcom/android/phone/FdnSetting;->mAttemptPuk2:I
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$1602(Lcom/android/phone/FdnSetting;I)I

    .line 518
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mAttemptPuk2:I
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$1600(Lcom/android/phone/FdnSetting;)I

    move-result v4

    if-nez v4, :cond_11

    .line 519
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4}, Lcom/android/phone/FdnSetting;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 520
    .restart local v2       #err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 521
    const v4, 0x1010355

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 522
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f090075

    invoke-virtual {v4, v5}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 523
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f09017b

    invoke-virtual {v4, v5}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 524
    const v4, 0x7f09007d

    new-instance v5, Lcom/android/phone/FdnSetting$1$5;

    invoke-direct {v5, p0}, Lcom/android/phone/FdnSetting$1$5;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 529
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 530
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 533
    .end local v2           #err_builder:Landroid/app/AlertDialog$Builder;
    :cond_11
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 538
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_12
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mpukState:Z
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Z

    move-result v4

    if-ne v4, v7, :cond_13

    .line 539
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f090178

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;I)V

    .line 544
    :goto_6
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v5, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v5}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v5

    #setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$002(Lcom/android/phone/FdnSetting;I)I

    .line 545
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v4, v8}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 547
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 548
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 549
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mpukState:Z
    invoke-static {v4, v8}, Lcom/android/phone/FdnSetting;->access$502(Lcom/android/phone/FdnSetting;Z)Z

    .line 550
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 551
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 553
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$1700(Lcom/android/phone/FdnSetting;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "puk2_state"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 556
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mPinChangeState:I
    invoke-static {v4, v7}, Lcom/android/phone/FdnSetting;->access$1402(Lcom/android/phone/FdnSetting;I)I

    .line 557
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$1000(Lcom/android/phone/FdnSetting;)V

    .line 558
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$1200(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 542
    :cond_13
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f09016d

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;I)V

    goto :goto_6

    .line 563
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    const-string v4, "feature_chn_duos_cdma_gsm"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 564
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;)I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v5}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v5

    if-eq v4, v5, :cond_14

    .line 565
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v5, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v5}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v5

    #setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$002(Lcom/android/phone/FdnSetting;I)I

    .line 566
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$1000(Lcom/android/phone/FdnSetting;)V

    .line 568
    :cond_14
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$1800(Lcom/android/phone/FdnSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/SimLockInfoResult;->getLockPin2Key()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 569
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v4, v7}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 570
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 312
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
    .end sparse-switch
.end method
