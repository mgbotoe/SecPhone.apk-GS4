.class Lcom/android/phone/VoiceAndVideoCallTutorial$6;
.super Ljava/lang/Object;
.source "VoiceAndVideoCallTutorial.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VoiceAndVideoCallTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;


# direct methods
.method constructor <init>(Lcom/android/phone/VoiceAndVideoCallTutorial;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$6;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$6;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$000(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$6;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$000(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$6;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->mBubbleCount:I
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$1500(Lcom/android/phone/VoiceAndVideoCallTutorial;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$6;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$000(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$6;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->mFadingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$1600(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 477
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 470
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 466
    return-void
.end method
