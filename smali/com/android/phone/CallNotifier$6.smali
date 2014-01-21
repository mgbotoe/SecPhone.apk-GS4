.class Lcom/android/phone/CallNotifier$6;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .parameter

    .prologue
    .line 4467
    iput-object p1, p0, Lcom/android/phone/CallNotifier$6;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 4469
    iget-object v0, p0, Lcom/android/phone/CallNotifier$6;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4470
    iget-object v0, p0, Lcom/android/phone/CallNotifier$6;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4472
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier$6;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$1002(Lcom/android/phone/CallNotifier;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 4473
    iget-object v0, p0, Lcom/android/phone/CallNotifier$6;->this$0:Lcom/android/phone/CallNotifier;

    #setter for: Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z
    invoke-static {v0, v2}, Lcom/android/phone/CallNotifier;->access$1102(Lcom/android/phone/CallNotifier;Z)Z

    .line 4474
    iget-object v0, p0, Lcom/android/phone/CallNotifier$6;->this$0:Lcom/android/phone/CallNotifier;

    #setter for: Lcom/android/phone/CallNotifier;->mRedialCallCount:I
    invoke-static {v0, v2}, Lcom/android/phone/CallNotifier;->access$1202(Lcom/android/phone/CallNotifier;I)I

    .line 4475
    iget-object v0, p0, Lcom/android/phone/CallNotifier$6;->this$0:Lcom/android/phone/CallNotifier;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 4476
    iget-object v0, p0, Lcom/android/phone/CallNotifier$6;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)Landroid/app/AlarmManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallNotifier$6;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1400(Lcom/android/phone/CallNotifier;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4477
    iget-object v0, p0, Lcom/android/phone/CallNotifier$6;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier$6;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$1400(Lcom/android/phone/CallNotifier;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4479
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier$6;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->dismissCallScreen()V

    .line 4480
    return-void
.end method
