.class Lcom/android/phone/callsettings/RingtoneKeytoneSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "RingtoneKeytoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$3;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 368
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 370
    .local v1, extras:Landroid/os/Bundle;
    const/4 v2, 0x2

    .line 371
    .local v2, ringerMode:I
    if-eqz v1, :cond_1

    .line 372
    const-string v3, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 380
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 403
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #ringerMode:I
    :cond_0
    :goto_1
    return-void

    .line 375
    .restart local v1       #extras:Landroid/os/Bundle;
    .restart local v2       #ringerMode:I
    :cond_1
    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 376
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    goto :goto_0

    .line 384
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$3;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    #getter for: Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->access$300(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 385
    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$3;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    #getter for: Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->access$300(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 390
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$3;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    #getter for: Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->access$300(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 391
    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$3;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    #getter for: Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->access$300(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 395
    :pswitch_2
    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$3;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    #getter for: Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->access$300(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 396
    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$3;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    #getter for: Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->access$300(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 380
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
