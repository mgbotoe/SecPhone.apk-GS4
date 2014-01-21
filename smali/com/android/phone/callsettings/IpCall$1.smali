.class Lcom/android/phone/callsettings/IpCall$1;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 389
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$1;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 391
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$1;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall;->selectAllCheck:Landroid/view/View;

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    .line 392
    .local v0, checked:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$1;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 393
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$1;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v2, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 395
    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$1;->this$0:Lcom/android/phone/callsettings/IpCall;

    #calls: Lcom/android/phone/callsettings/IpCall;->updateDeleteItems()V
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$000(Lcom/android/phone/callsettings/IpCall;)V

    .line 396
    return-void
.end method
