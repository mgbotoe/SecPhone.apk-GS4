.class public Lcom/android/phone/LGTCountryList;
.super Landroid/app/Activity;
.source "LGTCountryList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final COLUMNS:[Ljava/lang/String;


# instance fields
.field private SearchTextWatcher:Landroid/text/TextWatcher;

.field private mAllCursor:Landroid/database/MatrixCursor;

.field private mAllcontext:Landroid/content/Context;

.field private mListCountry:Landroid/widget/ListView;

.field private mSearchField:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name_kor"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/LGTCountryList;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/android/phone/LGTCountryList;->mAllCursor:Landroid/database/MatrixCursor;

    .line 33
    iput-object v0, p0, Lcom/android/phone/LGTCountryList;->mAllcontext:Landroid/content/Context;

    .line 103
    new-instance v0, Lcom/android/phone/LGTCountryList$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTCountryList$1;-><init>(Lcom/android/phone/LGTCountryList;)V

    iput-object v0, p0, Lcom/android/phone/LGTCountryList;->SearchTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/phone/LGTCountryList;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/LGTCountryList;JLjava/lang/String;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/LGTCountryList;->columnValuesOfWord(JLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/LGTCountryList;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/phone/LGTCountryList;->mAllcontext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/LGTCountryList;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/phone/LGTCountryList;->mAllcontext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/phone/LGTCountryList;Landroid/database/MatrixCursor;)Landroid/database/MatrixCursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/phone/LGTCountryList;->mAllCursor:Landroid/database/MatrixCursor;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/LGTCountryList;Landroid/content/Context;Landroid/database/MatrixCursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/phone/LGTCountryList;->getCountryList(Landroid/content/Context;Landroid/database/MatrixCursor;)V

    return-void
.end method

.method private columnValuesOfWord(JLjava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .parameter "id"
    .parameter "cName"

    .prologue
    .line 160
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    return-object v0
.end method

.method private getCountryList(Landroid/content/Context;Landroid/database/MatrixCursor;)V
    .locals 6
    .parameter "mAllcontext"
    .parameter "mCursor"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 166
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f0400b3

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "name_kor"

    aput-object v1, v4, v3

    new-array v5, v5, [I

    const v1, 0x1020014

    aput v1, v5, v3

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 171
    .local v0, adapter:Landroid/widget/SimpleCursorAdapter;
    iget-object v1, p0, Lcom/android/phone/LGTCountryList;->mListCountry:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance v8, Lcom/android/phone/LGTRoamingData;

    invoke-direct {v8, p0}, Lcom/android/phone/LGTRoamingData;-><init>(Landroid/content/Context;)V

    .line 40
    .local v8, rData:Lcom/android/phone/LGTRoamingData;
    new-instance v9, Ljava/lang/String;

    const-string v10, "a"

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/android/phone/LGTRoamingData;->getCountry(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 42
    .local v5, cursor:Landroid/database/Cursor;
    if-eqz v5, :cond_2

    .line 43
    const v9, 0x7f04001d

    invoke-virtual {p0, v9}, Lcom/android/phone/LGTCountryList;->setContentView(I)V

    .line 44
    const v9, 0x7f0a00e6

    invoke-virtual {p0, v9}, Lcom/android/phone/LGTCountryList;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    iput-object v9, p0, Lcom/android/phone/LGTCountryList;->mListCountry:Landroid/widget/ListView;

    .line 45
    const v9, 0x7f0a02f4

    invoke-virtual {p0, v9}, Lcom/android/phone/LGTCountryList;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/android/phone/LGTCountryList;->mSearchField:Landroid/widget/EditText;

    .line 46
    const-string v9, "_id"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 47
    .local v6, idIdx:I
    const/4 v2, 0x0

    .line 48
    .local v2, cNameIdx:I
    invoke-virtual {p0}, Lcom/android/phone/LGTCountryList;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ko_KR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 49
    const-string v9, "name_kor"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 53
    :goto_0
    const-string v9, "country_num"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 57
    .local v4, cNumIdx:I
    new-instance v7, Landroid/database/MatrixCursor;

    sget-object v9, Lcom/android/phone/LGTCountryList;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v7, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 58
    .local v7, mCursor:Landroid/database/MatrixCursor;
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 59
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, cName:Ljava/lang/String;
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, cNum:Ljava/lang/String;
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 62
    .local v0, _id:Ljava/lang/Long;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {p0, v9, v10, v1}, Lcom/android/phone/LGTCountryList;->columnValuesOfWord(JLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 51
    .end local v0           #_id:Ljava/lang/Long;
    .end local v1           #cName:Ljava/lang/String;
    .end local v3           #cNum:Ljava/lang/String;
    .end local v4           #cNumIdx:I
    .end local v7           #mCursor:Landroid/database/MatrixCursor;
    :cond_0
    const-string v9, "name"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 65
    .restart local v4       #cNumIdx:I
    .restart local v7       #mCursor:Landroid/database/MatrixCursor;
    :cond_1
    iput-object p0, p0, Lcom/android/phone/LGTCountryList;->mAllcontext:Landroid/content/Context;

    .line 66
    iput-object v7, p0, Lcom/android/phone/LGTCountryList;->mAllCursor:Landroid/database/MatrixCursor;

    .line 68
    .end local v2           #cNameIdx:I
    .end local v4           #cNumIdx:I
    .end local v6           #idIdx:I
    .end local v7           #mCursor:Landroid/database/MatrixCursor;
    :cond_2
    iget-object v9, p0, Lcom/android/phone/LGTCountryList;->mListCountry:Landroid/widget/ListView;

    invoke-virtual {v9, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    iget-object v9, p0, Lcom/android/phone/LGTCountryList;->mSearchField:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/phone/LGTCountryList;->SearchTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    if-eqz v5, :cond_3

    .line 72
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_3
    invoke-virtual {v8}, Lcom/android/phone/LGTRoamingData;->close()V

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 86
    new-instance v1, Lcom/android/phone/LGTRoamingData;

    invoke-direct {v1, p0}, Lcom/android/phone/LGTRoamingData;-><init>(Landroid/content/Context;)V

    .line 87
    .local v1, rData:Lcom/android/phone/LGTRoamingData;
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/LGTRoamingData;->selectCountry(Ljava/lang/Long;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, countryInfo:[Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/phone/LGTRoamingData;->close()V

    .line 89
    if-nez v0, :cond_0

    .line 90
    const v2, 0x7f090586

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 91
    invoke-virtual {p0}, Lcom/android/phone/LGTCountryList;->finish()V

    .line 101
    :goto_0
    return-void

    .line 93
    :cond_0
    aget-object v2, v0, v5

    const-string v3, "+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 94
    invoke-virtual {p0}, Lcom/android/phone/LGTCountryList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "country_code"

    aget-object v4, v0, v5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    invoke-virtual {p0}, Lcom/android/phone/LGTCountryList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "country_id"

    invoke-static {v2, v3, p4, p5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 96
    invoke-virtual {p0}, Lcom/android/phone/LGTCountryList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CONTURY_NAME_KOR"

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    invoke-virtual {p0}, Lcom/android/phone/LGTCountryList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CONTURY_NAME_ENG"

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    const v2, 0x7f090585

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 99
    invoke-virtual {p0}, Lcom/android/phone/LGTCountryList;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/android/phone/LGTCountryList;->mAllcontext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/LGTCountryList;->mAllCursor:Landroid/database/MatrixCursor;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/LGTCountryList;->getCountryList(Landroid/content/Context;Landroid/database/MatrixCursor;)V

    .line 83
    return-void
.end method
