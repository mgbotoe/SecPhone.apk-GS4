.class Lcom/android/phone/MobileNetworkSettings$24;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 2410
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$24;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 2412
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2413
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$24;->this$0:Lcom/android/phone/MobileNetworkSettings;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/MobileNetworkSettings;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->access$800(Lcom/android/phone/MobileNetworkSettings;Z)V

    .line 2414
    return-void
.end method
