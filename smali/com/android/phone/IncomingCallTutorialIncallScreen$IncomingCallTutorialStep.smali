.class final enum Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;
.super Ljava/lang/Enum;
.source "IncomingCallTutorialIncallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallTutorialIncallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "IncomingCallTutorialStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

.field public static final enum ACCEPT_CALL:Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

.field public static final enum END_CALL:Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

.field public static final enum REJECT_CALL:Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    const-string v1, "ACCEPT_CALL"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    .line 90
    new-instance v0, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    const-string v1, "END_CALL"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->END_CALL:Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    .line 91
    new-instance v0, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    const-string v1, "REJECT_CALL"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->REJECT_CALL:Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    .line 88
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    sget-object v1, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->END_CALL:Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->REJECT_CALL:Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->$VALUES:[Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;
    .locals 1
    .parameter

    .prologue
    .line 88
    const-class v0, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->$VALUES:[Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    invoke-virtual {v0}, [Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    return-object v0
.end method
