.class public final Lcom/android/phone/SolarLunarConverter;
.super Ljava/lang/Object;
.source "SolarLunarConverter.java"


# static fields
.field static acmDaysInLeapYear_:[I

.field static acmDaysInYear_:[I


# instance fields
.field private day_:I

.field private month_:I

.field private year_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 28
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/SolarLunarConverter;->acmDaysInYear_:[I

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/SolarLunarConverter;->acmDaysInLeapYear_:[I

    return-void

    .line 28
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
        0x6dt 0x1t 0x0t 0x0t
    .end array-data

    .line 31
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0x31t 0x1t 0x0t 0x0t
        0x4ft 0x1t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAccumulatedDays(I)[I
    .locals 1
    .parameter "year"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/phone/SolarLunarConverter;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/android/phone/SolarLunarConverter;->acmDaysInLeapYear_:[I

    .line 80
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/SolarLunarConverter;->acmDaysInYear_:[I

    goto :goto_0
.end method

.method private isLeapYear(I)Z
    .locals 2
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    .line 70
    rem-int/lit8 v1, p1, 0x4

    if-gtz v1, :cond_0

    rem-int/lit8 v1, p1, 0x64

    if-ge v1, v0, :cond_1

    rem-int/lit16 v1, p1, 0x190

    if-lez v1, :cond_1

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 73
    :cond_1
    return v0
.end method


# virtual methods
.method public convertLunarToSolar(IIIZ)V
    .locals 12
    .parameter "y"
    .parameter "m"
    .parameter "d"
    .parameter "isLeapMonth"

    .prologue
    .line 146
    const-string v9, "feature_chn"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 147
    invoke-virtual/range {p0 .. p4}, Lcom/android/phone/SolarLunarConverter;->convertLunarToSolar_CHN(IIIZ)V

    .line 236
    :goto_0
    return-void

    .line 150
    :cond_0
    const/16 v9, 0x759

    if-lt p1, v9, :cond_1

    const/16 v9, 0x834

    if-gt p1, v9, :cond_1

    if-ltz p2, :cond_1

    const/16 v9, 0xb

    if-gt p2, v9, :cond_1

    const/4 v9, 0x1

    if-lt p3, v9, :cond_1

    const/16 v9, 0x1e

    if-le p3, v9, :cond_2

    if-nez p4, :cond_2

    .line 153
    :cond_1
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The date "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is out of range."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 157
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/SolarLunarConverter;->getAccumulatedDays(I)[I

    move-result-object v1

    .line 158
    .local v1, days:[I
    add-int/lit16 v3, p1, -0x759

    .line 159
    .local v3, indexOfYear:I
    mul-int/lit8 v8, v3, 0xe

    .line 160
    .local v8, startIndexOfYear:I
    sget-object v9, Lcom/android/phone/SolarLunarTables;->accumulatedLunarDays:[I

    aget v0, v9, v3

    .line 161
    .local v0, countOfDays:I
    sget-object v9, Lcom/android/phone/SolarLunarTables;->lunar:[B

    add-int/lit8 v10, v8, 0xd

    aget-byte v5, v9, v10

    .line 164
    .local v5, leapMonth:I
    const/16 v9, 0x7f

    if-ne v5, v9, :cond_3

    const/16 v7, 0xc

    .line 165
    .local v7, numOfMonth:I
    :goto_1
    const/16 v9, 0xc

    if-ne v7, v9, :cond_4

    .line 166
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-ge v4, p2, :cond_7

    .line 167
    sget-object v9, Lcom/android/phone/SolarLunarTables;->lunar:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 166
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 164
    .end local v4           #j:I
    .end local v7           #numOfMonth:I
    :cond_3
    const/16 v7, 0xd

    goto :goto_1

    .line 170
    .restart local v7       #numOfMonth:I
    :cond_4
    if-eqz p4, :cond_5

    add-int/lit8 v9, p2, 0x1

    if-ne v9, v5, :cond_5

    .line 171
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_3
    if-ge v4, v5, :cond_7

    .line 172
    sget-object v9, Lcom/android/phone/SolarLunarTables;->lunar:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 171
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 176
    .end local v4           #j:I
    :cond_5
    add-int/lit8 v9, p2, 0x1

    if-le v9, v5, :cond_6

    .line 177
    add-int/lit8 v6, p2, 0x1

    .line 181
    .local v6, nM:I
    :goto_4
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_5
    if-ge v4, v6, :cond_7

    .line 182
    sget-object v9, Lcom/android/phone/SolarLunarTables;->lunar:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 181
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 179
    .end local v4           #j:I
    .end local v6           #nM:I
    :cond_6
    move v6, p2

    .restart local v6       #nM:I
    goto :goto_4

    .line 188
    .end local v6           #nM:I
    .restart local v4       #j:I
    :cond_7
    add-int v9, v0, p3

    add-int/lit8 v0, v9, -0x1

    .line 190
    const/16 v9, 0x759

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->year_:I

    .line 191
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    .line 192
    const/16 v9, 0x1e

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->day_:I

    .line 193
    const/16 v9, 0x14f

    if-le v0, v9, :cond_b

    .line 195
    const/16 v9, 0x75a

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->year_:I

    .line 196
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    .line 197
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->day_:I

    .line 199
    add-int/lit16 v0, v0, -0x150

    .line 202
    const/16 v2, 0x16d

    .line 203
    .local v2, daysOfYear:I
    :goto_6
    if-lt v0, v2, :cond_9

    .line 204
    sub-int/2addr v0, v2

    .line 205
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->year_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->year_:I

    .line 206
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->year_:I

    invoke-direct {p0, v9}, Lcom/android/phone/SolarLunarConverter;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 207
    const/16 v2, 0x16e

    goto :goto_6

    .line 209
    :cond_8
    const/16 v2, 0x16d

    goto :goto_6

    .line 213
    :cond_9
    :goto_7
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_a

    .line 214
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    goto :goto_7

    .line 216
    :cond_a
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    .line 219
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->day_:I

    goto/16 :goto_0

    .line 221
    .end local v2           #daysOfYear:I
    :cond_b
    const/4 v9, 0x1

    if-le v0, v9, :cond_d

    .line 222
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    .line 223
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->day_:I

    .line 224
    add-int/lit8 v0, v0, -0x2

    .line 225
    :goto_8
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_c

    .line 226
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    goto :goto_8

    .line 228
    :cond_c
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    .line 231
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->day_:I

    goto/16 :goto_0

    .line 233
    :cond_d
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->day_:I

    goto/16 :goto_0
.end method

.method public convertLunarToSolar_CHN(IIIZ)V
    .locals 12
    .parameter "y"
    .parameter "m"
    .parameter "d"
    .parameter "isLeapMonth"

    .prologue
    .line 312
    const/16 v9, 0x759

    if-lt p1, v9, :cond_0

    const/16 v9, 0x834

    if-gt p1, v9, :cond_0

    if-ltz p2, :cond_0

    const/16 v9, 0xb

    if-gt p2, v9, :cond_0

    const/4 v9, 0x1

    if-lt p3, v9, :cond_0

    const/16 v9, 0x1e

    if-le p3, v9, :cond_1

    if-nez p4, :cond_1

    .line 315
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The date "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is out of range."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 319
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/SolarLunarConverter;->getAccumulatedDays(I)[I

    move-result-object v1

    .line 320
    .local v1, days:[I
    add-int/lit16 v3, p1, -0x759

    .line 321
    .local v3, indexOfYear:I
    mul-int/lit8 v8, v3, 0xe

    .line 323
    .local v8, startIndexOfYear:I
    sget-object v9, Lcom/android/phone/SolarLunarTables;->accumulatedLunarDaysCHN:[I

    aget v0, v9, v3

    .line 324
    .local v0, countOfDays:I
    sget-object v9, Lcom/android/phone/SolarLunarTables;->lunarCHN:[B

    add-int/lit8 v10, v8, 0xd

    aget-byte v5, v9, v10

    .line 328
    .local v5, leapMonth:I
    const/16 v9, 0x7f

    if-ne v5, v9, :cond_2

    const/16 v7, 0xc

    .line 329
    .local v7, numOfMonth:I
    :goto_0
    const/16 v9, 0xc

    if-ne v7, v9, :cond_3

    .line 330
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, p2, :cond_6

    .line 332
    sget-object v9, Lcom/android/phone/SolarLunarTables;->lunarCHN:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 330
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 328
    .end local v4           #j:I
    .end local v7           #numOfMonth:I
    :cond_2
    const/16 v7, 0xd

    goto :goto_0

    .line 336
    .restart local v7       #numOfMonth:I
    :cond_3
    if-eqz p4, :cond_4

    add-int/lit8 v9, p2, 0x1

    if-ne v9, v5, :cond_4

    .line 337
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_2
    if-ge v4, v5, :cond_6

    .line 339
    sget-object v9, Lcom/android/phone/SolarLunarTables;->lunarCHN:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 337
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 344
    .end local v4           #j:I
    :cond_4
    add-int/lit8 v9, p2, 0x1

    if-le v9, v5, :cond_5

    .line 345
    add-int/lit8 v6, p2, 0x1

    .line 349
    .local v6, nM:I
    :goto_3
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_4
    if-ge v4, v6, :cond_6

    .line 351
    sget-object v9, Lcom/android/phone/SolarLunarTables;->lunarCHN:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 349
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 347
    .end local v4           #j:I
    .end local v6           #nM:I
    :cond_5
    move v6, p2

    .restart local v6       #nM:I
    goto :goto_3

    .line 358
    .end local v6           #nM:I
    .restart local v4       #j:I
    :cond_6
    add-int v9, v0, p3

    add-int/lit8 v0, v9, -0x1

    .line 360
    const/16 v9, 0x759

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->year_:I

    .line 361
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    .line 362
    const/16 v9, 0x1e

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->day_:I

    .line 363
    const/16 v9, 0x14f

    if-le v0, v9, :cond_a

    .line 365
    const/16 v9, 0x75a

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->year_:I

    .line 366
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    .line 367
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->day_:I

    .line 369
    add-int/lit16 v0, v0, -0x150

    .line 372
    const/16 v2, 0x16d

    .line 373
    .local v2, daysOfYear:I
    :goto_5
    if-lt v0, v2, :cond_8

    .line 374
    sub-int/2addr v0, v2

    .line 375
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->year_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->year_:I

    .line 376
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->year_:I

    invoke-direct {p0, v9}, Lcom/android/phone/SolarLunarConverter;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 377
    const/16 v2, 0x16e

    goto :goto_5

    .line 379
    :cond_7
    const/16 v2, 0x16d

    goto :goto_5

    .line 383
    :cond_8
    :goto_6
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_9

    .line 384
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    goto :goto_6

    .line 386
    :cond_9
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    .line 389
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->day_:I

    .line 406
    .end local v2           #daysOfYear:I
    :goto_7
    return-void

    .line 391
    :cond_a
    const/4 v9, 0x1

    if-le v0, v9, :cond_c

    .line 392
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    .line 393
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->day_:I

    .line 394
    add-int/lit8 v0, v0, -0x2

    .line 395
    :goto_8
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_b

    .line 396
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    goto :goto_8

    .line 398
    :cond_b
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    .line 401
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->day_:I

    goto :goto_7

    .line 403
    :cond_c
    iget v9, p0, Lcom/android/phone/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/android/phone/SolarLunarConverter;->day_:I

    goto :goto_7
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/phone/SolarLunarConverter;->day_:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/phone/SolarLunarConverter;->month_:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/android/phone/SolarLunarConverter;->year_:I

    return v0
.end method
