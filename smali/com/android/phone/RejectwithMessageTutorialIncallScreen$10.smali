.class Lcom/android/phone/RejectwithMessageTutorialIncallScreen$10;
.super Ljava/lang/Object;
.source "RejectwithMessageTutorialIncallScreen.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RejectwithMessageTutorialIncallScreen;
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
    .line 392
    iput-object p1, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$10;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$10;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$200(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$10;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$200(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$10;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mBubbleCount:I
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$1500(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$10;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$200(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$10;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mFlashingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$800(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 406
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 399
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 395
    return-void
.end method
