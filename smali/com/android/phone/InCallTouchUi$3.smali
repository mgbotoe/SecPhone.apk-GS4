.class Lcom/android/phone/InCallTouchUi$3;
.super Ljava/lang/Object;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallTouchUi;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallTouchUi;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallTouchUi;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .locals 3

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$1000(Lcom/android/phone/InCallTouchUi;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f0201ed

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 546
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->setEnabled(Z)V

    .line 548
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$1100(Lcom/android/phone/InCallTouchUi;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    const-string v1, "onDrawerOpened"

    const/4 v2, 0x1

    #calls: Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/InCallTouchUi;->access$900(Lcom/android/phone/InCallTouchUi;Ljava/lang/String;Z)V

    .line 552
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$1200(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$1200(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->stopAirMotion()V

    .line 555
    :cond_1
    return-void
.end method
