.class Lcom/android/phone/PreviewEffectUI$1;
.super Landroid/os/Handler;
.source "PreviewEffectUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PreviewEffectUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PreviewEffectUI;


# direct methods
.method constructor <init>(Lcom/android/phone/PreviewEffectUI;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/phone/PreviewEffectUI$1;->this$0:Lcom/android/phone/PreviewEffectUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI$1;->this$0:Lcom/android/phone/PreviewEffectUI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/android/phone/PreviewEffectUI;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/PreviewEffectUI;->access$000(Lcom/android/phone/PreviewEffectUI;Ljava/lang/String;Z)V

    .line 85
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI$1;->this$0:Lcom/android/phone/PreviewEffectUI;

    #getter for: Lcom/android/phone/PreviewEffectUI;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;
    invoke-static {v0}, Lcom/android/phone/PreviewEffectUI;->access$100(Lcom/android/phone/PreviewEffectUI;)Lcom/android/phone/InVTCallScreen;

    move-result-object v0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI$1;->this$0:Lcom/android/phone/PreviewEffectUI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handler: ignoring message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; we\'re destroyed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/PreviewEffectUI;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/PreviewEffectUI;->access$200(Lcom/android/phone/PreviewEffectUI;Ljava/lang/String;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI$1;->this$0:Lcom/android/phone/PreviewEffectUI;

    #calls: Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/PreviewEffectUI;->access$300(Lcom/android/phone/PreviewEffectUI;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/phone/PreviewEffectUI$1;->this$0:Lcom/android/phone/PreviewEffectUI;

    #calls: Lcom/android/phone/PreviewEffectUI;->getVTManager()Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/PreviewEffectUI;->access$300(Lcom/android/phone/PreviewEffectUI;)Lsiso/vt/VTManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_0
    .end packed-switch
.end method
