.class Lcom/android/phone/callsettings/PhoneNumberLocator$11;
.super Ljava/lang/Object;
.source "PhoneNumberLocator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/PhoneNumberLocator;->startCopyThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V
    .locals 0
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$11;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 681
    :try_start_0
    const-string v1, "/system/etc/HomeLocationVersion.bin"

    const-string v2, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 684
    const-string v1, "/system/etc/HomeLocationDB.bin"

    const-string v2, "/data/data/com.android.phone/HomeLocationDB.bin"

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 687
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$11;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocator;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$1100(Lcom/android/phone/callsettings/PhoneNumberLocator;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 690
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$11;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    const-string v2, "EVENT_FILE_EXCEPTION = 3"

    const/4 v3, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$400(Lcom/android/phone/callsettings/PhoneNumberLocator;Ljava/lang/String;Z)V

    .line 691
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$11;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocator;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$1100(Lcom/android/phone/callsettings/PhoneNumberLocator;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
