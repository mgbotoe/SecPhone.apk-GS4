.class Lcom/android/phone/IncomingCallTutorialIncallScreen$3;
.super Ljava/lang/Object;
.source "IncomingCallTutorialIncallScreen.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallTutorialIncallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IncomingCallTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingCallTutorialIncallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen$3;->this$0:Lcom/android/phone/IncomingCallTutorialIncallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen$3;->this$0:Lcom/android/phone/IncomingCallTutorialIncallScreen;

    #getter for: Lcom/android/phone/IncomingCallTutorialIncallScreen;->mHelpTabView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->access$000(Lcom/android/phone/IncomingCallTutorialIncallScreen;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen$3;->this$0:Lcom/android/phone/IncomingCallTutorialIncallScreen;

    #getter for: Lcom/android/phone/IncomingCallTutorialIncallScreen;->mHelpTabView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->access$000(Lcom/android/phone/IncomingCallTutorialIncallScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen$3;->this$0:Lcom/android/phone/IncomingCallTutorialIncallScreen;

    #getter for: Lcom/android/phone/IncomingCallTutorialIncallScreen;->mBubbleCount:I
    invoke-static {v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->access$200(Lcom/android/phone/IncomingCallTutorialIncallScreen;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen$3;->this$0:Lcom/android/phone/IncomingCallTutorialIncallScreen;

    #getter for: Lcom/android/phone/IncomingCallTutorialIncallScreen;->mHelpTabView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->access$000(Lcom/android/phone/IncomingCallTutorialIncallScreen;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen$3;->this$0:Lcom/android/phone/IncomingCallTutorialIncallScreen;

    #getter for: Lcom/android/phone/IncomingCallTutorialIncallScreen;->mFadingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->access$300(Lcom/android/phone/IncomingCallTutorialIncallScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 173
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 168
    return-void
.end method
