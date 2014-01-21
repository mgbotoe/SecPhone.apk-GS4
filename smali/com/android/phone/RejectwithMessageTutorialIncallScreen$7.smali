.class Lcom/android/phone/RejectwithMessageTutorialIncallScreen$7;
.super Ljava/lang/Object;
.source "RejectwithMessageTutorialIncallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$7;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 244
    const-string v0, "support_folder_hardkey"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$7;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    invoke-virtual {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$7;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mGuideSendMsgButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$1200(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$7;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgTip:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$100(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$7;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$200(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$7;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    iget-object v0, v0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    .line 250
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$7;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgComplete:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$300(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$7;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgComplete:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$300(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$7;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mBubbleAnimation2:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$400(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 252
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$7;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$500(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Lcom/android/phone/IncomingCallWidget;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallWidget;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$7;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$200(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 254
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$7;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$600(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 255
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$7;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mFadingAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$700(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 256
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$7;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mFlashingAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$800(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 257
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$7;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    iget-object v0, v0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 262
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$7;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #calls: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->showToast()V
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$000(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)V

    goto :goto_0
.end method
