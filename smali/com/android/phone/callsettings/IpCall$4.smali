.class Lcom/android/phone/callsettings/IpCall$4;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpCall;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall;)V
    .locals 0
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

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

    .line 441
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listView current mState in setOnItemLongClickListener = :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$200(Lcom/android/phone/callsettings/IpCall;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 442
    const-string v1, "17951"

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$500(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 460
    :cond_0
    :goto_0
    return v0

    .line 445
    :cond_1
    const-string v1, "17911"

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$500(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    const-string v1, "17901"

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$500(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$200(Lcom/android/phone/callsettings/IpCall;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 453
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    #setter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v1, p3}, Lcom/android/phone/callsettings/IpCall;->access$702(Lcom/android/phone/callsettings/IpCall;I)I

    .line 454
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    const/4 v2, 0x4

    #setter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/IpCall;->access$202(Lcom/android/phone/callsettings/IpCall;I)I

    .line 455
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    const-string v2, "EDIT_DELETE_DIALOG1"

    #calls: Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v1, v4}, Lcom/android/phone/callsettings/IpCall;->removeDialog(I)V

    .line 457
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$4;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v1, v4}, Lcom/android/phone/callsettings/IpCall;->showDialog(I)V

    goto :goto_0

    .line 460
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
