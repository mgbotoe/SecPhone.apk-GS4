.class Lcom/android/phone/CancelRejectModeAlertDialog$7;
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
    .line 131
    iput-object p1, p0, Lcom/android/phone/CancelRejectModeAlertDialog$7;->this$0:Lcom/android/phone/CancelRejectModeAlertDialog;

    iput-object p2, p0, Lcom/android/phone/CancelRejectModeAlertDialog$7;->val$app:Lcom/android/phone/PhoneGlobals;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/phone/CancelRejectModeAlertDialog$7;->val$app:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->cancelDisableBlockModeNotification()V

    .line 137
    iget-object v0, p0, Lcom/android/phone/CancelRejectModeAlertDialog$7;->val$app:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr;->updateDisableBlockModeStatus(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/phone/CancelRejectModeAlertDialog$7;->this$0:Lcom/android/phone/CancelRejectModeAlertDialog;

    invoke-virtual {v0}, Lcom/android/phone/CancelRejectModeAlertDialog;->finish()V

    .line 139
    return-void
.end method
