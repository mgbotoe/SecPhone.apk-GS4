.class Lcom/android/phone/ScrollTextView$1;
.super Landroid/os/Handler;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ScrollTextView;


# direct methods
.method constructor <init>(Lcom/android/phone/ScrollTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/phone/ScrollTextView$1;->this$0:Lcom/android/phone/ScrollTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-object v0, p0, Lcom/android/phone/ScrollTextView$1;->this$0:Lcom/android/phone/ScrollTextView;

    #getter for: Lcom/android/phone/ScrollTextView;->mScrollLength:I
    invoke-static {v0}, Lcom/android/phone/ScrollTextView;->access$000(Lcom/android/phone/ScrollTextView;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/phone/ScrollTextView$1;->this$0:Lcom/android/phone/ScrollTextView;

    invoke-virtual {v0, v2, v2}, Lcom/android/phone/ScrollTextView;->scrollTo(II)V

    .line 63
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/phone/ScrollTextView$1;->this$0:Lcom/android/phone/ScrollTextView;

    iget-object v1, p0, Lcom/android/phone/ScrollTextView$1;->this$0:Lcom/android/phone/ScrollTextView;

    #getter for: Lcom/android/phone/ScrollTextView;->mCurrentPosition:I
    invoke-static {v1}, Lcom/android/phone/ScrollTextView;->access$100(Lcom/android/phone/ScrollTextView;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/ScrollTextView;->scrollTo(II)V

    .line 52
    iget-object v0, p0, Lcom/android/phone/ScrollTextView$1;->this$0:Lcom/android/phone/ScrollTextView;

    #getter for: Lcom/android/phone/ScrollTextView;->mCurrentPosition:I
    invoke-static {v0}, Lcom/android/phone/ScrollTextView;->access$100(Lcom/android/phone/ScrollTextView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/ScrollTextView$1;->this$0:Lcom/android/phone/ScrollTextView;

    #getter for: Lcom/android/phone/ScrollTextView;->mScrollLength:I
    invoke-static {v1}, Lcom/android/phone/ScrollTextView;->access$000(Lcom/android/phone/ScrollTextView;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/phone/ScrollTextView$1;->this$0:Lcom/android/phone/ScrollTextView;

    #setter for: Lcom/android/phone/ScrollTextView;->mCurrentPosition:I
    invoke-static {v0, v2}, Lcom/android/phone/ScrollTextView;->access$102(Lcom/android/phone/ScrollTextView;I)I

    .line 55
    iget-object v0, p0, Lcom/android/phone/ScrollTextView$1;->this$0:Lcom/android/phone/ScrollTextView;

    const-wide/16 v1, 0x3e8

    #calls: Lcom/android/phone/ScrollTextView;->loop(J)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/ScrollTextView;->access$200(Lcom/android/phone/ScrollTextView;J)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/phone/ScrollTextView$1;->this$0:Lcom/android/phone/ScrollTextView;

    iget-object v1, p0, Lcom/android/phone/ScrollTextView$1;->this$0:Lcom/android/phone/ScrollTextView;

    #getter for: Lcom/android/phone/ScrollTextView;->mSmoothLevel:I
    invoke-static {v1}, Lcom/android/phone/ScrollTextView;->access$300(Lcom/android/phone/ScrollTextView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/ScrollTextView;->access$112(Lcom/android/phone/ScrollTextView;I)I

    .line 58
    iget-object v0, p0, Lcom/android/phone/ScrollTextView$1;->this$0:Lcom/android/phone/ScrollTextView;

    #getter for: Lcom/android/phone/ScrollTextView;->mCurrentPosition:I
    invoke-static {v0}, Lcom/android/phone/ScrollTextView;->access$100(Lcom/android/phone/ScrollTextView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/ScrollTextView$1;->this$0:Lcom/android/phone/ScrollTextView;

    #getter for: Lcom/android/phone/ScrollTextView;->mScrollLength:I
    invoke-static {v1}, Lcom/android/phone/ScrollTextView;->access$000(Lcom/android/phone/ScrollTextView;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 59
    iget-object v0, p0, Lcom/android/phone/ScrollTextView$1;->this$0:Lcom/android/phone/ScrollTextView;

    iget-object v1, p0, Lcom/android/phone/ScrollTextView$1;->this$0:Lcom/android/phone/ScrollTextView;

    #getter for: Lcom/android/phone/ScrollTextView;->mScrollLength:I
    invoke-static {v1}, Lcom/android/phone/ScrollTextView;->access$000(Lcom/android/phone/ScrollTextView;)I

    move-result v1

    #setter for: Lcom/android/phone/ScrollTextView;->mCurrentPosition:I
    invoke-static {v0, v1}, Lcom/android/phone/ScrollTextView;->access$102(Lcom/android/phone/ScrollTextView;I)I

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/android/phone/ScrollTextView$1;->this$0:Lcom/android/phone/ScrollTextView;

    const-wide/16 v1, 0x32

    #calls: Lcom/android/phone/ScrollTextView;->loop(J)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/ScrollTextView;->access$200(Lcom/android/phone/ScrollTextView;J)V

    goto :goto_0
.end method
