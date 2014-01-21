.class Lcom/android/phone/InCallScreen$79;
.super Landroid/database/ContentObserver;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 12801
    iput-object p1, p0, Lcom/android/phone/InCallScreen$79;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 12804
    iget-object v1, p0, Lcom/android/phone/InCallScreen$79;->this$0:Lcom/android/phone/InCallScreen;

    const-string v2, "HKA start"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 12805
    iget-object v1, p0, Lcom/android/phone/InCallScreen$79;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->getOneHandModeEnable()Z
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$6800(Lcom/android/phone/InCallScreen;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 12821
    :cond_0
    :goto_0
    return-void

    .line 12808
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen$79;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mValueAdaptBoth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen$79;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallTouchUi;

    sget-boolean v3, Lcom/android/phone/InCallTouchUi;->mIsAdaptBothHandOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 12809
    iget-object v1, p0, Lcom/android/phone/InCallScreen$79;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getSystemOneHandSwitchStateSettingValue()I

    move-result v0

    .line 12810
    .local v0, oneHandSwitchValue:I
    if-ne v0, v4, :cond_2

    .line 12811
    iget-object v1, p0, Lcom/android/phone/InCallScreen$79;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallTouchUi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/InCallTouchUi;->setLeftOneHandModeArrow()V

    .line 12812
    iget-object v1, p0, Lcom/android/phone/InCallScreen$79;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v5}, Lcom/android/phone/InCallScreen;->setOneHandDialpadDirection(Z)V

    .line 12813
    iget-object v1, p0, Lcom/android/phone/InCallScreen$79;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen$79;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->ONE_HAND_DIRECTION:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$6900(Lcom/android/phone/InCallScreen;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 12816
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 12817
    iget-object v1, p0, Lcom/android/phone/InCallScreen$79;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallTouchUi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/InCallTouchUi;->setRightOneHandModeArrow()V

    .line 12818
    iget-object v1, p0, Lcom/android/phone/InCallScreen$79;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v4}, Lcom/android/phone/InCallScreen;->setOneHandDialpadDirection(Z)V

    .line 12819
    iget-object v1, p0, Lcom/android/phone/InCallScreen$79;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen$79;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->ONE_HAND_DIRECTION:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$6900(Lcom/android/phone/InCallScreen;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
