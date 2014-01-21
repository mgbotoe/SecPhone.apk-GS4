.class Lcom/android/phone/LGTRoamingReceiver$1;
.super Landroid/os/Handler;
.source "LGTRoamingReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTRoamingReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTRoamingReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTRoamingReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/phone/LGTRoamingReceiver$1;->this$0:Lcom/android/phone/LGTRoamingReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 280
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 289
    :goto_0
    return-void

    .line 282
    :pswitch_0
    const-string v0, "LGTRoamingReceiver"

    const-string v1, "setLteRoamingIMSI Done "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v0, "gsm.sim.roaming"

    iget-object v1, p0, Lcom/android/phone/LGTRoamingReceiver$1;->this$0:Lcom/android/phone/LGTRoamingReceiver;

    #getter for: Lcom/android/phone/LGTRoamingReceiver;->mEfRoaming:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/LGTRoamingReceiver;->access$000(Lcom/android/phone/LGTRoamingReceiver;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/android/phone/LGTRoamingReceiver$1;->this$0:Lcom/android/phone/LGTRoamingReceiver;

    #getter for: Lcom/android/phone/LGTRoamingReceiver;->mcontext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/LGTRoamingReceiver;->access$100(Lcom/android/phone/LGTRoamingReceiver;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09091f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
