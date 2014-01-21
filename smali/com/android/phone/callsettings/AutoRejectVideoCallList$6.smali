.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$6;
.super Ljava/lang/Object;
.source "AutoRejectVideoCallList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$6;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
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
    const/16 v3, 0x64

    const/4 v0, 0x1

    .line 432
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$6;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    const-string v2, "onItemLongClick"

    #calls: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1200(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;Z)V

    .line 433
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$6;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1100(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I

    move-result v1

    if-nez v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$6;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #setter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I
    invoke-static {v1, p3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1302(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)I

    .line 435
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$6;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    const/4 v2, 0x2

    #setter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1102(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)I

    .line 436
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$6;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v1, v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->removeDialog(I)V

    .line 437
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$6;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v1, v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->showDialog(I)V

    .line 438
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$6;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    const-string v2, "onItemLongClick, return true"

    #calls: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1200(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;Z)V

    .line 441
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
