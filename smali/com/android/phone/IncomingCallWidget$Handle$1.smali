.class Lcom/android/phone/IncomingCallWidget$Handle$1;
.super Ljava/lang/Object;
.source "IncomingCallWidget.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IncomingCallWidget$Handle;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IncomingCallWidget$Handle;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingCallWidget$Handle;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget$Handle$1;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$1;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/IncomingCallWidget$Handle;->mDuringSwingAnimation:Z
    invoke-static {v0, v1}, Lcom/android/phone/IncomingCallWidget$Handle;->access$102(Lcom/android/phone/IncomingCallWidget$Handle;Z)Z

    .line 514
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 510
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$1;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/IncomingCallWidget$Handle;->mDuringSwingAnimation:Z
    invoke-static {v0, v1}, Lcom/android/phone/IncomingCallWidget$Handle;->access$102(Lcom/android/phone/IncomingCallWidget$Handle;Z)Z

    .line 507
    return-void
.end method
