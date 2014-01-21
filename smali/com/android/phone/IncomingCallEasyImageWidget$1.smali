.class Lcom/android/phone/IncomingCallEasyImageWidget$1;
.super Landroid/os/Handler;
.source "IncomingCallEasyImageWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallEasyImageWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IncomingCallEasyImageWidget;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingCallEasyImageWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/phone/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/phone/IncomingCallEasyImageWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/16 v11, 0x64

    const/4 v10, 0x5

    .line 274
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/phone/IncomingCallEasyImageWidget;

    const-string v8, "handleMessage"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/phone/IncomingCallEasyImageWidget;->log(Ljava/lang/String;Z)V

    .line 275
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 312
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 277
    :pswitch_0
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/phone/IncomingCallEasyImageWidget;

    #getter for: Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowContainer:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/android/phone/IncomingCallEasyImageWidget;->access$000(Lcom/android/phone/IncomingCallEasyImageWidget;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/phone/IncomingCallEasyImageWidget;

    #getter for: Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowContainer:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/android/phone/IncomingCallEasyImageWidget;->access$000(Lcom/android/phone/IncomingCallEasyImageWidget;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 282
    :cond_1
    const/4 v2, 0x0

    .line 283
    .local v2, leftArrowImage:Landroid/widget/ImageView;
    const/4 v5, 0x0

    .line 285
    .local v5, rightArrowImage:Landroid/widget/ImageView;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v10, :cond_3

    .line 286
    const/4 v6, 0x0

    .line 287
    .local v6, rightIndex:I
    move v3, v0

    .line 288
    .local v3, leftIndex:I
    rsub-int/lit8 v7, v0, 0x5

    add-int/lit8 v6, v7, -0x1

    .line 290
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/phone/IncomingCallEasyImageWidget;

    #getter for: Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowImageViews:[Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/phone/IncomingCallEasyImageWidget;->access$100(Lcom/android/phone/IncomingCallEasyImageWidget;)[Landroid/widget/ImageView;

    move-result-object v7

    aget-object v2, v7, v3

    .line 291
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/phone/IncomingCallEasyImageWidget;

    #getter for: Lcom/android/phone/IncomingCallEasyImageWidget;->mRightArrowImageViews:[Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/phone/IncomingCallEasyImageWidget;->access$200(Lcom/android/phone/IncomingCallEasyImageWidget;)[Landroid/widget/ImageView;

    move-result-object v7

    aget-object v5, v7, v6

    .line 293
    invoke-virtual {v2}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 294
    .local v1, leftAni:Landroid/view/animation/Animation;
    invoke-virtual {v5}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    .line 295
    .local v4, rightAni:Landroid/view/animation/Animation;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v7

    if-nez v7, :cond_5

    .line 297
    :cond_2
    add-int/lit8 v7, v0, 0x1

    if-eq v10, v7, :cond_4

    .line 298
    const-wide/16 v7, 0x96

    invoke-virtual {p0, v11, v7, v8}, Lcom/android/phone/IncomingCallEasyImageWidget$1;->sendEmptyMessageDelayed(IJ)Z

    .line 307
    .end local v1           #leftAni:Landroid/view/animation/Animation;
    .end local v3           #leftIndex:I
    .end local v4           #rightAni:Landroid/view/animation/Animation;
    .end local v6           #rightIndex:I
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/phone/IncomingCallEasyImageWidget;

    #calls: Lcom/android/phone/IncomingCallEasyImageWidget;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    invoke-static {v7}, Lcom/android/phone/IncomingCallEasyImageWidget;->access$300(Lcom/android/phone/IncomingCallEasyImageWidget;)Landroid/view/animation/AlphaAnimation;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 308
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/phone/IncomingCallEasyImageWidget;

    #calls: Lcom/android/phone/IncomingCallEasyImageWidget;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    invoke-static {v7}, Lcom/android/phone/IncomingCallEasyImageWidget;->access$300(Lcom/android/phone/IncomingCallEasyImageWidget;)Landroid/view/animation/AlphaAnimation;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 301
    .restart local v1       #leftAni:Landroid/view/animation/Animation;
    .restart local v3       #leftIndex:I
    .restart local v4       #rightAni:Landroid/view/animation/Animation;
    .restart local v6       #rightIndex:I
    :cond_4
    const-wide/16 v7, 0x384

    invoke-virtual {p0, v11, v7, v8}, Lcom/android/phone/IncomingCallEasyImageWidget$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 285
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 275
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
