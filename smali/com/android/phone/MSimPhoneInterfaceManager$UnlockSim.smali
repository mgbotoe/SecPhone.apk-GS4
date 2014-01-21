.class Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;
.super Ljava/lang/Thread;
.source "MSimPhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimPhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnlockSim"
.end annotation


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:Z

.field private final mSimCard:Lcom/android/internal/telephony/IccCard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 1
    .parameter "simCard"

    .prologue
    const/4 v0, 0x0

    .line 627
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 618
    iput-boolean v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mDone:Z

    .line 619
    iput-boolean v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mResult:Z

    .line 628
    iput-object p1, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mSimCard:Lcom/android/internal/telephony/IccCard;

    .line 629
    return-void
.end method

.method static synthetic access$502(Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 614
    iput-boolean p1, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mResult:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 614
    iput-boolean p1, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mDone:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 633
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 634
    monitor-enter p0

    .line 635
    :try_start_0
    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim$1;-><init>(Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;)V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mHandler:Landroid/os/Handler;

    .line 651
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 652
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 654
    return-void

    .line 652
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized unlockSim(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "puk"
    .parameter "pin"

    .prologue
    .line 665
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 667
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 668
    :catch_0
    move-exception v1

    .line 669
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 665
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 672
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 674
    .local v0, callback:Landroid/os/Message;
    if-nez p1, :cond_1

    .line 675
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v2, p2, v0}, Lcom/android/internal/telephony/IccCard;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 680
    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_2

    .line 682
    :try_start_4
    const-string v2, "MSimPhoneInterfaceManager"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 684
    :catch_1
    move-exception v1

    .line 686
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 677
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v2, p1, p2, v0}, Lcom/android/internal/telephony/IccCard;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 689
    :cond_2
    const-string v2, "MSimPhoneInterfaceManager"

    const-string v3, "done"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-boolean v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mResult:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v2
.end method
