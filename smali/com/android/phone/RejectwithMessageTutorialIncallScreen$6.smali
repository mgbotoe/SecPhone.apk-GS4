.class Lcom/android/phone/RejectwithMessageTutorialIncallScreen$6;
.super Ljava/lang/Object;
.source "RejectwithMessageTutorialIncallScreen.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerScrollListener;


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
    .line 230
    iput-object p1, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$6;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollEnded()V
    .locals 2

    .prologue
    .line 237
    const-string v0, "RejectwithMsgTutorialIncallScreen"

    const-string v1, "onScrollEnded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method

.method public onScrollStarted()V
    .locals 2

    .prologue
    .line 232
    const-string v0, "RejectwithMsgTutorialIncallScreen"

    const-string v1, "onScrollStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$6;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #calls: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->hideDragUpAnimation()V
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$1000(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)V

    .line 234
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$6;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mrejectMsgTip:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$1100(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 235
    return-void
.end method
