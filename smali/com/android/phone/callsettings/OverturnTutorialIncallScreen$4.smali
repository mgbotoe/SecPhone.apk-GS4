.class Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$4;
.super Ljava/lang/Object;
.source "OverturnTutorialIncallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    #calls: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->stopAnimation()V
    invoke-static {v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$1000(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    .line 371
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$1102(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 372
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mTutorialDialogON:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$1202(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;I)I

    .line 373
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->removeDialog(I)V

    .line 375
    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isForegroundActivity() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    #calls: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->isForegroundActivity()Z
    invoke-static {v2}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$1300(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    #calls: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->isForegroundActivity()Z
    invoke-static {v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$1300(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    #getter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I
    invoke-static {v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$000(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    #calls: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->startIncomingSound()V
    invoke-static {v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$1400(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    .line 379
    :cond_0
    return-void
.end method
