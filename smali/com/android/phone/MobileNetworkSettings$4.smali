.class Lcom/android/phone/MobileNetworkSettings$4;
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
    .line 409
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$4;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$4;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/GsmUmtsOptions;->updateButtonPrefer2g()V

    .line 412
    return-void
.end method
