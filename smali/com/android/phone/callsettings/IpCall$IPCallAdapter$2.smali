.class Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iput p2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const v4, 0x7f090462

    const/4 v3, 0x1

    .line 1233
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState in setOnItemClickListener = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$200(Lcom/android/phone/callsettings/IpCall;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 1234
    const-string v0, "ip_call_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1235
    const-string v0, "17901"

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    #getter for: Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->access$1600(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mSimId:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$1700(Lcom/android/phone/callsettings/IpCall;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1236
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    const v2, 0x7f090463

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$1200(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 1267
    :cond_0
    :goto_0
    return-void

    .line 1238
    :cond_1
    const-string v0, "17951"

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    #getter for: Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->access$1600(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mSimId:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$1700(Lcom/android/phone/callsettings/IpCall;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1239
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v1, v4}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$1200(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    goto :goto_0

    .line 1241
    :cond_2
    const-string v0, "17911"

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    #getter for: Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->access$1600(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mSimId:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$1700(Lcom/android/phone/callsettings/IpCall;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1242
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v1, v4}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$1200(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    goto :goto_0

    .line 1246
    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$200(Lcom/android/phone/callsettings/IpCall;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->val$position:I

    #setter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$702(Lcom/android/phone/callsettings/IpCall;I)I

    .line 1248
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$700(Lcom/android/phone/callsettings/IpCall;)I

    move-result v1

    #setter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItemForEdit:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$1402(Lcom/android/phone/callsettings/IpCall;I)I

    .line 1249
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    const/4 v1, 0x4

    #setter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$202(Lcom/android/phone/callsettings/IpCall;I)I

    .line 1250
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$500(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$700(Lcom/android/phone/callsettings/IpCall;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/IpCall;->access$1502(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)Ljava/lang/String;

    .line 1251
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 1252
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTempEditString : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$1500(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 1253
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1254
    const-string v0, "SELECTED_ITEM"

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$1500(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const-string v0, "UPDATE_MODE"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1256
    const-string v0, "IP_CALL_LIST_SIZE"

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$500(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1258
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$1500(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$1000(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1259
    const-string v0, "IS_DEFAULT"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1261
    :cond_4
    const v5, 0x7f09045e

    .line 1262
    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1263
    const v5, 0x7f09071d

    .line 1265
    :cond_5
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    const-class v2, Lcom/android/phone/callsettings/EditIpCallScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/IpCall;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto/16 :goto_0
.end method
