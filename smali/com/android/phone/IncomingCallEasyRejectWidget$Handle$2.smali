.class Lcom/android/phone/IncomingCallEasyRejectWidget$Handle$2;
.super Landroid/widget/FrameLayout;
.source "IncomingCallEasyRejectWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->this$0:Lcom/android/phone/IncomingCallEasyRejectWidget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged visibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallEasyRejectWidget;->log(Ljava/lang/String;)V

    .line 410
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 411
    packed-switch p1, :pswitch_data_0

    .line 416
    iget-object v0, p0, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;

    #calls: Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->hideArrow()V
    invoke-static {v0}, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->access$200(Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;)V

    .line 419
    :goto_0
    return-void

    .line 413
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;

    #calls: Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->showArrow()V
    invoke-static {v0}, Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;->access$100(Lcom/android/phone/IncomingCallEasyRejectWidget$Handle;)V

    goto :goto_0

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
