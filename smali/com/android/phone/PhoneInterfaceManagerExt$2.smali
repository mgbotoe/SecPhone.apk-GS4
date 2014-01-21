.class Lcom/android/phone/PhoneInterfaceManagerExt$2;
.super Landroid/os/Handler;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManagerExt;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManagerExt;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v11, 0x1

    .line 105
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DOMESTIC PCSC HandleMessage : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 297
    :pswitch_0
    const-string v8, "PhoneInterfaceManagerExt"

    const-string v9, "Get Default"

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    new-array v9, v11, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8, v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    .line 301
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v9, -0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 304
    :goto_0
    return-void

    .line 110
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 111
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 112
    :try_start_0
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_2

    .line 113
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v10, v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :try_start_1
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v8

    const/4 v10, 0x1

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "90"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v8

    const/4 v10, 0x2

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "0"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 127
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    :goto_1
    :try_start_2
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USIM(TCash) : Get CONNECT_DONE event "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v8

    array-length v8, v8

    if-ge v4, v8, :cond_1

    .line 141
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USIM(TCash) : Value "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v11

    aget-byte v11, v11, v4

    and-int/lit16 v11, v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 130
    .end local v4           #i:I
    :cond_0
    :try_start_3
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, -0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 133
    :catch_0
    move-exception v2

    .line 134
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_4
    const-string v8, "PhoneInterfaceManagerExt"

    const-string v10, "Exception in getting Logical Channel."

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, -0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    goto :goto_1

    .line 152
    .end local v2           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8

    .line 143
    .restart local v4       #i:I
    :cond_1
    :try_start_5
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Connect! Logical Ch is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v4           #i:I
    :goto_3
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$400(Lcom/android/phone/PhoneInterfaceManagerExt;)Landroid/os/Handler;

    move-result-object v8

    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$300(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v11, 0x32

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    monitor-exit v9

    goto/16 :goto_0

    .line 146
    :cond_2
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, -0x2

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 147
    const-string v8, "PhoneInterfaceManagerExt"

    const-string v10, "SMARTCARD_IO_ERROR_CARD_NOT_EXIST"

    invoke-static {v8, v10}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 156
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 157
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 158
    :try_start_6
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_5

    .line 159
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v10, v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 163
    :try_start_7
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v8

    const/4 v10, 0x0

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "90"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v8

    const/4 v10, 0x1

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "0"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 165
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1

    .line 175
    :goto_4
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5
    :try_start_8
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v8

    array-length v8, v8

    if-ge v4, v8, :cond_4

    .line 176
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USIM(TCash) : Value "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v11

    aget-byte v11, v11, v4

    and-int/lit16 v11, v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 175
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 167
    .end local v4           #i:I
    :cond_3
    :try_start_9
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, -0x3

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    .line 169
    :catch_1
    move-exception v2

    .line 170
    .restart local v2       #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_a
    const-string v8, "PhoneInterfaceManagerExt"

    const-string v10, "Exception in disconnecting."

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, -0x3

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    goto :goto_4

    .line 187
    .end local v2           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v8

    .line 178
    .restart local v4       #i:I
    :cond_4
    :try_start_b
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Disconnect! res:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v4           #i:I
    :goto_6
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$400(Lcom/android/phone/PhoneInterfaceManagerExt;)Landroid/os/Handler;

    move-result-object v8

    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$300(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v11, 0x32

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    monitor-exit v9

    goto/16 :goto_0

    .line 181
    :cond_5
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, -0x3

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 182
    const-string v8, "PhoneInterfaceManagerExt"

    const-string v10, "SMARTCARD_IO_INVALID_CHANNEL"

    invoke-static {v8, v10}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_6

    .line 191
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 192
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 193
    :try_start_c
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_7

    .line 194
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v10, v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    .line 195
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v10

    array-length v10, v10

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 198
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_7
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v8

    array-length v8, v8

    if-ge v4, v8, :cond_6

    .line 199
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Value "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v11

    aget-byte v11, v11, v4

    and-int/lit16 v11, v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 201
    :cond_6
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get TRANSMIT_DONE event "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v4           #i:I
    :goto_8
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$400(Lcom/android/phone/PhoneInterfaceManagerExt;)Landroid/os/Handler;

    move-result-object v8

    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$300(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v11, 0x32

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    monitor-exit v9

    goto/16 :goto_0

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v8

    .line 204
    :cond_7
    :try_start_d
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    .line 205
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, -0x4

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_8

    .line 215
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 216
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 217
    :try_start_e
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_8

    .line 218
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v10, v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    .line 219
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 225
    :goto_9
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get POWERUP event "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$400(Lcom/android/phone/PhoneInterfaceManagerExt;)Landroid/os/Handler;

    move-result-object v8

    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$300(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v11, 0x32

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    monitor-exit v9

    goto/16 :goto_0

    :catchall_3
    move-exception v8

    monitor-exit v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v8

    .line 221
    :cond_8
    :try_start_f
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, -0x2

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_9

    .line 234
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 235
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 236
    :try_start_10
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_c

    .line 237
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v10, v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    .line 238
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 240
    const/4 v6, 0x0

    .line 241
    .local v6, strAkaResult:Ljava/lang/String;
    const/4 v1, 0x0

    .line 246
    .local v1, dataArr:[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 248
    .local v7, tempResult:Ljava/lang/String;
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IMS_AKA result="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v11

    const/4 v12, 0x1

    aget-byte v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v8

    const/4 v10, 0x1

    aget-byte v8, v8, v10

    if-nez v8, :cond_9

    .line 250
    const-string v8, "PhoneInterfaceManagerExt"

    const-string v10, "IMS_AKA result = is success appending DB "

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    .line 252
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DB"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 253
    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 262
    :goto_a
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.sec.android.internal.ims.USIMAuthParams"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v5, newIntent:Landroid/content/Intent;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 265
    .local v3, eventType:Ljava/lang/String;
    const-string v3, "REGISTER"

    .line 266
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "eventType====="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dataArr====="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v8, "REGISTER"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 269
    const-string v8, "eventType"

    const/4 v10, 0x1

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    :goto_b
    const-string v8, "data"

    invoke-virtual {v5, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 275
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v8, v8, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    if-eqz v8, :cond_b

    .line 276
    const-string v8, "PhoneInterfaceManagerExt"

    const-string v10, "mApplication.mContext is not null====="

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v8, v8, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8, v5}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    .line 287
    .end local v1           #dataArr:[B
    .end local v3           #eventType:Ljava/lang/String;
    .end local v5           #newIntent:Landroid/content/Intent;
    .end local v6           #strAkaResult:Ljava/lang/String;
    .end local v7           #tempResult:Ljava/lang/String;
    :goto_c
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get USIMAUTH event "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$400(Lcom/android/phone/PhoneInterfaceManagerExt;)Landroid/os/Handler;

    move-result-object v8

    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$300(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v11, 0x32

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 292
    monitor-exit v9

    goto/16 :goto_0

    :catchall_4
    move-exception v8

    monitor-exit v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v8

    .line 255
    .restart local v1       #dataArr:[B
    .restart local v6       #strAkaResult:Ljava/lang/String;
    .restart local v7       #tempResult:Ljava/lang/String;
    :cond_9
    :try_start_11
    const-string v8, "PhoneInterfaceManagerExt"

    const-string v10, "IMS_AKA result = is failure appending DC "

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    .line 257
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DC"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 258
    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto/16 :goto_a

    .line 271
    .restart local v3       #eventType:Ljava/lang/String;
    .restart local v5       #newIntent:Landroid/content/Intent;
    :cond_a
    const-string v8, "eventType"

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_b

    .line 279
    :cond_b
    const-string v8, "PhoneInterfaceManagerExt"

    const-string v10, "mApplication.mContext is  null====="

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    monitor-exit v9

    goto/16 :goto_0

    .line 283
    .end local v1           #dataArr:[B
    .end local v3           #eventType:Ljava/lang/String;
    .end local v5           #newIntent:Landroid/content/Intent;
    .end local v6           #strAkaResult:Ljava/lang/String;
    .end local v7           #tempResult:Ljava/lang/String;
    :cond_c
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, -0x2

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_c

    .line 108
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
