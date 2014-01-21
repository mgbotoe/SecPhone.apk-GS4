.class final enum Lcom/android/phone/InVTCallState$InVTCallInitStatus;
.super Ljava/lang/Enum;
.source "InVTCallState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "InVTCallInitStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/InVTCallState$InVTCallInitStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/InVTCallState$InVTCallInitStatus;

.field public static final enum CALL_FAILED:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

.field public static final enum DIALED_MMI:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

.field public static final enum EMERGENCY_ONLY:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

.field public static final enum EMERGENCY_SKT_ONLY:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

.field public static final enum ILLEGAL_ME:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

.field public static final enum ILLEGAL_MS:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

.field public static final enum IMSI_UNKNOWN:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

.field public static final enum LOCATION_REGSTERING:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

.field public static final enum LOCATION_REG_FAIL:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

.field public static final enum NETWORK_REG_FAIL:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

.field public static final enum NOT_REGISTERED_NUMBER:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

.field public static final enum NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

.field public static final enum OUT_OF_3G_NETWORK:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

.field public static final enum PHONE_NOT_IN_USE:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

.field public static final enum POWER_OFF:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

.field public static final enum RESTRICT_EMERGENCY_OUTGOING_IN_FACTORY_TEST:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

.field public static final enum RESTRICT_OUTGOING_VIDEOCALL_IN_2G_GSM_AREA:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

.field public static final enum STATE_OUT_OF_SERVICE:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

.field public static final enum SUCCESS:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

.field public static final enum VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InVTCallState$InVTCallInitStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 269
    new-instance v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/InVTCallState$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    new-instance v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    const-string v1, "VOICEMAIL_NUMBER_MISSING"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/InVTCallState$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    new-instance v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    const-string v1, "POWER_OFF"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/InVTCallState$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    new-instance v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    const-string v1, "EMERGENCY_ONLY"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/InVTCallState$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    new-instance v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    const-string v1, "PHONE_NOT_IN_USE"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/InVTCallState$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    new-instance v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    const-string v1, "NO_PHONE_NUMBER_SUPPLIED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallState$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    new-instance v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    const-string v1, "DIALED_MMI"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallState$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->DIALED_MMI:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    new-instance v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    const-string v1, "CALL_FAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallState$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    new-instance v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    const-string v1, "OUT_OF_3G_NETWORK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallState$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->OUT_OF_3G_NETWORK:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    .line 272
    new-instance v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    const-string v1, "NOT_REGISTERED_NUMBER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallState$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->NOT_REGISTERED_NUMBER:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    .line 274
    new-instance v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    const-string v1, "RESTRICT_EMERGENCY_OUTGOING_IN_FACTORY_TEST"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallState$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->RESTRICT_EMERGENCY_OUTGOING_IN_FACTORY_TEST:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    .line 276
    new-instance v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    const-string v1, "RESTRICT_OUTGOING_VIDEOCALL_IN_2G_GSM_AREA"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallState$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->RESTRICT_OUTGOING_VIDEOCALL_IN_2G_GSM_AREA:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    .line 278
    new-instance v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    const-string v1, "STATE_OUT_OF_SERVICE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallState$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->STATE_OUT_OF_SERVICE:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    .line 279
    new-instance v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    const-string v1, "IMSI_UNKNOWN"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallState$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->IMSI_UNKNOWN:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    .line 280
    new-instance v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    const-string v1, "ILLEGAL_MS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallState$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->ILLEGAL_MS:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    .line 281
    new-instance v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    const-string v1, "ILLEGAL_ME"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallState$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->ILLEGAL_ME:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    .line 282
    new-instance v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    const-string v1, "LOCATION_REG_FAIL"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallState$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->LOCATION_REG_FAIL:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    .line 283
    new-instance v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    const-string v1, "NETWORK_REG_FAIL"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallState$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->NETWORK_REG_FAIL:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    .line 284
    new-instance v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    const-string v1, "LOCATION_REGSTERING"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallState$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->LOCATION_REGSTERING:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    .line 285
    new-instance v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    const-string v1, "EMERGENCY_SKT_ONLY"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallState$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->EMERGENCY_SKT_ONLY:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    .line 268
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    sget-object v1, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->DIALED_MMI:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->OUT_OF_3G_NETWORK:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->NOT_REGISTERED_NUMBER:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->RESTRICT_EMERGENCY_OUTGOING_IN_FACTORY_TEST:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->RESTRICT_OUTGOING_VIDEOCALL_IN_2G_GSM_AREA:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->STATE_OUT_OF_SERVICE:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->IMSI_UNKNOWN:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->ILLEGAL_MS:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->ILLEGAL_ME:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->LOCATION_REG_FAIL:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->NETWORK_REG_FAIL:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->LOCATION_REGSTERING:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->EMERGENCY_SKT_ONLY:Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->$VALUES:[Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 268
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/InVTCallState$InVTCallInitStatus;
    .locals 1
    .parameter

    .prologue
    .line 268
    const-class v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/InVTCallState$InVTCallInitStatus;
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/android/phone/InVTCallState$InVTCallInitStatus;->$VALUES:[Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    invoke-virtual {v0}, [Lcom/android/phone/InVTCallState$InVTCallInitStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/InVTCallState$InVTCallInitStatus;

    return-object v0
.end method
