.class Lcom/android/phone/InVTCallScreen$36;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 10635
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v2, 0xa

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide v6, 0x3fc3333333333333L

    .line 10637
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isFarEndRecord()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isNearEndRecord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10638
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 10733
    :cond_0
    :goto_0
    return v8

    .line 10640
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9102(I)I

    .line 10641
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9202(I)I

    goto :goto_0

    .line 10644
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "Action Move got fired so no context Menu created "

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 10645
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$9308()I

    .line 10646
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$9300()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$9100()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$9200()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_0

    .line 10649
    invoke-static {v8}, Lcom/android/phone/InVTCallScreen;->access$9402(Z)Z

    goto :goto_0

    .line 10653
    :pswitch_2
    invoke-static {v9}, Lcom/android/phone/InVTCallScreen;->access$9402(Z)Z

    .line 10654
    invoke-static {v8}, Lcom/android/phone/InVTCallScreen;->access$9302(I)I

    .line 10656
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    if-nez v0, :cond_6

    .line 10657
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mNearEndSurfaceRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9500(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 10658
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mNearEndSurfaceRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9500(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 10666
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mNearEndSurfaceRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9500(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mNearEndSurfaceRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$9500(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v4, v4, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mNearEndSurfaceRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$9500(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v4, v4, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mNearEndSurfaceRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$9500(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v4, v4, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mNearEndSurfaceRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$9500(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v4, v4, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    .line 10680
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9600(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9600(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->app:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6800(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallState;->mIsFirstVideoFrameDecoded:Z

    if-eqz v0, :cond_3

    .line 10681
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10682
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v8}, Lcom/android/phone/InVTCallScreen;->setIsSurfaceViewSwipe(Z)V

    .line 10686
    :goto_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->swipeSurfaceViewAnimated()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9700(Lcom/android/phone/InVTCallScreen;)V

    .line 10728
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z
    invoke-static {v0, v8}, Lcom/android/phone/InVTCallScreen;->access$8902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 10729
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z
    invoke-static {v0, v8}, Lcom/android/phone/InVTCallScreen;->access$9002(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 10661
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #setter for: Lcom/android/phone/InVTCallScreen;->mNearEndSurfaceRect:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$9502(Lcom/android/phone/InVTCallScreen;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 10662
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mNearEndSurfaceRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9500(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10663
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mNearEndSurfaceRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9500(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto/16 :goto_1

    .line 10684
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v9}, Lcom/android/phone/InVTCallScreen;->setIsSurfaceViewSwipe(Z)V

    goto :goto_2

    .line 10693
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    if-nez v0, :cond_3

    .line 10694
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFarEndSurfaceRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9800(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 10695
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFarEndSurfaceRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9800(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 10703
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFarEndSurfaceRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9800(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFarEndSurfaceRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$9800(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v4, v4, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFarEndSurfaceRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$9800(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v4, v4, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFarEndSurfaceRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$9800(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v4, v4, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFarEndSurfaceRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$9800(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v4, v4, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    .line 10717
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9600(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9600(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->app:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6800(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallState;->mIsFirstVideoFrameDecoded:Z

    if-eqz v0, :cond_3

    .line 10718
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 10719
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v8}, Lcom/android/phone/InVTCallScreen;->setIsSurfaceViewSwipe(Z)V

    .line 10723
    :goto_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->swipeSurfaceViewAnimated()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9700(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_3

    .line 10698
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #setter for: Lcom/android/phone/InVTCallScreen;->mFarEndSurfaceRect:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$9802(Lcom/android/phone/InVTCallScreen;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 10699
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFarEndSurfaceRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9800(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 10700
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFarEndSurfaceRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9800(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto/16 :goto_4

    .line 10721
    :cond_a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v9}, Lcom/android/phone/InVTCallScreen;->setIsSurfaceViewSwipe(Z)V

    goto :goto_5

    .line 10638
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
