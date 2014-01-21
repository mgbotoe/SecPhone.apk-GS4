.class Lcom/android/phone/CallLockSettings$2;
.super Landroid/os/Handler;
.source "CallLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallLockSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/CallLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/phone/CallLockSettings$2;->this$0:Lcom/android/phone/CallLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 335
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 336
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 343
    :goto_0
    return-void

    .line 338
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CallLockSettings$2;->this$0:Lcom/android/phone/CallLockSettings;

    #getter for: Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;
    invoke-static {v1}, Lcom/android/phone/CallLockSettings;->access$000(Lcom/android/phone/CallLockSettings;)Lcom/android/phone/EditPinPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/phone/CallLockSettings$2;->this$0:Lcom/android/phone/CallLockSettings;

    #getter for: Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;
    invoke-static {v1}, Lcom/android/phone/CallLockSettings;->access$000(Lcom/android/phone/CallLockSettings;)Lcom/android/phone/EditPinPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->onDialogClosed(Z)V

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallLockSettings$2;->this$0:Lcom/android/phone/CallLockSettings;

    invoke-virtual {v1}, Lcom/android/phone/CallLockSettings;->finish()V

    goto :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
