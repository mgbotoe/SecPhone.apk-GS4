.class Lcom/android/phone/LGTRoamingDualClockSetting$1;
.super Landroid/os/Handler;
.source "LGTRoamingDualClockSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTRoamingDualClockSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTRoamingDualClockSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTRoamingDualClockSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/phone/LGTRoamingDualClockSetting$1;->this$0:Lcom/android/phone/LGTRoamingDualClockSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "total"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, total:I
    iget-object v1, p0, Lcom/android/phone/LGTRoamingDualClockSetting$1;->this$0:Lcom/android/phone/LGTRoamingDualClockSetting;

    iget-object v1, v1, Lcom/android/phone/LGTRoamingDualClockSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 128
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/phone/LGTRoamingDualClockSetting$1;->this$0:Lcom/android/phone/LGTRoamingDualClockSetting;

    invoke-virtual {v1, v3}, Lcom/android/phone/LGTRoamingDualClockSetting;->dismissDialog(I)V

    .line 130
    iget-object v1, p0, Lcom/android/phone/LGTRoamingDualClockSetting$1;->this$0:Lcom/android/phone/LGTRoamingDualClockSetting;

    iget-object v1, v1, Lcom/android/phone/LGTRoamingDualClockSetting;->progressThread:Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;

    invoke-virtual {v1, v3}, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->setState(I)V

    .line 131
    const/4 v0, 0x0

    .line 133
    :cond_0
    return-void
.end method
