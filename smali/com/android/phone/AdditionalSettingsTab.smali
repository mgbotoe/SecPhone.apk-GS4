.class public Lcom/android/phone/AdditionalSettingsTab;
.super Landroid/app/TabActivity;
.source "AdditionalSettingsTab.java"


# static fields
.field public static CDMA_SLOT:Ljava/lang/String;

.field public static GSM_SLOT:Ljava/lang/String;

.field public static iconIndexCDMA:I

.field public static iconIndexGSM:I

.field private static mTabId:I

.field public static sim1Name:Ljava/lang/String;

.field public static sim2Name:Ljava/lang/String;

.field public static simName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const/4 v0, 0x6

    sput v0, Lcom/android/phone/AdditionalSettingsTab;->iconIndexCDMA:I

    .line 35
    const/4 v0, 0x7

    sput v0, Lcom/android/phone/AdditionalSettingsTab;->iconIndexGSM:I

    .line 37
    const-string v0, "CDMA"

    sput-object v0, Lcom/android/phone/AdditionalSettingsTab;->CDMA_SLOT:Ljava/lang/String;

    .line 38
    const-string v0, "GSM"

    sput-object v0, Lcom/android/phone/AdditionalSettingsTab;->GSM_SLOT:Ljava/lang/String;

    .line 40
    sput-object v1, Lcom/android/phone/AdditionalSettingsTab;->simName:Ljava/lang/String;

    .line 41
    sput-object v1, Lcom/android/phone/AdditionalSettingsTab;->sim1Name:Ljava/lang/String;

    .line 42
    sput-object v1, Lcom/android/phone/AdditionalSettingsTab;->sim2Name:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/AdditionalSettingsTab;->mTabId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    sput p0, Lcom/android/phone/AdditionalSettingsTab;->mTabId:I

    return p0
.end method

.method private checkOnlySim2Ready()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, onlySim2Ready:Z
    const-string v3, "gsm.sim.currentcardstatus"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 215
    .local v1, simState1:I
    const-string v3, "gsm.sim.currentcardstatus2"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 216
    .local v2, simState2:I
    const-string v3, "AdditionalSettingsTab"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simstate1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simstate2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  selection="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/AdditionalSettingsTab;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {p0}, Lcom/android/phone/AdditionalSettingsTab;->isSlot1Switched()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    const/4 v0, 0x1

    .line 226
    :goto_0
    const-string v3, "feature_chn_duos_support_cgg"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/phone/AdditionalSettingsTab;->isSlot1Switched()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    const-string v3, "AdditionalSettingsTab"

    const-string v4, "onlySim2Ready false"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v0, 0x0

    .line 230
    :cond_0
    return v0

    .line 221
    :cond_1
    if-eq v1, v6, :cond_2

    if-ne v2, v6, :cond_2

    .line 222
    const/4 v0, 0x1

    goto :goto_0

    .line 224
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTabId()I
    .locals 1

    .prologue
    .line 234
    sget v0, Lcom/android/phone/AdditionalSettingsTab;->mTabId:I

    return v0
.end method

