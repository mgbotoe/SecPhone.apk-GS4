.class public Lcom/android/phone/CallAirMotion;
.super Ljava/lang/Object;
.source "CallAirMotion.java"

# interfaces
.implements Lcom/samsung/android/service/gesture/GestureListener;
.implements Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;


# instance fields
.field private final EVENT_INTERVAL_SWEEP:I

.field private final EVENT_INTERVAL_WAVE:I

.field private mCallAirMotionListener:Lcom/android/phone/CallAirMotionListener;

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mEventTime:[J

.field private mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

.field private mPhoneApp:Lcom/android/phone/PhoneGlobals;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/CallAirMotion;->mConnected:Z

    .line 43
    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/phone/CallAirMotion;->mEventTime:[J

    .line 45
    const/16 v1, 0x9c4

    iput v1, p0, Lcom/android/phone/CallAirMotion;->EVENT_INTERVAL_WAVE:I

    .line 46
    const/16 v1, 0x320

    iput v1, p0, Lcom/android/phone/CallAirMotion;->EVENT_INTERVAL_SWEEP:I

    .line 49
    iput-object p1, p0, Lcom/android/phone/CallAirMotion;->mContext:Landroid/content/Context;

    .line 52
    :try_start_0
    new-instance v1, Lcom/samsung/android/service/gesture/GestureManager;

    iget-object v2, p0, Lcom/android/phone/CallAirMotion;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/service/gesture/GestureManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;)V

    iput-object v1, p0, Lcom/android/phone/CallAirMotion;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallAirMotion;->mPhoneApp:Lcom/android/phone/PhoneGlobals;

    .line 59
    const-string v1, "CallAirMotion"

    invoke-direct {p0, v1, v3}, Lcom/android/phone/CallAirMotion;->log(Ljava/lang/String;Z)V

    .line 60
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallAirMotion Exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/phone/CallAirMotion;->log(Ljava/lang/String;Z)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 43
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private handleEvent(J)V
    .locals 7
    .parameter "time"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 126
    iget-object v1, p0, Lcom/android/phone/CallAirMotion;->mEventTime:[J

    iget-object v2, p0, Lcom/android/phone/CallAirMotion;->mEventTime:[J

    aget-wide v2, v2, v5

    aput-wide v2, v1, v4

    .line 127
    iget-object v1, p0, Lcom/android/phone/CallAirMotion;->mEventTime:[J

    iget-object v2, p0, Lcom/android/phone/CallAirMotion;->mEventTime:[J

    aget-wide v2, v2, v6

    aput-wide v2, v1, v5

    .line 128
    iget-object v1, p0, Lcom/android/phone/CallAirMotion;->mEventTime:[J

    aput-wide p1, v1, v6

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEventTime[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallAirMotion;->mEventTime:[J

    aget-wide v2, v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/phone/CallAirMotion;->log(Ljava/lang/String;Z)V

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEventTime[1] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallAirMotion;->mEventTime:[J

    aget-wide v2, v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/phone/CallAirMotion;->log(Ljava/lang/String;Z)V

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEventTime[2] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallAirMotion;->mEventTime:[J

    aget-wide v2, v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/phone/CallAirMotion;->log(Ljava/lang/String;Z)V

    .line 135
    const/4 v0, 0x3

    .line 143
    .local v0, eventType:I
    iget-object v1, p0, Lcom/android/phone/CallAirMotion;->mEventTime:[J

    aget-wide v1, v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallAirMotion;->mEventTime:[J

    aget-wide v1, v1, v6

    iget-object v3, p0, Lcom/android/phone/CallAirMotion;->mEventTime:[J

    aget-wide v3, v3, v5

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x320

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 144
    const/4 v0, 0x4

    .line 149
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventType  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/phone/CallAirMotion;->log(Ljava/lang/String;Z)V

    .line 151
    iget-object v1, p0, Lcom/android/phone/CallAirMotion;->mCallAirMotionListener:Lcom/android/phone/CallAirMotionListener;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/phone/CallAirMotion;->mCallAirMotionListener:Lcom/android/phone/CallAirMotionListener;

    invoke-interface {v1, v0}, Lcom/android/phone/CallAirMotionListener;->onReceiveSweep(I)V

    .line 155
    :cond_0
    const-string v1, "SPE"

    const-string v2, "com.android.phone.CallAirMotion: ACTION_GESTURE OUT"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void

    .line 146
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 184
    const-string v0, "CallAirMotion"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 185
    return-void
.end method


# virtual methods
.method public onGestureEvent(Lcom/samsung/android/service/gesture/GestureEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGestureEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallAirMotion;->log(Ljava/lang/String;Z)V

    .line 110
    const-string v0, "SPE"

    const-string v1, "com.android.phone.CallAirMotion: ACTION_GESTURE"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_0
    :pswitch_0
    return-void

    .line 118
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallAirMotion;->handleEvent(J)V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceConnected()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 169
    const-string v0, "onServiceConnected"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallAirMotion;->log(Ljava/lang/String;Z)V

    .line 170
    iput-boolean v1, p0, Lcom/android/phone/CallAirMotion;->mConnected:Z

    .line 171
    invoke-virtual {p0}, Lcom/android/phone/CallAirMotion;->startMotionCatch()V

    .line 172
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 175
    const-string v0, "onServiceDisconnected"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallAirMotion;->log(Ljava/lang/String;Z)V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallAirMotion;->mConnected:Z

    .line 177
    return-void
.end method

.method public resetTime()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/android/phone/CallAirMotion;->mEventTime:[J

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    .line 160
    iget-object v0, p0, Lcom/android/phone/CallAirMotion;->mEventTime:[J

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    .line 161
    iget-object v0, p0, Lcom/android/phone/CallAirMotion;->mEventTime:[J

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    .line 162
    return-void
.end method

.method public setCallAirMotionListener(Lcom/android/phone/CallAirMotionListener;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/phone/CallAirMotion;->mCallAirMotionListener:Lcom/android/phone/CallAirMotionListener;

    .line 166
    return-void
.end method

.method startMotionCatch()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 63
    const-string v1, "startMotionCatch"

    invoke-direct {p0, v1, v4}, Lcom/android/phone/CallAirMotion;->log(Ljava/lang/String;Z)V

    .line 65
    iget-boolean v1, p0, Lcom/android/phone/CallAirMotion;->mConnected:Z

    if-eqz v1, :cond_0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallAirMotion;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v2, "ir_provider"

    const-string v3, "air_motion_call_accept"

    invoke-virtual {v1, p0, v2, v3}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    const-string v1, "startMotionCatch- registerListener in IR_PROVIDER"

    invoke-direct {p0, v1, v4}, Lcom/android/phone/CallAirMotion;->log(Ljava/lang/String;Z)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallAirMotion;->resetTime()V

    .line 79
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMotionCatch Exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/phone/CallAirMotion;->log(Ljava/lang/String;Z)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method stopMotionCatch()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 82
    const-string v1, "stopMotionCatch"

    invoke-direct {p0, v1, v3}, Lcom/android/phone/CallAirMotion;->log(Ljava/lang/String;Z)V

    .line 84
    iget-boolean v1, p0, Lcom/android/phone/CallAirMotion;->mConnected:Z

    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallAirMotion;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v2, "ir_provider"

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    const-string v1, "stopMotionCatch- unregisterListener in IR_PROVIDER"

    invoke-direct {p0, v1, v3}, Lcom/android/phone/CallAirMotion;->log(Ljava/lang/String;Z)V

    .line 95
    :cond_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopMotionCatch Exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/phone/CallAirMotion;->log(Ljava/lang/String;Z)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unbindFromService()V
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/phone/CallAirMotion;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-eqz v1, :cond_0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallAirMotion;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/gesture/GestureManager;->unbindFromService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindFromService Exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallAirMotion;->log(Ljava/lang/String;Z)V

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
