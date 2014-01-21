.class Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;
.super Ljava/lang/Object;
.source "VideoCallPanel.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VideoCallPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraPreviewDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VideoCallPanel;


# direct methods
.method private constructor <init>(Lcom/android/phone/VideoCallPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;->this$0:Lcom/android/phone/VideoCallPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;-><init>(Lcom/android/phone/VideoCallPanel;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 318
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 319
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 358
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    return v3

    .line 321
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;->this$0:Lcom/android/phone/VideoCallPanel;

    const-string v4, "Drag STARTED"

    #calls: Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/VideoCallPanel;->access$000(Lcom/android/phone/VideoCallPanel;Ljava/lang/String;)V

    .line 323
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;
    invoke-static {v3}, Lcom/android/phone/VideoCallPanel;->access$500(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setAlpha(F)V

    goto :goto_0

    .line 326
    :pswitch_2
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;->this$0:Lcom/android/phone/VideoCallPanel;

    const-string v4, "Drag ENTERED"

    #calls: Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/VideoCallPanel;->access$000(Lcom/android/phone/VideoCallPanel;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :pswitch_3
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;->this$0:Lcom/android/phone/VideoCallPanel;

    const-string v4, "Drag EXITED"

    #calls: Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/VideoCallPanel;->access$000(Lcom/android/phone/VideoCallPanel;Ljava/lang/String;)V

    .line 331
    :pswitch_4
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;->this$0:Lcom/android/phone/VideoCallPanel;

    const-string v4, "Drop DROP"

    #calls: Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/VideoCallPanel;->access$000(Lcom/android/phone/VideoCallPanel;Ljava/lang/String;)V

    .line 333
    const/4 v1, 0x0

    .local v1, dropX:I
    const/4 v2, 0x0

    .line 335
    .local v2, dropY:I
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;
    invoke-static {v4}, Lcom/android/phone/VideoCallPanel;->access$500(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/TextureView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 336
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;
    invoke-static {v4}, Lcom/android/phone/VideoCallPanel;->access$500(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    .line 338
    if-gez v1, :cond_2

    .line 339
    const/4 v1, 0x0

    .line 343
    :cond_0
    :goto_1
    if-gez v2, :cond_3

    .line 344
    const/4 v2, 0x0

    .line 348
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;
    invoke-static {v3}, Lcom/android/phone/VideoCallPanel;->access$500(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;

    move-result-object v3

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setX(F)V

    .line 349
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;
    invoke-static {v3}, Lcom/android/phone/VideoCallPanel;->access$500(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;

    move-result-object v3

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setY(F)V

    goto :goto_0

    .line 340
    :cond_2
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;
    invoke-static {v3}, Lcom/android/phone/VideoCallPanel;->access$800(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;
    invoke-static {v4}, Lcom/android/phone/VideoCallPanel;->access$500(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/TextureView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v1, v3, :cond_0

    .line 341
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;
    invoke-static {v3}, Lcom/android/phone/VideoCallPanel;->access$800(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;
    invoke-static {v4}, Lcom/android/phone/VideoCallPanel;->access$500(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/TextureView;->getWidth()I

    move-result v4

    sub-int v1, v3, v4

    goto :goto_1

    .line 345
    :cond_3
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;
    invoke-static {v3}, Lcom/android/phone/VideoCallPanel;->access$800(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;
    invoke-static {v4}, Lcom/android/phone/VideoCallPanel;->access$500(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 346
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;
    invoke-static {v3}, Lcom/android/phone/VideoCallPanel;->access$800(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;
    invoke-static {v4}, Lcom/android/phone/VideoCallPanel;->access$500(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    sub-int v2, v3, v4

    goto :goto_2

    .line 352
    .end local v1           #dropX:I
    .end local v2           #dropY:I
    :pswitch_5
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;->this$0:Lcom/android/phone/VideoCallPanel;

    const-string v4, "Drag ENDED"

    #calls: Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/VideoCallPanel;->access$000(Lcom/android/phone/VideoCallPanel;Ljava/lang/String;)V

    .line 354
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;
    invoke-static {v3}, Lcom/android/phone/VideoCallPanel;->access$500(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setAlpha(F)V

    goto/16 :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
