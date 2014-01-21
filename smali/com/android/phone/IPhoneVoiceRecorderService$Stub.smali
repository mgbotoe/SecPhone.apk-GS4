.class public abstract Lcom/android/phone/IPhoneVoiceRecorderService$Stub;
.super Landroid/os/Binder;
.source "IPhoneVoiceRecorderService.java"

# interfaces
.implements Lcom/android/phone/IPhoneVoiceRecorderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IPhoneVoiceRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.phone.IPhoneVoiceRecorderService"

    invoke-virtual {p0, p0, v0}, Lcom/android/phone/IPhoneVoiceRecorderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "com.android.phone.IPhoneVoiceRecorderService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.android.phone.IPhoneVoiceRecorderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/phone/IPhoneVoiceRecorderService$Stub;->startRecord()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v3, "com.android.phone.IPhoneVoiceRecorderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/phone/IPhoneVoiceRecorderService$Stub;->stopRecord()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    :sswitch_3
    const-string v3, "com.android.phone.IPhoneVoiceRecorderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/phone/IPhoneVoiceRecorderService$Stub;->isVoiceRecording()Z

    move-result v1

    .line 63
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v1, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 69
    .end local v1           #_result:Z
    :sswitch_4
    const-string v3, "com.android.phone.IPhoneVoiceRecorderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/phone/IPhoneVoiceRecorderService$Stub;->getRecordTime()J

    move-result-wide v1

    .line 71
    .local v1, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 77
    .end local v1           #_result:J
    :sswitch_5
    const-string v3, "com.android.phone.IPhoneVoiceRecorderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/phone/IPhoneVoiceRecorderService$Stub;->setCallerNumber(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_6
    const-string v3, "com.android.phone.IPhoneVoiceRecorderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/IPhoneVoiceRecorderServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    move-result-object v0

    .line 89
    .local v0, _arg0:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;
    invoke-virtual {p0, v0}, Lcom/android/phone/IPhoneVoiceRecorderService$Stub;->registerCallback(Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v0           #_arg0:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;
    :sswitch_7
    const-string v3, "com.android.phone.IPhoneVoiceRecorderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/IPhoneVoiceRecorderServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    move-result-object v0

    .line 98
    .restart local v0       #_arg0:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;
    invoke-virtual {p0, v0}, Lcom/android/phone/IPhoneVoiceRecorderService$Stub;->unregisterCallback(Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
