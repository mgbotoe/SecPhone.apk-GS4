.class Lcom/android/phone/LGTRoamingData$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LGTRoamingData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTRoamingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTRoamingData;


# direct methods
.method public constructor <init>(Lcom/android/phone/LGTRoamingData;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/phone/LGTRoamingData$DatabaseHelper;->this$0:Lcom/android/phone/LGTRoamingData;

    .line 88
    const-string v0, "roaming.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 89
    return-void
.end method

.method private init(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter "db"

    .prologue
    .line 120
    iget-object v8, p0, Lcom/android/phone/LGTRoamingData$DatabaseHelper;->this$0:Lcom/android/phone/LGTRoamingData;

    #getter for: Lcom/android/phone/LGTRoamingData;->roamingContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/LGTRoamingData;->access$000(Lcom/android/phone/LGTRoamingData;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080097

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, connectList:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/LGTRoamingData$DatabaseHelper;->this$0:Lcom/android/phone/LGTRoamingData;

    #getter for: Lcom/android/phone/LGTRoamingData;->roamingContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/LGTRoamingData;->access$000(Lcom/android/phone/LGTRoamingData;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080098

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, countryList:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/LGTRoamingData$DatabaseHelper;->this$0:Lcom/android/phone/LGTRoamingData;

    #getter for: Lcom/android/phone/LGTRoamingData;->roamingContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/LGTRoamingData;->access$000(Lcom/android/phone/LGTRoamingData;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080099

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, sidList:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/LGTRoamingData$DatabaseHelper;->this$0:Lcom/android/phone/LGTRoamingData;

    #getter for: Lcom/android/phone/LGTRoamingData;->roamingContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/LGTRoamingData;->access$000(Lcom/android/phone/LGTRoamingData;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08009a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, sidList2:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 125
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 126
    .local v5, query:Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    .end local v5           #query:Ljava/lang/String;
    :cond_0
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 130
    .restart local v5       #query:Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 133
    .end local v5           #query:Ljava/lang/String;
    :cond_1
    move-object v0, v6

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 134
    .restart local v5       #query:Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 137
    .end local v5           #query:Ljava/lang/String;
    :cond_2
    move-object v0, v7

    array-length v4, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_3

    aget-object v5, v0, v3

    .line 138
    .restart local v5       #query:Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 140
    .end local v5           #query:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 141
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 142
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 95
    const-string v0, "CREATE TABLE connect (_id INTEGER PRIMARY KEY, country_code INTEGER, country_name TEXT NOT NULL, country_name_eng TEXT NOT NULL, connect_num TEXT NOT NULL, deleteable INTEGER, default_set INTEGER, iptel INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    const-string v0, "CREATE TABLE country (_id INTEGER PRIMARY KEY, name TEXT NOT NULL, name_kor TEXT NOT NULL, country_num TEXT , chosung TEXT,simplify INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    const-string v0, "CREATE TABLE sid (_id INTEGER PRIMARY KEY, sid TEXT NOT NULL, connect_id TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/android/phone/LGTRoamingData$DatabaseHelper;->init(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 110
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 114
    const-string v0, "RoamingData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v0, "DROP TABLE IF EXISTS contact"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/phone/LGTRoamingData$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 117
    return-void
.end method
