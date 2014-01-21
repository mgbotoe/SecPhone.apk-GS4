.class final Lcom/android/phone/PhoneUtilsCamera$1;
.super Ljava/lang/Object;
.source "PhoneUtilsCamera.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtilsCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 101
    const-string v1, "PhoneUtilsCamera"

    const-string v2, "service onServiceConnected Called !!!!"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {p2}, Lcom/android/mms/transaction/IMessageBackgroundSender$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/mms/transaction/IMessageBackgroundSender;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCamera;->access$002(Lcom/android/mms/transaction/IMessageBackgroundSender;)Lcom/android/mms/transaction/IMessageBackgroundSender;

    .line 104
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCamera;->access$102(Z)Z

    .line 106
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsCamera;->access$000()Lcom/android/mms/transaction/IMessageBackgroundSender;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    invoke-static {}, Lcom/android/phone/PhoneUtilsCamera;->access$000()Lcom/android/mms/transaction/IMessageBackgroundSender;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/mms/transaction/IMessageBackgroundSender;->startListening()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 117
    const-string v1, "PhoneUtilsCamera"

    const-string v2, "service onServiceDisconnected Called !!!!"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsCamera;->access$000()Lcom/android/mms/transaction/IMessageBackgroundSender;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/mms/transaction/IMessageBackgroundSender;->stopListening()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCamera;->access$002(Lcom/android/mms/transaction/IMessageBackgroundSender;)Lcom/android/mms/transaction/IMessageBackgroundSender;

    .line 126
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCamera;->access$102(Z)Z

    .line 127
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
