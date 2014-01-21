.class Lcom/android/phone/CallNotifier$UpgradeTonePlayer;
.super Ljava/lang/Object;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpgradeTonePlayer"
.end annotation


# instance fields
.field private mEventTime:J

.field mHandler:Landroid/os/Handler;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneState:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 2
    .parameter

    .prologue
    .line 5215
    iput-object p1, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5225
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mToneState:I

    .line 5226
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mEventTime:J

    .line 5228
    new-instance v0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer$1;-><init>(Lcom/android/phone/CallNotifier$UpgradeTonePlayer;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallNotifier;Lcom/android/phone/CallNotifier$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5215
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;-><init>(Lcom/android/phone/CallNotifier;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/CallNotifier$UpgradeTonePlayer;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5215
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/phone/CallNotifier$UpgradeTonePlayer;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5215
    iput-object p1, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/phone/CallNotifier$UpgradeTonePlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 5215
    iget-wide v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mEventTime:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/android/phone/CallNotifier$UpgradeTonePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5215
    iput p1, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mToneState:I

    return p1
.end method


# virtual methods
.method public playTimeoutTone()V
    .locals 2

    .prologue
    .line 5282
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5283
    return-void
.end method

.method public startTone()V
    .locals 4

    .prologue
    .line 5276
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mEventTime:J

    .line 5277
    const-string v0, "UpgradeTonePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Current time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5278
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5279
    return-void
.end method

.method public stopTone()V
    .locals 5

    .prologue
    const/16 v4, 0x68

    const/16 v3, 0x67

    const/16 v2, 0x65

    .line 5286
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5287
    iget v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mToneState:I

    packed-switch v0, :pswitch_data_0

    .line 5310
    :cond_0
    :goto_0
    return-void

    .line 5289
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5290
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 5295
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5296
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 5301
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5302
    iget-object v0, p0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 5287
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
