.class public Lcom/android/phone/AdditionalCallerInfoAsyncQuery;
.super Landroid/content/AsyncQueryHandler;
.source "AdditionalCallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AdditionalCallerInfoAsyncQuery$1;,
        Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;,
        Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;,
        Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

.field private mContext:Landroid/content/Context;

.field private mQueryState:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 40
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->DBG:Z

    .line 95
    iput-object p1, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mContext:Landroid/content/Context;

    .line 97
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertLunarToSolar(Ljava/util/Calendar;Ljava/lang/String;)[I
    .locals 8
    .parameter "birthday"
    .parameter "infoLunar"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 365
    const/4 v1, 0x0

    .line 367
    .local v1, isLeapMonth:Z
    const-string v3, "1"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 371
    :goto_0
    new-instance v0, Lcom/android/phone/SolarLunarConverter;

    invoke-direct {v0}, Lcom/android/phone/SolarLunarConverter;-><init>()V

    .line 372
    .local v0, converter:Lcom/android/phone/SolarLunarConverter;
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/android/phone/SolarLunarConverter;->convertLunarToSolar(IIIZ)V

    .line 377
    const/4 v3, 0x3

    new-array v2, v3, [I

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/phone/SolarLunarConverter;->getYear()I

    move-result v4

    aput v4, v2, v3

    invoke-virtual {v0}, Lcom/android/phone/SolarLunarConverter;->getMonth()I

    move-result v3

    aput v3, v2, v6

    invoke-virtual {v0}, Lcom/android/phone/SolarLunarConverter;->getDay()I

    move-result v3

    aput v3, v2, v7

    .line 378
    .end local v0           #converter:Lcom/android/phone/SolarLunarConverter;
    :goto_1
    return-object v2

    .line 368
    :cond_0
    const-string v3, "2"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 369
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 5
    .parameter "auths"
    .parameter "accountType"

    .prologue
    .line 313
    move-object v0, p1

    .local v0, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 314
    .local v1, auth:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 318
    .end local v1           #auth:Landroid/accounts/AuthenticatorDescription;
    :goto_1
    return-object v1

    .line 313
    .restart local v1       #auth:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    .end local v1           #auth:Landroid/accounts/AuthenticatorDescription;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getDisplayIcon()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 289
    iget-object v5, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 290
    .local v0, accountManager:Landroid/accounts/AccountManager;
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 291
    .local v2, auths:[Landroid/accounts/AuthenticatorDescription;
    iget-object v5, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-object v5, v5, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mAccountType:Ljava/lang/String;

    invoke-direct {p0, v2, v5}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 294
    .local v1, auth:Landroid/accounts/AuthenticatorDescription;
    iget-object v5, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 297
    .local v3, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 298
    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 299
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDisplayIcon : iconId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    .line 300
    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    iget v6, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 304
    :cond_0
    return-object v4
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 382
    const-string v0, "AdditionalCallerInfoAsyncQuery"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-void
.end method

.method private processLunarDate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .parameter "strBirthday"
    .parameter "infoLunar"

    .prologue
    .line 322
    const/4 v10, 0x0

    .line 323
    .local v10, today:Ljava/util/Calendar;
    const/4 v3, 0x0

    .line 325
    .local v3, birthday:Ljava/util/Calendar;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/android/phone/util/PhoneDateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 326
    .local v9, parsedBirth:Ljava/lang/String;
    const-string v13, "/"

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, birthToken:[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 328
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 329
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v3, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 330
    const/4 v13, 0x2

    const/4 v14, 0x1

    aget-object v14, v2, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v3, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 331
    const/4 v13, 0x5

    const/4 v14, 0x0

    aget-object v14, v2, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v3, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 333
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->convertLunarToSolar(Ljava/util/Calendar;Ljava/lang/String;)[I

    move-result-object v4

    .line 334
    .local v4, birthdaySolar:[I
    if-eqz v4, :cond_0

    const/4 v13, 0x0

    aget v13, v4, v13

    const/4 v14, 0x1

    aget v14, v4, v14

    const/4 v15, 0x2

    aget v15, v4, v15

    invoke-virtual {v3, v13, v14, v15}, Ljava/util/Calendar;->set(III)V

    .line 336
    :cond_0
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    sub-long/2addr v13, v15

    const-wide/32 v15, 0x5265c00

    div-long/2addr v13, v15

    const-wide/16 v15, 0x7

    cmp-long v13, v13, v15

    if-lez v13, :cond_5

    const/4 v8, 0x1

    .line 337
    .local v8, needReCal:Z
    :goto_0
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-le v13, v14, :cond_6

    const/4 v13, 0x1

    :goto_1
    and-int/2addr v8, v13

    .line 338
    if-eqz v8, :cond_1

    .line 339
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v3, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 340
    const/4 v13, 0x2

    const/4 v14, 0x1

    aget-object v14, v2, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v3, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 341
    const/4 v13, 0x5

    const/4 v14, 0x0

    aget-object v14, v2, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v3, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->convertLunarToSolar(Ljava/util/Calendar;Ljava/lang/String;)[I

    move-result-object v4

    .line 343
    if-eqz v4, :cond_1

    const/4 v13, 0x0

    aget v13, v4, v13

    const/4 v14, 0x1

    aget v14, v4, v14

    const/4 v15, 0x2

    aget v15, v4, v15

    invoke-virtual {v3, v13, v14, v15}, Ljava/util/Calendar;->set(III)V

    .line 346
    :cond_1
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 347
    .local v5, birthdayTime:J
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 348
    .local v11, todayTime:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    sub-long v14, v5, v11

    const-wide/32 v16, 0x5265c00

    div-long v14, v14, v16

    iput-wide v14, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    .line 349
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-wide v13, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-ltz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-wide v13, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    const-wide/16 v15, 0x7

    cmp-long v13, v13, v15

    if-lez v13, :cond_3

    .line 350
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    const-wide/16 v14, -0x1

    iput-wide v14, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    .line 352
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-wide v13, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_4

    .line 353
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mIsBirthDay:Z

    .line 356
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onQueryComplete : mRemainedDaysUntilBirthday = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-wide v14, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " isBirthDay : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-boolean v14, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mIsBirthDay:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v2           #birthToken:[Ljava/lang/String;
    .end local v4           #birthdaySolar:[I
    .end local v5           #birthdayTime:J
    .end local v8           #needReCal:Z
    .end local v9           #parsedBirth:Ljava/lang/String;
    .end local v11           #todayTime:J
    :goto_2
    return-void

    .line 336
    .restart local v2       #birthToken:[Ljava/lang/String;
    .restart local v4       #birthdaySolar:[I
    .restart local v9       #parsedBirth:Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 337
    .restart local v8       #needReCal:Z
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 359
    .end local v2           #birthToken:[Ljava/lang/String;
    .end local v4           #birthdaySolar:[I
    .end local v8           #needReCal:Z
    .end local v9           #parsedBirth:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 360
    .local v7, e:Ljava/lang/Exception;
    const-string v13, "AdditionalCallerInfoAsyncQuery"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onQueryComplete : exception = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_2
.end method

.method public static startQuery(Landroid/content/Context;JLcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;)V
    .locals 18
    .parameter "context"
    .parameter "contactID"
    .parameter "onQueryCompleteListener"

    .prologue
    .line 102
    new-instance v2, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;-><init>(Landroid/content/Context;)V

    .line 104
    .local v2, c:Lcom/android/phone/AdditionalCallerInfoAsyncQuery;
    new-instance v4, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;

    const/4 v3, 0x0

    invoke-direct {v4, v3}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/phone/AdditionalCallerInfoAsyncQuery$1;)V

    .line 105
    .local v4, cw:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;
    move-wide/from16 v0, p1

    iput-wide v0, v4, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;->contactID:J

    .line 106
    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 109
    const-string v15, "requesting_package"

    .line 110
    .local v15, REQUESTING_PACKAGE_PARAM_KEY:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v7, "stream_items"

    invoke-virtual {v3, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v7, "requesting_package"

    const-string v8, "com.android.phone"

    invoke-virtual {v3, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 114
    .local v5, uri:Landroid/net/Uri;
    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "account_name"

    aput-object v7, v6, v3

    const/4 v3, 0x1

    const-string v7, "account_type"

    aput-object v7, v6, v3

    const/4 v3, 0x2

    const-string v7, "text"

    aput-object v7, v6, v3

    .line 120
    .local v6, CONTACTS_SNS_PROJECTION:[Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "timestamp DESC"

    invoke-virtual/range {v2 .. v9}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v17

    .line 126
    .local v17, uriBuilder:Landroid/net/Uri$Builder;
    const-string v3, "limit"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 127
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 128
    .local v10, birthUri:Landroid/net/Uri;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v16, sb:Ljava/lang/StringBuilder;
    const-string v3, "contact_id= \'"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\' AND "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v3, "mimetype= \'vnd.android.cursor.item/contact_event\' AND "

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v3, "data2= 3"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v3, "support_korea_lunar"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "support_china_lunar"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    :cond_0
    const/4 v8, 0x2

    const/4 v3, 0x2

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "data1"

    aput-object v7, v11, v3

    const/4 v3, 0x1

    const-string v7, "data15"

    aput-object v7, v11, v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v2

    move-object v9, v4

    invoke-virtual/range {v7 .. v14}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 138
    :cond_1
    const/4 v8, 0x2

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "data1"

    aput-object v7, v11, v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v2

    move-object v9, v4

    invoke-virtual/range {v7 .. v14}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 23
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 155
    const-string v18, "AdditionalCallerInfoAsyncQuery"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onQueryComplete : token = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v8, p2

    .line 158
    check-cast v8, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;

    .line 160
    .local v8, cw:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 161
    new-instance v18, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    invoke-direct/range {v18 .. v18}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    .line 163
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 278
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    move/from16 v18, v0

    or-int v18, v18, p1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    .line 280
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 281
    const-string v18, "AdditionalCallerInfoAsyncQuery"

    const-string v19, "onQueryComplete : Query complete!"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 282
    iget-object v0, v8, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 283
    iget-object v0, v8, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;)V

    .line 285
    :cond_2
    return-void

    .line 165
    :pswitch_0
    if-eqz p3, :cond_1

    .line 167
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    move-object/from16 v18, v0

    const-string v19, "account_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mAccountName:Ljava/lang/String;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    move-object/from16 v18, v0

    const-string v19, "account_type"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mAccountType:Ljava/lang/String;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    move-object/from16 v18, v0

    const-string v19, "text"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    .line 174
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onQueryComplete : Name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mAccountName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Type = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mAccountType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Status : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mSNSDisplayIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v18

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v18

    .line 187
    :pswitch_1
    const/4 v15, 0x0

    .line 188
    .local v15, today:Ljava/util/Calendar;
    const/4 v4, 0x0

    .line 189
    .local v4, birthday:Ljava/util/Calendar;
    const/4 v14, 0x0

    .line 190
    .local v14, strBirthday:Ljava/lang/String;
    const/4 v10, 0x0

    .line 192
    .local v10, infoLunar:Ljava/lang/String;
    const-string v18, "support_china_lunar"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, "support_korea_lunar"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    :cond_4
    const/4 v11, 0x1

    .line 195
    .local v11, lunarRegion:Z
    :goto_1
    if-eqz p3, :cond_6

    .line 197
    :try_start_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 198
    const-string v18, "data1"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 199
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onQueryComplete : birthday = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    .line 200
    if-eqz v11, :cond_5

    .line 201
    const-string v18, "data15"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 202
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onQueryComplete : infoLunar = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    :cond_5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_6
    if-eqz v14, :cond_1

    .line 211
    const-string v18, "support_korea_lunar"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 212
    if-eqz v10, :cond_9

    const-string v18, "1"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    const-string v18, "2"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 213
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->processLunarDate(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    .end local v11           #lunarRegion:Z
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 206
    .restart local v11       #lunarRegion:Z
    :catchall_1
    move-exception v18

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v18

    .line 217
    :cond_9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 218
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 221
    :try_start_2
    const-string v18, "AdditionalCallerInfoAsyncQuery"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onQueryComplete strBirthday: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v14}, Lcom/android/phone/util/PhoneDateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 223
    .local v13, parsedBirth:Ljava/lang/String;
    const-string v18, "AdditionalCallerInfoAsyncQuery"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onQueryComplete parsedBirth: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 225
    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, birthToken:[Ljava/lang/String;
    const/16 v18, 0x1

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 227
    const/16 v18, 0x2

    const/16 v19, 0x1

    aget-object v19, v3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 228
    const/16 v18, 0x5

    const/16 v19, 0x0

    aget-object v19, v3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 230
    const-string v18, "support_china_lunar"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    if-eqz v10, :cond_b

    .line 231
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->convertLunarToSolar(Ljava/util/Calendar;Ljava/lang/String;)[I

    move-result-object v5

    .line 232
    .local v5, birthdaySolar:[I
    if-eqz v5, :cond_a

    const/16 v18, 0x0

    aget v18, v5, v18

    const/16 v19, 0x1

    aget v19, v5, v19

    const/16 v20, 0x2

    aget v20, v5, v20

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 234
    :cond_a
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    sub-long v18, v18, v20

    const-wide/32 v20, 0x5265c00

    div-long v18, v18, v20

    const-wide/16 v20, 0x7

    cmp-long v18, v18, v20

    if-lez v18, :cond_10

    const/4 v12, 0x1

    .line 235
    .local v12, needReCal:Z
    :goto_2
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_11

    const/16 v18, 0x1

    :goto_3
    and-int v12, v12, v18

    .line 236
    if-eqz v12, :cond_b

    .line 237
    const/16 v18, 0x1

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 238
    const/16 v18, 0x2

    const/16 v19, 0x1

    aget-object v19, v3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 239
    const/16 v18, 0x5

    const/16 v19, 0x0

    aget-object v19, v3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 240
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->convertLunarToSolar(Ljava/util/Calendar;Ljava/lang/String;)[I

    move-result-object v5

    .line 241
    if-eqz v5, :cond_b

    const/16 v18, 0x0

    aget v18, v5, v18

    const/16 v19, 0x1

    aget v19, v5, v19

    const/16 v20, 0x2

    aget v20, v5, v20

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 245
    .end local v5           #birthdaySolar:[I
    .end local v12           #needReCal:Z
    :cond_b
    invoke-virtual {v15, v4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v18

    if-lez v18, :cond_c

    .line 247
    const/16 v18, 0x1

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 250
    :cond_c
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 251
    .local v6, birthdayTime:J
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    .line 253
    .local v16, todayTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    move-object/from16 v18, v0

    sub-long v19, v6, v16

    const-wide/32 v21, 0x5265c00

    div-long v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-ltz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x7

    cmp-long v18, v18, v20

    if-lez v18, :cond_e

    .line 257
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    move-object/from16 v18, v0

    const-wide/16 v19, -0x1

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    .line 260
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_f

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mIsBirthDay:Z

    .line 264
    :cond_f
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onQueryComplete : mRemainedDaysUntilBirthday = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " isBirthDay : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mIsBirthDay:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 267
    .end local v3           #birthToken:[Ljava/lang/String;
    .end local v6           #birthdayTime:J
    .end local v13           #parsedBirth:Ljava/lang/String;
    .end local v16           #todayTime:J
    :catch_0
    move-exception v9

    .line 268
    .local v9, e:Ljava/lang/Exception;
    const-string v18, "AdditionalCallerInfoAsyncQuery"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onQueryComplete : exception = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 234
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v3       #birthToken:[Ljava/lang/String;
    .restart local v5       #birthdaySolar:[I
    .restart local v13       #parsedBirth:Ljava/lang/String;
    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 235
    .restart local v12       #needReCal:Z
    :cond_11
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
