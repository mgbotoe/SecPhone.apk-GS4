.class Lcom/android/phone/EmergencyDialer$4;
.super Landroid/widget/ArrayAdapter;
.source "EmergencyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyDialer;->onCreateSimSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer;Landroid/content/Context;I[Ljava/lang/String;Landroid/view/LayoutInflater;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter

    .prologue
    .line 1620
    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$4;->this$0:Lcom/android/phone/EmergencyDialer;

    iput-object p5, p0, Lcom/android/phone/EmergencyDialer$4;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "simSelectView"
    .parameter "parent"

    .prologue
    .line 1624
    if-nez p2, :cond_0

    .line 1625
    iget-object v4, p0, Lcom/android/phone/EmergencyDialer$4;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400b8

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1629
    :cond_0
    const v4, 0x7f0a02f6

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1630
    .local v1, simName:Landroid/widget/TextView;
    const v4, 0x7f0a02f5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1632
    .local v0, simIcon:Landroid/widget/ImageView;
    const-string v2, "CDMA"

    .line 1633
    .local v2, simNameCDMA:Ljava/lang/String;
    const-string v3, "GSM"

    .line 1634
    .local v3, simNameGSM:Ljava/lang/String;
    const-string v4, "ril.ICC_TYPE"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 1635
    const-string v4, "gsm.sim.cardname"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1636
    if-eqz v2, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1637
    :cond_1
    const-string v2, "CDMA"

    .line 1640
    :cond_2
    const-string v4, "feature_chn_duos_support_cgg"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer$4;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v4}, Lcom/android/phone/EmergencyDialer;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1642
    const-string v4, "gsm.sim.cardname.dual"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1651
    :cond_3
    :goto_0
    if-nez p1, :cond_6

    .line 1652
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1653
    iget-object v4, p0, Lcom/android/phone/EmergencyDialer$4;->this$0:Lcom/android/phone/EmergencyDialer;

    const/4 v5, 0x1

    #calls: Lcom/android/phone/EmergencyDialer;->getDuosCallSimIcon(I)I
    invoke-static {v4, v5}, Lcom/android/phone/EmergencyDialer;->access$200(Lcom/android/phone/EmergencyDialer;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1659
    :goto_1
    return-object p2

    .line 1644
    :cond_4
    const-string v4, "ril.ICC2_TYPE"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 1645
    const-string v4, "gsm.sim.cardname2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1646
    if-eqz v3, :cond_5

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1647
    :cond_5
    const-string v3, "GSM"

    goto :goto_0

    .line 1655
    :cond_6
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1656
    iget-object v4, p0, Lcom/android/phone/EmergencyDialer$4;->this$0:Lcom/android/phone/EmergencyDialer;

    const/4 v5, 0x2

    #calls: Lcom/android/phone/EmergencyDialer;->getDuosCallSimIcon(I)I
    invoke-static {v4, v5}, Lcom/android/phone/EmergencyDialer;->access$200(Lcom/android/phone/EmergencyDialer;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
