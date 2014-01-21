.class public Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;
.super Ljava/lang/Object;
.source "PhoneNumberLocatorDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;
    }
.end annotation


# static fields
.field public static isAutoUpdating:Z

.field private static isLanguageChange:Z

.field public static sDownloadFailTime:I

.field public static tryTimes:I


# instance fields
.field private final EVENT_COPY_FINISH:I

.field private final EVENT_DOWNLOAD_FINISH:I

.field private final EVENT_FILE_EXCEPTION:I

.field private final EVENT_HTTP_EXCEPTION:I

.field private final EVENT_USER_CANCELED:I

.field private final EVENT_VERSION_SAME:I

.field private final READ_TIMEOUT_SEC:I

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private final extraSize:I

.field private isAutoUpdateType:Z

.field private mContext:Landroid/content/Context;

.field private mDownloadThread:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isLanguageChange:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMddHHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 110
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->extraSize:I

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->EVENT_DOWNLOAD_FINISH:I

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->EVENT_HTTP_EXCEPTION:I

    .line 114
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->EVENT_FILE_EXCEPTION:I

    .line 115
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->EVENT_VERSION_SAME:I

    .line 116
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->EVENT_COPY_FINISH:I

    .line 117
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->EVENT_USER_CANCELED:I

    .line 118
    const/16 v0, 0x2d

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->READ_TIMEOUT_SEC:I

    .line 129
    return-void
.end method

