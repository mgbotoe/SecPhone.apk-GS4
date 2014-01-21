.class Lcom/android/phone/callsettings/IpCallCdma$1;
.super Ljava/lang/Object;
.source "IpCallCdma.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCallCdma;->initLayout(Landroid/view/View;)V
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
    .line 251
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCallCdma$1;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 253
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$1;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCallCdma;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    .line 254
    .local v0, checked:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$1;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$1;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v3, v2, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 257
    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$1;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->updateDeleteItems()V
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCallCdma;->access$000(Lcom/android/phone/callsettings/IpCallCdma;)V

    .line 258
    return-void
.end method
