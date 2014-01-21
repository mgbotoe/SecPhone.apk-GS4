.class final Lcom/android/phone/PhoneUtils$13;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7441
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 7
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 7443
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->access$1102(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 7444
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- Got BluetoothHeadset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$1100()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->access$300(Ljava/lang/String;)V

    .line 7446
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$1100()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7447
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$1100()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 7449
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 7450
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "answeringmode_auto_time"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 7452
    .local v0, autoTimeMode:I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 7453
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v4, "automatic_answering_enable_sharedpref"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 7456
    .local v2, isOn:Z
    if-eqz v2, :cond_0

    .line 7457
    mul-int/lit16 v4, v0, 0x3e8

    int-to-long v4, v4

    #calls: Lcom/android/phone/PhoneUtils;->startAutoAnswer(J)V
    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->access$1200(J)V

    .line 7462
    .end local v0           #autoTimeMode:I
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2           #isOn:Z
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$1100()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7463
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$1300()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$1100()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 7464
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->access$1102(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 7466
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 7469
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$1102(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 7470
    return-void
.end method
