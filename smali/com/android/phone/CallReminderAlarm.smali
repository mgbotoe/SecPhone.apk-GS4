.class public Lcom/android/phone/CallReminderAlarm;
.super Ljava/lang/Object;
.source "CallReminderAlarm.java"


# static fields
.field private static FROM:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "callreminder_callerid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "callreminder_enable"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "callreminder_rejecttime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "callreminder_alerttime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallReminderAlarm;->FROM:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static addAlarm(Landroid/content/Context;Ljava/lang/String;IJ)J
    .locals 9
    .parameter "context"
    .parameter "number"
    .parameter "later"
    .parameter "date"

    .prologue
    .line 65
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, nomalize_number:Ljava/lang/String;
    const-string v6, "CallReminderAlarm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addAlarm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 69
    .local v0, alert_time:Ljava/util/Calendar;
    invoke-virtual {v0, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 70
    const/16 v6, 0xc

    invoke-virtual {v0, v6, p2}, Ljava/util/Calendar;->add(II)V

    .line 72
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "callreminder_callerid"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v6, "callreminder_enable"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v6, "callreminder_rejecttime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 76
    const-string v6, "callreminder_alerttime"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/phone/callsettings/ProviderConstants;->CALLREMINDER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 80
    .local v3, new_uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 82
    .local v1, id:J
    invoke-static {p0}, Lcom/android/phone/CallReminderAlarm;->setAlarm(Landroid/content/Context;)V

    .line 84
    return-wide v1
.end method

.method public static getCallReminderCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 130
    const-string v5, "callreminder_alerttime ASC"

    .line 131
    .local v5, sortOrder:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->CALLREMINDER_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/CallReminderAlarm;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getNextRemindTime(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 194
    const-wide/16 v1, 0x0

    .line 195
    .local v1, time:J
    invoke-static {p0}, Lcom/android/phone/CallReminderAlarm;->getCallReminderCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 196
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 197
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 198
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 202
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_1
    return-wide v1
.end method

.method public static setAlarm(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 179
    invoke-static {p0}, Lcom/android/phone/CallReminderAlarm;->getNextRemindTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 180
    .local v0, time:J
    const-string v2, "CallReminderAlarm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {p0, v0, v1}, Lcom/android/phone/CallReminderAlarm;->setAlarm(Landroid/content/Context;J)V

    .line 182
    return-void
.end method

.method private static setAlarm(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "atTimeInMillis"

    .prologue
    const/4 v5, 0x0

    .line 185
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 186
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.phone.CALLREMINDER_ALARM"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-static {p0, v5, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 188
    .local v2, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 189
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-eqz v3, :cond_0

    .line 190
    invoke-virtual {v0, v5, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 191
    :cond_0
    return-void
.end method
