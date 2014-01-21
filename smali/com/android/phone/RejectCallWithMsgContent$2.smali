.class Lcom/android/phone/RejectCallWithMsgContent$2;
.super Ljava/lang/Object;
.source "RejectCallWithMsgContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RejectCallWithMsgContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgContent;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsgContent;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const-wide/16 v12, 0x3e8

    .line 311
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 312
    .local v0, call:Lcom/android/internal/telephony/Call;
    const-string v7, "feature_chn_duos"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 313
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 315
    :cond_0
    if-eqz v0, :cond_3

    .line 316
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 317
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_1

    .line 318
    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/phone/RejectCallWithMsgContent;->access$502(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    :cond_1
    const-string v7, "feature_chn_duos"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 322
    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v8

    #setter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneType:I
    invoke-static {v7, v8}, Lcom/android/phone/RejectCallWithMsgContent;->access$202(Lcom/android/phone/RejectCallWithMsgContent;I)I

    .line 324
    :cond_2
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 326
    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    :cond_3
    const-string v7, "roaming_auto_dial"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 327
    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v8, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/RejectCallWithMsgContent;->access$500(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/RejectCallWithMsgContent;->setRejectCallNumber(Ljava/lang/String;)V

    .line 330
    :cond_4
    const/4 v3, 0x0

    .line 332
    .local v3, parentView:Landroid/widget/LinearLayout;
    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->isIconModeEnable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 333
    instance-of v7, p1, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_6

    move-object v3, p1

    .line 334
    check-cast v3, Landroid/widget/LinearLayout;

    .line 343
    :goto_0
    const v7, 0x7f0a02b5

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 344
    .local v5, textView:Landroid/widget/TextView;
    const/4 v4, 0x0

    .line 345
    .local v4, remind_time:I
    const-string v7, "feature_remind_me_later_support "

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 346
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v7, v7, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_8

    .line 347
    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v7, v7, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 348
    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v7, v7, Lcom/android/phone/RejectCallWithMsgContent;->remindtimeList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 346
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 336
    .end local v2           #i:I
    .end local v4           #remind_time:I
    .end local v5           #textView:Landroid/widget/TextView;
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .end local v3           #parentView:Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .restart local v3       #parentView:Landroid/widget/LinearLayout;
    goto :goto_0

    .line 340
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .end local v3           #parentView:Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .restart local v3       #parentView:Landroid/widget/LinearLayout;
    goto :goto_0

    .line 351
    .restart local v2       #i:I
    .restart local v4       #remind_time:I
    .restart local v5       #textView:Landroid/widget/TextView;
    :cond_8
    const-string v7, "RejectCallWithMsgContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send msg!! remind_time : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 352
    if-eqz v4, :cond_9

    .line 353
    sput v4, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    .line 354
    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/android/phone/RejectCallWithMsgContent;->constructReminderLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 355
    .local v6, toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 359
    .end local v2           #i:I
    .end local v6           #toast:Landroid/widget/Toast;
    :cond_9
    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->isIconModeEnable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-boolean v7, v7, Lcom/android/phone/RejectCallWithMsgContent;->mIsHelpScreen:Z

    if-nez v7, :cond_c

    .line 360
    const-string v7, "sec_product_feature_common_dsds_support"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 361
    if-eqz v0, :cond_a

    .line 362
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;

    iget-object v10, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v11

    invoke-direct {v9, v10, v7, v11}, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;-><init>(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;I)V

    invoke-virtual {v8, v9, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 375
    :cond_a
    :goto_2
    return-void

    .line 364
    :cond_b
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;

    iget-object v10, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v9, v10, v7}, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;-><init>(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 368
    :cond_c
    const-string v7, "sec_product_feature_common_dsds_support"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 369
    if-eqz v0, :cond_a

    .line 370
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;

    iget-object v10, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v11

    invoke-direct {v9, v10, v7, v11}, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;-><init>(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;I)V

    invoke-virtual {v8, v9, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 372
    :cond_d
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;

    iget-object v9, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;-><init>(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method
