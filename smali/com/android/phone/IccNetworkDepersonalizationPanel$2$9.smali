.class Lcom/android/phone/IccNetworkDepersonalizationPanel$2$9;
.super Ljava/lang/Object;
.source "IccNetworkDepersonalizationPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;


# direct methods
.method constructor <init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$9;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$9;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v1, v1, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->hideAlert()V
    invoke-static {v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$300(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    .line 262
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$9;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v1, v1, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    const-string v2, "NCK BLOCKED, sending broadcast"

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$400(Lcom/android/phone/IccNetworkDepersonalizationPanel;Ljava/lang/String;)V

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RIL_PERSO_BLOCKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.app.RilErrorNotifier"

    const-string v3, "com.sec.app.RilErrorNotifier.PhoneErrorReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 266
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$9;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v1, v1, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 267
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$9;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v1, v1, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->dismiss()V

    .line 268
    return-void
.end method
