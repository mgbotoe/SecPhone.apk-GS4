.class Lcom/android/phone/MobileNetworkSettings$10;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MobileNetworkSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$10;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x1

    .line 636
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$10;->this$0:Lcom/android/phone/MobileNetworkSettings;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 638
    .local v0, cm:Landroid/net/ConnectivityManager;
    const-string v1, "feature_chn_duos_gsm_gsm"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    if-ne v1, v3, :cond_0

    .line 639
    const-string v1, "setMobileDataEnabledSecondary(true)"

    #calls: Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->access$100(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabledSecondary(Z)V

    .line 648
    :goto_0
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$10;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #setter for: Lcom/android/phone/MobileNetworkSettings;->mDataClicked:Z
    invoke-static {v1, v3}, Lcom/android/phone/MobileNetworkSettings;->access$602(Lcom/android/phone/MobileNetworkSettings;Z)Z

    .line 649
    return-void

    .line 642
    :cond_0
    const-string v1, "sec_product_feature_common_dsds_support"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    const-string v1, "cm.setMobileDataEnabledDs(true)"

    #calls: Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->access$100(Ljava/lang/String;)V

    .line 644
    sget v1, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-virtual {v0, v1, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(IZ)V

    goto :goto_0

    .line 646
    :cond_1
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method
