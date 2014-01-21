.class public Lcom/android/phone/FileWriteThread;
.super Ljava/lang/Thread;
.source "FileWriteThread.java"


# static fields
.field private static mIsSetWakeKey:Z

.field private static sDataConnectState:I


# instance fields
.field private mThreadType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/FileWriteThread;->sDataConnectState:I

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/FileWriteThread;->mIsSetWakeKey:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "threadType"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 78
    const-string v0, "FileWriteThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileWriteThread : threadType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 79
    iput p1, p0, Lcom/android/phone/FileWriteThread;->mThreadType:I

    .line 80
    return-void
.end method

.method private chargingCutOff()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 178
    const-string v6, "gsm.network.type"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, netType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 182
    .local v2, fos:Ljava/io/FileOutputStream;
    if-eqz v4, :cond_2

    .line 183
    :try_start_0
    const-string v6, "GPRS:1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "EDGE:2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "GSM:16"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "Unexpected:16"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 185
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v6, "/sys/class/power_supply/battery/talk_gsm"

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 189
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :goto_0
    const/16 v5, 0x30

    .line 191
    .local v5, voice_state:B
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v7, :cond_1

    .line 192
    const/16 v5, 0x31

    .line 194
    :cond_1
    const-string v6, "FileWriteThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : voice_call = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 195
    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 196
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    .end local v5           #voice_state:B
    :cond_2
    if-eqz v2, :cond_3

    .line 209
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 214
    :cond_3
    :goto_1
    return-void

    .line 187
    :cond_4
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v6, "/sys/class/power_supply/battery/talk_wcdma"

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, ex:Ljava/io/IOException;
    const-string v6, "FileWriteThread"

    const-string v7, "2nd close fail!!!"

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    .line 198
    .end local v1           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v6, "FileWriteThread"

    const-string v7, "voice_call write error, exec orig."

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    if-eqz v2, :cond_5

    .line 202
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 208
    :cond_5
    :goto_2
    if-eqz v2, :cond_3

    .line 209
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 210
    :catch_2
    move-exception v1

    .line 211
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v6, "FileWriteThread"

    const-string v7, "2nd close fail!!!"

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    .line 203
    .end local v1           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 204
    .restart local v1       #ex:Ljava/io/IOException;
    :try_start_6
    const-string v6, "FileWriteThread"

    const-string v7, "1st close fail!!!"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 207
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 208
    if-eqz v2, :cond_6

    .line 209
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 212
    :cond_6
    :goto_3
    throw v6

    .line 210
    :catch_4
    move-exception v1

    .line 211
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v7, "FileWriteThread"

    const-string v8, "2nd close fail!!!"

    invoke-static {v7, v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_3
.end method

.method private dataChargingCutOff(Z)V
    .locals 9
    .parameter "isConnected"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 217
    sget v8, Lcom/android/phone/FileWriteThread;->sDataConnectState:I

    if-ne p1, v5, :cond_1

    move v7, v5

    :goto_0
    if-ne v8, v7, :cond_2

    .line 218
    const-string v5, "FileWriteThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dataChargingCutOff : skip same state - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v7, v6

    .line 217
    goto :goto_0

    .line 222
    :cond_2
    if-ne p1, v5, :cond_5

    :goto_2
    sput v5, Lcom/android/phone/FileWriteThread;->sDataConnectState:I

    .line 224
    const/4 v3, 0x0

    .line 226
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/power_supply/battery/data_call"

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    const/16 v0, 0x30

    .line 229
    .local v0, data_state:B
    if-eqz p1, :cond_3

    .line 230
    const/16 v0, 0x31

    .line 233
    :cond_3
    :try_start_1
    const-string v5, "FileWriteThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dataChargingCutOff : data_call = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 234
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 235
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 246
    if-eqz v4, :cond_4

    .line 247
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v3, v4

    .line 250
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #data_state:B
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_5
    move v5, v6

    .line 222
    goto :goto_2

    .line 248
    .restart local v0       #data_state:B
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 249
    .local v2, ex:Ljava/io/IOException;
    const-string v5, "FileWriteThread"

    const-string v6, "close fail!!!"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 251
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 236
    .end local v0           #data_state:B
    .end local v2           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 237
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string v5, "FileWriteThread"

    const-string v6, "dataChargingCutOff : data_call write error, exec orig."

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    if-eqz v3, :cond_6

    .line 240
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 246
    :cond_6
    :goto_4
    if-eqz v3, :cond_0

    .line 247
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 248
    :catch_2
    move-exception v2

    .line 249
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v5, "FileWriteThread"

    const-string v6, "close fail!!!"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 241
    .end local v2           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 242
    .restart local v2       #ex:Ljava/io/IOException;
    :try_start_6
    const-string v5, "FileWriteThread"

    const-string v6, "close fail!!!"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 245
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 246
    :goto_5
    if-eqz v3, :cond_7

    .line 247
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 250
    :cond_7
    :goto_6
    throw v5

    .line 248
    :catch_4
    move-exception v2

    .line 249
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v6, "FileWriteThread"

    const-string v7, "close fail!!!"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 245
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #data_state:B
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 236
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 333
    const-string v0, "FileWriteThread"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 337
    const-string v0, "FileWriteThread"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 338
    return-void
.end method

.method private writeHardKeyResetFile()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 255
    const-string v9, "ro.debuggable"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v11, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const-string v3, "/sys/power/hard_reset_ctl"

    .line 260
    .local v3, fileName:Ljava/lang/String;
    const-string v9, "ro.board.platform"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, platform:Ljava/lang/String;
    if-eqz v7, :cond_2

    const-string v9, "exynos5"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 262
    const-string v3, "/sys/bus/platform/drivers/s2mps11-pmic/s2mps11-pmic/mrstb"

    .line 264
    :cond_2
    const/4 v4, 0x0

    .line 266
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_4

    .line 268
    const-string v9, "writeHardKeyResetFile : not exist file"

    invoke-direct {p0, v9}, Lcom/android/phone/FileWriteThread;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 270
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 296
    :goto_1
    if-eqz v4, :cond_0

    .line 297
    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, ex:Ljava/io/IOException;
    const-string v9, "FileWriteThread"

    const-string v10, "2nd close fail!!!"

    invoke-static {v9, v10}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    .end local v1           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 272
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v9, "FileWriteThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 286
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    :catch_2
    move-exception v0

    .line 287
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v9, "FileWriteThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeHardKeyResetFile exception - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 289
    if-eqz v4, :cond_3

    .line 290
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 296
    :cond_3
    :goto_3
    if-eqz v4, :cond_0

    .line 297
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 298
    :catch_3
    move-exception v1

    .line 299
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v9, "FileWriteThread"

    const-string v10, "2nd close fail!!!"

    invoke-static {v9, v10}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v2       #file:Ljava/io/File;
    :cond_4
    :try_start_7
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 277
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_8
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    .line 278
    .local v8, state:Lcom/android/internal/telephony/PhoneConstants$State;
    const/16 v6, 0x31

    .line 279
    .local v6, hardKeyResetState:B
    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v8, v9, :cond_5

    .line 280
    const/16 v6, 0x30

    .line 282
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "writeHardKeyResetFile : hardKeyResetState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/phone/FileWriteThread;->log(Ljava/lang/String;Z)V

    .line 283
    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write(I)V

    .line 284
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 285
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "writeHardKeyResetFile end : state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/FileWriteThread;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 296
    if-eqz v5, :cond_6

    .line 297
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_6
    move-object v4, v5

    .line 300
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 298
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    .line 299
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v9, "FileWriteThread"

    const-string v10, "2nd close fail!!!"

    invoke-static {v9, v10}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 301
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 291
    .end local v1           #ex:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    .end local v6           #hardKeyResetState:B
    .end local v8           #state:Lcom/android/internal/telephony/PhoneConstants$State;
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 292
    .restart local v1       #ex:Ljava/io/IOException;
    :try_start_a
    const-string v9, "FileWriteThread"

    const-string v10, "1st close fail!!!"

    invoke-static {v9, v10}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 295
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 296
    :goto_4
    if-eqz v4, :cond_7

    .line 297
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 300
    :cond_7
    :goto_5
    throw v9

    .line 298
    :catch_6
    move-exception v1

    .line 299
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v10, "FileWriteThread"

    const-string v11, "2nd close fail!!!"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 295
    .end local v1           #ex:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 286
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/android/phone/FileWriteThread;->mThreadType:I

    packed-switch v0, :pswitch_data_0

    .line 330
    :goto_0
    return-void

    .line 308
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/FileWriteThread;->writeSleepCheckingFile()V

    goto :goto_0

    .line 312
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/FileWriteThread;->chargingCutOff()V

    goto :goto_0

    .line 316
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/FileWriteThread;->dataChargingCutOff(Z)V

    goto :goto_0

    .line 320
    :pswitch_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/FileWriteThread;->dataChargingCutOff(Z)V

    goto :goto_0

    .line 324
    :pswitch_4
    invoke-direct {p0}, Lcom/android/phone/FileWriteThread;->writeHardKeyResetFile()V

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method writeSleepCheckingFile()V
    .locals 6

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, duringCall:Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    .line 114
    .local v3, state:Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_0

    .line 115
    const/4 v1, 0x1

    .line 117
    :cond_0
    sget-boolean v4, Lcom/android/phone/FileWriteThread;->mIsSetWakeKey:Z

    if-ne v1, v4, :cond_2

    .line 129
    :cond_1
    :goto_0
    return-void

    .line 121
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 122
    .local v0, context:Landroid/content/Context;
    const-string v4, "input"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    .line 123
    .local v2, inputManager:Landroid/hardware/input/InputManager;
    if-eqz v2, :cond_1

    .line 124
    sput-boolean v1, Lcom/android/phone/FileWriteThread;->mIsSetWakeKey:Z

    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "114,115"

    invoke-virtual {v2, v4, v1, v5}, Landroid/hardware/input/InputManager;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWakeKeyDynamically(114,115) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/FileWriteThread;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
