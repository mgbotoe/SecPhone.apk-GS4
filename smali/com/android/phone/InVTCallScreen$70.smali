.class Lcom/android/phone/InVTCallScreen$70;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 14880
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$70;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 14903
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .parameter "view"
    .parameter "whichHandle"

    .prologue
    const/4 v3, 0x1

    .line 14882
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$70;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger(whichHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/InVTCallScreen;->access$000(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;Z)V

    .line 14884
    packed-switch p2, :pswitch_data_0

    .line 14898
    :goto_0
    return-void

    .line 14886
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$70;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "LEFT_HANDLE: answer!"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/InVTCallScreen;->access$000(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;Z)V

    .line 14887
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$70;->this$0:Lcom/android/phone/InVTCallScreen;

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 14891
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$70;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "RIGHT_HANDLE: reject!"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/InVTCallScreen;->access$000(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;Z)V

    .line 14892
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$70;->this$0:Lcom/android/phone/InVTCallScreen;

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 14884
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
