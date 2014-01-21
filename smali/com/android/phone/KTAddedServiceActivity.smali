.class public Lcom/android/phone/KTAddedServiceActivity;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "KTAddedServiceActivity.java"


# instance fields
.field private mCallForwardingAll:Landroid/preference/PreferenceScreen;

.field private mCallForwardingCon:Landroid/preference/PreferenceScreen;

.field private mCallWaiting:Landroid/preference/PreferenceScreen;

.field private mInbox:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 81
    const-string v0, "KTAddedServiceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 83
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v1, 0x7f060027

    invoke-virtual {p0, v1}, Lcom/android/phone/KTAddedServiceActivity;->addPreferencesFromResource(I)V

    .line 53
    const-string v1, "inbox_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/KTAddedServiceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/KTAddedServiceActivity;->mInbox:Landroid/preference/PreferenceScreen;

    .line 54
    const-string v1, "callforwarding_conditional_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/KTAddedServiceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/KTAddedServiceActivity;->mCallForwardingCon:Landroid/preference/PreferenceScreen;

    .line 55
    const-string v1, "callforwarding_all_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/KTAddedServiceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/KTAddedServiceActivity;->mCallForwardingAll:Landroid/preference/PreferenceScreen;

    .line 56
    const-string v1, "callwaiting_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/KTAddedServiceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/KTAddedServiceActivity;->mCallWaiting:Landroid/preference/PreferenceScreen;

    .line 58
    invoke-virtual {p0}, Lcom/android/phone/KTAddedServiceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 59
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 63
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 77
    .local v0, itemId:I
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
