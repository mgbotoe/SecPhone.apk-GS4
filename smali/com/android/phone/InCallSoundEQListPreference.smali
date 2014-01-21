.class public Lcom/android/phone/InCallSoundEQListPreference;
.super Landroid/preference/ListPreference;
.source "InCallSoundEQListPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0}, Lcom/android/phone/InCallSoundEQListPreference;->init()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-direct {p0}, Lcom/android/phone/InCallSoundEQListPreference;->init()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallSoundEQListPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/phone/InCallSoundEQListPreference;->goMySound()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/InCallSoundEQListPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/InCallSoundEQListPreference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/phone/InCallSoundEQListPreference;->checkingDiagnosis(I)V

    return-void
.end method

.method private checkingDiagnosis(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voicecall_eq_list_value"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    iget-object v0, p0, Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hearing_diagnosis"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/android/phone/InCallSoundEQListPreference;->goMySound()V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hearing_revision"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private goMySound()V
    .locals 4

    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.hearingadjust.launch"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InCallSoundEQListPreference;->log(Ljava/lang/String;Z)V

    .line 103
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/phone/InCallSoundEQListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p0}, Lcom/android/phone/InCallSoundEQListPreference;->updatePreference()V

    .line 64
    invoke-direct {p0}, Lcom/android/phone/InCallSoundEQListPreference;->setListener()V

    .line 65
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 184
    const-string v0, "InCallSoundEQListPreference"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 185
    return-void
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/android/phone/InCallSoundEQListPreference$4;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallSoundEQListPreference$4;-><init>(Lcom/android/phone/InCallSoundEQListPreference;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallSoundEQListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 172
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 0
    .parameter "positiveResult"

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 176
    invoke-virtual {p0}, Lcom/android/phone/InCallSoundEQListPreference;->updatePreference()V

    .line 177
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 90
    iget-object v0, p0, Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hearing_diagnosis"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const v0, 0x7f09039a

    new-instance v1, Lcom/android/phone/InCallSoundEQListPreference$1;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallSoundEQListPreference$1;-><init>(Lcom/android/phone/InCallSoundEQListPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    :cond_0
    return-void
.end method

.method public updatePreference()V
    .locals 7

    .prologue
    .line 68
    iget-object v4, p0, Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->getVoiceEqListValue(Landroid/content/Context;)I

    move-result v1

    .line 70
    .local v1, eqListValue:I
    iget-object v4, p0, Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, eqListEntries:[Ljava/lang/String;
    array-length v4, v0

    if-lt v1, v4, :cond_0

    .line 75
    iget-object v4, p0, Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voicecall_eq_list_value"

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 77
    const/4 v1, 0x3

    .line 80
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, value:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallSoundEQListPreference;->setValue(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/phone/InCallSoundEQListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallSoundEQListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 84
    .local v2, index:I
    aget-object v4, v0, v2

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallSoundEQListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method
