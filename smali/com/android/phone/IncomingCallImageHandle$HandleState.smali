.class public final enum Lcom/android/phone/IncomingCallImageHandle$HandleState;
.super Ljava/lang/Enum;
.source "IncomingCallImageHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallImageHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/IncomingCallImageHandle$HandleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/IncomingCallImageHandle$HandleState;

.field public static final enum ACTIVE:Lcom/android/phone/IncomingCallImageHandle$HandleState;

.field public static final enum DEACTIVE:Lcom/android/phone/IncomingCallImageHandle$HandleState;

.field public static final enum NORMAL:Lcom/android/phone/IncomingCallImageHandle$HandleState;

.field public static final enum TRIGGERED:Lcom/android/phone/IncomingCallImageHandle$HandleState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    new-instance v0, Lcom/android/phone/IncomingCallImageHandle$HandleState;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/IncomingCallImageHandle$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    new-instance v0, Lcom/android/phone/IncomingCallImageHandle$HandleState;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/IncomingCallImageHandle$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    new-instance v0, Lcom/android/phone/IncomingCallImageHandle$HandleState;

    const-string v1, "DEACTIVE"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/IncomingCallImageHandle$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    new-instance v0, Lcom/android/phone/IncomingCallImageHandle$HandleState;

    const-string v1, "TRIGGERED"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/IncomingCallImageHandle$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/IncomingCallImageHandle$HandleState;->TRIGGERED:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    .line 135
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/phone/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/IncomingCallImageHandle$HandleState;->TRIGGERED:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/IncomingCallImageHandle$HandleState;->$VALUES:[Lcom/android/phone/IncomingCallImageHandle$HandleState;

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
    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/IncomingCallImageHandle$HandleState;
    .locals 1
    .parameter

    .prologue
    .line 135
    const-class v0, Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallImageHandle$HandleState;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/IncomingCallImageHandle$HandleState;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/android/phone/IncomingCallImageHandle$HandleState;->$VALUES:[Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0}, [Lcom/android/phone/IncomingCallImageHandle$HandleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/IncomingCallImageHandle$HandleState;

    return-object v0
.end method
