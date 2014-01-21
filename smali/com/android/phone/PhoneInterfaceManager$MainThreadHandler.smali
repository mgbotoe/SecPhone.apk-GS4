.class final Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 43
    .parameter "msg"

    .prologue
    .line 279
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 880
    :pswitch_0
    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MainThreadHandler: unexpected message code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 282
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 283
    .local v38, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v38

    iget-object v14, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v14, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;

    .line 284
    .local v14, argumentSIMIO:Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;
    const/16 v2, 0x15

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 288
    .local v11, onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget v3, v14, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->command:I

    iget v4, v14, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->fileID:I

    iget-object v5, v14, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->filepath:Ljava/lang/String;

    iget v6, v14, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->p1:I

    iget v7, v14, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->p2:I

    iget v8, v14, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->p3:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v2 .. v11}, Lcom/android/internal/telephony/IccCard;->transmitIccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 294
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v14           #argumentSIMIO:Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 295
    .local v12, ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 296
    .restart local v38       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 297
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/IccIoResult;

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 301
    :goto_1
    monitor-enter v38

    .line 302
    :try_start_0
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    .line 303
    monitor-exit v38

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v38
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 299
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v38

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1

    .line 307
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 308
    .restart local v38       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v38

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 309
    .local v13, argumentAPDU:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0xd

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 316
    .restart local v11       #onCompleted:Landroid/os/Message;
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 317
    .local v17, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v24, Ljava/io/DataOutputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 318
    .local v24, dos:Ljava/io/DataOutputStream;
    const/16 v32, 0x0

    .line 320
    .local v32, len:I
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    if-nez v2, :cond_8

    .line 321
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 322
    const/16 v32, 0x9

    .line 327
    :goto_2
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 328
    add-int/lit8 v32, v32, -0x1

    .line 331
    :cond_2
    const/16 v2, 0x15

    :try_start_1
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 332
    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 336
    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 337
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 338
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 339
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 340
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 341
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 342
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 344
    :cond_3
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_7

    .line 403
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "APDU-TEST1"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->access$200()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data being sent to RIL is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "channel id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 408
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0xd

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 411
    if-eqz v24, :cond_0

    .line 413
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 414
    :catch_0
    move-exception v28

    .line 415
    .local v28, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_EXCHANGE_APDU : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 324
    .end local v28           #e:Ljava/io/IOException;
    :cond_6
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v32, v2, 0x9

    goto/16 :goto_2

    .line 346
    :cond_7
    :try_start_3
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .line 347
    .local v16, ba:[B
    const/16 v30, 0x0

    .local v30, i:I
    :goto_4
    move-object/from16 v0, v16

    array-length v2, v0

    move/from16 v0, v30

    if-ge v0, v2, :cond_4

    .line 348
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    mul-int/lit8 v3, v30, 0x2

    mul-int/lit8 v4, v30, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v16, v30

    .line 350
    aget-byte v2, v16, v30

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 347
    add-int/lit8 v30, v30, 0x1

    goto :goto_4

    .line 353
    .end local v16           #ba:[B
    .end local v30           #i:I
    :catch_1
    move-exception v28

    .line 354
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "IOException in APDU()"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 357
    .end local v28           #e:Ljava/io/IOException;
    :cond_8
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 358
    const/16 v32, 0xd

    .line 363
    :goto_5
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    .line 364
    add-int/lit8 v32, v32, -0x1

    .line 367
    :cond_9
    const/16 v2, 0x15

    :try_start_4
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 368
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    .line 369
    const/16 v2, 0xb

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 372
    :goto_6
    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 383
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 384
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 385
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 386
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 387
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_a

    .line 388
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 389
    :cond_a
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 390
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 392
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .line 393
    .restart local v16       #ba:[B
    const/16 v30, 0x0

    .restart local v30       #i:I
    :goto_7
    move-object/from16 v0, v16

    array-length v2, v0

    move/from16 v0, v30

    if-ge v0, v2, :cond_4

    .line 394
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    mul-int/lit8 v3, v30, 0x2

    mul-int/lit8 v4, v30, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v16, v30

    .line 396
    aget-byte v2, v16, v30

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 393
    add-int/lit8 v30, v30, 0x1

    goto :goto_7

    .line 360
    .end local v16           #ba:[B
    .end local v30           #i:I
    :cond_b
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v32, v2, 0xd

    goto/16 :goto_5

    .line 371
    :cond_c
    const/16 v2, 0xc

    :try_start_5
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_6

    .line 399
    :catch_2
    move-exception v28

    .line 400
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "IOException in APDU()"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 431
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v13           #argumentAPDU:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v17           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v24           #dos:Ljava/io/DataOutputStream;
    .end local v28           #e:Ljava/io/IOException;
    .end local v32           #len:I
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 432
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 433
    .restart local v38       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_f

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_f

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_f

    .line 435
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v15, v2

    check-cast v15, [B

    .line 436
    .local v15, b:[B
    const/16 v23, 0x0

    .line 438
    .local v23, data:[B
    array-length v2, v15

    const/4 v3, 0x2

    if-le v2, v3, :cond_d

    .line 439
    array-length v2, v15

    add-int/lit8 v2, v2, -0x2

    new-array v0, v2, [B

    move-object/from16 v23, v0

    .line 440
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v23

    array-length v4, v0

    move-object/from16 v0, v23

    invoke-static {v15, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    :cond_d
    new-instance v2, Lcom/android/internal/telephony/IccIoResult;

    array-length v3, v15

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, v15, v3

    and-int/lit16 v3, v3, 0xff

    array-length v4, v15

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v15, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, v23

    invoke-direct {v2, v3, v4, v0}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 455
    .end local v15           #b:[B
    .end local v23           #data:[B
    :cond_e
    :goto_8
    monitor-enter v38

    .line 456
    :try_start_6
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    .line 457
    monitor-exit v38

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v38
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    .line 446
    :cond_f
    new-instance v3, Lcom/android/internal/telephony/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v38

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 448
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_e

    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_e

    .line 449
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_e

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_8

    .line 461
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 462
    .restart local v38       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;

    .line 463
    .local v35, openArgument:Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;
    const/16 v2, 0xf

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 464
    .restart local v11       #onCompleted:Landroid/os/Message;
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 465
    .local v20, bos_open:Ljava/io/ByteArrayOutputStream;
    new-instance v27, Ljava/io/DataOutputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 466
    .local v27, dos_open:Ljava/io/DataOutputStream;
    const/16 v34, 0x0

    .line 470
    .local v34, len_open:I
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 471
    const/16 v34, 0x4

    .line 476
    :goto_9
    const/16 v2, 0x15

    :try_start_7
    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 477
    const/16 v2, 0x9

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 481
    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 482
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    if-nez v2, :cond_12

    .line 495
    :cond_10
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "OPEN CHANNEL-TEST"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0xf

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 499
    if-eqz v27, :cond_0

    .line 501
    :try_start_8
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 502
    :catch_3
    move-exception v28

    .line 503
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_OPEN_CHANNEL : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 473
    .end local v28           #e:Ljava/io/IOException;
    :cond_11
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v34, v2, 0x4

    goto :goto_9

    .line 485
    :cond_12
    :try_start_9
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .line 486
    .restart local v16       #ba:[B
    const/16 v30, 0x0

    .restart local v30       #i:I
    :goto_b
    move-object/from16 v0, v16

    array-length v2, v0

    move/from16 v0, v30

    if-ge v0, v2, :cond_10

    .line 487
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    mul-int/lit8 v3, v30, 0x2

    mul-int/lit8 v4, v30, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v16, v30

    .line 489
    aget-byte v2, v16, v30

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 486
    add-int/lit8 v30, v30, 0x1

    goto :goto_b

    .line 492
    .end local v16           #ba:[B
    .end local v30           #i:I
    :catch_4
    move-exception v28

    .line 493
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "IOException in open channel"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 510
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v20           #bos_open:Ljava/io/ByteArrayOutputStream;
    .end local v27           #dos_open:Ljava/io/DataOutputStream;
    .end local v28           #e:Ljava/io/IOException;
    .end local v34           #len_open:I
    .end local v35           #openArgument:Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 511
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 512
    .restart local v38       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "response came"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 513
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_19

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_19

    .line 514
    const/16 v23, 0x0

    .line 515
    .restart local v23       #data:[B
    const/16 v42, 0x0

    .line 516
    .local v42, temp:I
    const/16 v22, 0x0

    .line 518
    .local v22, count:I
    const/16 v31, 0x0

    .line 519
    .local v31, id_len:I
    const/16 v41, 0x0

    .line 521
    .local v41, select_res_len:I
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v23, v2

    check-cast v23, [B

    .line 524
    const/4 v2, 0x0

    aget-byte v31, v23, v2

    .line 527
    add-int/lit8 v2, v31, 0x1

    :try_start_a
    aget-byte v41, v23, v2
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_5

    .line 534
    move/from16 v22, v31

    :goto_c
    const/4 v2, 0x1

    move/from16 v0, v22

    if-lt v0, v2, :cond_15

    .line 535
    aget-byte v2, v23, v22

    if-gez v2, :cond_14

    .line 536
    aget-byte v2, v23, v22

    add-int/lit16 v2, v2, 0x100

    or-int v42, v42, v2

    .line 541
    :goto_d
    const/4 v2, 0x1

    move/from16 v0, v22

    if-le v0, v2, :cond_13

    .line 542
    shl-int/lit8 v42, v42, 0x8

    .line 534
    :cond_13
    add-int/lit8 v22, v22, -0x1

    goto :goto_c

    .line 528
    :catch_5
    move-exception v28

    .line 529
    .local v28, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id_len ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 538
    .end local v28           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_14
    aget-byte v2, v23, v22

    or-int v42, v42, v2

    goto :goto_d

    .line 545
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data length"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 546
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->access$200()Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response from sim is data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "session Id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 548
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select_res_len"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mSelectResponse:[B

    .line 552
    if-lez v41, :cond_17

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move/from16 v0, v41

    new-array v3, v0, [B

    iput-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mSelectResponse:[B

    .line 554
    add-int/lit8 v2, v31, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v3, Lcom/android/phone/PhoneInterfaceManager;->mSelectResponse:[B

    const/4 v4, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v41

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 555
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->access$200()Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response of Select application :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v4, v4, Lcom/android/phone/PhoneInterfaceManager;->mSelectResponse:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 558
    :cond_17
    new-instance v2, Ljava/lang/Integer;

    move/from16 v0, v42

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 574
    .end local v22           #count:I
    .end local v23           #data:[B
    .end local v31           #id_len:I
    .end local v41           #select_res_len:I
    .end local v42           #temp:I
    :cond_18
    :goto_e
    monitor-enter v38

    .line 575
    :try_start_b
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    .line 576
    monitor-exit v38

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v38
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v2

    .line 562
    :cond_19
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 564
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_18

    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_18

    .line 565
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_1a

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x2

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_e

    .line 568
    :cond_1a
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_18

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x3

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_e

    .line 580
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 581
    .restart local v38       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;

    .line 582
    .local v21, closeArgument:Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;
    const/16 v2, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 583
    .restart local v11       #onCompleted:Landroid/os/Message;
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 584
    .local v19, bos_close:Ljava/io/ByteArrayOutputStream;
    new-instance v26, Ljava/io/DataOutputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 585
    .local v26, dos_close:Ljava/io/DataOutputStream;
    const/16 v33, 0x0

    .line 586
    .local v33, len_close:I
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I

    if-nez v2, :cond_1b

    .line 587
    const/16 v33, 0x4

    .line 592
    :goto_f
    const/16 v2, 0x15

    :try_start_c
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 593
    const/16 v2, 0xa

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 598
    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 599
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    if-nez v2, :cond_1c

    .line 609
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "CLOSE CHANNEL-TEST"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 613
    if-eqz v26, :cond_0

    .line 615
    :try_start_d
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_0

    .line 616
    :catch_6
    move-exception v28

    .line 617
    .local v28, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_CLOSE_CHANNEL : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 589
    .end local v28           #e:Ljava/io/IOException;
    :cond_1b
    const/16 v33, 0x8

    goto :goto_f

    .line 602
    :cond_1c
    :try_start_e
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->access$200()Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session ID received from application is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 604
    :cond_1d
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_10

    .line 606
    :catch_7
    move-exception v28

    .line 607
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "IOException in close channel"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 624
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v19           #bos_close:Ljava/io/ByteArrayOutputStream;
    .end local v21           #closeArgument:Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;
    .end local v26           #dos_close:Ljava/io/DataOutputStream;
    .end local v28           #e:Ljava/io/IOException;
    .end local v33           #len_close:I
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 625
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 626
    .restart local v38       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1f

    .line 627
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 639
    :cond_1e
    :goto_11
    monitor-enter v38

    .line 640
    :try_start_f
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    .line 641
    monitor-exit v38

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v38
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v2

    .line 630
    :cond_1f
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 632
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1e

    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_1e

    .line 633
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_1e

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_11

    .line 645
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "GET_ATR-TEST"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 646
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 647
    .restart local v38       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 648
    .local v18, bos1:Ljava/io/ByteArrayOutputStream;
    new-instance v25, Ljava/io/DataOutputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 651
    .local v25, dos1:Ljava/io/DataOutputStream;
    const/16 v2, 0x15

    :try_start_10
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 652
    const/16 v2, 0xd

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 656
    const/4 v2, 0x4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 661
    :goto_12
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "Request ATR Info"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0x13

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 665
    if-eqz v25, :cond_0

    .line 667
    :try_start_11
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_0

    .line 668
    :catch_8
    move-exception v28

    .line 669
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_GET_ATR_INFO : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 670
    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 657
    .end local v28           #e:Ljava/io/IOException;
    :catch_9
    move-exception v28

    .line 658
    .restart local v28       #e:Ljava/io/IOException;
    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 676
    .end local v18           #bos1:Ljava/io/ByteArrayOutputStream;
    .end local v25           #dos1:Ljava/io/DataOutputStream;
    .end local v28           #e:Ljava/io/IOException;
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "EVENT_GET_ATR_INFO_DONE"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 677
    const/16 v23, 0x0

    .line 679
    .restart local v23       #data:[B
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 680
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 682
    .restart local v38       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_21

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_21

    .line 683
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v39, v2

    check-cast v39, [B

    .line 685
    .local v39, result:[B
    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ATR Length :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v4, v39, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/4 v2, 0x0

    aget-byte v2, v39, v2

    if-lez v2, :cond_20

    .line 687
    const/4 v2, 0x0

    aget-byte v2, v39, v2

    new-array v0, v2, [B

    move-object/from16 v23, v0

    .line 688
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, v23

    array-length v4, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v23

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 690
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->access$200()Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ATR info :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    .end local v39           #result:[B
    :cond_20
    :goto_13
    move-object/from16 v0, v23

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 698
    monitor-enter v38

    .line 699
    :try_start_12
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    .line 700
    monitor-exit v38

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v38
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    throw v2

    .line 693
    :cond_21
    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in EVENT_GET_ATR_INFO_DONE with exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 704
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v23           #data:[B
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 705
    .restart local v38       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 708
    monitor-enter v38

    .line 709
    :try_start_13
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    .line 710
    monitor-exit v38

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v38
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    throw v2

    .line 714
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 715
    .restart local v38       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 717
    .restart local v11       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v11}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 721
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 722
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 723
    .restart local v38       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_22

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_22

    .line 724
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 730
    :goto_14
    monitor-enter v38

    .line 731
    :try_start_14
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    .line 732
    monitor-exit v38

    goto/16 :goto_0

    :catchall_6
    move-exception v2

    monitor-exit v38
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    throw v2

    .line 727
    :cond_22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_14

    .line 736
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal()V
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_0

    .line 740
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->silenceRingerInternal()V
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_0

    .line 744
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 745
    .restart local v38       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v29, 0x0

    .line 746
    .local v29, hungUp:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v37

    .line 747
    .local v37, phoneType:I
    const/4 v2, 0x2

    move/from16 v0, v37

    if-ne v0, v2, :cond_23

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v29

    .line 765
    :goto_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_END_CALL: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v29, :cond_27

    const-string v2, "hung up!"

    :goto_16
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;Z)V
    invoke-static {v3, v2, v4}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;Z)V

    .line 766
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 768
    monitor-enter v38

    .line 769
    :try_start_15
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    .line 770
    monitor-exit v38

    goto/16 :goto_0

    :catchall_7
    move-exception v2

    monitor-exit v38
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    throw v2

    .line 751
    :cond_23
    const/4 v2, 0x1

    move/from16 v0, v37

    if-ne v0, v2, :cond_25

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v0, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v36, v0

    .line 754
    .local v36, phone:Lcom/android/internal/telephony/Phone;
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v36

    .line 756
    invoke-static/range {v36 .. v36}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Phone;)Z

    move-result v29

    goto :goto_15

    .line 758
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v29

    goto :goto_15

    .line 760
    .end local v36           #phone:Lcom/android/internal/telephony/Phone;
    :cond_25
    const/4 v2, 0x5

    move/from16 v0, v37

    if-ne v0, v2, :cond_26

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v29

    goto :goto_15

    .line 763
    :cond_26
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 765
    :cond_27
    const-string v2, "no call to hang up"

    goto :goto_16

    .line 774
    .end local v29           #hungUp:Z
    .end local v37           #phoneType:I
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 775
    .restart local v38       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 776
    .restart local v11       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-interface {v3, v2, v11}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 780
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 781
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 782
    .restart local v38       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v38

    iput-object v12, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 784
    monitor-enter v38

    .line 785
    :try_start_16
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    .line 786
    monitor-exit v38

    goto/16 :goto_0

    :catchall_8
    move-exception v2

    monitor-exit v38
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    throw v2

    .line 790
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 791
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {v3, v2}, Lcom/android/phone/PhoneInterfaceManager;->broadcastUnsolOemHookIntent([B)V

    goto/16 :goto_0

    .line 795
    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 796
    .restart local v38       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0xb

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 797
    .restart local v11       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2, v11}, Lcom/android/internal/telephony/Phone;->setTransmitPower(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 801
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_15
    const/16 v40, 0x0

    .line 802
    .local v40, retStatus:Z
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 803
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 805
    .restart local v38       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_28

    .line 806
    const/16 v40, 0x1

    .line 808
    :cond_28
    invoke-static/range {v40 .. v40}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 811
    monitor-enter v38

    .line 812
    :try_start_17
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    .line 813
    monitor-exit v38

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    monitor-exit v38
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    throw v2

    .line 817
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v40           #retStatus:Z
    :pswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 818
    .restart local v38       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x1f

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 820
    .restart local v11       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v11}, Lcom/android/internal/telephony/Phone;->getBand(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 824
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_17
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 825
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 826
    .restart local v38       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_29

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_29

    .line 827
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 832
    :goto_17
    monitor-enter v38

    .line 833
    :try_start_18
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    .line 834
    monitor-exit v38

    goto/16 :goto_0

    :catchall_a
    move-exception v2

    monitor-exit v38
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    throw v2

    .line 829
    :cond_29
    const/4 v2, 0x4

    new-array v2, v2, [I

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_17

    .line 838
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 839
    .restart local v38       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x21

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 841
    .restart local v11       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2, v11}, Lcom/android/internal/telephony/Phone;->selectBand(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 845
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_19
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 846
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 847
    .restart local v38       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2a

    .line 848
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 853
    :goto_18
    monitor-enter v38

    .line 854
    :try_start_19
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->notifyAll()V

    .line 855
    monitor-exit v38

    goto/16 :goto_0

    :catchall_b
    move-exception v2

    monitor-exit v38
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    throw v2

    .line 850
    :cond_2a
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_18

    .line 859
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v38           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_1a
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 860
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #getter for: Lcom/android/phone/PhoneInterfaceManager;->mConnectivityManager:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$700(Lcom/android/phone/PhoneInterfaceManager;)Landroid/net/MultiSimConnectivityManager;

    move-result-object v2

    if-nez v2, :cond_2b

    .line 861
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/MultiSimConnectivityManager;

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->mConnectivityManager:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v3, v2}, Lcom/android/phone/PhoneInterfaceManager;->access$702(Lcom/android/phone/PhoneInterfaceManager;Landroid/net/MultiSimConnectivityManager;)Landroid/net/MultiSimConnectivityManager;

    .line 863
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #getter for: Lcom/android/phone/PhoneInterfaceManager;->mConnectivityManager:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$700(Lcom/android/phone/PhoneInterfaceManager;)Landroid/net/MultiSimConnectivityManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2c

    const/4 v2, 0x1

    :goto_19
    invoke-virtual {v3, v4, v2}, Landroid/net/MultiSimConnectivityManager;->onSwitchDataNetworkCallback(IZ)V

    goto/16 :goto_0

    :cond_2c
    const/4 v2, 0x0

    goto :goto_19

    .line 866
    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_1b
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 867
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #getter for: Lcom/android/phone/PhoneInterfaceManager;->mConnectivityManager:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$700(Lcom/android/phone/PhoneInterfaceManager;)Landroid/net/MultiSimConnectivityManager;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 868
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/MultiSimConnectivityManager;

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->mConnectivityManager:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v3, v2}, Lcom/android/phone/PhoneInterfaceManager;->access$702(Lcom/android/phone/PhoneInterfaceManager;Landroid/net/MultiSimConnectivityManager;)Landroid/net/MultiSimConnectivityManager;

    .line 870
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #getter for: Lcom/android/phone/PhoneInterfaceManager;->mConnectivityManager:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$700(Lcom/android/phone/PhoneInterfaceManager;)Landroid/net/MultiSimConnectivityManager;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2e

    const/4 v2, 0x1

    :goto_1a
    invoke-virtual {v3, v4, v2}, Landroid/net/MultiSimConnectivityManager;->onSwitchDataNetworkCallback(IZ)V

    goto/16 :goto_0

    :cond_2e
    const/4 v2, 0x0

    goto :goto_1a

    .line 873
    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_1c
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 874
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #getter for: Lcom/android/phone/PhoneInterfaceManager;->mConnectivityManager:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$700(Lcom/android/phone/PhoneInterfaceManager;)Landroid/net/MultiSimConnectivityManager;

    move-result-object v2

    if-nez v2, :cond_2f

    .line 875
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/MultiSimConnectivityManager;

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->mConnectivityManager:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v3, v2}, Lcom/android/phone/PhoneInterfaceManager;->access$702(Lcom/android/phone/PhoneInterfaceManager;Landroid/net/MultiSimConnectivityManager;)Landroid/net/MultiSimConnectivityManager;

    .line 876
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #getter for: Lcom/android/phone/PhoneInterfaceManager;->mConnectivityManager:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$700(Lcom/android/phone/PhoneInterfaceManager;)Landroid/net/MultiSimConnectivityManager;

    move-result-object v3

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_30

    const/4 v2, 0x1

    :goto_1b
    invoke-virtual {v3, v4, v2}, Landroid/net/MultiSimConnectivityManager;->onSwitchDataNetworkCallback(IZ)V

    goto/16 :goto_0

    :cond_30
    const/4 v2, 0x0

    goto :goto_1b

    .line 279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method
