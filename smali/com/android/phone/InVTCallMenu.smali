.class public abstract Lcom/android/phone/InVTCallMenu;
.super Ljava/lang/Object;
.source "InVTCallMenu.java"


# instance fields
.field protected mApp:Lcom/android/phone/PhoneGlobals;

.field protected mIsTabletDevice:Z

.field protected mMenuSelected:I

.field private mVTCommonFunction:Lcom/android/phone/VTCommonFunction;


# direct methods
.method public constructor <init>(Lcom/android/phone/VTCommonFunction;)V
    .locals 2
    .parameter "vTCommonFunction"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InVTCallMenu;->mMenuSelected:I

    .line 78
    const-string v0, "InVTCallMenu constructor..."

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;Z)V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 82
    iput-object p1, p0, Lcom/android/phone/InVTCallMenu;->mVTCommonFunction:Lcom/android/phone/VTCommonFunction;

    .line 83
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    .line 85
    return-void
.end method


# virtual methods
.method protected clearVTCommonFunctionReference()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallMenu;->mVTCommonFunction:Lcom/android/phone/VTCommonFunction;

    .line 89
    return-void
.end method

.method protected getPreviewEffectState()Lcom/android/phone/PreviewEffectState;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v0, v0, Lcom/android/phone/InVTCallState;->previewEffectState:Lcom/android/phone/PreviewEffectState;

    return-object v0
.end method

.method abstract isDialerOpened()Z
.end method

.method abstract isFarEndRecord()Z
.end method

.method abstract isNearEndRecord()Z
.end method

.method abstract isShowMe()Z
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 290
    const-string v0, "InVTCallMenu"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method protected log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 294
    const-string v0, "InVTCallMenu"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 295
    return-void
.end method

.method abstract mdmGetAllowCamera()Z
.end method

.method abstract mdmIsCameraEnabled(Z)Z
.end method

