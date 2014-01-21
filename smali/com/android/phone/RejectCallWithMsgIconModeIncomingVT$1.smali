.class Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$1;
.super Ljava/lang/Object;
.source "RejectCallWithMsgIconModeIncomingVT.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$1;->this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$1;->this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;

    #getter for: Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->access$000(Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$1;->this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;

    invoke-virtual {v1}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$1;->this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;

    #getter for: Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->access$000(Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "exit_on_sent"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$1;->this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;

    invoke-virtual {v1, v0}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->startActivity(Landroid/content/Intent;)V

    .line 196
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$1;->this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;

    invoke-virtual {v1}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->finish()V

    .line 198
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
