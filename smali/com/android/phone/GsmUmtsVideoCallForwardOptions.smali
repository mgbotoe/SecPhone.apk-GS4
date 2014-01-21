.class public Lcom/android/phone/GsmUmtsVideoCallForwardOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsVideoCallForwardOptions.java"


# static fields
.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field public static mSimId:I


# instance fields
.field private final DBG:Z

.field private mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

.field private mFirstResume:Z

.field private mIcicle:Landroid/os/Bundle;

.field private mInitIndex:I

.field private mIsLaunchFromWidget:Z

.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallForwardEditPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    .line 71
    sput v2, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 45
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->DBG:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    .line 65
    iput v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    .line 68
    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIsLaunchFromWidget:Z

    return-void

    :cond_0
    move v0, v1

    .line 45
    goto :goto_0
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .parameter "preference"

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    const-string v0, "GsmUmtsVideoCallForwardOptions"

    const-string v1, "Fragment finished. We ignore it."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 251
    .local v6, adapter:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_1
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 252
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 253
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 251
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 202
    iget-boolean v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "GsmUmtsVideoCallForwardOptions"

    const-string v1, "onActivityResult: done"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 204
    iget-boolean v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "GsmUmtsVideoCallForwardOptions"

    const-string v1, "onActivityResult: contact picker result not OK."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 209
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_3

    .line 210
    iget-boolean v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "GsmUmtsVideoCallForwardOptions"

    const-string v1, "onActivityResult: bad contact data, query return null"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    .line 214
    iget-boolean v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "GsmUmtsVideoCallForwardOptions"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_4
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 216
    :cond_5
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 218
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    .line 221
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    .line 224
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    .line 227
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 75
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const-string v5, "sec_product_feature_common_dsds_support"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsDsds;->getDualSimState(Landroid/content/Context;)I

    move-result v2

    .line 80
    .local v2, dualSimState:I
    const/4 v3, 0x0

    .line 82
    .local v3, mIsDualSimTurnedOn:Z
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v5

    if-le v5, v8, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v9}, Lcom/android/internal/telephony/MultiSimManager;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/android/internal/telephony/MultiSimManager;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    const/4 v3, 0x1

    .line 88
    :cond_1
    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    if-eqz v3, :cond_6

    .line 89
    :cond_2
    const-string v5, "GsmUmtsVideoCallForwardOptions"

    const-string v6, "DUAL SIM"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 91
    .local v1, arg:Landroid/os/Bundle;
    if-eqz v1, :cond_5

    .line 92
    const-string v5, "GsmUmtsVideoCallForwardOptions"

    const-string v6, "Bundle is not null"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v5, "CallSettingTab"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mSimId:I

    .line 101
    .end local v1           #arg:Landroid/os/Bundle;
    :goto_0
    const-string v5, "GsmUmtsVideoCallForwardOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSimId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mSimId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v2           #dualSimState:I
    .end local v3           #mIsDualSimTurnedOn:Z
    :cond_3
    const v5, 0x7f060046

    invoke-virtual {p0, v5}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->addPreferencesFromResource(I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 107
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_4

    .line 109
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 112
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 113
    .local v4, prefSet:Landroid/preference/PreferenceScreen;
    const-string v5, "button_vcfu_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/CallForwardEditPreference;

    iput-object v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    .line 114
    const-string v5, "button_vcfb_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/CallForwardEditPreference;

    iput-object v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    .line 115
    const-string v5, "button_vcfnry_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/CallForwardEditPreference;

    iput-object v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    .line 116
    const-string v5, "button_vcfnrc_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/CallForwardEditPreference;

    iput-object v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    .line 118
    iget-object v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget v6, v6, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v5, p0, v6}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;I)V

    .line 119
    iget-object v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget v6, v6, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v5, p0, v6}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;I)V

    .line 120
    iget-object v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget v6, v6, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v5, p0, v6}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;I)V

    .line 121
    iget-object v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget v6, v6, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v5, p0, v6}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;I)V

    .line 123
    iget-object v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iput-boolean v8, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mFirstResume:Z

    .line 129
    iput-object p1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    .line 131
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "FROMWIDGET"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIsLaunchFromWidget:Z

    .line 133
    return-void

    .line 95
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v4           #prefSet:Landroid/preference/PreferenceScreen;
    .restart local v1       #arg:Landroid/os/Bundle;
    .restart local v2       #dualSimState:I
    .restart local v3       #mIsDualSimTurnedOn:Z
    :cond_5
    const-string v5, "GsmUmtsVideoCallForwardOptions"

    const-string v6, "Bundle is null"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget v5, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    sput v5, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mSimId:I

    goto/16 :goto_0

    .line 99
    .end local v1           #arg:Landroid/os/Bundle;
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->getDefaultSimForVoiceCalls()I

    move-result v5

    sput v5, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mSimId:I

    goto/16 :goto_0
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 4
    .parameter "preference"
    .parameter "reading"

    .prologue
    const/4 v3, 0x0

    .line 178
    iget-boolean v1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    if-nez v1, :cond_1

    .line 179
    iget-boolean v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "GsmUmtsVideoCallForwardOptions"

    const-string v2, "requesting discarded"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_3

    .line 184
    iget v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    .line 185
    iget-object v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallForwardEditPreference;

    sget v2, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mSimId:I

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 197
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 186
    :cond_3
    iget v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIsLaunchFromWidget:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    iput-boolean v3, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIsLaunchFromWidget:Z

    .line 191
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 192
    .local v0, changedIntent:Landroid/content/Intent;
    const-string v1, "FROMWIDGET"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 194
    iget-object v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 262
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 267
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "FROMWIDGET"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 271
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.callsettings.CallTypeSelectForForwarding"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 273
    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->startActivity(Landroid/content/Intent;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->finish()V

    .line 276
    const/4 v2, 0x1

    .line 278
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 137
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 139
    iget-boolean v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mFirstResume:Z

    if-eqz v4, :cond_2

    .line 140
    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    if-nez v4, :cond_3

    .line 141
    iget-boolean v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "GsmUmtsVideoCallForwardOptions"

    const-string v5, "start to init "

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CallForwardEditPreference;

    sget v5, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mSimId:I

    invoke-virtual {v4, p0, v6, v5}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 156
    :cond_1
    iput-boolean v6, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mFirstResume:Z

    .line 157
    iput-object v7, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    .line 159
    :cond_2
    return-void

    .line 144
    :cond_3
    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    .line 146
    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CallForwardEditPreference;

    .line 147
    .local v3, pref:Lcom/android/phone/CallForwardEditPreference;
    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {v3}, Lcom/android/phone/CallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 148
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "toggle"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 149
    new-instance v1, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 150
    .local v1, cf:Lcom/android/internal/telephony/CallForwardInfo;
    const-string v4, "number"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 151
    const-string v4, "status"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 152
    invoke-virtual {v3, v1, v7}, Lcom/android/phone/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;Landroid/os/Message;)V

    .line 153
    const/4 v4, 0x1

    sget v5, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mSimId:I

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    iget-object v3, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreference;

    .line 166
    .local v2, pref:Lcom/android/phone/CallForwardEditPreference;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 167
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "toggle"

    invoke-virtual {v2}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    iget-object v3, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v3, :cond_0

    .line 169
    const-string v3, "number"

    iget-object v4, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v3, "status"

    iget-object v4, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    :cond_0
    invoke-virtual {v2}, Lcom/android/phone/CallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 174
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #pref:Lcom/android/phone/CallForwardEditPreference;
    :cond_1
    return-void
.end method
