.class Lcom/android/phone/CancelRejectModeAlertDialog$6;
.super Ljava/lang/Object;
.source "CancelRejectModeAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CancelRejectModeAlertDialog;->showBlockModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CancelRejectModeAlertDialog;

.field final synthetic val$app:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/CancelRejectModeAlertDialog;Lcom/android/phone/PhoneGlobals;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/phone/CancelRejectModeAlertDialog$6;->this$0:Lcom/android/phone/CancelRejectModeAlertDialog;

    iput-object p2, p0, Lcom/android/phone/CancelRejectModeAlertDialog$6;->val$app:Lcom/android/phone/PhoneGlobals;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/phone/CancelRejectModeAlertDialog$6;->val$app:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelDisableBlockModeNotification()V

    .line 147
    iget-object v1, p0, Lcom/android/phone/CancelRejectModeAlertDialog$6;->val$app:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/NotificationMgr;->updateDisableBlockModeStatus(Z)V

    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 150
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DormantmodeSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/android/phone/CancelRejectModeAlertDialog$6;->this$0:Lcom/android/phone/CancelRejectModeAlertDialog;

    invoke-virtual {v1, v0}, Lcom/android/phone/CancelRejectModeAlertDialog;->startActivity(Landroid/content/Intent;)V

    .line 154
    iget-object v1, p0, Lcom/android/phone/CancelRejectModeAlertDialog$6;->this$0:Lcom/android/phone/CancelRejectModeAlertDialog;

    invoke-virtual {v1}, Lcom/android/phone/CancelRejectModeAlertDialog;->finish()V

    .line 156
    return-void
.end method
