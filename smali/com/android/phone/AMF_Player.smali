.class public Lcom/android/phone/AMF_Player;
.super Ljava/lang/Object;
.source "AMF_Player.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AMF_Player$ContentFormat;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAmfHandle:I

.field private mBitmap:[Landroid/graphics/Bitmap;

.field private mContentFmt:Lcom/android/phone/AMF_Player$ContentFormat;

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private mFramebuff:[B

.field private mHaveBGM:Z

.field private mHaveFrame:[Z

.field private mStartime:J

.field private mTotalplaytime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "AMF_Player"

    iput-object v0, p0, Lcom/android/phone/AMF_Player;->TAG:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/android/phone/AMF_Player$ContentFormat;->AM3:Lcom/android/phone/AMF_Player$ContentFormat;

    iput-object v0, p0, Lcom/android/phone/AMF_Player;->mContentFmt:Lcom/android/phone/AMF_Player$ContentFormat;

    .line 33
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/android/phone/AMF_Player;->mHaveFrame:[Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/AMF_Player;->mHaveBGM:Z

    .line 49
    const/4 v0, 0x4

    const-string v1, "AMF_Player"

    const-string v2, "AMF_Player()"

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    new-array v0, v3, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/phone/AMF_Player;->mBitmap:[Landroid/graphics/Bitmap;

    .line 51
    return-void
.end method


# virtual methods
.method public declared-synchronized Put_FrameToBuffer(II)I
    .locals 6
    .parameter "sOffs"
    .parameter "eOffs"

    .prologue
    const/4 v5, 0x1

    .line 146
    monitor-enter p0

    move v0, p1

    .line 148
    .local v0, i:I
    :cond_0
    :goto_0
    if-ge v0, p2, :cond_1

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/AMF_Player;->mHaveFrame:[Z

    aget-boolean v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v5, :cond_2

    .line 169
    :cond_1
    monitor-exit p0

    return v0

    .line 153
    :cond_2
    :try_start_1
    iget v1, p0, Lcom/android/phone/AMF_Player;->mAmfHandle:I

    iget-wide v2, p0, Lcom/android/phone/AMF_Player;->mStartime:J

    long-to-int v2, v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/AMF_Player;->mFramebuff:[B

    invoke-static {v1, v2, v3, v4}, Lcom/mtelo/amf/AmfCodec;->AMFGetFrame(III[B)I

    .line 155
    iget-object v1, p0, Lcom/android/phone/AMF_Player;->mFramebuff:[B

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/phone/AMF_Player;->mBitmap:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/phone/AMF_Player;->mFramebuff:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/AMF_Player;->mFramebuff:[B

    array-length v4, v4

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 160
    iget-object v1, p0, Lcom/android/phone/AMF_Player;->mHaveFrame:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 161
    iget-wide v1, p0, Lcom/android/phone/AMF_Player;->mStartime:J

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/phone/AMF_Player;->mStartime:J

    .line 163
    add-int/lit8 v0, v0, 0x1

    .line 165
    iget-wide v1, p0, Lcom/android/phone/AMF_Player;->mStartime:J

    iget-wide v3, p0, Lcom/android/phone/AMF_Player;->mTotalplaytime:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 166
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/phone/AMF_Player;->mStartime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public get_AmfHandle()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/phone/AMF_Player;->mAmfHandle:I

    return v0
.end method

.method public get_BgmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "bgm.mp3"

    return-object v0
.end method

.method public get_frame(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "idx"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/phone/AMF_Player;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public get_framestate(I)Z
    .locals 1
    .parameter "idx"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/phone/AMF_Player;->mHaveFrame:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public get_totaltime()J
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcom/android/phone/AMF_Player;->mAmfHandle:I

    invoke-static {v0}, Lcom/mtelo/amf/AmfCodec;->AMFGetRuntime(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public init_player(Ljava/lang/String;II)I
    .locals 9
    .parameter "path"
    .parameter "w"
    .parameter "h"

    .prologue
    const-wide/16 v7, 0x0

    .line 66
    const/4 v3, 0x4

    const-string v4, "AMF_Player"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init_player("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v2, 0x0

    .line 71
    .local v2, result:I
    :try_start_0
    iget v3, p0, Lcom/android/phone/AMF_Player;->mAmfHandle:I

    if-eqz v3, :cond_0

    .line 72
    iget v3, p0, Lcom/android/phone/AMF_Player;->mAmfHandle:I

    invoke-static {v3}, Lcom/mtelo/amf/AmfCodec;->AMFDestroyContent(I)I

    .line 73
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/phone/AMF_Player;->mAmfHandle:I

    .line 76
    :cond_0
    const-string v3, "EUC-KR"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/mtelo/amf/AmfCodec;->AMFDecodeContent([B)I

    move-result v3

    iput v3, p0, Lcom/android/phone/AMF_Player;->mAmfHandle:I

    .line 77
    iget v3, p0, Lcom/android/phone/AMF_Player;->mAmfHandle:I

    if-gez v3, :cond_1

    .line 78
    iget v3, p0, Lcom/android/phone/AMF_Player;->mAmfHandle:I

    .line 116
    :goto_0
    return v3

    .line 80
    :cond_1
    iget v3, p0, Lcom/android/phone/AMF_Player;->mAmfHandle:I

    invoke-static {v3}, Lcom/mtelo/amf/AmfCodec;->AMFGetWidth(I)I

    move-result p2

    .line 81
    if-gez p2, :cond_2

    move v3, p2

    .line 82
    goto :goto_0

    .line 84
    :cond_2
    iget v3, p0, Lcom/android/phone/AMF_Player;->mAmfHandle:I

    invoke-static {v3}, Lcom/mtelo/amf/AmfCodec;->AMFGetHeight(I)I

    move-result p3

    .line 85
    if-gez p3, :cond_3

    move v3, p3

    .line 86
    goto :goto_0

    .line 88
    :cond_3
    iget v3, p0, Lcom/android/phone/AMF_Player;->mAmfHandle:I

    const/4 v4, 0x1

    invoke-static {v3, p2, p3, v4}, Lcom/mtelo/amf/AmfCodec;->AMFInitPlayer(IIII)I

    move-result v2

    .line 89
    if-gez v2, :cond_4

    move v3, v2

    .line 90
    goto :goto_0

    .line 93
    :cond_4
    iget-object v3, p0, Lcom/android/phone/AMF_Player;->mFramebuff:[B

    if-eqz v3, :cond_5

    .line 94
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/AMF_Player;->mFramebuff:[B

    .line 97
    :cond_5
    mul-int v3, p2, p3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x36

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/phone/AMF_Player;->mFramebuff:[B

    .line 99
    iput p2, p0, Lcom/android/phone/AMF_Player;->mFrameWidth:I

    .line 100
    iput p3, p0, Lcom/android/phone/AMF_Player;->mFrameHeight:I

    .line 102
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/phone/AMF_Player;->mStartime:J

    .line 104
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/AMF_Player;->mHaveFrame:[Z

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 105
    iget-object v3, p0, Lcom/android/phone/AMF_Player;->mHaveFrame:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v1

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/AMF_Player;->get_totaltime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/phone/AMF_Player;->mTotalplaytime:J

    .line 109
    iget-wide v3, p0, Lcom/android/phone/AMF_Player;->mTotalplaytime:J

    cmp-long v3, v3, v7

    if-gez v3, :cond_7

    .line 110
    iget-wide v3, p0, Lcom/android/phone/AMF_Player;->mTotalplaytime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v3, v3

    goto :goto_0

    .line 112
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    const/4 v3, -0x1

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    :cond_7
    move v3, v2

    .line 116
    goto :goto_0
.end method

.method public isHaveBGM()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/phone/AMF_Player;->mHaveBGM:Z

    return v0
.end method

.method public set_framestate(IZ)V
    .locals 2
    .parameter "idx"
    .parameter "state"

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/AMF_Player;->mHaveFrame:[Z

    aput-boolean p2, v1, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method
