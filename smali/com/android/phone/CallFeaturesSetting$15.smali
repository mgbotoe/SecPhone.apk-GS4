.class Lcom/android/phone/CallFeaturesSetting$15;
.super Landroid/content/BroadcastReceiver;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 3945
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$15;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3948
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3949
    .local v0, action:Ljava/lang/String;
    const-string v10, "CallFeaturesSetting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onReceive() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3950
    const-string v10, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3951
    const-string v10, "state"

    invoke-virtual {p2, v10, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 3952
    .local v7, state:Ljava/lang/Boolean;
    const-string v10, "CallFeaturesSetting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onReceive() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3954
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$15;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const-string v10, "sip_settings_category_key"

    invoke-virtual {v8, v10}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 3955
    .local v6, sipSettings:Landroid/preference/Preference;
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$15;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v8}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 3956
    .local v4, screen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 3957
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3958
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 3959
    .local v3, pref:Landroid/preference/Preference;
    if-eq v3, v6, :cond_0

    .line 3960
    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 3957
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3963
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #pref:Landroid/preference/Preference;
    .end local v4           #screen:Landroid/preference/PreferenceScreen;
    .end local v6           #sipSettings:Landroid/preference/Preference;
    :cond_1
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting$15;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v9}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 3983
    .end local v7           #state:Ljava/lang/Boolean;
    :cond_2
    :goto_1
    return-void

    .line 3965
    :cond_3
    const-string v10, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3966
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$15;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$3000(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "preferred_tty_mode"

    invoke-static {v8, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 3968
    .local v5, settingsTtyMode:I
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$15;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mForeground:Z
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$3100(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3969
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$15;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$3200(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/ListPreference;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 3970
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$15;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->updatePreferredTtyModeSummary(I)V
    invoke-static {v8, v5}, Lcom/android/phone/CallFeaturesSetting;->access$3300(Lcom/android/phone/CallFeaturesSetting;I)V

    goto :goto_1

    .line 3972
    .end local v5           #settingsTtyMode:I
    :cond_4
    const-string v10, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3973
    const-string v10, "state"

    invoke-virtual {p2, v10, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_5

    move v7, v8

    .line 3974
    .local v7, state:Z
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mReceiver - ACTION_HEADSET_PLUG : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v9, v8}, Lcom/android/phone/CallFeaturesSetting;->access$1500(Ljava/lang/String;Z)V

    .line 3975
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$15;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->isAirplaneModeOn()Z
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$3400(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3976
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$15;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->updateNoiseReduction()V
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$3500(Lcom/android/phone/CallFeaturesSetting;)V

    goto :goto_1

    .end local v7           #state:Z
    :cond_5
    move v7, v9

    .line 3973
    goto :goto_2

    .line 3978
    :cond_6
    const-string v10, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3979
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mReceiver - ACTION_CONNECTION_STATE_CHANGED : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v11, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v9, v8}, Lcom/android/phone/CallFeaturesSetting;->access$1500(Ljava/lang/String;Z)V

    .line 3981
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$15;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->updateNoiseReduction()V
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$3500(Lcom/android/phone/CallFeaturesSetting;)V

    goto/16 :goto_1
.end method
