.class Lcom/android/phone/callsettings/IpNumberDeleteCdma$IPCallAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IpNumberDeleteCdma.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/IpNumberDeleteCdma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IPCallAdapter"
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/phone/callsettings/IpNumberDeleteCdma;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/IpNumberDeleteCdma;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;>;"
    iput-object p1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpNumberDeleteCdma;

    .line 366
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 367
    iput-object p4, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$IPCallAdapter;->items:Ljava/util/ArrayList;

    .line 368
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 371
    move-object v0, p2

    .line 373
    .local v0, delete:Landroid/view/View;
    if-nez v0, :cond_0

    .line 374
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpNumberDeleteCdma;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 375
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f04006d

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 378
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$IPCallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;

    .line 380
    .local v2, s:Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;
    const v3, 0x7f0a0224

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v4, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpNumberDeleteCdma;

    const v3, 0x7f0a0225

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    #setter for: Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mDeleteStatus:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v4, v3}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->access$202(Lcom/android/phone/callsettings/IpNumberDeleteCdma;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 384
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpNumberDeleteCdma;

    #getter for: Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mDeleteStatus:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->access$200(Lcom/android/phone/callsettings/IpNumberDeleteCdma;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;->getChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 385
    return-object v0
.end method
