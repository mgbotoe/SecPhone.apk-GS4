.class Lcom/android/phone/NetworkNotificationUI$25;
.super Ljava/lang/Object;
.source "NetworkNotificationUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkNotificationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0
    .parameter

    .prologue
    .line 2408
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$25;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2410
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$25;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/NetworkNotificationUI;->mNetworkRegNotiDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->access$4402(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2411
    return-void
.end method
