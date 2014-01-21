.class Lcom/android/phone/FrameAnimationForVT$2;
.super Ljava/lang/Object;
.source "FrameAnimationForVT.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/FrameAnimationForVT;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FrameAnimationForVT;


# direct methods
.method constructor <init>(Lcom/android/phone/FrameAnimationForVT;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/phone/FrameAnimationForVT$2;->this$0:Lcom/android/phone/FrameAnimationForVT;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/phone/FrameAnimationForVT$2;->this$0:Lcom/android/phone/FrameAnimationForVT;

    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT$2;->this$0:Lcom/android/phone/FrameAnimationForVT;

    #getter for: Lcom/android/phone/FrameAnimationForVT;->mSoftReferenceImageView:Ljava/lang/ref/SoftReference;
    invoke-static {v0}, Lcom/android/phone/FrameAnimationForVT;->access$100(Lcom/android/phone/FrameAnimationForVT;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    #setter for: Lcom/android/phone/FrameAnimationForVT;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/android/phone/FrameAnimationForVT;->access$002(Lcom/android/phone/FrameAnimationForVT;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 159
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT$2;->this$0:Lcom/android/phone/FrameAnimationForVT;

    #getter for: Lcom/android/phone/FrameAnimationForVT;->mShouldRun:Z
    invoke-static {v0}, Lcom/android/phone/FrameAnimationForVT;->access$200(Lcom/android/phone/FrameAnimationForVT;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT$2;->this$0:Lcom/android/phone/FrameAnimationForVT;

    #getter for: Lcom/android/phone/FrameAnimationForVT;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/FrameAnimationForVT;->access$000(Lcom/android/phone/FrameAnimationForVT;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT$2;->this$0:Lcom/android/phone/FrameAnimationForVT;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/FrameAnimationForVT;->mIsRunning:Z
    invoke-static {v0, v1}, Lcom/android/phone/FrameAnimationForVT;->access$302(Lcom/android/phone/FrameAnimationForVT;Z)Z

    .line 175
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT$2;->this$0:Lcom/android/phone/FrameAnimationForVT;

    iget-object v0, v0, Lcom/android/phone/FrameAnimationForVT;->oldTask:Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT$2;->this$0:Lcom/android/phone/FrameAnimationForVT;

    iget-object v0, v0, Lcom/android/phone/FrameAnimationForVT;->oldTask:Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;

    invoke-virtual {v0}, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 165
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT$2;->this$0:Lcom/android/phone/FrameAnimationForVT;

    #getter for: Lcom/android/phone/FrameAnimationForVT;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/FrameAnimationForVT;->access$400(Lcom/android/phone/FrameAnimationForVT;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT$2;->this$0:Lcom/android/phone/FrameAnimationForVT;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/FrameAnimationForVT;->mIsRunning:Z
    invoke-static {v0, v1}, Lcom/android/phone/FrameAnimationForVT;->access$302(Lcom/android/phone/FrameAnimationForVT;Z)Z

    .line 170
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT$2;->this$0:Lcom/android/phone/FrameAnimationForVT;

    #getter for: Lcom/android/phone/FrameAnimationForVT;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/FrameAnimationForVT;->access$000(Lcom/android/phone/FrameAnimationForVT;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT$2;->this$0:Lcom/android/phone/FrameAnimationForVT;

    iget-object v1, p0, Lcom/android/phone/FrameAnimationForVT$2;->this$0:Lcom/android/phone/FrameAnimationForVT;

    iget-object v2, p0, Lcom/android/phone/FrameAnimationForVT$2;->this$0:Lcom/android/phone/FrameAnimationForVT;

    #calls: Lcom/android/phone/FrameAnimationForVT;->getNext()I
    invoke-static {v2}, Lcom/android/phone/FrameAnimationForVT;->access$500(Lcom/android/phone/FrameAnimationForVT;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/FrameAnimationForVT$2;->this$0:Lcom/android/phone/FrameAnimationForVT;

    #getter for: Lcom/android/phone/FrameAnimationForVT;->mImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/phone/FrameAnimationForVT;->access$000(Lcom/android/phone/FrameAnimationForVT;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/FrameAnimationForVT;->loadBitmap(ILandroid/widget/ImageView;)Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/FrameAnimationForVT;->oldTask:Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT$2;->this$0:Lcom/android/phone/FrameAnimationForVT;

    #getter for: Lcom/android/phone/FrameAnimationForVT;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/FrameAnimationForVT;->access$400(Lcom/android/phone/FrameAnimationForVT;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/FrameAnimationForVT$2;->this$0:Lcom/android/phone/FrameAnimationForVT;

    #getter for: Lcom/android/phone/FrameAnimationForVT;->mDelay:I
    invoke-static {v1}, Lcom/android/phone/FrameAnimationForVT;->access$600(Lcom/android/phone/FrameAnimationForVT;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
