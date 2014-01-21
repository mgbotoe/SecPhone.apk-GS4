.class Lcom/android/phone/LGTNetworkAutoRebootPopup$1$1;
.super Ljava/lang/Object;
.source "LGTNetworkAutoRebootPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTNetworkAutoRebootPopup$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/LGTNetworkAutoRebootPopup$1;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTNetworkAutoRebootPopup$1;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup$1$1;->this$1:Lcom/android/phone/LGTNetworkAutoRebootPopup$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, startIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup$1$1;->this$1:Lcom/android/phone/LGTNetworkAutoRebootPopup$1;

    iget-object v1, v1, Lcom/android/phone/LGTNetworkAutoRebootPopup$1;->this$0:Lcom/android/phone/LGTNetworkAutoRebootPopup;

    invoke-virtual {v1, v0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method
