.class Lcom/android/phone/InCallScreen$4$1;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/InCallScreen$4;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1239
    iput-object p1, p0, Lcom/android/phone/InCallScreen$4$1;->this$1:Lcom/android/phone/InCallScreen$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1241
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen$4$1;->this$1:Lcom/android/phone/InCallScreen$4;

    iget-object v0, v0, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[InCallScreen.java]mReceiver:SS_INFO_FWIM_NSS:postDelayed:mToneGeneratorLock["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen$4$1;->this$1:Lcom/android/phone/InCallScreen$4;

    iget-object v2, v2, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mToneGeneratorLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$4400(Lcom/android/phone/InCallScreen;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]mToneGenerator["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen$4$1;->this$1:Lcom/android/phone/InCallScreen$4;

    iget-object v2, v2, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$4500(Lcom/android/phone/InCallScreen;)Landroid/media/ToneGenerator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 1243
    :cond_0
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[InCallScreen.java]mReceiver:SS_INFO_FWIM_NSS:postDelayed:mToneGeneratorLock["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen$4$1;->this$1:Lcom/android/phone/InCallScreen$4;

    iget-object v2, v2, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mToneGeneratorLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$4400(Lcom/android/phone/InCallScreen;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]mToneGenerator["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen$4$1;->this$1:Lcom/android/phone/InCallScreen$4;

    iget-object v2, v2, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$4500(Lcom/android/phone/InCallScreen;)Landroid/media/ToneGenerator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    iget-object v0, p0, Lcom/android/phone/InCallScreen$4$1;->this$1:Lcom/android/phone/InCallScreen$4;

    iget-object v0, v0, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mToneGeneratorLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$4400(Lcom/android/phone/InCallScreen;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1246
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen$4$1;->this$1:Lcom/android/phone/InCallScreen$4;

    iget-object v0, v0, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$4500(Lcom/android/phone/InCallScreen;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1247
    const-string v0, "InCallScreen"

    const-string v2, "[InCallScreen.java]mReceiver:SS_INFO_FWIM_NSS:postDelayed:mToneGenerator[null]"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1254
    iget-object v0, p0, Lcom/android/phone/InCallScreen$4$1;->this$1:Lcom/android/phone/InCallScreen$4;

    iget-object v0, v0, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->internalHangup()V
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;)V

    .line 1255
    return-void

    .line 1249
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen$4$1;->this$1:Lcom/android/phone/InCallScreen$4;

    iget-object v0, v0, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$4500(Lcom/android/phone/InCallScreen;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1250
    iget-object v0, p0, Lcom/android/phone/InCallScreen$4$1;->this$1:Lcom/android/phone/InCallScreen$4;

    iget-object v0, v0, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$4500(Lcom/android/phone/InCallScreen;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 1251
    iget-object v0, p0, Lcom/android/phone/InCallScreen$4$1;->this$1:Lcom/android/phone/InCallScreen$4;

    iget-object v0, v0, Lcom/android/phone/InCallScreen$4;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0, v2}, Lcom/android/phone/InCallScreen;->access$4502(Lcom/android/phone/InCallScreen;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    goto :goto_0

    .line 1253
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
