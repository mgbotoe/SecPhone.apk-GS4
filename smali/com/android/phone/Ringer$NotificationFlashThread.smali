.class Lcom/android/phone/Ringer$NotificationFlashThread;
.super Ljava/lang/Thread;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationFlashThread"
.end annotation


# instance fields
.field private mContinueFlash:Z

.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method private constructor <init>(Lcom/android/phone/Ringer;)V
    .locals 1
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lcom/android/phone/Ringer$NotificationFlashThread;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/Ringer$NotificationFlashThread;->mContinueFlash:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lcom/android/phone/Ringer$NotificationFlashThread;-><init>(Lcom/android/phone/Ringer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 623
    const-string v0, "NotificationFlash Thread Run! "

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/Ringer;->access$300(Ljava/lang/String;)V

    .line 624
    :goto_0
    iget-boolean v0, p0, Lcom/android/phone/Ringer$NotificationFlashThread;->mContinueFlash:Z

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/phone/Ringer$NotificationFlashThread;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v0, Lcom/android/phone/Ringer;->mNotiFlash:Lcom/sec/android/hardware/SecHardwareInterface;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 626
    const-wide/16 v0, 0x5dc

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 627
    iget-object v0, p0, Lcom/android/phone/Ringer$NotificationFlashThread;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v0, Lcom/android/phone/Ringer;->mNotiFlash:Lcom/sec/android/hardware/SecHardwareInterface;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 628
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 630
    :cond_0
    return-void
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/Ringer$NotificationFlashThread;->mContinueFlash:Z

    .line 621
    return-void
.end method
