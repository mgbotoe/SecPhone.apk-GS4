.class Lcom/android/phone/PhoneGlobals$SignalInfoTonePlayer;
.super Ljava/lang/Thread;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignalInfoTonePlayer"
.end annotation


# instance fields
.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;I)V
    .locals 4
    .parameter
    .parameter "toneId"

    .prologue
    .line 5675
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$SignalInfoTonePlayer;->this$0:Lcom/android/phone/PhoneGlobals;

    .line 5676
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 5677
    iput p2, p0, Lcom/android/phone/PhoneGlobals$SignalInfoTonePlayer;->mToneId:I

    .line 5678
    #getter for: Lcom/android/phone/PhoneGlobals;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {p1}, Lcom/android/phone/PhoneGlobals;->access$3500(Lcom/android/phone/PhoneGlobals;)Landroid/media/ToneGenerator;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5680
    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x5

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    #setter for: Lcom/android/phone/PhoneGlobals;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {p1, v1}, Lcom/android/phone/PhoneGlobals;->access$3502(Lcom/android/phone/PhoneGlobals;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5688
    :cond_0
    :goto_0
    return-void

    .line 5682
    :catch_0
    move-exception v0

    .line 5683
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneGlobals: Exception caught while creating mSignalInfoToneGenerator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5685
    const/4 v1, 0x0

    #setter for: Lcom/android/phone/PhoneGlobals;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {p1, v1}, Lcom/android/phone/PhoneGlobals;->access$3502(Lcom/android/phone/PhoneGlobals;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5692
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SignalInfoTonePlayer.run(toneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/PhoneGlobals$SignalInfoTonePlayer;->mToneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5694
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$SignalInfoTonePlayer;->this$0:Lcom/android/phone/PhoneGlobals;

    #getter for: Lcom/android/phone/PhoneGlobals;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->access$3500(Lcom/android/phone/PhoneGlobals;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5696
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$SignalInfoTonePlayer;->this$0:Lcom/android/phone/PhoneGlobals;

    #getter for: Lcom/android/phone/PhoneGlobals;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->access$3500(Lcom/android/phone/PhoneGlobals;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 5699
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$SignalInfoTonePlayer;->this$0:Lcom/android/phone/PhoneGlobals;

    #getter for: Lcom/android/phone/PhoneGlobals;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->access$3500(Lcom/android/phone/PhoneGlobals;)Landroid/media/ToneGenerator;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/PhoneGlobals$SignalInfoTonePlayer;->mToneId:I

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 5701
    :cond_0
    return-void
.end method
