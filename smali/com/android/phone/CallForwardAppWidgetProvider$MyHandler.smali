.class Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;
.super Landroid/os/Handler;
.source "CallForwardAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallForwardAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallForwardAppWidgetProvider;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallForwardAppWidgetProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;->this$0:Lcom/android/phone/CallForwardAppWidgetProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallForwardAppWidgetProvider;Lcom/android/phone/CallForwardAppWidgetProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;-><init>(Lcom/android/phone/CallForwardAppWidgetProvider;)V

    return-void
.end method

.method private handleGetCFResponse(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/16 v7, 0x190

    const/4 v8, 0x1

    .line 488
    const-string v5, "CallForwardAppWidgetProvider"

    const-string v6, "handleGetCFResponse: done"

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 490
    sget-object v5, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    if-eqz v5, :cond_0

    .line 491
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v8, :cond_1

    .line 492
    sget-object v5, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/phone/CallForwardingListener;->onFinished(Z)V

    .line 497
    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 499
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v5, 0x0

    sput-object v5, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 500
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    .line 501
    const-string v5, "CallForwardAppWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleGetCFResponse: ar.exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 502
    sget-object v6, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v5, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v6, v5}, Lcom/android/phone/CallForwardingListener;->onException(Lcom/android/internal/telephony/CommandException;)V

    .line 533
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_0
    :goto_1
    return-void

    .line 494
    :cond_1
    sget-object v5, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    invoke-interface {v5, v8}, Lcom/android/phone/CallForwardingListener;->onFinished(Z)V

    goto :goto_0

    .line 504
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_2
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_3

    .line 505
    const-string v5, "CallForwardAppWidgetProvider"

    const-string v6, "userObj is Throwable instance !!"

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 506
    sget-object v5, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    invoke-interface {v5, v7}, Lcom/android/phone/CallForwardingListener;->onError(I)V

    .line 508
    :cond_3
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v1, v5

    check-cast v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 509
    .local v1, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v5, v1

    if-nez v5, :cond_4

    .line 510
    const-string v5, "CallForwardAppWidgetProvider"

    const-string v6, "handleGetCFResponse: cfInfoArray.length==0"

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 511
    sget-object v5, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    invoke-interface {v5, v7}, Lcom/android/phone/CallForwardingListener;->onError(I)V

    goto :goto_1

    .line 513
    :cond_4
    const/4 v2, 0x0

    .local v2, i:I
    array-length v4, v1

    .local v4, length:I
    :goto_2
    if-ge v2, v4, :cond_0

    .line 514
    const-string v5, "CallForwardAppWidgetProvider"

    const-string v6, "handleGetCFResponse, cfInfoArray["

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    aget-object v5, v1, v2

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    .line 520
    aget-object v3, v1, v2

    .line 521
    .local v3, info:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v5, p0, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;->this$0:Lcom/android/phone/CallForwardAppWidgetProvider;

    sget-object v6, Lcom/android/phone/CFType;->VOICE:Lcom/android/phone/CFType;

    invoke-virtual {v5, v6, v3}, Lcom/android/phone/CallForwardAppWidgetProvider;->handleCallForwardResult(Lcom/android/phone/CFType;Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 524
    .end local v3           #info:Lcom/android/internal/telephony/CallForwardInfo;
    :cond_5
    aget-object v5, v1, v2

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_6

    .line 526
    aget-object v3, v1, v2

    .line 527
    .restart local v3       #info:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v5, p0, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;->this$0:Lcom/android/phone/CallForwardAppWidgetProvider;

    sget-object v6, Lcom/android/phone/CFType;->VIDEO:Lcom/android/phone/CFType;

    invoke-virtual {v5, v6, v3}, Lcom/android/phone/CallForwardAppWidgetProvider;->handleCallForwardResult(Lcom/android/phone/CFType;Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 513
    .end local v3           #info:Lcom/android/internal/telephony/CallForwardInfo;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private handleSetCFResponse(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 536
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 538
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 539
    const-string v1, "CallForwardAppWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCFResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 542
    :cond_0
    const-string v1, "CallForwardAppWidgetProvider"

    const-string v2, "handleSetCFResponse: re get"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 543
    sget-object v1, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v5, v2, v4, v3}, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 545
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 477
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 485
    :goto_0
    return-void

    .line 479
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;->handleGetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 482
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;->handleSetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
