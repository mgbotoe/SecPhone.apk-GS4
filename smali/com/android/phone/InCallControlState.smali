.class public Lcom/android/phone/InCallControlState;
.super Ljava/lang/Object;
.source "InCallControlState.java"


# instance fields
.field public bluetoothEnabled:Z

.field public bluetoothIndicatorOn:Z

.field public canAddCall:Z

.field public canEndCall:Z

.field public canHold:Z

.field public canManage:Z

.field public canMerge:Z

.field public canMute:Z

.field public canRecord:Z

.field public canSwap:Z

.field public canTransfer:Z

.field public dialpadEnabled:Z

.field public dialpadVisible:Z

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field public manageConferenceEnabled:Z

.field public manageConferenceVisible:Z

.field public muteIndicatorOn:Z

.field public onHold:Z

.field public shouldUnholdBlink:Z

.field public speakerEnabled:Z

.field public speakerOn:Z

.field public supportsHold:Z


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .parameter "inCallScreen"
    .parameter "cm"

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-string v0, "InCallControlState constructor..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;Z)V

    .line 111
    iput-object p1, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 112
    iput-object p2, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "inCallScreen"
    .parameter "cm"
    .parameter "phone"

    .prologue
    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const-string v0, "InCallControlState constructor..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 119
    iput-object p2, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 120
    iput-object p3, p0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 121
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 465
    const-string v0, "InCallControlState"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 469
    const-string v0, "InCallControlState"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 470
    return-void
.end method


