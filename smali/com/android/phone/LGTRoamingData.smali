.class public Lcom/android/phone/LGTRoamingData;
.super Ljava/lang/Object;
.source "LGTRoamingData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/LGTRoamingData$DatabaseHelper;
    }
.end annotation


# static fields
.field private static connectIdProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static countryIdProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sidProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field connectProjectionMap:[Ljava/lang/String;

.field countryProjectionMap:[Ljava/lang/String;

.field db:Landroid/database/sqlite/SQLiteDatabase;

.field mOpenHelper:Lcom/android/phone/LGTRoamingData$DatabaseHelper;

.field private roamingContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/LGTRoamingData;->countryIdProjectionMap:Ljava/util/HashMap;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/LGTRoamingData;->connectIdProjectionMap:Ljava/util/HashMap;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/LGTRoamingData;->sidProjectionMap:Ljava/util/HashMap;

    .line 465
    sget-object v0, Lcom/android/phone/LGTRoamingData;->countryIdProjectionMap:Ljava/util/HashMap;

    const-string v1, "country_num"

    const-string v2, "country_num"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/android/phone/LGTRoamingData;->countryIdProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/android/phone/LGTRoamingData;->countryIdProjectionMap:Ljava/util/HashMap;

    const-string v1, "name_kor"

    const-string v2, "name_kor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/android/phone/LGTRoamingData;->connectIdProjectionMap:Ljava/util/HashMap;

    const-string v1, "connect_num"

    const-string v2, "connect_num"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/android/phone/LGTRoamingData;->connectIdProjectionMap:Ljava/util/HashMap;

    const-string v1, "country_name"

    const-string v2, "country_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/android/phone/LGTRoamingData;->connectIdProjectionMap:Ljava/util/HashMap;

    const-string v1, "country_name_eng"

    const-string v2, "country_name_eng"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/android/phone/LGTRoamingData;->connectIdProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleteable"

    const-string v2, "deleteable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/android/phone/LGTRoamingData;->connectIdProjectionMap:Ljava/util/HashMap;

    const-string v1, "country_code"

    const-string v2, "country_code"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lcom/android/phone/LGTRoamingData;->sidProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/android/phone/LGTRoamingData;->sidProjectionMap:Ljava/util/HashMap;

    const-string v1, "sid"

    const-string v2, "sid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/android/phone/LGTRoamingData;->sidProjectionMap:Ljava/util/HashMap;

    const-string v1, "connect_id"

    const-string v2, "connect_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "name_kor"

    aput-object v1, v0, v5

    const-string v1, "country_num"

    aput-object v1, v0, v6

    const-string v1, "chosung"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "simplify"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/LGTRoamingData;->countryProjectionMap:[Ljava/lang/String;

    .line 152
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "country_name"

    aput-object v1, v0, v3

    const-string v1, "country_name_eng"

    aput-object v1, v0, v4

    const-string v1, "connect_num"

    aput-object v1, v0, v5

    const-string v1, "_id"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/phone/LGTRoamingData;->connectProjectionMap:[Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/android/phone/LGTRoamingData;->roamingContext:Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/android/phone/LGTRoamingData$DatabaseHelper;

    iget-object v1, p0, Lcom/android/phone/LGTRoamingData;->roamingContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/LGTRoamingData$DatabaseHelper;-><init>(Lcom/android/phone/LGTRoamingData;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/LGTRoamingData;->mOpenHelper:Lcom/android/phone/LGTRoamingData$DatabaseHelper;

    .line 42
    iget-object v0, p0, Lcom/android/phone/LGTRoamingData;->mOpenHelper:Lcom/android/phone/LGTRoamingData$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/phone/LGTRoamingData$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LGTRoamingData;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/LGTRoamingData;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/phone/LGTRoamingData;->roamingContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/LGTRoamingData;->mOpenHelper:Lcom/android/phone/LGTRoamingData$DatabaseHelper;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/phone/LGTRoamingData;->mOpenHelper:Lcom/android/phone/LGTRoamingData$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/phone/LGTRoamingData$DatabaseHelper;->close()V

    .line 49
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/LGTRoamingData;->mOpenHelper:Lcom/android/phone/LGTRoamingData$DatabaseHelper;

    .line 50
    return-void
.end method

.method public getConnectNumBySid(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "sid"

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 272
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 273
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v8, 0x0

    .line 274
    .local v8, connectNum:Ljava/lang/String;
    const-string v1, "connect"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 275
    sget-object v1, Lcom/android/phone/LGTRoamingData;->connectIdProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 276
    const-string v3, "_id = (select connect_id from sid where sid=?)"

    .line 277
    .local v3, selection:Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    .line 278
    .local v4, selectionArg:[Ljava/lang/String;
    aput-object p1, v4, v10

    .line 280
    iget-object v1, p0, Lcom/android/phone/LGTRoamingData;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-array v2, v2, [Ljava/lang/String;

    const-string v6, "connect_num"

    aput-object v6, v2, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 283
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 297
    :goto_0
    return-object v5

    .line 286
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 287
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 290
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 292
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 294
    :cond_2
    if-eqz v9, :cond_3

    .line 295
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v5, v8

    .line 297
    goto :goto_0
.end method

.method public getCountry(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "searchText"

    .prologue
    const/4 v4, 0x0

    .line 167
    const-string v3, ""

    .line 168
    .local v3, selection:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name_kor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "chosung"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "country_num"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LGTRoamingData;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "country"

    iget-object v2, p0, Lcom/android/phone/LGTRoamingData;->countryProjectionMap:[Ljava/lang/String;

    const-string v7, "name_kor"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 175
    .local v8, cursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public selectCountry(Ljava/lang/Long;)[Ljava/lang/String;
    .locals 13
    .parameter "_id"

    .prologue
    const/4 v6, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 333
    new-array v8, v6, [Ljava/lang/String;

    .line 334
    .local v8, countryInfo:[Ljava/lang/String;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 335
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "country"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 336
    sget-object v1, Lcom/android/phone/LGTRoamingData;->countryIdProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, selection:Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/String;

    const-string v1, "country_num"

    aput-object v1, v2, v10

    const-string v1, "name_kor"

    aput-object v1, v2, v11

    const-string v1, "name"

    aput-object v1, v2, v12

    .line 343
    .local v2, projection:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/LGTRoamingData;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 344
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 360
    :goto_0
    return-object v4

    .line 347
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 348
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 351
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 352
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 353
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v10

    .line 354
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v11

    .line 355
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v12

    .line 357
    :cond_2
    if-eqz v9, :cond_3

    .line 358
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v4, v8

    .line 360
    goto :goto_0
.end method
