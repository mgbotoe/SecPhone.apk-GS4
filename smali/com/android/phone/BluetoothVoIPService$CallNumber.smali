.class Lcom/android/phone/BluetoothVoIPService$CallNumber;
.super Ljava/lang/Object;
.source "BluetoothVoIPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothVoIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallNumber"
.end annotation


# instance fields
.field private mNumber:Ljava/lang/String;

.field private mType:I

.field final synthetic this$0:Lcom/android/phone/BluetoothVoIPService;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothVoIPService;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "number"
    .parameter "type"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/phone/BluetoothVoIPService$CallNumber;->this$0:Lcom/android/phone/BluetoothVoIPService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothVoIPService$CallNumber;->mNumber:Ljava/lang/String;

    .line 461
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BluetoothVoIPService$CallNumber;->mType:I

    .line 464
    iput-object p2, p0, Lcom/android/phone/BluetoothVoIPService$CallNumber;->mNumber:Ljava/lang/String;

    .line 465
    iput p3, p0, Lcom/android/phone/BluetoothVoIPService$CallNumber;->mType:I

    .line 466
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothVoIPService;Ljava/lang/String;ILcom/android/phone/BluetoothVoIPService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 458
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/BluetoothVoIPService$CallNumber;-><init>(Lcom/android/phone/BluetoothVoIPService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothVoIPService$CallNumber;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService$CallNumber;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothVoIPService$CallNumber;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 458
    iget v0, p0, Lcom/android/phone/BluetoothVoIPService$CallNumber;->mType:I

    return v0
.end method
