.class Lcom/android/phone/InVTCallScreen$3;
.super Landroid/database/ContentObserver;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$3;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 1460
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$3;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->getSystemOneHandSwitchStateSettingValue()I

    move-result v0

    .line 1462
    .local v0, oneHandSwitchValue:I
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$3;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< HKA start >> oneHandSwitchValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1464
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1465
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$3;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->setLeftOneHandModeArrow()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6600(Lcom/android/phone/InVTCallScreen;)V

    .line 1469
    :cond_0
    :goto_0
    return-void

    .line 1466
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1467
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$3;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->setRightOneHandModeArrow()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6700(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_0
.end method
