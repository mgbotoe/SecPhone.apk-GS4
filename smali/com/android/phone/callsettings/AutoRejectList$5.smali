.class Lcom/android/phone/callsettings/AutoRejectList$5;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 397
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 400
    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v4}, Lcom/android/phone/callsettings/AutoRejectList;->access$1100(Lcom/android/phone/callsettings/AutoRejectList;)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 401
    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->updateDeleteScreenItems()V
    invoke-static {v4}, Lcom/android/phone/callsettings/AutoRejectList;->access$1000(Lcom/android/phone/callsettings/AutoRejectList;)V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    if-nez p3, :cond_3

    .line 404
    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/phone/callsettings/AutoRejectList;->access$500(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget v4, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    if-eqz v4, :cond_2

    move v1, v5

    .line 405
    .local v1, checked:I
    :cond_2
    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/phone/callsettings/AutoRejectList;->access$500(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iput v1, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    .line 406
    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "unknown_mode"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 408
    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;
    invoke-static {v4}, Lcom/android/phone/callsettings/AutoRejectList;->access$000(Lcom/android/phone/callsettings/AutoRejectList;)Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->notifyDataSetInvalidated()V

    goto :goto_0

    .line 419
    .end local v1           #checked:I
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 420
    .local v2, object:Ljava/lang/Object;
    instance-of v4, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 421
    check-cast v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    .line 422
    .local v3, viewHolder:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;
    if-eqz v3, :cond_0

    .line 423
    iget-object v0, v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    .line 424
    .local v0, checkbox:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method
