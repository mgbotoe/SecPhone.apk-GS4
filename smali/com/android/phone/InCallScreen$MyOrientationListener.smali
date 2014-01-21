.class Lcom/android/phone/InCallScreen$MyOrientationListener;
.super Lcom/android/internal/policy/impl/WindowOrientationListener;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationListener"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 12910
    iput-object p1, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InCallScreen;

    .line 12911
    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/phone/InCallScreen;->access$3400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 12912
    iput-object p2, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->mContext:Landroid/content/Context;

    .line 12913
    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .locals 3
    .parameter "rotation"

    .prologue
    .line 12917
    iget-object v0, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[orientationListener] onProposedRotationChanged: rotation changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 12918
    iget-object v0, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$3300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->getValidCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mOrientationListener:Lcom/android/phone/InCallScreen$MyOrientationListener;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$7100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallScreen$MyOrientationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12919
    iget-object v0, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mOrientationListener:Lcom/android/phone/InCallScreen$MyOrientationListener;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$7100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallScreen$MyOrientationListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen$MyOrientationListener;->disable()V

    .line 12921
    const-string v0, "InCallScreen"

    const-string v1, "[orientationListener] onProposedRotationChanged : disabled"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    .line 12930
    :cond_0
    :goto_0
    return-void

    .line 12923
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCurrentRotation:I
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$7200(Lcom/android/phone/InCallScreen;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 12925
    const-string v0, "InCallScreen"

    const-string v1, "[orientationListener] onProposedRotationChanged"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    .line 12926
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen$MyOrientationListener;->setCameraOrientation(I)V

    .line 12927
    iget-object v0, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mCurrentRotation:I
    invoke-static {v0, p1}, Lcom/android/phone/InCallScreen;->access$7202(Lcom/android/phone/InCallScreen;I)I

    goto :goto_0
.end method

.method public setCameraOrientation(I)V
    .locals 5
    .parameter "rotation"

    .prologue
    .line 12933
    iget-object v2, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[orientationListener] setCameraDisplayOrientation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 12934
    const/4 v1, 0x0

    .line 12936
    .local v1, videocallmanager:Lcom/android/phone/VideoCallManager;
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/VideoCallManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/VideoCallManager;
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 12941
    :goto_0
    if-eqz v1, :cond_0

    .line 12942
    invoke-virtual {v1, p1}, Lcom/android/phone/VideoCallManager;->setCameraDisplayOrientation(I)V

    .line 12944
    const-string v2, "InCallScreen"

    const-string v3, "[orientationListener] onProposedRotationChanged"

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    .line 12949
    :goto_1
    return-void

    .line 12937
    :catch_0
    move-exception v0

    .line 12938
    .local v0, ve:Ljava/lang/VerifyError;
    iget-object v2, p0, Lcom/android/phone/InCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch VerifyError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 12947
    .end local v0           #ve:Ljava/lang/VerifyError;
    :cond_0
    const-string v2, "InCallScreen"

    const-string v3, "[orientationListener] fail videocallmanager == null"

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
