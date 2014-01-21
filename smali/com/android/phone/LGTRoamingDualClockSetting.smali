.class public Lcom/android/phone/LGTRoamingDualClockSetting;
.super Landroid/preference/PreferenceActivity;
.source "LGTRoamingDualClockSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;
    }
.end annotation


# static fields
.field private static mSelect:I


# instance fields
.field private dualclock_manual_select:Landroid/preference/PreferenceScreen;

.field final handler:Landroid/os/Handler;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field progressThread:Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;

.field private use_dualclock:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/LGTRoamingDualClockSetting;->mSelect:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 123
    new-instance v0, Lcom/android/phone/LGTRoamingDualClockSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTRoamingDualClockSetting$1;-><init>(Lcom/android/phone/LGTRoamingDualClockSetting;)V

    iput-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->handler:Landroid/os/Handler;

    .line 136
    return-void
.end method

.method private getSelectedMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/android/phone/LGTRoamingDualClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_dual_clock_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 101
    :cond_0
    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f060036

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTRoamingDualClockSetting;->addPreferencesFromResource(I)V

    .line 45
    const-string v0, "use_dualclock_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTRoamingDualClockSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    .line 46
    const-string v0, "dualclock_manual_select_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTRoamingDualClockSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->dualclock_manual_select:Landroid/preference/PreferenceScreen;

    .line 48
    sget v0, Lcom/android/phone/LGTRoamingDualClockSetting;->mSelect:I

    packed-switch v0, :pswitch_data_0

    .line 53
    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 56
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 106
    packed-switch p1, :pswitch_data_0

    .line 119
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 109
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/LGTRoamingDualClockSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 110
    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0905b5

    invoke-virtual {p0, v1}, Lcom/android/phone/LGTRoamingDualClockSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 114
    new-instance v0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;

    iget-object v1, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;-><init>(Lcom/android/phone/LGTRoamingDualClockSetting;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->progressThread:Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;

    .line 115
    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->progressThread:Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;

    invoke-virtual {v0}, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->start()V

    .line 117
    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 60
    iget-object v6, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 61
    sput v5, Lcom/android/phone/LGTRoamingDualClockSetting;->mSelect:I

    .line 62
    invoke-virtual {p0}, Lcom/android/phone/LGTRoamingDualClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 63
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    iget-object v6, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/android/phone/LGTRoamingDualClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "roaming_dual_clock_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 66
    const v6, 0x7f0905ae

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 86
    .end local v1           #cr:Landroid/content/ContentResolver;
    :goto_0
    return v4

    .line 68
    .restart local v1       #cr:Landroid/content/ContentResolver;
    :cond_0
    iget-object v6, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/android/phone/LGTRoamingDualClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "roaming_dual_clock_enabled"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 70
    const v6, 0x7f0905af

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 73
    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_1
    iget-object v6, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->dualclock_manual_select:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 74
    const/4 v5, 0x2

    sput v5, Lcom/android/phone/LGTRoamingDualClockSetting;->mSelect:I

    .line 76
    const-string v0, "com.android.settings.DateTimeSettings"

    .line 77
    .local v0, clazz:Ljava/lang/String;
    const-string v3, "com.android.settings"

    .line 78
    .local v3, pkg:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.DateTimeSettings"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v2}, Lcom/android/phone/LGTRoamingDualClockSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0           #clazz:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #pkg:Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 86
    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 94
    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/phone/LGTRoamingDualClockSetting;->getSelectedMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 95
    return-void
.end method
