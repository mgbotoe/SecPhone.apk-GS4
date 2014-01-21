.class Lcom/android/phone/RejectwithMessageTutorialIncallScreen$4;
.super Ljava/lang/Object;
.source "RejectwithMessageTutorialIncallScreen.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;


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
    .line 210
    iput-object p1, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 212
    const-string v0, "RejectwithMsgTutorialIncallScreen"

    const-string v1, "onDrawerOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$900(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f0201ed

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 214
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$500(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Lcom/android/phone/IncomingCallWidget;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgTip:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$100(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgTip:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$100(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mBubbleAnimation2:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$400(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 217
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$200(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    iget-object v0, v0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->lock()V

    .line 219
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$200(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$4;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$600(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 220
    return-void
.end method
