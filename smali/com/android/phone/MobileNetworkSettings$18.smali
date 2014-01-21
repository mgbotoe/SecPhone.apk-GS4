.class Lcom/android/phone/MobileNetworkSettings$18;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MobileNetworkSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
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
    .line 1802
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$18;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$18;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/GsmUmtsOptions;->operatorSelectionExpandSetEnabled(Z)V

    .line 1805
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$18;->this$0:Lcom/android/phone/MobileNetworkSettings;

    sget-boolean v1, Lcom/android/phone/MobileNetworkSettings;->isClickedNetworkModeDiffer:Z

    #calls: Lcom/android/phone/MobileNetworkSettings;->setDontShowAgainDB(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->access$2000(Lcom/android/phone/MobileNetworkSettings;Z)V

    .line 1806
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isResetGlobalPopupTimer()V

    .line 1807
    return-void
.end method
