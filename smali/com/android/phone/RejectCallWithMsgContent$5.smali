.class Lcom/android/phone/RejectCallWithMsgContent$5;
.super Ljava/lang/Object;
.source "RejectCallWithMsgContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RejectCallWithMsgContent;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgContent;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsgContent;)V
    .locals 0
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent$5;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent$5;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #calls: Lcom/android/phone/RejectCallWithMsgContent;->RemindmeDialog()V
    invoke-static {v0}, Lcom/android/phone/RejectCallWithMsgContent;->access$600(Lcom/android/phone/RejectCallWithMsgContent;)V

    .line 547
    return-void
.end method
