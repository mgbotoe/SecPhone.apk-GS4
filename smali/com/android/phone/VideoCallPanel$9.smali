.class Lcom/android/phone/VideoCallPanel$9;
.super Ljava/lang/Object;
.source "VideoCallPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VideoCallPanel;->swapVideoSurface(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VideoCallPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/VideoCallPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1960
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel$9;->this$0:Lcom/android/phone/VideoCallPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x320

    const/4 v2, 0x0

    .line 1962
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$9;->this$0:Lcom/android/phone/VideoCallPanel;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel$9;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mNearEndAnimator:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/phone/VideoCallPanel;->access$1400(Lcom/android/phone/VideoCallPanel;)Landroid/widget/ImageView;

    move-result-object v1

    #calls: Lcom/android/phone/VideoCallPanel;->startViewAnimation(Landroid/view/View;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/VideoCallPanel;->access$1500(Lcom/android/phone/VideoCallPanel;Landroid/view/View;II)V

    .line 1963
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$9;->this$0:Lcom/android/phone/VideoCallPanel;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel$9;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mFarEndAnimator:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/phone/VideoCallPanel;->access$1600(Lcom/android/phone/VideoCallPanel;)Landroid/widget/ImageView;

    move-result-object v1

    #calls: Lcom/android/phone/VideoCallPanel;->startViewAnimation(Landroid/view/View;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/VideoCallPanel;->access$1500(Lcom/android/phone/VideoCallPanel;Landroid/view/View;II)V

    .line 1964
    return-void
.end method
