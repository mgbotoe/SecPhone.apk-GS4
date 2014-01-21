.class Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;
.super Ljava/lang/Object;
.source "GsmUmtsAdditionalCallOptions.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GsmUmtsAdditionalCallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 882
    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "action"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 885
    const/16 v2, 0x42

    if-ne p2, v2, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 887
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, data:Ljava/lang/String;
    move-object v1, v0

    .line 889
    .local v1, tempareaCode:Ljava/lang/String;
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 891
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 892
    const-string v0, ""

    .line 895
    :cond_0
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOnKeyListener - KEYCODE_ENTER : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$200(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;Z)V

    .line 896
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    sget v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    if-ne v2, v5, :cond_4

    .line 900
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 901
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #calls: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$1400(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "area_code_value"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 908
    :goto_0
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #calls: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateSummaryAutoAreaCode(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$600(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V

    .line 909
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #calls: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateAutoAreaCodeOnOff(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$700(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V

    .line 910
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #getter for: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$1700(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/preference/EditTextPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 911
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #getter for: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$1700(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/preference/EditTextPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 914
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #tempareaCode:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    return v2

    .line 903
    .restart local v0       #data:Ljava/lang/String;
    .restart local v1       #tempareaCode:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #calls: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$1500(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "area_code_sim2_value"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 906
    :cond_4
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #calls: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$1600(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "area_code_value"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
