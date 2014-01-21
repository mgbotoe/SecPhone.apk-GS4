.class public Lcom/android/phone/LGTSetAutoDialing;
.super Landroid/preference/PreferenceActivity;
.source "LGTSetAutoDialing.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAutoDial:Landroid/preference/CheckBoxPreference;

.field private mAutodialGuide:Landroid/preference/Preference;

.field private mCategory:Landroid/preference/PreferenceCategory;

.field private mCountryNum:Landroid/preference/Preference;

.field private mInfoCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setCurrentView(Ljava/lang/Boolean;)V
    .locals 9
    .parameter "autoFlag"

    .prologue
    .line 80
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    new-instance v4, Lcom/android/phone/LGTRoamingData;

    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/phone/LGTRoamingData;-><init>(Landroid/content/Context;)V

    .line 82
    .local v4, rData:Lcom/android/phone/LGTRoamingData;
    const-string v2, ""

    .line 83
    .local v2, CountryTitle:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/LGTSetAutoDialing;->mCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 84
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "country_id"

    const-wide/16 v7, 0x52

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 85
    .local v0, CountryId:Ljava/lang/Long;
    invoke-virtual {v4, v0}, Lcom/android/phone/LGTRoamingData;->selectCountry(Ljava/lang/Long;)[Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, CountryInfo:[Ljava/lang/String;
    const-string v3, ""

    .line 87
    .local v3, countryName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->finish()V

    .line 89
    invoke-virtual {v4}, Lcom/android/phone/LGTRoamingData;->close()V

    .line 105
    .end local v0           #CountryId:Ljava/lang/Long;
    .end local v1           #CountryInfo:[Ljava/lang/String;
    .end local v2           #CountryTitle:Ljava/lang/String;
    .end local v3           #countryName:Ljava/lang/String;
    .end local v4           #rData:Lcom/android/phone/LGTRoamingData;
    :cond_0
    :goto_0
    return-void

    .line 92
    .restart local v0       #CountryId:Ljava/lang/Long;
    .restart local v1       #CountryInfo:[Ljava/lang/String;
    .restart local v2       #CountryTitle:Ljava/lang/String;
    .restart local v3       #countryName:Ljava/lang/String;
    .restart local v4       #rData:Lcom/android/phone/LGTRoamingData;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ko_KR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 93
    const/4 v5, 0x1

    aget-object v3, v1, v5

    .line 97
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    iget-object v5, p0, Lcom/android/phone/LGTSetAutoDialing;->mCountryNum:Landroid/preference/Preference;

    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v5, p0, Lcom/android/phone/LGTSetAutoDialing;->mInfoCategory:Landroid/preference/PreferenceCategory;

    if-eqz v5, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/LGTSetAutoDialing;->mInfoCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 103
    :cond_2
    invoke-virtual {v4}, Lcom/android/phone/LGTRoamingData;->close()V

    goto :goto_0

    .line 95
    :cond_3
    const/4 v5, 0x2

    aget-object v3, v1, v5

    goto :goto_1
.end method

.method private setDefaultRoamingValue()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x6c

    .line 133
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "country_id"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 134
    new-instance v1, Lcom/android/phone/LGTRoamingData;

    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/LGTRoamingData;-><init>(Landroid/content/Context;)V

    .line 135
    .local v1, rData:Lcom/android/phone/LGTRoamingData;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/LGTRoamingData;->selectCountry(Ljava/lang/Long;)[Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, countryInfo:[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->finish()V

    .line 138
    invoke-virtual {v1}, Lcom/android/phone/LGTRoamingData;->close()V

    .line 145
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "country_code"

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 142
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CONTURY_NAME_KOR"

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CONTURY_NAME_ENG"

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 144
    invoke-virtual {v1}, Lcom/android/phone/LGTRoamingData;->close()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActionRoamingSet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 40
    const-string v5, "SetAutoDialing"

    const-string v6, "Action : ActionRoamingSet"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->finish()V

    .line 45
    :cond_0
    const v5, 0x7f06003f

    invoke-virtual {p0, v5}, Lcom/android/phone/LGTSetAutoDialing;->addPreferencesFromResource(I)V

    .line 46
    const-string v5, "pc_auto_dialing_enable"

    invoke-virtual {p0, v5}, Lcom/android/phone/LGTSetAutoDialing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/phone/LGTSetAutoDialing;->mCategory:Landroid/preference/PreferenceCategory;

    .line 47
    const-string v5, "toggle_auto_dialing"

    invoke-virtual {p0, v5}, Lcom/android/phone/LGTSetAutoDialing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/LGTSetAutoDialing;->mAutoDial:Landroid/preference/CheckBoxPreference;

    .line 48
    const-string v5, "country_code"

    invoke-virtual {p0, v5}, Lcom/android/phone/LGTSetAutoDialing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/LGTSetAutoDialing;->mCountryNum:Landroid/preference/Preference;

    .line 49
    const-string v5, "info_category"

    invoke-virtual {p0, v5}, Lcom/android/phone/LGTSetAutoDialing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/phone/LGTSetAutoDialing;->mInfoCategory:Landroid/preference/PreferenceCategory;

    .line 50
    const-string v5, "auto_dialing_guide"

    invoke-virtual {p0, v5}, Lcom/android/phone/LGTSetAutoDialing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/LGTSetAutoDialing;->mAutodialGuide:Landroid/preference/Preference;

    .line 52
    iget-object v5, p0, Lcom/android/phone/LGTSetAutoDialing;->mCountryNum:Landroid/preference/Preference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 53
    iget-object v5, p0, Lcom/android/phone/LGTSetAutoDialing;->mAutoDial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 54
    iget-object v5, p0, Lcom/android/phone/LGTSetAutoDialing;->mAutodialGuide:Landroid/preference/Preference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "country_code"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, countryNum:Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 58
    :cond_1
    const-string v5, "SetAutoDialing"

    const-string v6, "countryNum is Empty"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0}, Lcom/android/phone/LGTSetAutoDialing;->setDefaultRoamingValue()V

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "country_code"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "CONTURY_NAME_KOR"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, countryName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "CONTURY_NAME_ENG"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, countryName_eng:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_dial_enable"

    const/16 v7, 0xc

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 65
    .local v0, autoDialing:Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_dial_enable"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 66
    .local v1, autoDialingProvider:I
    const-string v5, "SetAutoDialing"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "countryNum = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", countryName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", countryName_eng = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", autoDialing = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", autoDialingProvider = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 64
    .end local v0           #autoDialing:Ljava/lang/Boolean;
    .end local v1           #autoDialingProvider:I
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v3, 0x0

    .line 108
    const-string v1, "toggle_auto_dialing"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 109
    check-cast v0, Ljava/lang/Boolean;

    .line 110
    .local v0, value:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    const v1, 0x7f0905ca

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 112
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_dial_enable"

    const/16 v3, 0xb

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/android/phone/LGTSetAutoDialing;->mCountryNum:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 118
    invoke-direct {p0, v0}, Lcom/android/phone/LGTSetAutoDialing;->setCurrentView(Ljava/lang/Boolean;)V

    .line 120
    .end local v0           #value:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 114
    .restart local v0       #value:Ljava/lang/Boolean;
    :cond_1
    const v1, 0x7f0905cb

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 115
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_dial_enable"

    const/16 v3, 0xc

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 124
    const-string v0, "country_code"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/phone/LGTCountryList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTSetAutoDialing;->startActivity(Landroid/content/Intent;)V

    .line 129
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_1
    const-string v0, "auto_dialing_guide"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/phone/LGTAutoDialingGuide;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTSetAutoDialing;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 73
    invoke-virtual {p0}, Lcom/android/phone/LGTSetAutoDialing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_dial_enable"

    const/16 v4, 0xc

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 74
    .local v0, autoFlag:Z
    :goto_0
    iget-object v2, p0, Lcom/android/phone/LGTSetAutoDialing;->mAutoDial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 75
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/LGTSetAutoDialing;->setCurrentView(Ljava/lang/Boolean;)V

    .line 76
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 77
    return-void

    .line 73
    .end local v0           #autoFlag:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
