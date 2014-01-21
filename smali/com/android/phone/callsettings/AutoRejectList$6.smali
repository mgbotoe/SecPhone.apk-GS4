.class Lcom/android/phone/callsettings/AutoRejectList$6;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectList;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectList;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$6;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

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

    .line 435
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$6;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    const-string v2, "onItemLongClick"

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v0}, Lcom/android/phone/callsettings/AutoRejectList;->access$1200(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;Z)V

    .line 436
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$6;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$1100(Lcom/android/phone/callsettings/AutoRejectList;)I

    move-result v1

    if-nez v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$6;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #setter for: Lcom/android/phone/callsettings/AutoRejectList;->mSelectedItem:I
    invoke-static {v1, p3}, Lcom/android/phone/callsettings/AutoRejectList;->access$1302(Lcom/android/phone/callsettings/AutoRejectList;I)I

    .line 438
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$6;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    const/4 v2, 0x2

    #setter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$1102(Lcom/android/phone/callsettings/AutoRejectList;I)I

    .line 439
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$6;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-virtual {v1, v3}, Lcom/android/phone/callsettings/AutoRejectList;->removeDialog(I)V

    .line 440
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$6;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-virtual {v1, v3}, Lcom/android/phone/callsettings/AutoRejectList;->showDialog(I)V

    .line 441
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$6;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    const-string v2, "onItemLongClick, return true"

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v0}, Lcom/android/phone/callsettings/AutoRejectList;->access$1200(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;Z)V

    .line 444
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
