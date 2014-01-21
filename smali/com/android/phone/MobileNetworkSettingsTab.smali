.class public Lcom/android/phone/MobileNetworkSettingsTab;
.super Landroid/app/TabActivity;
.source "MobileNetworkSettingsTab.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static mTabHost:Landroid/widget/TabHost;

.field public static sim1Name:Ljava/lang/String;

.field public static sim2Name:Ljava/lang/String;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActiveSimId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private setupTab(Ljava/lang/String;)V
    .locals 11
    .parameter "tabname"

    .prologue
    const v10, 0x1020006

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.NetworkSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    :goto_0
    sget-object v2, Lcom/android/phone/MobileNetworkSettingsTab;->sim1Name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    const-string v2, "sim_id"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    sget-object v2, Lcom/android/phone/MobileNetworkSettingsTab;->mTabHost:Landroid/widget/TabHost;

    sget-object v3, Lcom/android/phone/MobileNetworkSettingsTab;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "WCDMA"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/android/phone/MobileNetworkSettingsTab;->getSimName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->getSimCardIcon(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 120
    sget-object v2, Lcom/android/phone/MobileNetworkSettingsTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 121
    .local v1, simIcon:Landroid/widget/ImageView;
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->getSimCardIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :goto_1
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    .end local v1           #simIcon:Landroid/widget/ImageView;
    :cond_0
    :goto_2
    return-void

    .line 112
    :cond_1
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 124
    .restart local v1       #simIcon:Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->getSimCardIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 127
    .end local v1           #simIcon:Landroid/widget/ImageView;
    :cond_3
    sget-object v2, Lcom/android/phone/MobileNetworkSettingsTab;->sim2Name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const-string v2, "sim_id"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    sget-object v2, Lcom/android/phone/MobileNetworkSettingsTab;->mTabHost:Landroid/widget/TabHost;

    sget-object v3, Lcom/android/phone/MobileNetworkSettingsTab;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "GSM"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0, v8}, Lcom/android/phone/MobileNetworkSettingsTab;->getSimName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->getSimCardIcon(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 132
    sget-object v2, Lcom/android/phone/MobileNetworkSettingsTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 133
    .restart local v1       #simIcon:Landroid/widget/ImageView;
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 134
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->getSimCardIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :goto_3
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 136
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->getSimCardIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method


# virtual methods
.method public getSimName(I)Ljava/lang/String;
    .locals 2
    .parameter "simId"

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, simName:Ljava/lang/String;
    const-string v1, "sec_product_feature_common_dsds_support"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtilsDsds;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 167
    :goto_0
    return-object v1

    .line 148
    :cond_0
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    invoke-static {p0, p1}, Lcom/android/phone/PhoneMultiSimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 152
    :cond_1
    if-nez p1, :cond_3

    .line 153
    const-string v1, "gsm.sim.cardname"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_1
    if-nez v0, :cond_2

    .line 160
    if-nez p1, :cond_4

    .line 161
    const-string v0, "WCDMA"

    :cond_2
    :goto_2
    move-object v1, v0

    .line 167
    goto :goto_0

    .line 155
    :cond_3
    const-string v1, "gsm.sim.cardname2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 163
    :cond_4
    const-string v0, "GSM"

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 65
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mActionBar:Landroid/app/ActionBar;

    .line 68
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    sput-object v0, Lcom/android/phone/MobileNetworkSettingsTab;->mTabHost:Landroid/widget/TabHost;

    .line 74
    sget-object v0, Lcom/android/phone/MobileNetworkSettingsTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/phone/MobileNetworkSettingsTab;->getSimName(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/MobileNetworkSettingsTab;->sim1Name:Ljava/lang/String;

    .line 77
    invoke-virtual {p0, v2}, Lcom/android/phone/MobileNetworkSettingsTab;->getSimName(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/MobileNetworkSettingsTab;->sim2Name:Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/android/phone/MobileNetworkSettingsTab;->sim1Name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettingsTab;->setupTab(Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/android/phone/MobileNetworkSettingsTab;->sim2Name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettingsTab;->setupTab(Ljava/lang/String;)V

    .line 82
    iput v1, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mActiveSimId:I

    .line 84
    sget-object v0, Lcom/android/phone/MobileNetworkSettingsTab;->mTabHost:Landroid/widget/TabHost;

    iget v1, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mActiveSimId:I

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 85
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 99
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 100
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->finish()V

    .line 102
    const/4 v1, 0x1

    .line 104
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "tabId"

    .prologue
    .line 89
    const-string v0, "WCDMA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mActiveSimId:I

    .line 94
    :goto_0
    const-string v0, "MobileNetworkSettingsTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabChanged() : TabId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v0, "MobileNetworkSettingsTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabChanged() : mActiveSimId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mActiveSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mActiveSimId:I

    goto :goto_0
.end method