.method private isSlot1Switched()Z
    .locals 2

    .prologue
    .line 209
    const-string v0, "1"

    invoke-virtual {p0}, Lcom/android/phone/AdditionalSettingsTab;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getRegisterInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "Type"

    .prologue
    .line 150
    const/4 v2, 0x0

    .line 151
    .local v2, returnValue:Ljava/lang/String;
    const/4 v0, 0x0

    .line 152
    .local v0, defaultSlot1Name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 154
    .local v1, defaultSlot2Name:Ljava/lang/String;
    const v3, 0x7f0904ad

    invoke-virtual {p0, v3}, Lcom/android/phone/AdditionalSettingsTab;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    const v3, 0x7f0904ae

    invoke-virtual {p0, v3}, Lcom/android/phone/AdditionalSettingsTab;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    sget-object v3, Lcom/android/phone/AdditionalSettingsTab;->CDMA_SLOT:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 158
    const-string v3, "ril.ICC_TYPE"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 159
    move-object v2, v0

    .line 163
    :goto_0
    if-eqz v2, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    :cond_0
    move-object v2, v0

    .line 177
    :cond_1
    :goto_1
    return-object v2

    .line 161
    :cond_2
    const-string v3, "gsm.sim.cardname"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 168
    :cond_3
    const-string v3, "ril.ICC2_TYPE"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    .line 169
    move-object v2, v1

    .line 173
    :goto_2
    if-eqz v2, :cond_4

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    :cond_4
    move-object v2, v1

    goto :goto_1

    .line 171
    :cond_5
    const-string v3, "gsm.sim.cardname2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public getSlotSelectionInformation()Ljava/lang/String;
    .locals 8

    .prologue
    .line 181
    const-string v0, "/sys/class/sec/slot_switch/slot_sel"

    .line 182
    .local v0, FILE_PATH:Ljava/lang/String;
    const/4 v3, 0x0

    .line 183
    .local v3, in:Ljava/io/BufferedReader;
    const-string v1, "0"

    .line 185
    .local v1, current_slot:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    .end local v3           #in:Ljava/io/BufferedReader;
    .local v4, in:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 188
    const-string v5, "AdditionalSettingsTab"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Slot_Sel [read]<---------------------------------- : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 194
    if-eqz v4, :cond_0

    .line 195
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 201
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 202
    const-string v1, "0"

    .line 205
    :cond_2
    return-object v1

    .line 196
    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 197
    .local v2, e:Ljava/io/IOException;
    const-string v5, "AdditionalSettingsTab"

    const-string v6, "File close error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 199
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    goto :goto_0

    .line 189
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 190
    .restart local v2       #e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "AdditionalSettingsTab"

    const-string v6, "File open error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v1, "0"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    if-eqz v3, :cond_1

    .line 195
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 196
    :catch_2
    move-exception v2

    .line 197
    const-string v5, "AdditionalSettingsTab"

    const-string v6, "File close error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 194
    :goto_2
    if-eqz v3, :cond_3

    .line 195
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 198
    :cond_3
    :goto_3
    throw v5

    .line 196
    :catch_3
    move-exception v2

    .line 197
    .restart local v2       #e:Ljava/io/IOException;
    const-string v6, "AdditionalSettingsTab"

    const-string v7, "File close error"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 193
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    goto :goto_2

    .line 189
    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 47
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f060047

    invoke-virtual {p0, v0}, Lcom/android/phone/AdditionalSettingsTab;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/phone/AdditionalSettingsTab;->getResources()Landroid/content/res/Resources;

    .line 51
    invoke-virtual {p0}, Lcom/android/phone/AdditionalSettingsTab;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    .line 53
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 55
    sget-object v2, Lcom/android/phone/AdditionalSettingsTab;->CDMA_SLOT:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/phone/AdditionalSettingsTab;->getRegisterInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    sget-object v3, Lcom/android/phone/AdditionalSettingsTab;->GSM_SLOT:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/phone/AdditionalSettingsTab;->getRegisterInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    if-eqz v2, :cond_2

    .line 59
    sput-object v2, Lcom/android/phone/AdditionalSettingsTab;->sim1Name:Ljava/lang/String;

    .line 63
    :goto_0
    if-eqz v3, :cond_3

    .line 64
    sput-object v3, Lcom/android/phone/AdditionalSettingsTab;->sim2Name:Ljava/lang/String;

    .line 68
    :goto_1
    const-class v2, Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 69
    sget-object v2, Lcom/android/phone/AdditionalSettingsTab;->CDMA_SLOT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    sget-object v3, Lcom/android/phone/AdditionalSettingsTab;->sim1Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 70
    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 72
    const-class v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 73
    const-string v2, "CallSettingTab"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    sget-object v2, Lcom/android/phone/AdditionalSettingsTab;->GSM_SLOT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    sget-object v3, Lcom/android/phone/AdditionalSettingsTab;->sim2Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/phone/AdditionalSettingsTab;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/AdditionalSettingsTab;->checkOnlySim2Ready()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    sget-object v1, Lcom/android/phone/AdditionalSettingsTab;->GSM_SLOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 88
    :goto_2
    new-instance v1, Lcom/android/phone/AdditionalSettingsTab$1;

    invoke-direct {v1, p0}, Lcom/android/phone/AdditionalSettingsTab$1;-><init>(Lcom/android/phone/AdditionalSettingsTab;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 104
    const-string v1, "feature_chn_duos_cdma_gsm"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 106
    const-string v1, "AdditionalSettingsTab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate(): getCurrentTabTag() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/phone/AdditionalSettingsTab;->CDMA_SLOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 108
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/AdditionalSettingsTab;->mTabId:I

    .line 113
    :cond_1
    :goto_3
    return-void

    .line 61
    :cond_2
    sget-object v2, Lcom/android/phone/AdditionalSettingsTab;->CDMA_SLOT:Ljava/lang/String;

    sput-object v2, Lcom/android/phone/AdditionalSettingsTab;->sim1Name:Ljava/lang/String;

    goto/16 :goto_0

    .line 66
    :cond_3
    sget-object v2, Lcom/android/phone/AdditionalSettingsTab;->GSM_SLOT:Ljava/lang/String;

    sput-object v2, Lcom/android/phone/AdditionalSettingsTab;->sim2Name:Ljava/lang/String;

    goto/16 :goto_1

    .line 86
    :cond_4
    sget-object v1, Lcom/android/phone/AdditionalSettingsTab;->CDMA_SLOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_2

    .line 110
    :cond_5
    sput v4, Lcom/android/phone/AdditionalSettingsTab;->mTabId:I

    goto :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 141
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 142
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/phone/AdditionalSettingsTab;->finish()V

    .line 144
    const/4 v1, 0x1

    .line 146
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const v10, 0x1020016

    const v9, 0x1020006

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 116
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 118
    const-string v5, "feature_chn_duos_cdma_gsm"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/phone/AdditionalSettingsTab;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    .line 121
    .local v0, mTabHost:Landroid/widget/TabHost;
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 122
    .local v1, slot1Icon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/phone/AdditionalSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->getSimCardIcon(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 126
    .local v2, slot1Name:Landroid/widget/TextView;
    sget-object v5, Lcom/android/phone/AdditionalSettingsTab;->sim1Name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 130
    .local v3, slot2Icon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/phone/AdditionalSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->getSimCardIcon(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 134
    .local v4, slot2Name:Landroid/widget/TextView;
    sget-object v5, Lcom/android/phone/AdditionalSettingsTab;->sim2Name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    .end local v0           #mTabHost:Landroid/widget/TabHost;
    .end local v1           #slot1Icon:Landroid/widget/ImageView;
    .end local v2           #slot1Name:Landroid/widget/TextView;
    .end local v3           #slot2Icon:Landroid/widget/ImageView;
    .end local v4           #slot2Name:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
