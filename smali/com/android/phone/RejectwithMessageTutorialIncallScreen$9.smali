.class Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;
.super Landroid/os/Handler;
.source "RejectwithMessageTutorialIncallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RejectwithMessageTutorialIncallScreen;
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
    .line 300
    iput-object p1, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const-wide/16 v7, 0xc8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 303
    const-string v0, "RejectwithMsgTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 348
    :goto_0
    return-void

    .line 306
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$1300(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)[Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$1400(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    aput-object v0, v1, v4

    .line 308
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$1400(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v4

    new-instance v1, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9$1;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9$1;-><init>(Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 313
    invoke-virtual {p0, v3, v7, v8}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 316
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$1300(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)[Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$1400(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    aput-object v0, v1, v3

    .line 318
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$1400(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9$2;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9$2;-><init>(Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 323
    invoke-virtual {p0, v4, v7, v8}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 326
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$1300(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)[Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$1400(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    aput-object v0, v1, v6

    .line 328
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$1400(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v6

    new-instance v1, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9$3;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9$3;-><init>(Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 333
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v7, v8}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 336
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$1300(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)[Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$1400(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    aput-object v0, v1, v5

    .line 338
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$1400(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v5

    new-instance v1, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9$4;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9$4;-><init>(Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 345
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    invoke-virtual {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->finish()V

    goto/16 :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
