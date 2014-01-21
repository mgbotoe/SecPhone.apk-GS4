.class Lcom/android/phone/RejectCallWithMsgContent$4;
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

.field final synthetic val$callNotifier:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsgContent;Lcom/android/phone/CallNotifier;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent$4;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iput-object p2, p0, Lcom/android/phone/RejectCallWithMsgContent$4;->val$callNotifier:Lcom/android/phone/CallNotifier;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 477
    const-string v0, "RejectCallWithMsgContent"

    const-string v1, "Answer MemoButton clicked"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent$4;->val$callNotifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->answeringMode()V

    .line 479
    return-void
.end method
