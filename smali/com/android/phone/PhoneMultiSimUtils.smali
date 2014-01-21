.class public Lcom/android/phone/PhoneMultiSimUtils;
.super Ljava/lang/Object;
.source "PhoneMultiSimUtils.java"


# static fields
.field private static ONE_HAND_DIRECTION:Ljava/lang/String;

.field private static ONE_HAND_ENABLED:Ljava/lang/String;

.field private static mIsOnehandOn:Z

.field private static mSimMaster:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneMultiSimUtils;->mIsOnehandOn:Z

    .line 20
    const-string v0, "onehand_dialer_enabled"

    sput-object v0, Lcom/android/phone/PhoneMultiSimUtils;->ONE_HAND_ENABLED:Ljava/lang/String;

    .line 22
    const-string v0, "onehand_direction"

    sput-object v0, Lcom/android/phone/PhoneMultiSimUtils;->ONE_HAND_DIRECTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallControllerSimIcon(Landroid/content/Context;I)I
    .locals 5
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 115
    const/4 v2, 0x0

    .line 116
    .local v2, simIconIdx:I
    const/4 v1, 0x0

    .line 119
    .local v1, simIcon:I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 172
    :goto_0
    return v1

    .line 122
    :cond_0
    const-string v3, "ril.MSIMM"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/PhoneMultiSimUtils;->mSimMaster:Ljava/lang/String;

    .line 123
    sget-object v3, Lcom/android/phone/PhoneMultiSimUtils;->mSimMaster:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSimName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, simName:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 48
    :cond_0
    const-string v1, "ril.MSIMM"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PhoneMultiSimUtils;->mSimMaster:Ljava/lang/String;

    .line 49
    sget-object v1, Lcom/android/phone/PhoneMultiSimUtils;->mSimMaster:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isOneSIMcardsInsertedInSlot2()Z
    .locals 3

    .prologue
    .line 28
    const-string v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, mSIMM:Ljava/lang/String;
    const/4 v1, 0x1

    .line 30
    .local v1, vReturn:Z
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    const/4 v1, 0x1

    .line 39
    :goto_0
    return v1

    .line 36
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
