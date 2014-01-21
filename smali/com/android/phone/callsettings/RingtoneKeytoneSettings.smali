.class public Lcom/android/phone/callsettings/RingtoneKeytoneSettings;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "RingtoneKeytoneSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static mSimSlot:I


# instance fields
.field private fromSettingSearch:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtoneDuosPreference:Landroid/preference/Preference;

.field private mRingtoneGsmPreference:Landroid/preference/Preference;

.field private final mRingtoneLookupComplete:Landroid/os/Handler;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

.field private mVibrationPreference:Landroid/preference/Preference;

.field private offset:Ljava/lang/String;

.field prefSet:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mSimSlot:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 120
    new-instance v0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$1;-><init>(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneLookupComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;ILandroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private goVibrationPattern()V
    .locals 4

    .prologue
    .line 472
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.personalvibration.SelectPatternDialog"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception in goVibrationPattern : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 767
    const-string v0, "RingtonesKeytonesSettings"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 771
    const-string v0, "RingtonesKeytonesSettings"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 772
    return-void
.end method

.method private lookupRingtoneName()V
    .locals 2

    .prologue
    .line 516
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 517
    return-void
.end method

.method private updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 12
    .parameter "originalUri"

    .prologue
    const/4 v6, 0x0

    .line 678
    const-string v9, "RingtonesKeytonesSettings"

    const-string v10, "UpdateMediaDB"

    invoke-static {v9, v10}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 680
    .local v3, filePath:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 681
    .local v2, extension:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 682
    const/16 v9, 0x2e

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 683
    .local v0, dotPos:I
    if-ltz v0, :cond_0

    .line 684
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 689
    .end local v0           #dotPos:I
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 691
    .local v4, mimeType:Ljava/lang/String;
    const-string v9, "RingtonesKeytonesSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateMediaDB - extension("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), mimeType("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    if-nez v4, :cond_2

    const-string v9, "3ga"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 696
    const-string v9, "RingtonesKeytonesSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateMediaDB - no mimeType, but it\'s audio file extension - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 722
    .local v5, newSoundFile:Ljava/io/File;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 723
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "_data"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v9, "title"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v9, "mime_type"

    const-string v10, "audio/*"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v9, "_size"

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 728
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 729
    .local v7, tempUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_data=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 730
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 731
    .local v6, newUri:Landroid/net/Uri;
    const-string v9, "RingtonesKeytonesSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateMediaDB - tempUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), newUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v5           #newSoundFile:Ljava/io/File;
    .end local v6           #newUri:Landroid/net/Uri;
    .end local v7           #tempUri:Landroid/net/Uri;
    .end local v8           #values:Landroid/content/ContentValues;
    :goto_0
    return-object v6

    .line 697
    .restart local v4       #mimeType:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v9, "audio"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 698
    const-string v9, "RingtonesKeytonesSettings"

    const-string v10, "updateMediaDB - mimeType is not audio - return null"

    invoke-static {v9, v10}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 701
    .end local v4           #mimeType:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 702
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "RingtonesKeytonesSettings"

    const-string v10, "updateMediaDB - exception is Occured - return null"

    invoke-static {v9, v10, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateRingtoneData(I)V
    .locals 2
    .parameter "ringtoneType"

    .prologue
    const/4 v1, 0x1

    .line 737
    if-ne p1, v1, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-direct {p0, v1, v0, v1}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    .line 751
    :cond_0
    return-void
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 8
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    .line 488
    if-nez p2, :cond_0

    .line 510
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 490
    .local v1, ringtoneUri:Landroid/net/Uri;
    const v0, 0x1040651

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 492
    .local v7, summary:Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 493
    const v0, 0x104064f

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 509
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneLookupComplete:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneLookupComplete:Landroid/os/Handler;

    invoke-virtual {v2, p3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 497
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 499
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 500
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 501
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 503
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 505
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .locals 7
    .parameter "pickedUri"
    .parameter "ringtoneType"

    .prologue
    const v6, 0x7f09084f

    const/4 v5, 0x0

    .line 596
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 597
    :cond_0
    const-string v2, "RingtonesKeytonesSettings"

    const-string v3, "handleRingtonePicked() : Not changed"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_1
    :goto_0
    const-string v2, "RingtonesKeytonesSettings"

    const-string v3, "updateRingtoneData(ringtoneType)"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-direct {p0, p2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->updateRingtoneData(I)V

    .line 639
    :goto_1
    return-void

    .line 606
    :cond_2
    const-string v2, "RingtonesKeytonesSettings"

    const-string v3, "handleRingtonePicked updating media DB"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 608
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 610
    if-nez p1, :cond_3

    .line 611
    const-string v2, "RingtonesKeytonesSettings"

    const-string v3, "handleRingtonePicked - pickedUri is null"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 617
    :cond_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 618
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "is_ringtone"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 621
    const-string v2, "RingtonesKeytonesSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRingtonePicked - pickedUri("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), ringtoneType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :goto_2
    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->offset:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 629
    const/16 v2, 0x8

    if-ne p2, v2, :cond_4

    .line 630
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recommendation_time_2"

    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "RingtonesKeytonesSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRingtonePicked(IllegalArgumentException): pickedUri is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 633
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recommendation_time"

    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 550
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 552
    packed-switch p1, :pswitch_data_0

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 554
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 555
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 556
    .local v1, pickedUri:Landroid/net/Uri;
    const-string v3, "highlight_offset"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->offset:Ljava/lang/String;

    .line 557
    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->offset:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?highlight_offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->offset:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, paramaterString:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, splitUri:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 562
    .end local v0           #paramaterString:Ljava/lang/String;
    .end local v2           #splitUri:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 567
    .end local v1           #pickedUri:Landroid/net/Uri;
    :pswitch_1
    if-ne p2, v3, :cond_0

    .line 568
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 569
    .restart local v1       #pickedUri:Landroid/net/Uri;
    const-string v3, "highlight_offset"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->offset:Ljava/lang/String;

    .line 570
    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->offset:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 571
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?highlight_offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->offset:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    .restart local v0       #paramaterString:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 573
    .restart local v2       #splitUri:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 575
    .end local v0           #paramaterString:Ljava/lang/String;
    .end local v2           #splitUri:Ljava/lang/String;
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {p0, v1, v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 552
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 143
    invoke-super/range {p0 .. p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    const-string v11, "audio"

    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioManager;

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 145
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "is_ringtone_duos"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 146
    const-string v11, "duos"

    invoke-direct {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    .line 147
    const v11, 0x7f060034

    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->addPreferencesFromResource(I)V

    .line 148
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    .line 150
    const-string v11, "callsettings_device_ringtone"

    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 151
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    check-cast v11, Lcom/android/phone/DefaultRingtonePreference;

    const/4 v12, 0x0

    invoke-virtual {v11, p0, v12}, Lcom/android/phone/DefaultRingtonePreference;->setObject(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;I)V

    .line 153
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "CallSettingTab"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_2

    .line 154
    const-string v11, "SIM1"

    invoke-direct {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    .line 155
    const/4 v11, 0x0

    sput v11, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mSimSlot:I

    .line 157
    const-string v11, "callsettings_device_gsm_ringtone"

    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    .line 158
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    if-eqz v11, :cond_0

    .line 159
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    .line 304
    :cond_0
    :goto_0
    new-instance v11, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$2;

    invoke-direct {v11, p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$2;-><init>(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)V

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 323
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 324
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 326
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 328
    :cond_1
    return-void

    .line 163
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_2
    const-string v11, "SIM2"

    invoke-direct {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    .line 164
    const/4 v11, 0x1

    sput v11, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mSimSlot:I

    .line 165
    const-string v11, "callsettings_device_gsm_ringtone"

    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    .line 166
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    check-cast v11, Lcom/android/phone/DefaultRingtonePreference;

    const/4 v12, 0x1

    invoke-virtual {v11, p0, v12}, Lcom/android/phone/DefaultRingtonePreference;->setObject(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;I)V

    .line 168
    const-string v11, "callsettings_device_ringtone"

    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 169
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v11, :cond_0

    .line 170
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 171
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    goto :goto_0

    .line 175
    :cond_3
    const v11, 0x7f060033

    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->addPreferencesFromResource(I)V

    .line 177
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    .line 179
    const-string v11, "callsettings_keytones"

    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 180
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_4

    .line 181
    iget-object v12, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "dtmf_tone"

    const/4 v14, 0x1

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 185
    :cond_4
    const-string v11, "callsettings_vibrate_when_ringing"

    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 186
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_5

    .line 187
    const-string v11, "vibrator"

    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Vibrator;

    .line 188
    .local v10, vibrator:Landroid/os/Vibrator;
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 189
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 196
    .end local v10           #vibrator:Landroid/os/Vibrator;
    :cond_5
    :goto_2
    const-string v11, "callsettings_device_vibration"

    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrationPreference:Landroid/preference/Preference;

    .line 197
    const-string v11, "callsettings_device_ringtone"

    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 198
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    check-cast v11, Lcom/android/phone/DefaultRingtonePreference;

    const/4 v12, 0x0

    invoke-virtual {v11, p0, v12}, Lcom/android/phone/DefaultRingtonePreference;->setObject(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;I)V

    .line 200
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    const-string v12, "callsettings_device_duos_ringtone"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    .line 203
    const-string v11, "feature_chn_duos_cdma_gsm"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 205
    const v11, 0x7f09027e

    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 206
    .local v7, ringtoneTitle:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "(CDMA)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, cdmaRingtoneString:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "(GSM)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, gsmRingtoneString:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v11, :cond_6

    .line 210
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v11, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    :cond_6
    const-string v11, "callsettings_device_gsm_ringtone"

    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    .line 213
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    check-cast v11, Lcom/android/phone/DefaultRingtonePreference;

    const/4 v12, 0x1

    invoke-virtual {v11, p0, v12}, Lcom/android/phone/DefaultRingtonePreference;->setObject(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;I)V

    .line 214
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    if-eqz v11, :cond_7

    .line 215
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    invoke-virtual {v11, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    :cond_7
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    if-eqz v11, :cond_0

    .line 219
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 220
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    goto/16 :goto_0

    .line 181
    .end local v1           #cdmaRingtoneString:Ljava/lang/String;
    .end local v2           #gsmRingtoneString:Ljava/lang/String;
    .end local v7           #ringtoneTitle:Ljava/lang/String;
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 191
    .restart local v10       #vibrator:Landroid/os/Vibrator;
    :cond_9
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_2

    .line 223
    .end local v10           #vibrator:Landroid/os/Vibrator;
    :cond_a
    const-string v11, "\n\n ============ debug not cdma_gsm ============"

    invoke-direct {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    .line 225
    const-string v11, "feature_chn_duos_gsm_gsm"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "feature_marvell_dsds"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    const-string v11, "sec_product_feature_common_dsds_support"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    :cond_b
    const-string v11, "feature_multisim"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 230
    :cond_c
    const-string v11, "gsm.sim.currentcardstatus"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 231
    .local v8, simState1:I
    const-string v11, "gsm.sim.currentcardstatus2"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 233
    .local v9, simState2:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtilsDsds;->getDualSimState(Landroid/content/Context;)I

    move-result v3

    .line 235
    .local v3, mDualSimState:I
    const/4 v4, 0x0

    .line 236
    .local v4, mIsDualSimTurnedOn:Z
    const/4 v5, 0x0

    .line 237
    .local v5, mIsSIM1On:Z
    const/4 v6, 0x0

    .line 238
    .local v6, mIsSIM2On:Z
    const-string v11, "feature_multisim"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 239
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/internal/telephony/MultiSimManager;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v5

    .line 240
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/internal/telephony/MultiSimManager;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v6

    .line 241
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_d

    if-eqz v5, :cond_d

    if-eqz v6, :cond_d

    .line 242
    const/4 v4, 0x1

    .line 246
    :cond_d
    const-string v11, "feature_chn_duos_gsm_gsm"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x3

    if-ne v8, v11, :cond_e

    const/4 v11, 0x3

    if-eq v9, v11, :cond_10

    :cond_e
    const-string v11, "feature_marvell_dsds"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    const-string v11, "sec_product_feature_common_dsds_support"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    const/4 v11, 0x3

    if-eq v3, v11, :cond_10

    :cond_f
    const-string v11, "feature_multisim"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    if-eqz v4, :cond_12

    .line 251
    :cond_10
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v11, :cond_11

    .line 252
    const-string v11, "remove mRingtonePreference"

    invoke-direct {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    .line 253
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 256
    :cond_11
    const-string v11, "callsettings_device_gsm_ringtone"

    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    .line 257
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    if-eqz v11, :cond_0

    .line 258
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    goto/16 :goto_0

    .line 261
    :cond_12
    const-string v11, "feature_chn_duos_gsm_gsm"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    const/4 v11, 0x3

    if-eq v9, v11, :cond_16

    :cond_13
    const-string v11, "feature_marvell_dsds"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    const-string v11, "sec_product_feature_common_dsds_support"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    const/4 v11, 0x2

    if-eq v3, v11, :cond_16

    const/4 v11, 0x4

    if-eq v3, v11, :cond_16

    :cond_14
    const-string v11, "feature_multisim"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v11

    if-eqz v11, :cond_15

    if-eqz v5, :cond_16

    :cond_15
    const-string v11, "ril.MSIMM"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_18

    .line 267
    :cond_16
    const-string v11, "callsettings_device_gsm_ringtone"

    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    .line 268
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    check-cast v11, Lcom/android/phone/DefaultRingtonePreference;

    const/4 v12, 0x1

    invoke-virtual {v11, p0, v12}, Lcom/android/phone/DefaultRingtonePreference;->setObject(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;I)V

    .line 270
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v11, :cond_17

    .line 271
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 272
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 274
    :cond_17
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    if-eqz v11, :cond_0

    .line 275
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 276
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    goto/16 :goto_0

    .line 279
    :cond_18
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    if-eqz v11, :cond_19

    .line 280
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    .line 283
    :cond_19
    const-string v11, "callsettings_device_gsm_ringtone"

    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    .line 284
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    if-eqz v11, :cond_0

    .line 285
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 286
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    goto/16 :goto_0

    .line 290
    .end local v3           #mDualSimState:I
    .end local v4           #mIsDualSimTurnedOn:Z
    .end local v5           #mIsSIM1On:Z
    .end local v6           #mIsSIM2On:Z
    .end local v8           #simState1:I
    .end local v9           #simState2:I
    :cond_1a
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    if-eqz v11, :cond_1b

    .line 291
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 292
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    .line 294
    :cond_1b
    const-string v11, "callsettings_device_gsm_ringtone"

    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    .line 295
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    if-eqz v11, :cond_0

    .line 296
    iget-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 297
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneGsmPreference:Landroid/preference/Preference;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 441
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 451
    :goto_0
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    .line 452
    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 446
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 447
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onMusicPickerChosen(I)V
    .locals 3
    .parameter "ringtoneType"

    .prologue
    const/4 v2, 0x1

    .line 582
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 583
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 586
    const-string v1, "enable_ringtone_recommender"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 587
    if-ne p1, v2, :cond_0

    .line 588
    invoke-virtual {p0, v0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 593
    :goto_0
    return-void

    .line 591
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x1

    .line 520
    iget-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    .line 521
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 522
    .local v0, doVibrate:Z
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrate_when_ringing"

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 525
    .end local v0           #doVibrate:Z
    :cond_0
    return v2

    .line 522
    .restart local v0       #doVibrate:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 531
    iget-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 532
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dtmf_tone"

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 545
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_2
    return v0

    .line 532
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 534
    :cond_2
    const-string v1, "callsettings_device_vibration"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_3

    .line 535
    invoke-direct {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->goVibrationPattern()V

    goto :goto_1

    .line 536
    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 537
    const-string v1, "mRingtoneDuosPreference"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    .line 538
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/callsettings/CallSettingsTabFragment;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 539
    const-string v2, "TabTitleString"

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 540
    const-string v2, "CallSettingMenu"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 541
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 332
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 333
    iput-boolean v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->fromSettingSearch:Z

    .line 334
    invoke-direct {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->lookupRingtoneName()V

    .line 336
    iget-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 337
    sget-boolean v1, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mOpenDetailMenu:Z

    if-eqz v1, :cond_7

    sget v1, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mSettingValue:I

    if-eq v1, v6, :cond_7

    sget-object v1, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v4, "callsettings_keytones"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 338
    iget-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    sget-boolean v4, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mCheckValue:Z

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 339
    iput-boolean v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->fromSettingSearch:Z

    .line 346
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "is_ringtone_duos"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 347
    :cond_1
    const-string v1, "updateDeviceVibrationName()"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->updateDeviceVibrationName()V

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    .line 357
    sget-boolean v1, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mOpenDetailMenu:Z

    if-eqz v1, :cond_9

    sget v1, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mSettingValue:I

    if-eq v1, v6, :cond_9

    sget-object v1, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v4, "callsettings_vibrate_when_ringing"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 358
    iget-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    sget-boolean v4, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mCheckValue:Z

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 359
    iput-boolean v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->fromSettingSearch:Z

    .line 365
    :cond_3
    :goto_1
    new-instance v1, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$3;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$3;-><init>(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 406
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 407
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 410
    const-string v1, "feature_chn_duos_gsm_gsm"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "sec_product_feature_common_dsds_support"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 413
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 414
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-nez v1, :cond_a

    .line 415
    sput v3, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mSimSlot:I

    .line 422
    :cond_5
    :goto_2
    iget-boolean v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->fromSettingSearch:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is called by SettingSearch"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;Z)V

    .line 424
    sput-boolean v3, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mOpenDetailMenu:Z

    .line 425
    iput-boolean v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->fromSettingSearch:Z

    .line 426
    sget-object v1, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v2, "callsettings_keytones"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 427
    iget-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 432
    :cond_6
    :goto_3
    return-void

    .line 341
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_7
    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "dtmf_tone"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_8
    move v1, v3

    goto :goto_4

    .line 361
    :cond_9
    iget-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->getVibrateWhenRinging(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 417
    .restart local v0       #filter:Landroid/content/IntentFilter;
    :cond_a
    sput v2, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mSimSlot:I

    goto :goto_2

    .line 428
    :cond_b
    sget-object v1, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v2, "callsettings_vibrate_when_ringing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 429
    iget-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    sget-boolean v2, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mCheckValue:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public updateDeviceVibrationName()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 455
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 458
    .local v7, temp:Ljava/lang/String;
    if-nez v7, :cond_2

    .line 459
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 464
    .local v6, c:Landroid/database/Cursor;
    :goto_0
    if-eqz v6, :cond_1

    .line 465
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrationPreference:Landroid/preference/Preference;

    const-string v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 467
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 469
    :cond_1
    return-void

    .line 461
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #c:Landroid/database/Cursor;
    goto :goto_0
.end method
