.class Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$SendMsgRunnable;
.super Ljava/lang/Object;
.source "RejectCallWithMsgIconModeIncomingVT.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendMsgRunnable"
.end annotation


# instance fields
.field private mMsg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;


# direct methods
.method public constructor <init>(Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "msg"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput-object p2, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$SendMsgRunnable;->mMsg:Ljava/lang/String;

    .line 348
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 351
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$SendMsgRunnable;->mMsg:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 352
    const-string v2, "smsto"

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;

    #getter for: Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->access$000(Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 353
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 354
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$SendMsgRunnable;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;

    #getter for: Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->access$300(Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 356
    const-string v2, "RejectCallWithMsgIconModeIncomingVT"

    const-string v3, "Message Sent."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;

    invoke-virtual {v2}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->finish()V

    .line 360
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    return-void
.end method
