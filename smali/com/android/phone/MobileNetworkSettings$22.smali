.class Lcom/android/phone/MobileNetworkSettings$22;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MobileNetworkSettings;->onDisplayMobileDataOffAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;

.field final synthetic val$mDisableAlertCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2393
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$22;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iput-object p2, p0, Lcom/android/phone/MobileNetworkSettings$22;->val$mDisableAlertCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2395
    if-ne p2, v3, :cond_0

    .line 2396
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$22;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_mobiledata_checked"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2402
    :goto_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$22;->val$mDisableAlertCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->playSoundEffect(I)V

    .line 2403
    return-void

    .line 2399
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$22;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_mobiledata_checked"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
