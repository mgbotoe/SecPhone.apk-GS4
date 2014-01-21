.class public Lcom/android/phone/AssistedDialingCurrentCountyActivity;
.super Landroid/preference/PreferenceActivity;
.source "AssistedDialingCurrentCountyActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final MCC_OTA_URI:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentCountryList:Landroid/preference/PreferenceScreen;

.field private mCurrentText:Landroid/preference/PreferenceScreen;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "content://assisteddialing/mcc_otalookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->MCC_OTA_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private checkAutoCurrentCountryName()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 175
    const-string v3, "content://assisteddialing/ota_country"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 177
    .local v1, OTA_COUNTRY_URI:Landroid/net/Uri;
    const-string v6, "network_error"

    .line 179
    .local v6, mAutoCurrentCountryName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 180
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 181
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 183
    .local v7, mCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 186
    :cond_0
    if-eqz v7, :cond_1

    .line 187
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_1
    return-object v6
.end method

.method private setAutoCurrentCountrySummary()V
    .locals 3

    .prologue
    .line 146
    const-string v1, "CurrentCounty"

    const-string v2, "setAutoCurrentCountrySummary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->checkAutoCurrentCountryName()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, mCountryName:Ljava/lang/String;
    const-string v1, "network_error"

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->mCurrentText:Landroid/preference/PreferenceScreen;

    const v2, 0x7f090674

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 150
    iget-object v1, p0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->mCurrentCountryList:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->mCurrentText:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v1, p0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->mCurrentCountryList:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setManualCurrentCountrySummary(Ljava/lang/String;)V
    .locals 3
    .parameter "setvalue"

    .prologue
    .line 141
    const-string v0, "CurrentCounty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current_country_name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->mCurrentText:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v2, 0x7f04000a

    invoke-virtual {p0, v2}, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->addPreferencesFromResource(I)V

    .line 69
    const-string v2, "CurrentCounty"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 73
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 75
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "button_current_country_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->mCurrentText:Landroid/preference/PreferenceScreen;

    .line 76
    const-string v2, "button_select_current_country_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->mCurrentCountryList:Landroid/preference/PreferenceScreen;

    .line 78
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 79
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 80
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 82
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 114
    const-string v0, "CurrentCounty"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 197
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->onBackPressed()V

    .line 198
    const/4 v0, 0x1

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 107
    const-string v0, "CurrentCounty"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 126
    const-string v0, "CurrentCounty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange preference : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 132
    const-string v0, "CurrentCounty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick preference : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 86
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 87
    const-string v4, "CurrentCounty"

    const-string v5, "onResume"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v4, p0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->mCurrentText:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 91
    iget-object v2, p0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->mCurrentCountryList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 92
    iget-object v2, p0, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f090737

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 102
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assisted_dialing_current_country"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, Current_country_name:Ljava/lang/String;
    if-nez v0, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 96
    .local v1, mIsAutomatic:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    invoke-direct {p0}, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->setAutoCurrentCountrySummary()V

    goto :goto_0

    .end local v1           #mIsAutomatic:Ljava/lang/Boolean;
    :cond_1
    move v2, v3

    .line 95
    goto :goto_1

    .line 99
    .restart local v1       #mIsAutomatic:Ljava/lang/Boolean;
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/phone/AssistedDialingCurrentCountyActivity;->setManualCurrentCountrySummary(Ljava/lang/String;)V

    goto :goto_0
.end method
