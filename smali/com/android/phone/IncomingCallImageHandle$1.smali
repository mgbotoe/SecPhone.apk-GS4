.class Lcom/android/phone/IncomingCallImageHandle$1;
.super Landroid/os/Handler;
.source "IncomingCallImageHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallImageHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IncomingCallImageHandle;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingCallImageHandle;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/phone/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/IncomingCallImageHandle;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const-wide/16 v4, 0x12c

    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/IncomingCallImageHandle;

    #getter for: Lcom/android/phone/IncomingCallImageHandle;->mParent:Lcom/android/phone/IncomingCallImageWidget;
    invoke-static {v0}, Lcom/android/phone/IncomingCallImageHandle;->access$000(Lcom/android/phone/IncomingCallImageHandle;)Lcom/android/phone/IncomingCallImageWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallImageWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/IncomingCallImageHandle;

    #getter for: Lcom/android/phone/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/IncomingCallImageHandle;->access$100(Lcom/android/phone/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/IncomingCallImageHandle;

    #getter for: Lcom/android/phone/IncomingCallImageHandle;->enableArrowAnimation:Z
    invoke-static {v0}, Lcom/android/phone/IncomingCallImageHandle;->access$200(Lcom/android/phone/IncomingCallImageHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/IncomingCallImageHandle;

    #getter for: Lcom/android/phone/IncomingCallImageHandle;->mHandleType:I
    invoke-static {v0}, Lcom/android/phone/IncomingCallImageHandle;->access$300(Lcom/android/phone/IncomingCallImageHandle;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/IncomingCallImageHandle;

    #getter for: Lcom/android/phone/IncomingCallImageHandle;->mArrowAnimationIndex:I
    invoke-static {v0}, Lcom/android/phone/IncomingCallImageHandle;->access$400(Lcom/android/phone/IncomingCallImageHandle;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/IncomingCallImageHandle;

    #getter for: Lcom/android/phone/IncomingCallImageHandle;->mArrowLeftAnimation:[I
    invoke-static {v1}, Lcom/android/phone/IncomingCallImageHandle;->access$500(Lcom/android/phone/IncomingCallImageHandle;)[I

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/IncomingCallImageHandle;

    #setter for: Lcom/android/phone/IncomingCallImageHandle;->mArrowAnimationIndex:I
    invoke-static {v0, v2}, Lcom/android/phone/IncomingCallImageHandle;->access$402(Lcom/android/phone/IncomingCallImageHandle;I)I

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/IncomingCallImageHandle;

    #getter for: Lcom/android/phone/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/IncomingCallImageHandle;->access$100(Lcom/android/phone/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/IncomingCallImageHandle;

    #getter for: Lcom/android/phone/IncomingCallImageHandle;->mArrowLeftAnimation:[I
    invoke-static {v1}, Lcom/android/phone/IncomingCallImageHandle;->access$500(Lcom/android/phone/IncomingCallImageHandle;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/IncomingCallImageHandle;

    invoke-static {v2}, Lcom/android/phone/IncomingCallImageHandle;->access$408(Lcom/android/phone/IncomingCallImageHandle;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/IncomingCallImageHandle;

    #getter for: Lcom/android/phone/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/IncomingCallImageHandle;->access$600(Lcom/android/phone/IncomingCallImageHandle;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 117
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/IncomingCallImageHandle;

    #getter for: Lcom/android/phone/IncomingCallImageHandle;->mArrowAnimationIndex:I
    invoke-static {v0}, Lcom/android/phone/IncomingCallImageHandle;->access$400(Lcom/android/phone/IncomingCallImageHandle;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/IncomingCallImageHandle;

    #getter for: Lcom/android/phone/IncomingCallImageHandle;->mArrowRightAnimation:[I
    invoke-static {v1}, Lcom/android/phone/IncomingCallImageHandle;->access$700(Lcom/android/phone/IncomingCallImageHandle;)[I

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 118
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/IncomingCallImageHandle;

    #setter for: Lcom/android/phone/IncomingCallImageHandle;->mArrowAnimationIndex:I
    invoke-static {v0, v2}, Lcom/android/phone/IncomingCallImageHandle;->access$402(Lcom/android/phone/IncomingCallImageHandle;I)I

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/IncomingCallImageHandle;

    #getter for: Lcom/android/phone/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/IncomingCallImageHandle;->access$100(Lcom/android/phone/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/IncomingCallImageHandle;

    #getter for: Lcom/android/phone/IncomingCallImageHandle;->mArrowRightAnimation:[I
    invoke-static {v1}, Lcom/android/phone/IncomingCallImageHandle;->access$700(Lcom/android/phone/IncomingCallImageHandle;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/IncomingCallImageHandle;

    invoke-static {v2}, Lcom/android/phone/IncomingCallImageHandle;->access$408(Lcom/android/phone/IncomingCallImageHandle;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/IncomingCallImageHandle;

    #getter for: Lcom/android/phone/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/IncomingCallImageHandle;->access$600(Lcom/android/phone/IncomingCallImageHandle;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch

    .line 107
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
