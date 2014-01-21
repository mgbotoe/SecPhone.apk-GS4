.class Lcom/android/phone/PhoneInterfaceManager$UiccOperation;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiccOperation"
.end annotation


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 1
    .parameter

    .prologue
    .line 2691
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mDone:Z

    .line 2694
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mResult:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2691
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/phone/PhoneInterfaceManager$UiccOperation;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2691
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mDone:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/phone/PhoneInterfaceManager$UiccOperation;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2691
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mResult:Ljava/lang/Object;

    return-object p1
.end method

.method private waitHandler()V
    .locals 2

    .prologue
    .line 2739
    :goto_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 2741
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2742
    :catch_0
    move-exception v0

    .line 2743
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 2745
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method private waitResult()V
    .locals 3

    .prologue
    .line 2751
    :goto_0
    iget-boolean v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mDone:Z

    if-nez v1, :cond_0

    .line 2753
    :try_start_0
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "wait for done"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2755
    :catch_0
    move-exception v0

    .line 2757
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 2760
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "done"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mDone:Z

    .line 2763
    return-void
.end method


# virtual methods
.method declared-synchronized calculateAka([B[B)Ljava/lang/String;
    .locals 3
    .parameter "rand"
    .parameter "autn"

    .prologue
    .line 2766
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->waitHandler()V

    .line 2767
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2768
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, v1, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/telephony/Phone;->akaAuthenticate([B[BLandroid/os/Message;)V

    .line 2769
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->waitResult()V

    .line 2770
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mResult:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 2766
    .end local v0           #callback:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public run()V
    .locals 1

    .prologue
    .line 2707
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2708
    monitor-enter p0

    .line 2709
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$UiccOperation;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mHandler:Landroid/os/Handler;

    .line 2731
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2732
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2733
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2734
    return-void

    .line 2732
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "rand"
    .parameter "btid"
    .parameter "keyLifetime"

    .prologue
    .line 2790
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->waitHandler()V

    .line 2791
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2792
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, v1, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/android/internal/telephony/Phone;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2793
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->waitResult()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2794
    monitor-exit p0

    return-void

    .line 2790
    .end local v0           #callback:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
