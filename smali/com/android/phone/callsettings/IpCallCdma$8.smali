.class Lcom/android/phone/callsettings/IpCallCdma$8;
.super Ljava/lang/Object;
.source "IpCallCdma.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCallCdma;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpCallCdma;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCallCdma;)V
    .locals 0
    .parameter

    .prologue
    .line 859
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCallCdma$8;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$8;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpCallCdma;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$8;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    const-string v1, "Fragment finished. We ignore updateRejectMessage."

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$300(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V

    .line 867
    :goto_0
    return-void

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$8;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->updateIpNumberList()V
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCallCdma;->access$900(Lcom/android/phone/callsettings/IpCallCdma;)V

    goto :goto_0
.end method
