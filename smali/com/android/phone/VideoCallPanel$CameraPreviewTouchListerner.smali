.class final Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;
.super Ljava/lang/Object;
.source "VideoCallPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VideoCallPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CameraPreviewTouchListerner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VideoCallPanel;


# direct methods
.method private constructor <init>(Lcom/android/phone/VideoCallPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;->this$0:Lcom/android/phone/VideoCallPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;-><init>(Lcom/android/phone/VideoCallPanel;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "motionEvent"

    .prologue
    const/4 v2, 0x0

    .line 297
    const-string v3, "common_volte_vt_kor"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;->this$0:Lcom/android/phone/VideoCallPanel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " motionEvent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/VideoCallPanel;->access$000(Lcom/android/phone/VideoCallPanel;Ljava/lang/String;)V

    .line 312
    :cond_0
    :goto_0
    return v2

    .line 301
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 302
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;->this$0:Lcom/android/phone/VideoCallPanel;

    const-string v4, "Action down"

    #calls: Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/VideoCallPanel;->access$000(Lcom/android/phone/VideoCallPanel;Ljava/lang/String;)V

    .line 303
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;
    invoke-static {v3}, Lcom/android/phone/VideoCallPanel;->access$500(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;->this$0:Lcom/android/phone/VideoCallPanel;

    iget v4, v4, Lcom/android/phone/VideoCallPanel;->mPreviewWidth:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;
    invoke-static {v3}, Lcom/android/phone/VideoCallPanel;->access$500(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;->this$0:Lcom/android/phone/VideoCallPanel;

    iget v4, v4, Lcom/android/phone/VideoCallPanel;->mPreviewHeight:I

    if-ne v3, v4, :cond_2

    .line 304
    const-string v3, ""

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 305
    .local v0, data:Landroid/content/ClipData;
    new-instance v1, Lcom/android/phone/VideoCallPanel$CameraPreviewDragShadowBuilder;

    invoke-direct {v1, p1}, Lcom/android/phone/VideoCallPanel$CameraPreviewDragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 306
    .local v1, myShadow:Landroid/view/View$DragShadowBuilder;
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    goto :goto_0

    .line 309
    .end local v0           #data:Landroid/content/ClipData;
    .end local v1           #myShadow:Landroid/view/View$DragShadowBuilder;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method
