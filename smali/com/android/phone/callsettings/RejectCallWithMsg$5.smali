.class Lcom/android/phone/callsettings/RejectCallWithMsg$5;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/16 v4, 0x64

    const/4 v0, 0x1

    .line 427
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current mState in setOnItemLongClickListener = :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$300(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$400(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V

    .line 428
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$300(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 429
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #setter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v1, p3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$502(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I

    .line 430
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const/4 v2, 0x4

    #setter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$302(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I

    .line 431
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v1, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->removeDialog(I)V

    .line 432
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v1, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->showDialog(I)V

    .line 435
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
