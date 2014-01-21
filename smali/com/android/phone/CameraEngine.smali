.class public Lcom/android/phone/CameraEngine;
.super Ljava/lang/Object;
.source "CameraEngine.java"


# static fields
.field private static final DBG:Z

.field private static sInstance:Lcom/android/phone/CameraEngine;


# instance fields
.field mCheckCameraFirmwareFileName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFirmwareCheckToast:Landroid/widget/Toast;

.field protected mHandler:Landroid/os/Handler;

.field versionIsp:Ljava/lang/String;

.field versionPhone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 37
    sget v2, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    if-lt v2, v0, :cond_0

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/CameraEngine;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "/sys/class/camera/rear/rear_checkfw"

    iput-object v0, p0, Lcom/android/phone/CameraEngine;->mCheckCameraFirmwareFileName:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/android/phone/CameraEngine;->versionIsp:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/android/phone/CameraEngine;->versionPhone:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/android/phone/CameraEngine;->mFirmwareCheckToast:Landroid/widget/Toast;

    .line 81
    new-instance v0, Lcom/android/phone/CameraEngine$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CameraEngine$1;-><init>(Lcom/android/phone/CameraEngine;)V

    iput-object v0, p0, Lcom/android/phone/CameraEngine;->mHandler:Landroid/os/Handler;

    .line 75
    sget-boolean v0, Lcom/android/phone/CameraEngine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraEngine constructor..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CameraEngine;->log(Ljava/lang/String;Z)V

    .line 76
    :cond_0
    sget-boolean v0, Lcom/android/phone/CameraEngine;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- context "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CameraEngine;->log(Ljava/lang/String;)V

    .line 78
    :cond_1
    iput-object p1, p0, Lcom/android/phone/CameraEngine;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/phone/CameraEngine;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/CameraEngine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/phone/CameraEngine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CameraEngine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/phone/CameraEngine;->isNeedUpdate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/CameraEngine;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/CameraEngine;->mFirmwareCheckToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/CameraEngine;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/phone/CameraEngine;->mFirmwareCheckToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/CameraEngine;
    .locals 4
    .parameter

    .prologue
    .line 64
    const-class v1, Lcom/android/phone/CameraEngine;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/android/phone/CameraEngine;->sInstance:Lcom/android/phone/CameraEngine;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/android/phone/CameraEngine;

    invoke-direct {v0, p0}, Lcom/android/phone/CameraEngine;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/CameraEngine;->sInstance:Lcom/android/phone/CameraEngine;

    .line 70
    :goto_0
    sget-object v0, Lcom/android/phone/CameraEngine;->sInstance:Lcom/android/phone/CameraEngine;

    monitor-exit v1

    return-object v0

    .line 68
    :cond_0
    const-string v0, "CameraEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CameraEngine;->sInstance:Lcom/android/phone/CameraEngine;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isFileExists()Z
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/phone/CameraEngine;->mCheckCameraFirmwareFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const-string v1, "User Firmware file exists"

    invoke-direct {p0, v1}, Lcom/android/phone/CameraEngine;->log(Ljava/lang/String;)V

    .line 124
    const/4 v1, 0x1

    .line 128
    :goto_0
    return v1

    .line 126
    :cond_0
    const-string v1, "User Firmware file not exists"

    invoke-direct {p0, v1}, Lcom/android/phone/CameraEngine;->log(Ljava/lang/String;)V

    .line 128
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isIspVersionHigher()Z
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x7

    const/4 v4, 0x0

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isIspVersionHigher() - FW versionIsp ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CameraEngine;->versionIsp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " FW versionPhone ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CameraEngine;->versionPhone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CameraEngine;->log(Ljava/lang/String;)V

    .line 199
    const/4 v1, 0x0

    .line 203
    .local v1, versionIspSubstart:Ljava/lang/String;
    const/4 v0, 0x0

    .line 204
    .local v0, versionIspSubend:Ljava/lang/String;
    const/4 v2, 0x0

    .line 207
    .local v2, versionPhoneSubend:Ljava/lang/String;
    const/4 v3, 0x0

    .line 209
    .local v3, versioncomparephonesensor:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/CameraEngine;->versionIsp:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 213
    iget-object v5, p0, Lcom/android/phone/CameraEngine;->versionIsp:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v5, p0, Lcom/android/phone/CameraEngine;->versionPhone:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 222
    const-string v5, "[0-9|a-z|A-Z|]*"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 223
    const/4 v2, 0x0

    .line 225
    :cond_0
    const-string v5, "[0-9|a-z|A-Z|]*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 226
    const/4 v0, 0x0

    .line 236
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 237
    const-string v5, "S13"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_3

    .line 239
    const-string v5, "11111 versionIspSubend >=  not update "

    invoke-direct {p0, v5}, Lcom/android/phone/CameraEngine;->log(Ljava/lang/String;)V

    .line 249
    :cond_2
    :goto_0
    return v4

    .line 242
    :cond_3
    const-string v4, "11111 versionIspSubend < - update "

    invoke-direct {p0, v4}, Lcom/android/phone/CameraEngine;->log(Ljava/lang/String;)V

    .line 243
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isNeedUpdate()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Lcom/android/phone/CameraEngine;->isFileExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/android/phone/CameraEngine;->loadVersionsFromCheckFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/CameraEngine;->isIspVersionHigher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadVersionsFromCheckFile()Z
    .locals 12

    .prologue
    const/16 v11, 0xb

    const/4 v8, 0x0

    .line 132
    const/4 v4, 0x0

    .line 133
    .local v4, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 134
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 140
    .local v6, fwInfo:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    iget-object v9, p0, Lcom/android/phone/CameraEngine;->mCheckCameraFirmwareFileName:Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 141
    .end local v4           #fr:Ljava/io/FileReader;
    .local v5, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 147
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 149
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 150
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 163
    if-nez v6, :cond_2

    .line 164
    :try_start_3
    const-string v9, "loadVersionsFromCheckFile() - can not get the FW info"

    invoke-direct {p0, v9}, Lcom/android/phone/CameraEngine;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 192
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :cond_0
    :goto_0
    return v8

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 151
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 152
    .local v2, e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 154
    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 155
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 156
    :catch_2
    move-exception v3

    .line 157
    .local v3, err:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 188
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #err:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 189
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    const-string v9, "file reading error"

    invoke-direct {p0, v9}, Lcom/android/phone/CameraEngine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :cond_2
    :try_start_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadVersionsFromCheckFile() - FW info["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/CameraEngine;->log(Ljava/lang/String;)V

    .line 170
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v9, " "

    const/4 v10, 0x0

    invoke-direct {v7, v6, v9, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 171
    .local v7, st:Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_3

    .line 172
    const-string v9, "invalid FW Info!"

    invoke-direct {p0, v9}, Lcom/android/phone/CameraEngine;->log(Ljava/lang/String;)V

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 173
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_0

    .line 176
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :cond_3
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/CameraEngine;->versionIsp:Ljava/lang/String;

    .line 177
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/CameraEngine;->versionPhone:Ljava/lang/String;

    .line 180
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadVersionsFromCheckFile() , versionIsp length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CameraEngine;->versionIsp:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " versionPhone length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CameraEngine;->versionPhone:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/CameraEngine;->log(Ljava/lang/String;)V

    .line 181
    iget-object v9, p0, Lcom/android/phone/CameraEngine;->versionIsp:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v11, :cond_4

    iget-object v9, p0, Lcom/android/phone/CameraEngine;->versionPhone:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v9, v11, :cond_5

    .line 182
    :cond_4
    const-string v9, "firmware version length is wrong. cannot read version data"

    invoke-direct {p0, v9}, Lcom/android/phone/CameraEngine;->log(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 183
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 187
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :cond_5
    const/4 v8, 0x1

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 188
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v7           #st:Ljava/util/StringTokenizer;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto/16 :goto_3

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto/16 :goto_3

    .line 151
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto/16 :goto_2

    .line 142
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_8
    move-exception v2

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto/16 :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 265
    const-string v0, "CameraEngine"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 269
    const-string v0, "CameraEngine"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 270
    return-void
.end method


# virtual methods
.method protected isCanOpenDualCamera()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 254
    const-string v2, "sys.siop.curlevel"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 255
    .local v0, currentTemperatureLevel:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTemperatureLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/phone/CameraEngine;->log(Ljava/lang/String;Z)V

    .line 257
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 258
    const/4 v1, 0x0

    .line 260
    :cond_0
    return v1
.end method
