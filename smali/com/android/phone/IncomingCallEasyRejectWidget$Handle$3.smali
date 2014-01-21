.class Lcom/android/phone/IncomingCallEasyRejectWidget$Handle$3;
.super Landroid/os/Handler;
.source "IncomingCallEasyRejectWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle$3;->this$1:Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/16 v10, 0x64

    .line 607
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle$3;->this$1:Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;

    iget-object v7, v7, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->this$0:Lcom/android/phone/IncomingCallEasyRejectWidget;

    const-string v8, "handleMessage"

    const/4 v9, 0x1

    #calls: Lcom/android/phone/IncomingCallEasyRejectWidget;->log(Ljava/lang/String;Z)V
    invoke-static {v7, v8, v9}, Lcom/android/phone/IncomingCallEasyRejectWidget;->access$300(Lcom/android/phone/IncomingCallEasyRejectWidget;Ljava/lang/String;Z)V

    .line 608
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 653
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 610
    :sswitch_0
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle$3;->this$1:Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->access$400(Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle$3;->this$1:Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->mRightArrowContainer:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->access$500(Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 614
    const/4 v2, 0x0

    .line 615
    .local v2, leftArrowImage:Landroid/widget/ImageView;
    const/4 v5, 0x0

    .line 617
    .local v5, rightArrowImage:Landroid/widget/ImageView;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle$3;->this$1:Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->ARROW_COUNT:I
    invoke-static {v7}, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->access$600(Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;)I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 618
    const/4 v3, 0x0

    .line 619
    .local v3, leftIndex:I
    const/4 v6, 0x0

    .line 620
    .local v6, rightIndex:I
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle$3;->this$1:Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->ARROW_COUNT:I
    invoke-static {v7}, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->access$600(Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;)I

    move-result v7

    sub-int/2addr v7, v0

    add-int/lit8 v3, v7, -0x1

    .line 621
    move v6, v0

    .line 622
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle$3;->this$1:Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->access$700(Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;)[Landroid/widget/ImageView;

    move-result-object v7

    aget-object v2, v7, v3

    .line 623
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle$3;->this$1:Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->mRightArrowImageViews:[Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->access$800(Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;)[Landroid/widget/ImageView;

    move-result-object v7

    aget-object v5, v7, v6

    .line 624
    invoke-virtual {v2}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 625
    .local v1, leftAni:Landroid/view/animation/Animation;
    invoke-virtual {v5}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    .line 626
    .local v4, rightAni:Landroid/view/animation/Animation;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v7

    if-nez v7, :cond_5

    .line 628
    :cond_1
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle$3;->this$1:Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->ARROW_COUNT:I
    invoke-static {v7}, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->access$600(Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;)I

    move-result v7

    add-int/lit8 v8, v0, 0x1

    if-eq v7, v8, :cond_4

    .line 629
    const-wide/16 v7, 0x96

    invoke-virtual {p0, v10, v7, v8}, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle$3;->sendEmptyMessageDelayed(IJ)Z

    .line 638
    .end local v1           #leftAni:Landroid/view/animation/Animation;
    .end local v3           #leftIndex:I
    .end local v4           #rightAni:Landroid/view/animation/Animation;
    .end local v6           #rightIndex:I
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 639
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle$3;->this$1:Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;

    #calls: Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    invoke-static {v7}, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->access$900(Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;)Landroid/view/animation/AlphaAnimation;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 641
    :cond_3
    if-eqz v5, :cond_0

    .line 642
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle$3;->this$1:Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;

    #calls: Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    invoke-static {v7}, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->access$900(Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;)Landroid/view/animation/AlphaAnimation;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 632
    .restart local v1       #leftAni:Landroid/view/animation/Animation;
    .restart local v3       #leftIndex:I
    .restart local v4       #rightAni:Landroid/view/animation/Animation;
    .restart local v6       #rightIndex:I
    :cond_4
    const-wide/16 v7, 0x384

    invoke-virtual {p0, v10, v7, v8}, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle$3;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 617
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 649
    .end local v0           #i:I
    .end local v1           #leftAni:Landroid/view/animation/Animation;
    .end local v2           #leftArrowImage:Landroid/widget/ImageView;
    .end local v3           #leftIndex:I
    .end local v4           #rightAni:Landroid/view/animation/Animation;
    .end local v5           #rightArrowImage:Landroid/widget/ImageView;
    .end local v6           #rightIndex:I
    :sswitch_1
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle$3;->this$1:Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;

    iget-object v7, v7, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->this$0:Lcom/android/phone/IncomingCallEasyRejectWidget;

    iget-object v7, v7, Lcom/android/phone/IncomingCallEasyRejectWidget;->mRejectHandle:Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->setState(I)V

    goto/16 :goto_0

    .line 608
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_1
    .end sparse-switch
.end method
