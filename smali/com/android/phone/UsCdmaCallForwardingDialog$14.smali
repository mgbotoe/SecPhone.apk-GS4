.class synthetic Lcom/android/phone/UsCdmaCallForwardingDialog$14;
.super Ljava/lang/Object;
.source "UsCdmaCallForwardingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UsCdmaCallForwardingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$phone$UsCdmaCallForwardingDialog$CFState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 337
    invoke-static {}, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->values()[Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/UsCdmaCallForwardingDialog$14;->$SwitchMap$com$android$phone$UsCdmaCallForwardingDialog$CFState:[I

    :try_start_0
    sget-object v0, Lcom/android/phone/UsCdmaCallForwardingDialog$14;->$SwitchMap$com$android$phone$UsCdmaCallForwardingDialog$CFState:[I

    sget-object v1, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->ROAMING:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    invoke-virtual {v1}, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/phone/UsCdmaCallForwardingDialog$14;->$SwitchMap$com$android$phone$UsCdmaCallForwardingDialog$CFState:[I

    sget-object v1, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->DISPLAY_GUIDE:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    invoke-virtual {v1}, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/phone/UsCdmaCallForwardingDialog$14;->$SwitchMap$com$android$phone$UsCdmaCallForwardingDialog$CFState:[I

    sget-object v1, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->NEED_NUMBER_FIX:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    invoke-virtual {v1}, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/phone/UsCdmaCallForwardingDialog$14;->$SwitchMap$com$android$phone$UsCdmaCallForwardingDialog$CFState:[I

    sget-object v1, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->DEACTIVATE:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    invoke-virtual {v1}, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/phone/UsCdmaCallForwardingDialog$14;->$SwitchMap$com$android$phone$UsCdmaCallForwardingDialog$CFState:[I

    sget-object v1, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->IDLE:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    invoke-virtual {v1}, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