.method public static CopyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "strSrc"
    .parameter "strDst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v5, src:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v2, dst:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 252
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 253
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 254
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 255
    :cond_1
    const/4 v3, 0x0

    .line 256
    .local v3, from:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 259
    .local v6, to:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 260
    .end local v3           #from:Ljava/io/FileInputStream;
    .local v4, from:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 262
    .end local v6           #to:Ljava/io/FileOutputStream;
    .local v7, to:Ljava/io/FileOutputStream;
    const/16 v8, 0x2000

    :try_start_2
    new-array v0, v8, [B

    .line 264
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_4

    .line 265
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 269
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catchall_0
    move-exception v8

    move-object v6, v7

    .end local v7           #to:Ljava/io/FileOutputStream;
    .restart local v6       #to:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 270
    .end local v4           #from:Ljava/io/FileInputStream;
    .restart local v3       #from:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v3, :cond_2

    .line 271
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 276
    :cond_2
    if-eqz v6, :cond_3

    .line 277
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 280
    :cond_3
    :goto_2
    throw v8

    .line 267
    .end local v3           #from:Ljava/io/FileInputStream;
    .end local v6           #to:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v4       #from:Ljava/io/FileInputStream;
    .restart local v7       #to:Ljava/io/FileOutputStream;
    :cond_4
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 270
    if-eqz v4, :cond_5

    .line 271
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 276
    :cond_5
    if-eqz v7, :cond_6

    .line 277
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 283
    :cond_6
    :goto_3
    invoke-static {p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->changePermission(Ljava/lang/String;)V

    .line 284
    const/4 v8, 0x1

    return v8

    .line 272
    :catch_0
    move-exception v8

    .line 276
    if-eqz v7, :cond_6

    .line 277
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 278
    :catch_1
    move-exception v8

    goto :goto_3

    .line 275
    :catchall_1
    move-exception v8

    .line 276
    if-eqz v7, :cond_7

    .line 277
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 280
    :cond_7
    :goto_4
    throw v8

    .line 272
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v4           #from:Ljava/io/FileInputStream;
    .end local v7           #to:Ljava/io/FileOutputStream;
    .restart local v3       #from:Ljava/io/FileInputStream;
    .restart local v6       #to:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v9

    .line 276
    if-eqz v6, :cond_3

    .line 277
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    .line 278
    :catch_3
    move-exception v9

    goto :goto_2

    .line 275
    :catchall_2
    move-exception v8

    .line 276
    if-eqz v6, :cond_8

    .line 277
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 280
    :cond_8
    :goto_5
    throw v8

    .line 278
    .end local v3           #from:Ljava/io/FileInputStream;
    .end local v6           #to:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v4       #from:Ljava/io/FileInputStream;
    .restart local v7       #to:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v8

    goto :goto_3

    :catch_5
    move-exception v9

    goto :goto_4

    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v4           #from:Ljava/io/FileInputStream;
    .end local v7           #to:Ljava/io/FileOutputStream;
    .restart local v3       #from:Ljava/io/FileInputStream;
    .restart local v6       #to:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v9

    goto :goto_2

    :catch_7
    move-exception v9

    goto :goto_5

    .line 269
    :catchall_3
    move-exception v8

    goto :goto_1

    .end local v3           #from:Ljava/io/FileInputStream;
    .restart local v4       #from:Ljava/io/FileInputStream;
    :catchall_4
    move-exception v8

    move-object v3, v4

    .end local v4           #from:Ljava/io/FileInputStream;
    .restart local v3       #from:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private DeleteFile(Ljava/lang/String;)V
    .locals 2
    .parameter "strFileName"

    .prologue
    .line 241
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, myFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 245
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isLanguageChange:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->saveValuesBeforeUpdate()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->saveValuesForSuccess()V

    return-void
.end method

.method private static changePermission(Ljava/lang/String;)V
    .locals 4
    .parameter "strDst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, command:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 290
    .local v1, runtime:Ljava/lang/Runtime;
    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 291
    return-void
.end method

.method public static isChinese(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 980
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 981
    .local v0, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 987
    :cond_0
    const/4 v1, 0x1

    .line 989
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMessyCode(Ljava/lang/String;)Z
    .locals 4
    .parameter "strName"

    .prologue
    .line 993
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 994
    .local v1, ch:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 995
    aget-char v0, v1, v2

    .line 996
    .local v0, c:C
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isChinese(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 997
    const/4 v3, 0x1

    .line 1000
    .end local v0           #c:C
    :goto_1
    return v3

    .line 994
    .restart local v0       #c:C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1000
    .end local v0           #c:C
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 972
    const-string v0, "PhoneNumberLocatorDownloader"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 976
    const-string v0, "PhoneNumberLocatorDownloader"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 977
    return-void
.end method

.method private saveValuesBeforeUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 394
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 401
    .local v0, sharedPreferences:Landroid/content/SharedPreferences$Editor;
    const-string v1, "lastUpdateTime"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getCurrentTime()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 402
    const-string v1, "updateSuccess"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 404
    sget v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 405
    sget v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    .line 409
    :goto_0
    const-string v1, "tryTimes"

    sget v2, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 410
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 412
    return-void

    .line 407
    :cond_0
    sput v3, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    goto :goto_0
.end method

.method private saveValuesForSuccess()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 422
    const-string v1, "saveValuesForSuccess()"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 429
    .local v0, sharedPreferences:Landroid/content/SharedPreferences$Editor;
    const-string v1, "bTryAgain10"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 430
    const-string v1, "lastUpdateTime"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getCurrentTime()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 431
    const-string v1, "tryTimes"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 432
    const-string v1, "updateSuccess"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 434
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 436
    return-void
.end method


# virtual methods
.method getBufferUnicodeString([BII)Ljava/lang/String;
    .locals 9
    .parameter "buffer"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 302
    const/4 v4, 0x0

    .line 303
    .local v4, isStringEnd:Z
    const/4 v1, 0x0

    .line 304
    .local v1, count:I
    const/4 v3, 0x0

    .line 305
    .local v3, i:I
    const/16 v7, 0x80

    new-array v0, v7, [B

    .line 307
    .local v0, buffer128:[B
    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_0

    .line 308
    add-int v7, p2, v3

    aget-byte v7, p1, v7

    aput-byte v7, v0, v3

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 310
    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p3, :cond_1

    .line 311
    rem-int/lit8 v7, v3, 0x2

    if-nez v7, :cond_2

    add-int/lit8 v7, p3, -0x1

    if-ge v3, v7, :cond_2

    aget-byte v7, v0, v3

    if-nez v7, :cond_2

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, v0, v7

    if-nez v7, :cond_2

    const/4 v4, 0x1

    .line 313
    :goto_2
    if-eqz v4, :cond_3

    .line 319
    :cond_1
    new-array v5, v1, [B

    .line 320
    .local v5, newBuffer:[B
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_4

    .line 321
    aget-byte v7, v0, v3

    aput-byte v7, v5, v3

    .line 320
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 311
    .end local v5           #newBuffer:[B
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 316
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 310
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 323
    .restart local v5       #newBuffer:[B
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBufferUnicodeString buffer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "End"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    .line 325
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-16LE"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_4
    return-object v6

    .line 327
    :catch_0
    move-exception v2

    .line 328
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    const-string v6, ""

    goto :goto_4
.end method

.method public getCurrentTime()I
    .locals 3

    .prologue
    .line 415
    const-string v2, "getCurrentTime"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    .line 416
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 417
    .local v1, date:Ljava/util/Date;
    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, currentTime:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;
    .locals 9
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x20

    .line 193
    new-array v0, v5, [B

    .line 194
    .local v0, buffer32:[B
    new-instance v4, Lcom/android/phone/callsettings/VersionInfo;

    invoke-direct {v4}, Lcom/android/phone/callsettings/VersionInfo;-><init>()V

    .line 196
    .local v4, versionInfo:Lcom/android/phone/callsettings/VersionInfo;
    const/4 v2, 0x0

    .line 198
    .local v2, ois:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v3, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local v2           #ois:Ljava/io/RandomAccessFile;
    .local v3, ois:Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVersionInfo file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ois: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    .line 201
    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 202
    .local v1, count:I
    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/phone/callsettings/VersionInfo;->displayVersion:Ljava/lang/String;

    .line 204
    iget-object v5, v4, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    const-string v6, "Korean"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    iget-object v5, v4, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    const-string v6, "Korean"

    const-string v7, " "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/callsettings/VersionInfo;->displayVersion:Ljava/lang/String;

    .line 207
    :cond_0
    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 208
    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    .line 210
    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->readUnsignedInt([B)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    .line 213
    iget-wide v5, v4, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVersionInfo version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lastUpdate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dbSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "End"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 218
    const/4 v2, 0x0

    .line 219
    .end local v3           #ois:Ljava/io/RandomAccessFile;
    .restart local v2       #ois:Ljava/io/RandomAccessFile;
    if-eqz v2, :cond_1

    .line 221
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 222
    const/4 v2, 0x0

    .line 229
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 231
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 232
    const/4 v2, 0x0

    .line 235
    :cond_2
    :goto_1
    return-object v4

    .line 229
    .end local v1           #count:I
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_3

    .line 231
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 232
    const/4 v2, 0x0

    .line 235
    :cond_3
    :goto_3
    throw v5

    .line 223
    .restart local v1       #count:I
    :catch_0
    move-exception v5

    goto :goto_0

    .line 233
    :catch_1
    move-exception v5

    goto :goto_1

    .end local v1           #count:I
    :catch_2
    move-exception v6

    goto :goto_3

    .line 229
    .end local v2           #ois:Ljava/io/RandomAccessFile;
    .restart local v3       #ois:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #ois:Ljava/io/RandomAccessFile;
    .restart local v2       #ois:Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method public readDownloadFileInfo(Lcom/android/phone/callsettings/DownloadFileInfo;)V
    .locals 25
    .parameter "file"

    .prologue
    .line 334
    if-nez p1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    const/4 v14, 0x0

    .line 336
    .local v14, ois:Ljava/io/RandomAccessFile;
    const/16 v3, 0x2000

    .line 337
    .local v3, bufferSize:I
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v5, v0, [B

    .line 338
    .local v5, buffermark:[B
    const/16 v22, 0x2000

    move/from16 v0, v22

    new-array v4, v0, [B

    .line 340
    .local v4, bufferdata:[B
    :try_start_0
    new-instance v15, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/phone/callsettings/DownloadFileInfo;->fileName:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "r"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v15, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 341
    .end local v14           #ois:Ljava/io/RandomAccessFile;
    .local v15, ois:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v18

    .line 342
    .local v18, size:J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    move-wide/from16 v22, v0

    cmp-long v22, v22, v18

    if-eqz v22, :cond_2

    .line 343
    const-string v22, "PhoneNumberLocatorDownloader"

    const-string v23, "file size not correct"

    invoke-static/range {v22 .. v23}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 382
    if-eqz v15, :cond_8

    .line 384
    :try_start_2
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 385
    const/4 v14, 0x0

    .end local v15           #ois:Ljava/io/RandomAccessFile;
    .restart local v14       #ois:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 386
    .end local v14           #ois:Ljava/io/RandomAccessFile;
    .restart local v15       #ois:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v22

    move-object v14, v15

    .end local v15           #ois:Ljava/io/RandomAccessFile;
    .restart local v14       #ois:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 347
    .end local v14           #ois:Ljava/io/RandomAccessFile;
    .restart local v15       #ois:Ljava/io/RandomAccessFile;
    :cond_2
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-lez v22, :cond_3

    const-wide/16 v22, 0x0

    :try_start_3
    move-wide/from16 v0, v22

    invoke-virtual {v15, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 348
    :cond_3
    const/16 v22, 0x0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v5, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 349
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->readUnsignedInt([B)J

    move-result-wide v20

    .line 351
    .local v20, startmark:J
    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->startmarker:J

    .line 353
    new-instance v10, Ljava/util/zip/CRC32;

    invoke-direct {v10}, Ljava/util/zip/CRC32;-><init>()V

    .line 354
    .local v10, crc32value:Ljava/util/zip/CRC32;
    const-wide/16 v22, 0xc

    sub-long v16, v18, v22

    .line 355
    .local v16, readleft:J
    :goto_1
    const-wide/16 v22, 0x0

    cmp-long v22, v16, v22

    if-lez v22, :cond_5

    .line 356
    const-wide/16 v22, 0x2000

    cmp-long v22, v16, v22

    if-ltz v22, :cond_4

    .line 357
    const/16 v22, 0x0

    const/16 v23, 0x2000

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v4, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v16, v16, v22

    .line 358
    invoke-virtual {v10, v4}, Ljava/util/zip/CRC32;->update([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 379
    .end local v10           #crc32value:Ljava/util/zip/CRC32;
    .end local v16           #readleft:J
    .end local v18           #size:J
    .end local v20           #startmark:J
    :catch_1
    move-exception v13

    move-object v14, v15

    .line 380
    .end local v15           #ois:Ljava/io/RandomAccessFile;
    .local v13, ex:Ljava/lang/Exception;
    .restart local v14       #ois:Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_4
    const-string v22, "PhoneNumberLocatorDownloader"

    const-string v23, "read error when read marks and crc32 from file"

    invoke-static/range {v22 .. v23}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 382
    if-eqz v14, :cond_0

    .line 384
    :try_start_5
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 385
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 360
    .end local v13           #ex:Ljava/lang/Exception;
    .end local v14           #ois:Ljava/io/RandomAccessFile;
    .restart local v10       #crc32value:Ljava/util/zip/CRC32;
    .restart local v15       #ois:Ljava/io/RandomAccessFile;
    .restart local v16       #readleft:J
    .restart local v18       #size:J
    .restart local v20       #startmark:J
    :cond_4
    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v22, v0

    :try_start_6
    move/from16 v0, v22

    new-array v4, v0, [B

    .line 361
    const/16 v22, 0x0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v4, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 362
    invoke-virtual {v10, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 363
    const-wide/16 v16, 0x0

    goto :goto_1

    .line 366
    :cond_5
    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    .line 367
    .local v6, calcrc32:J
    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/phone/callsettings/DownloadFileInfo;->crc32CalculateFromData:J

    .line 369
    const-wide/16 v22, 0x8

    cmp-long v22, v18, v22

    if-lez v22, :cond_6

    const-wide/16 v22, 0x8

    sub-long v22, v18, v22

    move-wide/from16 v0, v22

    invoke-virtual {v15, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 370
    :cond_6
    const/16 v22, 0x0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v5, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 371
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->readUnsignedInt([B)J

    move-result-wide v8

    .line 372
    .local v8, crc32:J
    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/android/phone/callsettings/DownloadFileInfo;->crc32ReadFromFile:J

    .line 374
    const/16 v22, 0x0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v5, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 375
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->readUnsignedInt([B)J

    move-result-wide v11

    .line 376
    .local v11, endmark:J
    move-object/from16 v0, p1

    iput-wide v11, v0, Lcom/android/phone/callsettings/DownloadFileInfo;->endmarker:J

    .line 377
    const-string v22, "PhoneNumberLocatorDownloader"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "start marker = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\ncrc32 = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\ncrc32 = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\nendmark = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 382
    if-eqz v15, :cond_8

    .line 384
    :try_start_7
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 385
    const/4 v14, 0x0

    .end local v15           #ois:Ljava/io/RandomAccessFile;
    .restart local v14       #ois:Ljava/io/RandomAccessFile;
    goto/16 :goto_0

    .line 386
    .end local v14           #ois:Ljava/io/RandomAccessFile;
    .restart local v15       #ois:Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v22

    move-object v14, v15

    .line 388
    .end local v15           #ois:Ljava/io/RandomAccessFile;
    .restart local v14       #ois:Ljava/io/RandomAccessFile;
    goto/16 :goto_0

    .line 382
    .end local v6           #calcrc32:J
    .end local v8           #crc32:J
    .end local v10           #crc32value:Ljava/util/zip/CRC32;
    .end local v11           #endmark:J
    .end local v16           #readleft:J
    .end local v18           #size:J
    .end local v20           #startmark:J
    :catchall_0
    move-exception v22

    :goto_3
    if-eqz v14, :cond_7

    .line 384
    :try_start_8
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 385
    const/4 v14, 0x0

    .line 388
    :cond_7
    :goto_4
    throw v22

    .line 386
    .restart local v13       #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v22

    goto/16 :goto_0

    .end local v13           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v23

    goto :goto_4

    .line 382
    .end local v14           #ois:Ljava/io/RandomAccessFile;
    .restart local v15       #ois:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v22

    move-object v14, v15

    .end local v15           #ois:Ljava/io/RandomAccessFile;
    .restart local v14       #ois:Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 379
    :catch_5
    move-exception v13

    goto/16 :goto_2

    .end local v14           #ois:Ljava/io/RandomAccessFile;
    .restart local v15       #ois:Ljava/io/RandomAccessFile;
    .restart local v18       #size:J
    :cond_8
    move-object v14, v15

    .end local v15           #ois:Ljava/io/RandomAccessFile;
    .restart local v14       #ois:Ljava/io/RandomAccessFile;
    goto/16 :goto_0
.end method

.method public readUnsignedInt([B)J
    .locals 11
    .parameter "bytes"

    .prologue
    .line 294
    const/4 v8, 0x0

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v0, v8

    .line 295
    .local v0, b0:J
    const/4 v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x8

    shl-long v2, v8, v10

    .line 296
    .local v2, b1:J
    const/4 v8, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x10

    shl-long v4, v8, v10

    .line 297
    .local v4, b2:J
    const/4 v8, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x18

    shl-long v6, v8, v10

    .line 298
    .local v6, b3:J
    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    return-wide v8
.end method

.method public setCallback(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    .line 156
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    .line 137
    return-void
.end method

.method public setTypeAuto(Z)V
    .locals 0
    .parameter "auto"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    .line 147
    return-void
.end method

.method public startDownloadThread()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 162
    const-string v1, "startDownloadThread"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V

    .line 163
    iget-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-eqz v1, :cond_0

    .line 164
    sput-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    .line 167
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mDownloadThread:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;

    .line 168
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mDownloadThread:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->startThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    iget-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-eqz v1, :cond_1

    .line 172
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    goto :goto_0
.end method

.method public stopDownloadThread()V
    .locals 2

    .prologue
    .line 182
    const-string v0, "stopDownloadThread"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V

    .line 183
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mDownloadThread:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mDownloadThread:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->stopThread()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mDownloadThread:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;

    .line 190
    :cond_1
    return-void
.end method
