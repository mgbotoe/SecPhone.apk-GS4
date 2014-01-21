.class public Lcom/android/phone/IMSMediaStateListener;
.super Ljava/lang/Object;
.source "IMSMediaStateListener.java"

# interfaces
.implements Lcom/samsung/commonimsinterface/imscommon/IIMSListener;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/phone/IMSMediaStateListener;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method onCameraEvent(IZ)V
    .locals 4
    .parameter "sessionID"
    .parameter "success"

    .prologue
    .line 58
    const-string v1, "IMSMediaStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraEvent:sessionID-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {}, Lcom/android/phone/VideoCallPanel;->getInstance()Lcom/android/phone/VideoCallPanel;

    move-result-object v0

    .line 60
    .local v0, videoCallPanel:Lcom/android/phone/VideoCallPanel;
    if-eqz v0, :cond_0

    .line 61
    if-eqz p2, :cond_1

    .line 62
    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallPanel;->onNotify(I)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const/16 v1, 0xcf

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallPanel;->onNotify(I)V

    goto :goto_0
.end method

.method onCameraFirstFrameReady(I)V
    .locals 4
    .parameter "sessionID"

    .prologue
    .line 81
    const-string v1, "IMSMediaStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraFirstFrameReady:sessionID-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Lcom/android/phone/VideoCallPanel;->getInstance()Lcom/android/phone/VideoCallPanel;

    move-result-object v0

    .line 84
    .local v0, videoCallPanel:Lcom/android/phone/VideoCallPanel;
    if-eqz v0, :cond_0

    .line 85
    const/16 v1, 0xd0

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallPanel;->onNotify(I)V

    .line 86
    :cond_0
    return-void
.end method

.method onCaptureFailure(IZ)V
    .locals 4
    .parameter "sessionID"
    .parameter "isNearEnd"

    .prologue
    .line 105
    const-string v1, "IMSMediaStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureFailure:sessionID-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Lcom/android/phone/VideoCallPanel;->getInstance()Lcom/android/phone/VideoCallPanel;

    move-result-object v0

    .line 109
    .local v0, videoCallPanel:Lcom/android/phone/VideoCallPanel;
    if-eqz v0, :cond_0

    .line 110
    if-eqz p2, :cond_1

    .line 111
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/phone/InVTCallState;->mCapturedLocalFile:Ljava/lang/String;

    .line 112
    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallPanel;->onNotify(I)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallPanel;->onNotify(I)V

    goto :goto_0
.end method

.method onCaptureSuccess(IZLjava/lang/String;)V
    .locals 4
    .parameter "sessionID"
    .parameter "isNearEnd"
    .parameter "filename"

    .prologue
    .line 89
    const-string v1, "IMSMediaStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureSuccess:sessionID-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lcom/android/phone/VideoCallPanel;->getInstance()Lcom/android/phone/VideoCallPanel;

    move-result-object v0

    .line 93
    .local v0, videoCallPanel:Lcom/android/phone/VideoCallPanel;
    if-eqz v0, :cond_0

    .line 94
    if-eqz p2, :cond_1

    .line 95
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iput-object p3, v1, Lcom/android/phone/InVTCallState;->mCapturedLocalFile:Ljava/lang/String;

    .line 96
    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallPanel;->onNotify(I)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallPanel;->onNotify(I)V

    goto :goto_0
.end method

.method public onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .locals 3
    .parameter "token"
    .parameter "action"
    .parameter "parameter"

    .prologue
    .line 38
    packed-switch p2, :pswitch_data_0

    .line 55
    :goto_0
    :pswitch_0
    return-void

    .line 40
    :pswitch_1
    const-string v0, "sessionid"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "success"

    invoke-virtual {p3, v1}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/IMSMediaStateListener;->onCameraEvent(IZ)V

    goto :goto_0

    .line 43
    :pswitch_2
    const-string v0, "sessionid"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSMediaStateListener;->onVideoAvailable(I)V

    goto :goto_0

    .line 46
    :pswitch_3
    const-string v0, "sessionid"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "isnearend"

    invoke-virtual {p3, v1}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "filename"

    invoke-virtual {p3, v2}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/IMSMediaStateListener;->onCaptureSuccess(IZLjava/lang/String;)V

    goto :goto_0

    .line 49
    :pswitch_4
    const-string v0, "sessionid"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "isnearend"

    invoke-virtual {p3, v1}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/IMSMediaStateListener;->onCaptureFailure(IZ)V

    goto :goto_0

    .line 52
    :pswitch_5
    const-string v0, "sessionid"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSMediaStateListener;->onCameraFirstFrameReady(I)V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method onVideoAvailable(I)V
    .locals 4
    .parameter "sessionID"

    .prologue
    .line 73
    const-string v1, "IMSMediaStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVideoAvailable:sessionID-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Lcom/android/phone/VideoCallPanel;->getInstance()Lcom/android/phone/VideoCallPanel;

    move-result-object v0

    .line 76
    .local v0, videoCallPanel:Lcom/android/phone/VideoCallPanel;
    if-eqz v0, :cond_0

    .line 77
    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallPanel;->onNotify(I)V

    .line 78
    :cond_0
    return-void
.end method
