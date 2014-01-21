.class public Lcom/android/phone/PreferredNetworkDetailView;
.super Landroid/preference/PreferenceActivity;
.source "PreferredNetworkDetailView.java"


# instance fields
.field private actionType:I

.field final app:Lcom/android/phone/PhoneGlobals;

.field editDialog:Landroid/widget/EditText;

.field mEUtranAct:Landroid/preference/CheckBoxPreference;

.field mGsmAct:Landroid/preference/CheckBoxPreference;

.field mGsmCompactAct:Landroid/preference/CheckBoxPreference;

.field mHandler:Landroid/os/Handler;

.field mNetworkId:Landroid/preference/Preference;

.field mNetworkIndex:Landroid/preference/Preference;

.field mNetworkName:Landroid/preference/Preference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mUtranAct:Landroid/preference/CheckBoxPreference;

.field private oldId:Ljava/lang/String;

.field private oldIndex:I

.field private oldName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 78
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->app:Lcom/android/phone/PhoneGlobals;

    .line 81
    new-instance v0, Lcom/android/phone/PreferredNetworkDetailView$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PreferredNetworkDetailView$1;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PreferredNetworkDetailView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    return v0
.end method

.method private savePreferredNetworkInfo(ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 10
    .parameter "index"
    .parameter "operator"
    .parameter "plmn"
    .parameter "gsmAct"
    .parameter "gsmCompactAct"
    .parameter "utranAct"
    .parameter "action"

    .prologue
    .line 298
    const-string v1, "PreferredNetworksDetailView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savePreferredNetworkInfo Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Operator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PLMN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GSM ACT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GSM Compact ACT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Utran ACT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V

    .line 306
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 99
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v1, 0x7f04008d

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->addPreferencesFromResource(I)V

    .line 102
    const-string v1, "sec_product_feature_common_dsds_support"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    const-string v1, "PreferredNetworksDetailView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->app:Lcom/android/phone/PhoneGlobals;

    sget v1, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-static {v1}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 108
    :goto_0
    const-string v1, "network_index"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    .line 109
    const-string v1, "network_name"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    .line 110
    const-string v1, "network_id"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    .line 111
    const-string v1, "gsm_act"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    .line 112
    const-string v1, "gsm_compact_act"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    .line 113
    const-string v1, "utran_act"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    .line 114
    const-string v1, "eutran_act"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mEUtranAct:Landroid/preference/CheckBoxPreference;

    .line 116
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$2;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$2;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 124
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$3;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$3;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 132
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$4;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$4;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 140
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$5;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$5;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 153
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$6;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$6;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 166
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$7;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$7;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 179
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mEUtranAct:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$8;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$8;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 193
    .local v0, i:Landroid/content/Intent;
    const-string v1, "type_action"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    .line 194
    const-string v1, "index"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    .line 195
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    .line 197
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 198
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    .line 199
    :cond_0
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldId:Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 202
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    iget v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 207
    const-string v1, "act_gsm"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 208
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 213
    :goto_1
    const-string v1, "act_gsm_compact"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 214
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 219
    :goto_2
    const-string v1, "act_utran"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 220
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 225
    :goto_3
    const-string v1, "act_utran"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 226
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mEUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 231
    :goto_4
    const-string v1, "network_mode_tdlte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mEUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 234
    :cond_2
    return-void

    .line 106
    .end local v0           #i:Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->app:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 210
    .restart local v0       #i:Landroid/content/Intent;
    :cond_4
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 216
    :cond_5
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    .line 222
    :cond_6
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_3

    .line 228
    :cond_7
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mEUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const v9, 0x7f09007d

    .line 239
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 240
    .local v2, mContext:Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 241
    .local v4, mInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f04008f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 242
    .local v0, layout:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 243
    .local v1, mBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 244
    const v5, 0x7f0a028a

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    .line 245
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 247
    packed-switch p1, :pswitch_data_0

    .line 293
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 294
    .local v3, mDialog:Landroid/app/Dialog;
    return-object v3

    .line 249
    .end local v3           #mDialog:Landroid/app/Dialog;
    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 250
    const v5, 0x7f090699

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/PreferredNetworkDetailView$9;

    invoke-direct {v6, p0}, Lcom/android/phone/PreferredNetworkDetailView$9;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 259
    :pswitch_1
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 260
    const v5, 0x7f09069a

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/PreferredNetworkDetailView$10;

    invoke-direct {v6, p0}, Lcom/android/phone/PreferredNetworkDetailView$10;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 269
    :pswitch_2
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 271
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/phone/PreferredNetworkDetailView$11;

    invoke-direct {v6, p0}, Lcom/android/phone/PreferredNetworkDetailView$11;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 277
    const v5, 0x7f09069b

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 278
    const v5, 0x7f0906a5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 279
    new-instance v5, Lcom/android/phone/PreferredNetworkDetailView$12;

    invoke-direct {v5, p0}, Lcom/android/phone/PreferredNetworkDetailView$12;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v9, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 310
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 312
    const v0, 0x7f090419

    invoke-virtual {p0, v0}, Lcom/android/phone/PreferredNetworkDetailView;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020003

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 314
    const/4 v0, 0x2

    const v1, 0x7f090141

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020001

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 316
    const/4 v0, 0x3

    const v1, 0x7f0906a7

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 319
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 324
    const-string v0, "PreferredNetworksDetailView"

    const-string v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v9, v10

    .line 378
    :goto_0
    return v9

    .line 327
    :pswitch_0
    const-string v0, "PreferredNetworksDetailView"

    const-string v1, "MENU_DELETE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v4, v9

    :goto_1
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v5, v9

    :goto_2
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v6, v9

    :goto_3
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PreferredNetworkDetailView;->savePreferredNetworkInfo(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 333
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0906ac

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 334
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->finish()V

    goto :goto_0

    :cond_0
    move v4, v10

    .line 328
    goto :goto_1

    :cond_1
    move v5, v10

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mEUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v6, v11

    goto :goto_3

    :cond_3
    move v6, v10

    goto :goto_3

    .line 337
    :pswitch_1
    const-string v0, "PreferredNetworksDetailView"

    const-string v1, "MENU_SAVE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v0, "PreferredNetworksDetailView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 341
    const-string v0, "PreferredNetworksDetailView"

    const-string v1, "ok"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0906a6

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 378
    :goto_4
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v9

    goto/16 :goto_0

    .line 345
    :cond_4
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    .line 346
    .local v8, length:I
    const/4 v0, 0x5

    if-lt v8, v0, :cond_5

    const/4 v0, 0x6

    if-le v8, v0, :cond_6

    .line 347
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->finish()V

    .line 348
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0906ad

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 353
    :cond_6
    iget v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    if-eq v0, v9, :cond_7

    .line 354
    iget v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    move v4, v9

    :goto_5
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    move v5, v9

    :goto_6
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    move v6, v9

    :goto_7
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PreferredNetworkDetailView;->savePreferredNetworkInfo(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 360
    :cond_7
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    move v4, v9

    :goto_8
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    move v5, v9

    :goto_9
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    move v6, v9

    :goto_a
    iget v7, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PreferredNetworkDetailView;->savePreferredNetworkInfo(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 367
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->finish()V

    .line 368
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0906ab

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_8
    move v4, v10

    .line 354
    goto :goto_5

    :cond_9
    move v5, v10

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mEUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    move v6, v11

    goto :goto_7

    :cond_b
    move v6, v10

    goto :goto_7

    :cond_c
    move v4, v10

    .line 360
    goto :goto_8

    :cond_d
    move v5, v10

    goto :goto_9

    :cond_e
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mEUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    move v6, v11

    goto :goto_a

    :cond_f
    move v6, v10

    goto :goto_a

    .line 371
    .end local v8           #length:I
    :pswitch_2
    const-string v0, "PreferredNetworksDetailView"

    const-string v1, "MENU_DISCARD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->finish()V

    goto/16 :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 383
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 384
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 388
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 389
    return-void
.end method