# virtual methods
.method public dumpState()V
    .locals 2

    .prologue
    .line 443
    const-string v0, "InCallControlState:"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  manageConferenceVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  manageConferenceEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canAddCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canEndCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canSwap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canMerge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canMerge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canTransfer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canTransfer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  bluetoothEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  bluetoothIndicatorOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  speakerEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  speakerOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canMute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  muteIndicatorOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  dialpadEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  dialpadVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onHold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canHold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  shouldUnholdBlink: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->shouldUnholdBlink:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public update()V
    .locals 23

    .prologue
    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v17

    .line 132
    .local v17, state:Lcom/android/internal/telephony/PhoneConstants$State;
    const-string v20, "feature_chn_duos"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 134
    .local v6, fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 141
    .local v2, bgCall:Lcom/android/internal/telephony/Call;
    :goto_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v20

    const-string v21, "enterprise_policy"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 145
    .local v5, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    .line 146
    .local v7, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v20, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-ne v7, v0, :cond_15

    const/4 v8, 0x1

    .line 148
    .local v8, hasActiveForegroundCall:Z
    :goto_1
    const-string v20, "feature_chn_duos"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_17

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v20

    if-nez v20, :cond_16

    const/4 v9, 0x1

    .line 155
    .local v9, hasHoldingCall:Z
    :goto_2
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsConferenceCallManagement(Lcom/android/internal/telephony/Phone;)Z

    move-result v20

    if-eqz v20, :cond_19

    .line 159
    const/16 v19, 0x0

    .line 162
    .local v19, wfcOn:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    const-string v21, "com.movial.ipphone.IPPhone"

    invoke-static/range {v21 .. v21}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 163
    const/16 v19, 0x1

    .line 164
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_3
    if-nez v19, :cond_1

    .line 172
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 173
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/InCallScreen;->isManageConferenceMode()Z

    move-result v20

    if-nez v20, :cond_18

    const/16 v20, 0x1

    :goto_4
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    .line 183
    .end local v19           #wfcOn:Z
    :cond_1
    :goto_5
    const-string v20, "feature_chn_duos"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 189
    :goto_6
    const-string v20, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 190
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v20

    if-nez v20, :cond_1b

    const/16 v20, 0x1

    :goto_7
    and-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 191
    if-eqz v8, :cond_2

    .line 192
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 193
    .local v3, c:Lcom/android/internal/telephony/Connection;
    const/4 v12, 0x0

    .line 194
    .local v12, isEmergencyNumber:Z
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsConferenceCallManagement(Lcom/android/internal/telephony/Phone;)Z

    move-result v20

    if-eqz v20, :cond_1c

    .line 195
    const-string v20, "gsm.current.simnum"

    const-string v21, "2"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_8
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v12

    .line 200
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    move/from16 v21, v0

    if-nez v12, :cond_1d

    const/16 v20, 0x1

    :goto_9
    and-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 204
    .end local v3           #c:Lcom/android/internal/telephony/Connection;
    .end local v12           #isEmergencyNumber:Z
    :cond_2
    const-string v20, "usa_cdma_emergency_concept"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 206
    if-eqz v8, :cond_1f

    .line 207
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 208
    .restart local v3       #c:Lcom/android/internal/telephony/Connection;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    move/from16 v21, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1e

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v20

    if-nez v20, :cond_1e

    const/16 v20, 0x1

    :goto_a
    and-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 222
    .end local v3           #c:Lcom/android/internal/telephony/Connection;
    :cond_3
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v20

    if-nez v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v20

    if-nez v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v20

    if-eqz v20, :cond_20

    :cond_4
    const/16 v20, 0x1

    :goto_c
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canEndCall:Z

    .line 225
    const-string v20, "feature_chn_duos"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_21

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canSwap:Z

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canMerge:Z

    .line 233
    :goto_d
    const-string v20, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_22

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtils;->okToManageCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canManage:Z

    .line 239
    :goto_e
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canTransfer:Z

    .line 243
    sget-object v20, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v7, v0, :cond_5

    sget-object v20, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-ne v7, v0, :cond_23

    .line 244
    :cond_5
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 262
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v20

    if-eqz v20, :cond_2f

    .line 263
    const-string v20, "headset_highest_priority_for_call"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2c

    .line 264
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v20

    if-nez v20, :cond_6

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/enterprise/BluetoothPolicy;->isOutgoingCallsAllowed()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/app/enterprise/RestrictionPolicy;->isBluetoothEnabled(Z)Z

    move-result v20

    if-nez v20, :cond_2b

    .line 266
    :cond_6
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    .line 282
    :goto_10
    const-string v20, "voice_call_recording"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 283
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 284
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 285
    :cond_7
    sget-object v20, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v7, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    sget-object v21, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_30

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    move/from16 v20, v0

    if-nez v20, :cond_30

    const/16 v20, 0x1

    :goto_11
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canRecord:Z

    .line 288
    const-string v20, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 291
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "InCallControlState canRecord="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canRecord:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canRecord:Z

    move/from16 v20, v0

    if-nez v20, :cond_9

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_31

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    .line 294
    .local v15, otherPhone:Lcom/android/internal/telephony/Phone;
    :goto_12
    if-eqz v15, :cond_9

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v20

    sget-object v21, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    move/from16 v20, v0

    if-nez v20, :cond_9

    .line 295
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canRecord:Z

    .line 304
    .end local v15           #otherPhone:Lcom/android/internal/telephony/Phone;
    :cond_9
    const-string v20, "no_receiver_in_call"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_36

    .line 307
    const-string v20, "headset_highest_priority_for_call"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_34

    .line 308
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v20

    if-eqz v20, :cond_32

    .line 309
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    .line 310
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 323
    :goto_13
    const-string v20, "answering_call_in_external_screen"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 324
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/PhoneGlobals;->isHardKeyboardOpened()Z

    move-result v20

    if-nez v20, :cond_37

    .line 325
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    .line 335
    :cond_a
    :goto_14
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 336
    .restart local v3       #c:Lcom/android/internal/telephony/Connection;
    const/4 v11, 0x0

    .line 337
    .local v11, isEmergencyCall:Z
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v11

    .line 341
    :cond_b
    const-string v20, "feature_multisim"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 342
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v22

    invoke-static/range {v20 .. v22}, Landroid/telephony/MultiSimPhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v11

    .line 347
    :cond_c
    if-eqz v3, :cond_d

    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 348
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_d

    const-string v20, "114"

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 349
    const-string v20, "ril.simtype"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 350
    .local v16, sSimType:Ljava/lang/String;
    const-string v20, "18"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_39

    .line 351
    const/4 v11, 0x1

    .line 355
    :goto_15
    const-string v20, "lock"

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "missing_phone_lock"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 356
    const/4 v11, 0x1

    .line 360
    .end local v16           #sSimType:Ljava/lang/String;
    :cond_d
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    .line 361
    .local v10, isECM:Z
    if-nez v11, :cond_e

    if-eqz v10, :cond_3a

    .line 362
    :cond_e
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 363
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    .line 375
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    .line 384
    sget-object v20, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-ne v7, v0, :cond_3c

    if-eqz v9, :cond_3c

    .line 385
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v18

    .line 391
    .local v18, supportsHoldAndUnhold:Z
    :goto_17
    if-nez v18, :cond_f

    const-string v20, "feature_ctc"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_40

    .line 394
    :cond_f
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 398
    if-eqz v9, :cond_3d

    sget-object v20, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-ne v7, v0, :cond_3d

    const/16 v20, 0x1

    :goto_18
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 401
    if-eqz v8, :cond_3e

    if-nez v9, :cond_3e

    const/4 v13, 0x1

    .line 402
    .local v13, okToHold:Z
    :goto_19
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 403
    .local v14, okToUnhold:Z
    if-nez v13, :cond_10

    if-eqz v14, :cond_3f

    :cond_10
    const/16 v20, 0x1

    :goto_1a
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canHold:Z

    .line 404
    const-string v20, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 406
    sget-object v20, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v7, v0, :cond_11

    sget-object v20, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-ne v7, v0, :cond_12

    .line 407
    :cond_11
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 411
    :cond_12
    const-string v20, "common_volte"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_13

    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 413
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 414
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canHold:Z

    .line 432
    .end local v13           #okToHold:Z
    .end local v14           #okToUnhold:Z
    :cond_13
    :goto_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    move/from16 v20, v0

    if-eqz v20, :cond_41

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    move/from16 v20, v0

    if-eqz v20, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->hasHoldingBGCall:Z

    move/from16 v20, v0

    if-eqz v20, :cond_41

    .line 435
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->shouldUnholdBlink:Z

    .line 439
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->dumpState()V

    .line 440
    return-void

    .line 136
    .end local v2           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v3           #c:Lcom/android/internal/telephony/Connection;
    .end local v5           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v6           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v7           #fgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v8           #hasActiveForegroundCall:Z
    .end local v9           #hasHoldingCall:Z
    .end local v10           #isECM:Z
    .end local v11           #isEmergencyCall:Z
    .end local v18           #supportsHoldAndUnhold:Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 137
    .restart local v6       #fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .restart local v2       #bgCall:Lcom/android/internal/telephony/Call;
    goto/16 :goto_0

    .line 146
    .restart local v5       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v7       #fgCallState:Lcom/android/internal/telephony/Call$State;
    :cond_15
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 149
    .restart local v8       #hasActiveForegroundCall:Z
    :cond_16
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 151
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v9

    .restart local v9       #hasHoldingCall:Z
    goto/16 :goto_2

    .line 166
    .restart local v19       #wfcOn:Z
    :catch_0
    move-exception v4

    .line 167
    .local v4, e:Ljava/lang/Exception;
    const-string v20, "IPPhone doesn\'t exists"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 173
    .end local v4           #e:Ljava/lang/Exception;
    :cond_18
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 178
    .end local v19           #wfcOn:Z
    :cond_19
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 179
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    goto/16 :goto_5

    .line 186
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canAddCall:Z

    goto/16 :goto_6

    .line 190
    :cond_1b
    const/16 v20, 0x0

    goto/16 :goto_7

    .line 197
    .restart local v3       #c:Lcom/android/internal/telephony/Connection;
    .restart local v12       #isEmergencyNumber:Z
    :cond_1c
    const-string v20, "gsm.current.simnum"

    const-string v21, "1"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 200
    :cond_1d
    const/16 v20, 0x0

    goto/16 :goto_9

    .line 208
    .end local v12           #isEmergencyNumber:Z
    :cond_1e
    const/16 v20, 0x0

    goto/16 :goto_a

    .line 210
    .end local v3           #c:Lcom/android/internal/telephony/Connection;
    :cond_1f
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 211
    .restart local v3       #c:Lcom/android/internal/telephony/Connection;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 212
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canAddCall:Z

    goto/16 :goto_b

    .line 222
    .end local v3           #c:Lcom/android/internal/telephony/Connection;
    :cond_20
    const/16 v20, 0x0

    goto/16 :goto_c

    .line 229
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canSwap:Z

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canMerge:Z

    goto/16 :goto_d

    .line 236
    :cond_22
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canManage:Z

    goto/16 :goto_e

    .line 246
    :cond_23
    const-string v20, "headset_highest_priority_for_call"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_27

    .line 247
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v20

    if-nez v20, :cond_25

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/enterprise/BluetoothPolicy;->isOutgoingCallsAllowed()Z

    move-result v20

    if-nez v20, :cond_24

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->fgConnectionsIsIncoming()Z

    move-result v20

    if-eqz v20, :cond_25

    :cond_24
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/app/enterprise/RestrictionPolicy;->isBluetoothEnabled(Z)Z

    move-result v20

    if-nez v20, :cond_26

    .line 249
    :cond_25
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    goto/16 :goto_f

    .line 251
    :cond_26
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    goto/16 :goto_f

    .line 254
    :cond_27
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/enterprise/BluetoothPolicy;->isOutgoingCallsAllowed()Z

    move-result v20

    if-nez v20, :cond_28

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->fgConnectionsIsIncoming()Z

    move-result v20

    if-eqz v20, :cond_29

    :cond_28
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/app/enterprise/RestrictionPolicy;->isBluetoothEnabled(Z)Z

    move-result v20

    if-nez v20, :cond_2a

    .line 255
    :cond_29
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    goto/16 :goto_f

    .line 258
    :cond_2a
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    goto/16 :goto_f

    .line 268
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    goto/16 :goto_10

    .line 271
    :cond_2c
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/enterprise/BluetoothPolicy;->isOutgoingCallsAllowed()Z

    move-result v20

    if-eqz v20, :cond_2d

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/app/enterprise/RestrictionPolicy;->isBluetoothEnabled(Z)Z

    move-result v20

    if-nez v20, :cond_2e

    .line 272
    :cond_2d
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    goto/16 :goto_10

    .line 275
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    goto/16 :goto_10

    .line 278
    :cond_2f
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    goto/16 :goto_10

    .line 285
    :cond_30
    const/16 v20, 0x0

    goto/16 :goto_11

    .line 293
    :cond_31
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_12

    .line 312
    :cond_32
    sget-object v20, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_33

    sget-object v20, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v7, v0, :cond_33

    const/16 v20, 0x1

    :goto_1d
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    goto/16 :goto_13

    .line 312
    :cond_33
    const/16 v20, 0x0

    goto :goto_1d

    .line 316
    :cond_34
    sget-object v20, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_35

    sget-object v20, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v7, v0, :cond_35

    const/16 v20, 0x1

    :goto_1e
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    goto/16 :goto_13

    .line 316
    :cond_35
    const/16 v20, 0x0

    goto :goto_1e

    .line 320
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    goto/16 :goto_13

    .line 327
    :cond_37
    sget-object v20, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_38

    sget-object v20, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    if-eq v7, v0, :cond_38

    const/16 v20, 0x1

    :goto_1f
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    goto/16 :goto_14

    :cond_38
    const/16 v20, 0x0

    goto :goto_1f

    .line 353
    .restart local v3       #c:Lcom/android/internal/telephony/Connection;
    .restart local v11       #isEmergencyCall:Z
    .restart local v16       #sSimType:Ljava/lang/String;
    :cond_39
    const/4 v11, 0x0

    goto/16 :goto_15

    .line 365
    .end local v16           #sSimType:Ljava/lang/String;
    .restart local v10       #isECM:Z
    :cond_3a
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 366
    const-string v20, "feature_chn_duos"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3b

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtils;->getMute(Lcom/android/internal/telephony/Phone;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    goto/16 :goto_16

    .line 369
    :cond_3b
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    goto/16 :goto_16

    .line 387
    :cond_3c
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v18

    .restart local v18       #supportsHoldAndUnhold:Z
    goto/16 :goto_17

    .line 398
    :cond_3d
    const/16 v20, 0x0

    goto/16 :goto_18

    .line 401
    :cond_3e
    const/4 v13, 0x0

    goto/16 :goto_19

    .line 403
    .restart local v13       #okToHold:Z
    .restart local v14       #okToUnhold:Z
    :cond_3f
    const/16 v20, 0x0

    goto/16 :goto_1a

    .line 419
    .end local v13           #okToHold:Z
    .end local v14           #okToUnhold:Z
    :cond_40
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 420
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 421
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canHold:Z

    .line 423
    const-string v20, "support_lgt_multi_call"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 424
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->setMultiCallState()V

    goto/16 :goto_1b

    .line 437
    :cond_41
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->shouldUnholdBlink:Z

    goto/16 :goto_1c
.end method
