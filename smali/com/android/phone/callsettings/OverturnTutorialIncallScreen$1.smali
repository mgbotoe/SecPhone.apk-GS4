.class Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;
.super Landroid/os/Handler;
.source "OverturnTutorialIncallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;
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
    .line 99
    iput-object p1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 103
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    #getter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I
    invoke-static {v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$000(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)I

    move-result v0

    if-nez v0, :cond_1

    .line 104
    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "OVERTURN_TUTORIAL_SUCCESS message delivered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    const/16 v1, 0xa

    #setter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$002(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;I)I

    .line 106
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    #getter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$100(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    #getter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$100(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 108
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$102(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    #getter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mStartTutorial:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$200(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    #getter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mEndTutorial:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$300(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    #getter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mEndTutorial:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$300(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    #getter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mEndTutorialAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$400(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 113
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    #getter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$500(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3c

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 120
    :cond_1
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    #getter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAnimationIndex:I
    invoke-static {v1}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$600(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)I

    move-result v1

    #calls: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->updateAnimation(I)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$700(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;I)V

    goto :goto_0

    .line 123
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->finish()V

    goto :goto_0

    .line 101
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x3c -> :sswitch_2
    .end sparse-switch
.end method
