.class public Lcom/android/phone/PhoneUtilsDsds;
.super Ljava/lang/Object;
.source "PhoneUtilsDsds.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static UpdateDefaultSim(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 173
    const-string v0, "UpdateDefaultSim()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public static getCallManager(I)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 112
    const-string v0, "getSubscription()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    return-object v0
.end method

.method public static getDataState()I
    .locals 1

    .prologue
    .line 82
    const-string v0, "getDataState()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public static getDataSubscription()I
    .locals 1

    .prologue
    .line 87
    const-string v0, "getSubscription()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public static getDefaultPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 107
    const-string v0, "getSubscription()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getDefaultSimForVoiceCalls()I
    .locals 1

    .prologue
    .line 133
    const-string v0, "getDefaultSimForVoiceCalls()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public static getDefaultSubscription()I
    .locals 1

    .prologue
    .line 97
    const-string v0, "getSubscription()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public static getDualSimState(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 168
    const-string v0, "getSubscription()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public static getInsertedSimCount()I
    .locals 1

    .prologue
    .line 148
    const-string v0, "getInsertedSimCount()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public static getPin2Retry(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 187
    const-string v0, "getPin2Retry(int simSlot)"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public static getPuk2Retry(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 192
    const-string v0, "getPuk2Retry(int simSlot)"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public static getSimIconMini(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 143
    const-string v0, "getSimIconMini()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public static getSimName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSimState(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 182
    const-string v0, "getSimState()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public static getSubscription(Lcom/android/internal/telephony/Phone;)I
    .locals 1
    .parameter "phone"

    .prologue
    .line 77
    const-string v0, "getSubscription()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public static getVoiceSubscription()I
    .locals 1

    .prologue
    .line 92
    const-string v0, "getSubscription()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public static isDualSIM()Z
    .locals 1

    .prologue
    .line 138
    const-string v0, "isDualSIM()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public static isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 1
    .parameter "number"
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 153
    const-string v0, "isLocalEmergencyNumber()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public static isOneSIMcardsInsertedInSlot2()Z
    .locals 1

    .prologue
    .line 118
    const-string v0, "isOneSIMcardsInsertedInSlot2()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 1
    .parameter "number"
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 158
    const-string v0, "isPotentialLocalEmergencyNumber()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public static listenDs(Lcom/android/phone/PhoneGlobals;ILandroid/telephony/PhoneStateListener;I)Z
    .locals 1
    .parameter "app"
    .parameter "id"
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 163
    const-string v0, "listenDs()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 213
    const-string v0, "PhoneUtilsDsds"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method public static setDataSubscription(I)V
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 201
    const-string v0, "switchToSim1DataNetwork()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public static setDefaultSimForVoiceCalls(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 123
    const-string v0, "setDefaultSimForVoiceCalls()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public static switchToSim1DataNetwork()V
    .locals 1

    .prologue
    .line 205
    const-string v0, "switchToSim1DataNetwork()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public static switchToSim2DataNetwork()V
    .locals 1

    .prologue
    .line 209
    const-string v0, "switchToSim2DataNetwork()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public static syncAudio(ILandroid/os/Message;)V
    .locals 1
    .parameter "simSlot"
    .parameter "msg"

    .prologue
    .line 197
    const-string v0, "syncAudio()"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->log(Ljava/lang/String;)V

    .line 198
    return-void
.end method
