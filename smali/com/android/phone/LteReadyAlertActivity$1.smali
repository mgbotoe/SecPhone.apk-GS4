.class Lcom/android/phone/LteReadyAlertActivity$1;
.super Ljava/lang/Object;
.source "LteReadyAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LteReadyAlertActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LteReadyAlertActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/LteReadyAlertActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/phone/LteReadyAlertActivity$1;->this$0:Lcom/android/phone/LteReadyAlertActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 66
    const-string v0, "LteReadyAlertActivity"

    const-string v1, "onDismiss"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 67
    iget-object v0, p0, Lcom/android/phone/LteReadyAlertActivity$1;->this$0:Lcom/android/phone/LteReadyAlertActivity;

    invoke-virtual {v0}, Lcom/android/phone/LteReadyAlertActivity;->finish()V

    .line 68
    return-void
.end method
