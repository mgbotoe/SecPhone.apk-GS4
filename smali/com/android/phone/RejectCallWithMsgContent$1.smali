.class Lcom/android/phone/RejectCallWithMsgContent$1;
.super Landroid/os/Handler;
.source "RejectCallWithMsgContent.java"


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
    .line 141
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .parameter "msg"

    .prologue
    .line 143
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 145
    :pswitch_0
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 146
    .local v11, index:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    .line 148
    .local v19, text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/android/phone/RejectCallWithMsgContent;->access$000(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 149
    .local v12, item:Landroid/widget/LinearLayout;
    const v23, 0x7f0a02b5

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v20, v23

    check-cast v20, Landroid/widget/TextView;

    .line 150
    .local v20, textView:Landroid/widget/TextView;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, curLanguage:Ljava/lang/String;
    const-string v23, "ar"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    const-string v23, "iw"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    const-string v23, "he"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    const-string v23, "fa"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    const-string v23, "ur"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 153
    :cond_1
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->requestLayout()V

    .line 154
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->invalidate()V

    .line 156
    :cond_2
    if-eqz v20, :cond_3

    .line 157
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    const-string v23, "automatic_answering_machine"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 160
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneUtils;->getIsSmsDisable(Lcom/android/internal/telephony/Call;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 161
    const v23, -0x777778

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    :cond_3
    :goto_1
    const v23, 0x7f0a02c9

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Button;

    move-object/from16 v3, v23

    check-cast v3, Landroid/widget/Button;

    .line 170
    .local v3, btn:Landroid/widget/Button;
    const-string v23, "reject_call_with_message_send_button_enable"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 171
    if-eqz v3, :cond_4

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent;->mSendMsgListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 175
    const-string v23, "automatic_answering_machine"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 176
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneUtils;->getIsSmsDisable(Lcom/android/internal/telephony/Call;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 177
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 178
    const v23, 0x7f0204da

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 196
    :cond_4
    :goto_2
    const-string v23, "automatic_answering_machine"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    move-object/from16 v23, v0

    const v24, 0x7f0a02aa

    invoke-virtual/range {v23 .. v24}, Lcom/android/phone/RejectCallWithMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 198
    .local v5, createText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    move-object/from16 v23, v0

    const v24, 0x7f0a02ab

    invoke-virtual/range {v23 .. v24}, Lcom/android/phone/RejectCallWithMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 199
    .local v4, createIcon:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneUtils;->getIsSmsDisable(Lcom/android/internal/telephony/Call;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent;->mCreateButton:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent;->mCreateButton:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 203
    :cond_5
    if-eqz v5, :cond_6

    .line 204
    const v23, -0x777778

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    :cond_6
    if-eqz v4, :cond_7

    .line 207
    const v23, 0x7f0204e1

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    .end local v4           #createIcon:Landroid/widget/ImageView;
    .end local v5           #createText:Landroid/widget/TextView;
    :cond_7
    :goto_3
    const-string v23, "feature_remind_me_later_support "

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 223
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    .line 224
    .local v18, remindtime:I
    const v23, 0x7f0a02ca

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    move-object/from16 v10, v23

    check-cast v10, Landroid/widget/ImageView;

    .line 225
    .local v10, imageView:Landroid/widget/ImageView;
    if-eqz v10, :cond_8

    .line 226
    if-lez v18, :cond_11

    .line 227
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    .end local v10           #imageView:Landroid/widget/ImageView;
    .end local v18           #remindtime:I
    :cond_8
    :goto_4
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    const-string v23, "feature_chn_duos"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    move-object/from16 v23, v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v24

    #setter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneType:I
    invoke-static/range {v23 .. v24}, Lcom/android/phone/RejectCallWithMsgContent;->access$202(Lcom/android/phone/RejectCallWithMsgContent;I)I

    .line 246
    :cond_9
    :goto_5
    const-string v23, "usa_cdma_emergency_concept"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    const-string v23, "ril.cdma.inecmmode"

    const-string v24, "false"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "true"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/RejectCallWithMsgContent;->disableSendMsgButton()V

    goto/16 :goto_0

    .line 163
    .end local v3           #btn:Landroid/widget/Button;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0b005d

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 180
    .restart local v3       #btn:Landroid/widget/Button;
    :cond_b
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 181
    const v23, 0x7f0204cd

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 188
    :cond_c
    if-eqz v20, :cond_d

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent;->mSendMsgListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 192
    :cond_d
    if-eqz v3, :cond_4

    .line 193
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 210
    .restart local v4       #createIcon:Landroid/widget/ImageView;
    .restart local v5       #createText:Landroid/widget/TextView;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent;->mCreateButton:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    if-eqz v23, :cond_f

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent;->mCreateButton:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 213
    :cond_f
    if-eqz v5, :cond_10

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0b0033

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    :cond_10
    if-eqz v4, :cond_7

    .line 217
    const v23, 0x7f020323

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 229
    .end local v4           #createIcon:Landroid/widget/ImageView;
    .end local v5           #createText:Landroid/widget/TextView;
    .restart local v10       #imageView:Landroid/widget/ImageView;
    .restart local v18       #remindtime:I
    :cond_11
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 236
    .end local v10           #imageView:Landroid/widget/ImageView;
    .end local v18           #remindtime:I
    :cond_12
    const-string v23, "feature_multisim"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 239
    :try_start_0
    const-string v23, "phone"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v14

    .line 240
    .local v14, mTelephonyService:Lcom/android/internal/telephony/ITelephony;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    move-object/from16 v23, v0

    invoke-interface {v14}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I

    move-result v24

    #setter for: Lcom/android/phone/RejectCallWithMsgContent;->mSimId:I
    invoke-static/range {v23 .. v24}, Lcom/android/phone/RejectCallWithMsgContent;->access$302(Lcom/android/phone/RejectCallWithMsgContent;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 241
    .end local v14           #mTelephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v7

    .line 242
    .local v7, ex:Landroid/os/RemoteException;
    const-string v23, "RejectCallWithMsgContent"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ITelephony threw RemoteException"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 253
    .end local v3           #btn:Landroid/widget/Button;
    .end local v6           #curLanguage:Ljava/lang/String;
    .end local v7           #ex:Landroid/os/RemoteException;
    .end local v11           #index:I
    .end local v12           #item:Landroid/widget/LinearLayout;
    .end local v19           #text:Ljava/lang/String;
    .end local v20           #textView:Landroid/widget/TextView;
    :pswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 254
    .local v16, position:I
    const/4 v8, 0x0

    .line 255
    .local v8, iconModeItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v8           #iconModeItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    check-cast v8, Ljava/util/HashMap;

    .line 257
    .restart local v8       #iconModeItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v8, :cond_13

    .line 258
    const-string v23, "RejectCallWithMsgContent"

    const-string v24, "object in msg is null!"

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 262
    :cond_13
    const-string v23, "title"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 263
    .local v21, title:Ljava/lang/String;
    const-string v23, "message"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 264
    .local v15, message:Ljava/lang/String;
    const-string v23, "position"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 265
    .local v17, position2:I
    const-string v23, "icon_state"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 267
    .local v9, iconStatesId:I
    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_14

    .line 268
    const-string v23, "RejectCallWithMsgContent"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ERROR: position: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", position2: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_14
    const-string v23, "RejectCallWithMsgContent"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "title: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", message: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mBtnListIconMode:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/android/phone/RejectCallWithMsgContent;->access$400(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 274
    .local v13, layout:Landroid/widget/LinearLayout;
    const v23, 0x7f0a02b5

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 275
    .local v22, titleTextView:Landroid/widget/TextView;
    if-eqz v22, :cond_16

    .line 276
    if-eqz v21, :cond_15

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_15

    const-string v23, " "

    const-string v24, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "\n"

    const-string v25, ""

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 277
    :cond_15
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :goto_6
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 285
    :cond_16
    const v23, 0x7f0a02b4

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 286
    .restart local v10       #imageView:Landroid/widget/ImageView;
    if-eqz v10, :cond_17

    .line 287
    if-eqz v9, :cond_17

    .line 288
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    :cond_17
    const-string v23, "feature_remind_me_later_support "

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 296
    :cond_18
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgContent;->mSendMsgListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 280
    .end local v10           #imageView:Landroid/widget/ImageView;
    :cond_19
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 143
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
