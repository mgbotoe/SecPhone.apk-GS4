.class Lcom/android/phone/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;
.super Lcom/android/phone/IPhoneVoiceRecorderService$Stub;
.source "PhoneVoiceRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneVoiceRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPhoneVoiceRecorderServiceStub"
.end annotation


# instance fields
.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRecorder:Lcom/android/phone/PhoneVoiceRecorderService;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneVoiceRecorderService;Landroid/os/RemoteCallbackList;)V
    .locals 0
    .parameter "recorder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/phone/PhoneVoiceRecorderService;",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p2, callbacks:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;>;"
    invoke-direct {p0}, Lcom/android/phone/IPhoneVoiceRecorderService$Stub;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mRecorder:Lcom/android/phone/PhoneVoiceRecorderService;

    .line 142
    iput-object p2, p0, Lcom/android/phone/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 143
    return-void
.end method


# virtual methods
.method public getRecordTime()J
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mRecorder:Lcom/android/phone/PhoneVoiceRecorderService;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorderService;->getRecordTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public isVoiceRecording()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mRecorder:Lcom/android/phone/PhoneVoiceRecorderService;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorderService;->isVoiceRecording()Z

    move-result v0

    return v0
.end method

.method public registerCallback(Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)V
    .locals 1
    .parameter "vrServiceCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 169
    :cond_0
    return-void
.end method

.method public setCallerNumber(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mRecorder:Lcom/android/phone/PhoneVoiceRecorderService;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneVoiceRecorderService;->setCallerNumber(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public startRecord()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mRecorder:Lcom/android/phone/PhoneVoiceRecorderService;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorderService;->startRecord()V

    .line 148
    return-void
.end method

.method public stopRecord()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mRecorder:Lcom/android/phone/PhoneVoiceRecorderService;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorderService;->stopRecord()V

    .line 152
    return-void
.end method

.method public unregisterCallback(Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)V
    .locals 1
    .parameter "vrServiceCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 174
    :cond_0
    return-void
.end method
