.class public Lcom/android/phone/DefaultRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "DefaultRingtonePreference.java"


# instance fields
.field private isWidget:Ljava/lang/Boolean;

.field private mResultListener:Lcom/android/phone/RingtoneRecommender$OnHighlightResultListener;

.field private mRingtoneKeytoneSettings:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

.field private mSimIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    .line 49
    iput v1, p0, Lcom/android/phone/DefaultRingtonePreference;->mSimIndex:I

    .line 139
    new-instance v0, Lcom/android/phone/DefaultRingtonePreference$1;

    invoke-direct {v0, p0}, Lcom/android/phone/DefaultRingtonePreference$1;-><init>(Lcom/android/phone/DefaultRingtonePreference;)V

    iput-object v0, p0, Lcom/android/phone/DefaultRingtonePreference;->mResultListener:Lcom/android/phone/RingtoneRecommender$OnHighlightResultListener;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DefaultRingtonePreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/phone/DefaultRingtonePreference;->mSimIndex:I

    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v3, 0x1

    .line 111
    invoke-super {p0, p1, p2, p3}, Landroid/preference/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 113
    .local v0, result:Ljava/lang/Boolean;
    if-ne p2, v3, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/phone/DefaultRingtonePreference;->mRingtoneKeytoneSettings:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-virtual {p0}, Lcom/android/phone/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->onMusicPickerChosen(I)V

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/phone/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq p2, v3, :cond_1

    .line 118
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    .line 119
    iget-object v1, p0, Lcom/android/phone/DefaultRingtonePreference;->mRingtoneKeytoneSettings:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->finish()V

    .line 121
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "ringtonePickerIntent"

    .prologue
    const/4 v2, 0x1

    .line 57
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 63
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0}, Lcom/android/phone/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 67
    :cond_0
    const-string v0, "neutral_button"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    const-string v0, "neutral_button_text"

    invoke-virtual {p0}, Lcom/android/phone/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09084e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    :cond_1
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/phone/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 9
    .parameter "ringtoneUri"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/phone/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 77
    if-eqz p1, :cond_1

    .line 78
    const/4 v6, 0x0

    .line 81
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "title"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 83
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, mFilePath:Ljava/lang/String;
    new-instance v8, Lcom/android/phone/RingtoneRecommender;

    invoke-direct {v8}, Lcom/android/phone/RingtoneRecommender;-><init>()V

    .line 86
    .local v8, mRecommender:Lcom/android/phone/RingtoneRecommender;
    invoke-virtual {v8, v7}, Lcom/android/phone/RingtoneRecommender;->open(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {v8}, Lcom/android/phone/RingtoneRecommender;->is_extractable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/phone/DefaultRingtonePreference;->mResultListener:Lcom/android/phone/RingtoneRecommender$OnHighlightResultListener;

    invoke-virtual {v8, v0}, Lcom/android/phone/RingtoneRecommender;->doExtract(Lcom/android/phone/RingtoneRecommender$OnHighlightResultListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v7           #mFilePath:Ljava/lang/String;
    .end local v8           #mRecommender:Lcom/android/phone/RingtoneRecommender;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 97
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 101
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    return-void

    .line 90
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #mFilePath:Ljava/lang/String;
    .restart local v8       #mRecommender:Lcom/android/phone/RingtoneRecommender;
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, v8, Lcom/android/phone/RingtoneRecommender;->mIsOpen:Z

    .line 91
    invoke-virtual {v8}, Lcom/android/phone/RingtoneRecommender;->close()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    .end local v7           #mFilePath:Ljava/lang/String;
    .end local v8           #mRecommender:Lcom/android/phone/RingtoneRecommender;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 97
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public setObject(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;I)V
    .locals 0
    .parameter "ringtoneKeytoneSettings"
    .parameter "simIndex"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/phone/DefaultRingtonePreference;->mRingtoneKeytoneSettings:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    .line 135
    iput p2, p0, Lcom/android/phone/DefaultRingtonePreference;->mSimIndex:I

    .line 136
    return-void
.end method
