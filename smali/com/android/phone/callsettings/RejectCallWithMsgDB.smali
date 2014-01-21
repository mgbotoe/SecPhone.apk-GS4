.class public Lcom/android/phone/callsettings/RejectCallWithMsgDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RejectCallWithMsgDB.java"


# static fields
.field private static DefaultMessage:Ljava/lang/String;

.field private static DefaultMsgNum:I

.field private static final defaultIconIdList:[I

.field private static final defaultPositionList:[I

.field public static defaultRejectMsgList:[Ljava/lang/String;

.field public static final defaultRejectMsgListKor:[Ljava/lang/String;

.field private static final defaultTitleIdList:[I

.field private static final defaultTitleList:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 46
    sput v3, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->DefaultMsgNum:I

    .line 47
    const-string v0, "default_message"

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->DefaultMessage:Ljava/lang/String;

    .line 54
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "callsettings_rejectmessage_list1"

    aput-object v1, v0, v4

    const-string v1, "callsettings_rejectmessage_list2"

    aput-object v1, v0, v5

    const-string v1, "callsettings_rejectmessage_list3"

    aput-object v1, v0, v6

    const-string v1, "callsettings_rejectmessage_list4"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "callsettings_rejectmessage_list5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[Ljava/lang/String;

    .line 62
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "callsettings_rejectmessage_list1_kor"

    aput-object v1, v0, v4

    const-string v1, "callsettings_rejectmessage_list2_kor"

    aput-object v1, v0, v5

    const-string v1, "callsettings_rejectmessage_list3_kor"

    aput-object v1, v0, v6

    const-string v1, "callsettings_rejectmessage_list4_kor"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "callsettings_rejectmessage_list5_kor"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListKor:[Ljava/lang/String;

    .line 71
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "callsettings_rejectmessage_title1"

    aput-object v1, v0, v4

    const-string v1, "callsettings_rejectmessage_title2"

    aput-object v1, v0, v5

    const-string v1, "callsettings_rejectmessage_title3"

    aput-object v1, v0, v6

    const-string v1, "callsettings_rejectmessage_title4"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "callsettings_rejectmessage_title5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultTitleList:[Ljava/lang/String;

    .line 79
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultTitleIdList:[I

    .line 89
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultIconIdList:[I

    .line 102
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultPositionList:[I

    return-void

    .line 79
    :array_0
    .array-data 0x4
        0x3ft 0x8t 0x9t 0x7ft
        0x40t 0x8t 0x9t 0x7ft
        0x41t 0x8t 0x9t 0x7ft
        0x42t 0x8t 0x9t 0x7ft
        0x43t 0x8t 0x9t 0x7ft
    .end array-data

    .line 89
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 102
    :array_2
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 115
    const-string v0, "rejectmessage.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 116
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->mContext:Landroid/content/Context;

    .line 117
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "db"

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 124
    .local v0, DefaultRemindtime:I
    const-string v5, "CREATE TABLE reject_msg (_id INTEGER PRIMARY KEY AUTOINCREMENT, reject_message TEXT NOT NULL,edit_checked INTEGER NOT NULL,remind_time INTEGER NOT NULL);"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    const-string v5, "reject_call_with_message_icon_mode"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    const-string v5, "CREATE TABLE reject_msg_icon_mode (_id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT NOT NULL,reject_message TEXT NOT NULL,edit_checked INTEGER NOT NULL,icon_id INTEGER NOT NULL,remind_time INTEGER NOT NULL,position INTEGER NOT NULL);"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v5, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 145
    if-nez v2, :cond_2

    .line 146
    const/16 v0, 0x3c

    .line 151
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO reject_msg (\'REJECT_MESSAGE\', \'EDIT_CHECKED\' , \'REMIND_TIME\') values (\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->DefaultMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' , 0 ,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ");"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    const-string v5, "reject_call_with_message_icon_mode"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 157
    const/4 v3, 0x0

    .line 158
    .local v3, messageId:I
    const/4 v1, 0x0

    .line 159
    .local v1, entryName:Ljava/lang/String;
    const-string v5, "modify_reject_message"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 160
    sget-object v5, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListKor:[Ljava/lang/String;

    aget-object v1, v5, v2

    .line 165
    :goto_2
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 166
    .local v4, res:Landroid/content/res/Resources;
    const-string v5, "string"

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO reject_msg_icon_mode (title, reject_message, edit_checked, remind_time, icon_id, position) values (\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultTitleIdList:[I

    aget v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' ,\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' , 0 ,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultIconIdList:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultPositionList:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ");"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    .end local v1           #entryName:Ljava/lang/String;
    .end local v3           #messageId:I
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 148
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 162
    .restart local v1       #entryName:Ljava/lang/String;
    .restart local v3       #messageId:I
    :cond_3
    sget-object v5, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[Ljava/lang/String;

    aget-object v1, v5, v2

    goto :goto_2

    .line 178
    .end local v1           #entryName:Ljava/lang/String;
    .end local v3           #messageId:I
    :cond_4
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v3, 0x2

    .line 183
    if-ge p2, v3, :cond_0

    .line 184
    const-string v0, "ALTER TABLE reject_msg ADD COLUMN remind_time INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    :cond_0
    const-string v0, "RejectMsgDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 189
    if-lt p2, v3, :cond_2

    .line 190
    const-string v0, "DROP TABLE IF EXISTS reject_msg"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    const-string v0, "reject_call_with_message_icon_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    const-string v0, "DROP TABLE IF EXISTS reject_msg_icon_mode"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 198
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 200
    :cond_2
    return-void
.end method
