.class public Lcom/android/phone/VE_File;
.super Ljava/lang/Object;
.source "VE_File.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get_InternalFreeMemory()J
    .locals 15

    .prologue
    const-wide/16 v11, 0x0

    .line 56
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    .line 57
    .local v7, fp:Ljava/io/File;
    new-instance v10, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 59
    .local v10, stfs:Landroid/os/StatFs;
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I

    move-result v13

    int-to-long v4, v13

    .line 60
    .local v4, blocksize:J
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockCount()I

    move-result v13

    int-to-long v2, v13

    .line 61
    .local v2, blockcnt:J
    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v13

    int-to-long v13, v13

    mul-long v0, v13, v4

    .line 62
    .local v0, availableSize:J
    long-to-float v13, v4

    long-to-float v14, v2

    mul-float/2addr v13, v14

    const v14, 0x3dcccccd

    mul-float v6, v13, v14

    .line 63
    .local v6, bufferSize:F
    float-to-long v13, v6

    sub-long v8, v0, v13

    .line 64
    .local v8, remainSize:J
    cmp-long v13, v8, v11

    if-gez v13, :cond_0

    move-wide v8, v11

    .line 67
    .end local v8           #remainSize:J
    :cond_0
    return-wide v8
.end method

.method private static set_Authority(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "Name"
    .parameter "authority"

    .prologue
    .line 44
    const/4 v1, 0x1

    .line 47
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 50
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static set_FileAuthority(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "FileName"
    .parameter "authority"

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/android/phone/VE_File;->set_Authority(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
