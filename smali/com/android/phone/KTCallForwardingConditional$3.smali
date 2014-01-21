.class Lcom/android/phone/KTCallForwardingConditional$3;
.super Ljava/util/TimerTask;
.source "KTCallForwardingConditional.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/KTCallForwardingConditional;->destoryProgressDialogFromNoResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/KTCallForwardingConditional;

.field final synthetic val$NoResponse:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/android/phone/KTCallForwardingConditional;Landroid/widget/Toast;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/phone/KTCallForwardingConditional$3;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    iput-object p2, p0, Lcom/android/phone/KTCallForwardingConditional$3;->val$NoResponse:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/phone/KTCallForwardingConditional$3;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    #getter for: Lcom/android/phone/KTCallForwardingConditional;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/phone/KTCallForwardingConditional;->access$600(Lcom/android/phone/KTCallForwardingConditional;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 237
    .local v0, progress:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const-string v1, "KTCallForwardingConditional"

    const-string v2, "destory progress"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 240
    iget-object v1, p0, Lcom/android/phone/KTCallForwardingConditional$3;->val$NoResponse:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/android/phone/KTCallForwardingConditional$3;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/KTCallForwardingConditional;->mtimer:Ljava/util/Timer;
    invoke-static {v1, v2}, Lcom/android/phone/KTCallForwardingConditional;->access$802(Lcom/android/phone/KTCallForwardingConditional;Ljava/util/Timer;)Ljava/util/Timer;

    .line 243
    iget-object v1, p0, Lcom/android/phone/KTCallForwardingConditional$3;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z
    invoke-static {v1, v2}, Lcom/android/phone/KTCallForwardingConditional;->access$202(Lcom/android/phone/KTCallForwardingConditional;Z)Z

    .line 244
    return-void
.end method
