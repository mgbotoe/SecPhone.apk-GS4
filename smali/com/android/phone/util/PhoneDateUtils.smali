.class public Lcom/android/phone/util/PhoneDateUtils;
.super Ljava/lang/Object;
.source "PhoneDateUtils.java"


# static fields
.field public static final DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final DATE_FORMATS:[Ljava/text/SimpleDateFormat;

.field private static final FORMAT_WITHOUT_YEAR_DATE_FIRST:Ljava/text/DateFormat;

.field private static final FORMAT_WITHOUT_YEAR_MONTH_FIRST:Ljava/text/DateFormat;

.field public static final FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final UTC_TIMEZONE:Ljava/util/TimeZone;

.field private static mDateFormat:[Ljava/lang/String;

.field private static mSytemDateFormat:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 37
    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    sput-object v4, Lcom/android/phone/util/PhoneDateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    .line 46
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "--MM-dd"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v4, Lcom/android/phone/util/PhoneDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 48
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v4, Lcom/android/phone/util/PhoneDateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 50
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v4, Lcom/android/phone/util/PhoneDateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 53
    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "MM-dd-yyyy"

    aput-object v5, v4, v7

    const-string v5, "dd-MM-yyyy"

    aput-object v5, v4, v9

    const-string v5, "yyyy-MM-dd"

    aput-object v5, v4, v8

    sput-object v4, Lcom/android/phone/util/PhoneDateUtils;->mSytemDateFormat:[Ljava/lang/String;

    .line 54
    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "MM/dd/yyyy"

    aput-object v5, v4, v7

    const-string v5, "dd/MM/yyyy"

    aput-object v5, v4, v9

    const-string v5, "yyyy/MM/dd"

    aput-object v5, v4, v8

    sput-object v4, Lcom/android/phone/util/PhoneDateUtils;->mDateFormat:[Ljava/lang/String;

    .line 58
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/text/SimpleDateFormat;

    sget-object v5, Lcom/android/phone/util/PhoneDateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    aput-object v5, v4, v7

    sget-object v5, Lcom/android/phone/util/PhoneDateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    aput-object v5, v4, v9

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v5, v4, v8

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v5, v4, v10

    const/4 v5, 0x4

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd\'T\'HHmmssSSS\'Z\'"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd\'T\'HHmmss\'Z\'"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd\'T\'HHmm\'Z\'"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/phone/util/PhoneDateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    .line 68
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MM/dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/phone/util/PhoneDateUtils;->FORMAT_WITHOUT_YEAR_MONTH_FIRST:Ljava/text/DateFormat;

    .line 71
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "dd/MM"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/phone/util/PhoneDateUtils;->FORMAT_WITHOUT_YEAR_DATE_FIRST:Ljava/text/DateFormat;

    .line 75
    sget-object v0, Lcom/android/phone/util/PhoneDateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    .local v0, arr$:[Ljava/text/SimpleDateFormat;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 76
    .local v1, format:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v9}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 77
    sget-object v4, Lcom/android/phone/util/PhoneDateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v1           #format:Ljava/text/SimpleDateFormat;
    :cond_0
    sget-object v4, Lcom/android/phone/util/PhoneDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    sget-object v5, Lcom/android/phone/util/PhoneDateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 80
    sget-object v4, Lcom/android/phone/util/PhoneDateUtils;->FORMAT_WITHOUT_YEAR_MONTH_FIRST:Ljava/text/DateFormat;

    sget-object v5, Lcom/android/phone/util/PhoneDateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 81
    sget-object v4, Lcom/android/phone/util/PhoneDateUtils;->FORMAT_WITHOUT_YEAR_DATE_FIRST:Ljava/text/DateFormat;

    sget-object v5, Lcom/android/phone/util/PhoneDateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "string"

    .prologue
    const/4 v7, 0x0

    .line 126
    if-nez p1, :cond_0

    .line 127
    const/4 v6, 0x0

    .line 178
    :goto_0
    return-object v6

    .line 130
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    move-object v6, p1

    .line 132
    goto :goto_0

    .line 135
    :cond_1
    new-instance v5, Ljava/text/ParsePosition;

    invoke-direct {v5, v7}, Ljava/text/ParsePosition;-><init>(I)V

    .line 139
    .local v5, parsePosition:Ljava/text/ParsePosition;
    sget-object v7, Lcom/android/phone/util/PhoneDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v7

    .line 140
    :try_start_0
    sget-object v6, Lcom/android/phone/util/PhoneDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, p1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 141
    .local v1, date:Ljava/util/Date;
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 143
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 144
    const-string v0, "dd/MM"

    .line 156
    .local v0, cs:Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 157
    .local v4, outFormat:Ljava/text/DateFormat;
    sget-object v6, Lcom/android/phone/util/PhoneDateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 158
    monitor-enter v4

    .line 159
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    monitor-exit v4

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v6

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 141
    .end local v0           #cs:Ljava/lang/String;
    .end local v1           #date:Ljava/util/Date;
    .end local v4           #outFormat:Ljava/text/DateFormat;
    :catchall_1
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 163
    .restart local v1       #date:Ljava/util/Date;
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    sget-object v6, Lcom/android/phone/util/PhoneDateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    array-length v6, v6

    if-ge v3, v6, :cond_4

    .line 164
    sget-object v6, Lcom/android/phone/util/PhoneDateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    aget-object v2, v6, v3

    .line 165
    .local v2, f:Ljava/text/SimpleDateFormat;
    monitor-enter v2

    .line 166
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v5, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 167
    invoke-virtual {v2, p1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 168
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 169
    const-string v0, "dd/MM/yyyy"

    .line 172
    .restart local v0       #cs:Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 173
    .restart local v4       #outFormat:Ljava/text/DateFormat;
    sget-object v6, Lcom/android/phone/util/PhoneDateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 174
    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    monitor-exit v2

    goto :goto_0

    .line 176
    .end local v0           #cs:Ljava/lang/String;
    .end local v4           #outFormat:Ljava/text/DateFormat;
    :catchall_2
    move-exception v6

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v6

    :cond_3
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2           #f:Ljava/text/SimpleDateFormat;
    :cond_4
    move-object v6, p1

    .line 178
    goto :goto_0
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .locals 1
    .parameter "elapsedSeconds"

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .locals 14
    .parameter "recycle"
    .parameter "elapsedSeconds"

    .prologue
    .line 249
    const-wide/16 v2, 0x0

    .line 250
    .local v2, hours:J
    const-wide/16 v4, 0x0

    .line 251
    .local v4, minutes:J
    const-wide/16 v6, 0x0

    .line 253
    .local v6, seconds:J
    const-wide/16 v0, 0xe10

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 254
    const-wide/16 v0, 0xe10

    div-long v2, p1, v0

    .line 255
    const-wide/16 v0, 0xe10

    mul-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 257
    :cond_0
    const-wide/16 v0, 0x3c

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 258
    const-wide/16 v0, 0x3c

    div-long v4, p1, v0

    .line 259
    const-wide/16 v0, 0x3c

    mul-long/2addr v0, v4

    sub-long/2addr p1, v0

    .line 261
    :cond_1
    move-wide v6, p1

    .line 264
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 265
    const-string v1, "%1$d:%2$02d:%3$02d"

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;

    move-result-object v0

    .line 267
    :goto_0
    return-object v0

    :cond_2
    const-string v9, "%1$02d:%2$02d"

    move-object v8, p0

    move-wide v10, v4

    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;J)Ljava/lang/String;
    .locals 14
    .parameter "recycle"
    .parameter "format"
    .parameter "elapsedSeconds"

    .prologue
    .line 272
    const-wide/16 v8, 0x0

    .line 273
    .local v8, hours:J
    const-wide/16 v2, 0x0

    .line 274
    .local v2, minutes:J
    const-wide/16 v4, 0x0

    .line 276
    .local v4, seconds:J
    const-wide/16 v0, 0xe10

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 277
    const-wide/16 v0, 0xe10

    div-long v8, p2, v0

    .line 278
    const-wide/16 v0, 0xe10

    mul-long/2addr v0, v8

    sub-long p2, p2, v0

    .line 280
    :cond_0
    const-wide/16 v0, 0x3c

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    .line 281
    const-wide/16 v0, 0x3c

    div-long v2, p2, v0

    .line 282
    const-wide/16 v0, 0x3c

    mul-long/2addr v0, v2

    sub-long p2, p2, v0

    .line 284
    :cond_1
    move-wide/from16 v4, p2

    .line 286
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-nez v0, :cond_2

    const-string v0, "%1$02d:%2$02d"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    const-string v1, "%1$02d:%2$02d"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    .line 288
    :cond_2
    const-string v0, "%1$02d:%2$02d:%3$02d"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    const-string v7, "%1$02d:%2$02d:%3$02d"

    move-object v6, p0

    move-wide v10, v2

    move-wide v12, v4

    invoke-static/range {v6 .. v13}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 291
    :cond_3
    const-string v7, "%1$d:%2$02d:%3$02d"

    move-object v6, p0

    move-wide v10, v2

    move-wide v12, v4

    invoke-static/range {v6 .. v13}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 7
    .parameter "recycle"
    .parameter "format"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x0

    const-wide/16 v3, 0xa

    .line 364
    const-string v1, "%1$02d:%2$02d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 365
    move-object v0, p0

    .line 366
    .local v0, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #sb:Ljava/lang/StringBuilder;
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 371
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :goto_0
    cmp-long v1, p2, v3

    if-gez v1, :cond_1

    .line 372
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    :goto_1
    rem-long v1, p2, v3

    invoke-static {v1, v2}, Lcom/android/phone/util/PhoneDateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 378
    cmp-long v1, p4, v3

    if-gez v1, :cond_2

    .line 379
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    :goto_2
    rem-long v1, p4, v3

    invoke-static {v1, v2}, Lcom/android/phone/util/PhoneDateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :goto_3
    return-object v1

    .line 369
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 374
    :cond_1
    div-long v1, p2, v3

    invoke-static {v1, v2}, Lcom/android/phone/util/PhoneDateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 381
    :cond_2
    div-long v1, p4, v3

    invoke-static {v1, v2}, Lcom/android/phone/util/PhoneDateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 386
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method private static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;
    .locals 8
    .parameter "recycle"
    .parameter "format"
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    const/16 v2, 0x8

    const/4 v7, 0x0

    const/16 v6, 0x3a

    const/16 v5, 0x30

    const-wide/16 v3, 0xa

    .line 300
    const-string v1, "%1$d:%2$02d:%3$02d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 301
    move-object v0, p0

    .line 302
    .local v0, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 307
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    cmp-long v1, p4, v3

    if-gez v1, :cond_1

    .line 310
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    :goto_1
    rem-long v1, p4, v3

    invoke-static {v1, v2}, Lcom/android/phone/util/PhoneDateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    cmp-long v1, p6, v3

    if-gez v1, :cond_2

    .line 317
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    :goto_2
    rem-long v1, p6, v3

    invoke-static {v1, v2}, Lcom/android/phone/util/PhoneDateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :goto_3
    return-object v1

    .line 305
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 312
    :cond_1
    div-long v1, p4, v3

    invoke-static {v1, v2}, Lcom/android/phone/util/PhoneDateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 319
    :cond_2
    div-long v1, p6, v3

    invoke-static {v1, v2}, Lcom/android/phone/util/PhoneDateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 323
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_3
    const-string v1, "%1$02d:%2$02d:%3$02d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 324
    move-object v0, p0

    .line 325
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_4

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 331
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :goto_4
    cmp-long v1, p2, v3

    if-gez v1, :cond_5

    .line 332
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 336
    :goto_5
    rem-long v1, p2, v3

    invoke-static {v1, v2}, Lcom/android/phone/util/PhoneDateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    cmp-long v1, p4, v3

    if-gez v1, :cond_6

    .line 340
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    :goto_6
    rem-long v1, p4, v3

    invoke-static {v1, v2}, Lcom/android/phone/util/PhoneDateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    cmp-long v1, p6, v3

    if-gez v1, :cond_7

    .line 348
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    :goto_7
    rem-long v1, p6, v3

    invoke-static {v1, v2}, Lcom/android/phone/util/PhoneDateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 328
    :cond_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_4

    .line 334
    :cond_5
    div-long v1, p2, v3

    invoke-static {v1, v2}, Lcom/android/phone/util/PhoneDateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 342
    :cond_6
    div-long v1, p4, v3

    invoke-static {v1, v2}, Lcom/android/phone/util/PhoneDateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 350
    :cond_7
    div-long v1, p6, v3

    invoke-static {v1, v2}, Lcom/android/phone/util/PhoneDateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 356
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_8
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3
.end method

.method private static toDigitChar(J)C
    .locals 2
    .parameter "digit"

    .prologue
    .line 391
    const-wide/16 v0, 0x30

    add-long/2addr v0, p0

    long-to-int v0, v0

    int-to-char v0, v0

    return v0
.end method