.method protected optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- optionsItemSelected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;)V

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;)V

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  title: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lcom/android/phone/InVTCallMenu;->mVTCommonFunction:Lcom/android/phone/VTCommonFunction;

    if-nez v2, :cond_0

    .line 243
    const-string v2, "InVTCallMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "optionsItemSelected("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), but null mVTCommonFunction!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 264
    :goto_0
    return v0

    .line 247
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 260
    const-string v1, "InVTCallMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "optionsItemSelected:  unexpected View ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (MenuItem = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InVTCallMenu;->mVTCommonFunction:Lcom/android/phone/VTCommonFunction;

    invoke-interface {v0}, Lcom/android/phone/VTCommonFunction;->onOpenCloseDialpad()V

    :goto_1
    move v0, v1

    .line 264
    goto :goto_0

    .line 253
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InVTCallMenu;->mVTCommonFunction:Lcom/android/phone/VTCommonFunction;

    invoke-interface {v0}, Lcom/android/phone/VTCommonFunction;->toggleBluetooth()V

    goto :goto_1

    .line 257
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InVTCallMenu;->mVTCommonFunction:Lcom/android/phone/VTCommonFunction;

    invoke-interface {v0}, Lcom/android/phone/VTCommonFunction;->toggleSpeaker()V

    goto :goto_1

    .line 247
    :pswitch_data_0
    .packed-switch 0x7f0a03d5
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 13
    .parameter "menu"

    .prologue
    const v12, 0x7f0a03d8

    const v11, 0x7f0a03d7

    const v10, 0x7f0a03d6

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 92
    const-string v8, "prepareOptionsMenu()..."

    invoke-virtual {p0, v8}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;)V

    .line 94
    iget-boolean v8, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-eqz v8, :cond_0

    .line 95
    iget-object v8, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v8, v9, :cond_0

    .line 234
    :goto_0
    return v6

    .line 100
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v8

    if-ge v0, v8, :cond_10

    .line 101
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 102
    .local v1, itemId:I
    sparse-switch v1, :sswitch_data_0

    .line 100
    :cond_1
    :goto_2
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :sswitch_1
    const-string v8, "no_receiver_in_call"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "vt_cmcc_operator_open_close_camera"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 107
    const v8, 0x7f0a0341

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 108
    .local v4, mHideMe:Landroid/view/MenuItem;
    const v8, 0x7f0a03d3

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 109
    .local v5, mShowMe:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->isShowMe()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 110
    const-string v8, "Adding HIDE Me to Menu"

    invoke-virtual {p0, v8}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;)V

    .line 111
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 112
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 114
    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->mdmGetAllowCamera()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0, v6}, Lcom/android/phone/InVTCallMenu;->mdmIsCameraEnabled(Z)Z

    move-result v8

    if-nez v8, :cond_3

    .line 115
    :cond_2
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 129
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->isNearEndRecord()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 130
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 117
    :cond_4
    const-string v8, "Adding SHOW Me to Menu"

    invoke-virtual {p0, v8}, Lcom/android/phone/InVTCallMenu;->log(Ljava/lang/String;)V

    .line 120
    iget-boolean v8, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-nez v8, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->isDialerOpened()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->isFarEndRecord()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 121
    :cond_5
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 122
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 124
    :cond_6
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 125
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 132
    :cond_7
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 138
    .end local v4           #mHideMe:Landroid/view/MenuItem;
    .end local v5           #mShowMe:Landroid/view/MenuItem;
    :sswitch_2
    iget-boolean v8, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-nez v8, :cond_1

    .line 139
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 144
    :sswitch_3
    iget-object v8, p0, Lcom/android/phone/InVTCallMenu;->mVTCommonFunction:Lcom/android/phone/VTCommonFunction;

    invoke-interface {v8}, Lcom/android/phone/VTCommonFunction;->isBluetoothAvailable()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/phone/InVTCallMenu;->mVTCommonFunction:Lcom/android/phone/VTCommonFunction;

    invoke-interface {v8}, Lcom/android/phone/VTCommonFunction;->isBluetoothAudioConnected()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 146
    iget-boolean v8, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-nez v8, :cond_1

    .line 147
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 148
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 152
    :cond_8
    iget-boolean v8, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-nez v8, :cond_9

    .line 153
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 154
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 157
    :cond_9
    const-string v8, "kor_cs_vt_ui"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "common_volte_vt_kor"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 158
    :cond_a
    iget-object v8, p0, Lcom/android/phone/InVTCallMenu;->mVTCommonFunction:Lcom/android/phone/VTCommonFunction;

    invoke-interface {v8}, Lcom/android/phone/VTCommonFunction;->isBluetoothAvailable()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 159
    :cond_b
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 165
    :sswitch_4
    const-string v8, "common_volte_vt_kor"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "no_receiver_in_call"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 168
    iget-boolean v8, p0, Lcom/android/phone/InVTCallMenu;->mIsTabletDevice:Z

    if-nez v8, :cond_1

    .line 169
    iget-object v8, p0, Lcom/android/phone/InVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 170
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 171
    const v8, 0x7f0a03d9

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 173
    :cond_c
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 174
    const v8, 0x7f0a03d9

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 180
    :sswitch_5
    const-string v8, "kor_qc_cs_vt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "common_volte_vt_kor"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "vt_theme_feature_support"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->getPreviewEffectState()Lcom/android/phone/PreviewEffectState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PreviewEffectState;->isShowingEmotionalAni()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 184
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 186
    :cond_d
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 187
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->isShowMe()Z

    move-result v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 192
    :sswitch_6
    const-string v8, "kor_qc_cs_vt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "common_volte_vt_kor"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "vt_theme_feature_support"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->getPreviewEffectState()Lcom/android/phone/PreviewEffectState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PreviewEffectState;->isShowingThemeView()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 196
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 198
    :cond_e
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 199
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->isShowMe()Z

    move-result v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 205
    :sswitch_7
    const-string v8, "kor_qc_cs_vt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "common_volte_vt_kor"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "vt_theme_feature_support"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 208
    const v8, 0x7f0a03e0

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 209
    .local v3, mCartoonViewOn:Landroid/view/MenuItem;
    const v8, 0x7f0a03e1

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 210
    .local v2, mCartoonViewOff:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->getPreviewEffectState()Lcom/android/phone/PreviewEffectState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PreviewEffectState;->isShowingCartoonView()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 211
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 212
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 213
    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->isShowMe()Z

    move-result v8

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 215
    :cond_f
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 216
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 217
    invoke-virtual {p0}, Lcom/android/phone/InVTCallMenu;->isShowMe()Z

    move-result v8

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 224
    .end local v1           #itemId:I
    .end local v2           #mCartoonViewOff:Landroid/view/MenuItem;
    .end local v3           #mCartoonViewOn:Landroid/view/MenuItem;
    :cond_10
    iget v8, p0, Lcom/android/phone/InVTCallMenu;->mMenuSelected:I

    packed-switch v8, :pswitch_data_0

    :goto_4
    move v6, v7

    .line 234
    goto/16 :goto_0

    .line 226
    :pswitch_0
    const v8, 0x7f0a03ea

    invoke-interface {p1, v8, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_4

    .line 229
    :pswitch_1
    const v8, 0x7f0a03cc

    invoke-interface {p1, v8, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 230
    const v8, 0x7f0a03ea

    invoke-interface {p1, v8, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_4

    .line 102
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0341 -> :sswitch_0
        0x7f0a03d3 -> :sswitch_1
        0x7f0a03d5 -> :sswitch_2
        0x7f0a03d6 -> :sswitch_0
        0x7f0a03d7 -> :sswitch_3
        0x7f0a03d8 -> :sswitch_0
        0x7f0a03d9 -> :sswitch_4
        0x7f0a03de -> :sswitch_5
        0x7f0a03df -> :sswitch_6
        0x7f0a03e0 -> :sswitch_0
        0x7f0a03e1 -> :sswitch_7
    .end sparse-switch

    .line 224
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setMenuSelected(I)V
    .locals 0
    .parameter "newVal"

    .prologue
    .line 268
    iput p1, p0, Lcom/android/phone/InVTCallMenu;->mMenuSelected:I

    .line 269
    return-void
.end method
