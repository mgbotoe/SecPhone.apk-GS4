.class Lcom/android/phone/CancelRejectModeAlertDialog$1;
.super Ljava/lang/Object;
.source "CancelRejectModeAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CancelRejectModeAlertDialog;->showAutoRejectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CancelRejectModeAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/CancelRejectModeAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/phone/CancelRejectModeAlertDialog$1;->this$0:Lcom/android/phone/CancelRejectModeAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/phone/CancelRejectModeAlertDialog$1;->this$0:Lcom/android/phone/CancelRejectModeAlertDialog;

    invoke-virtual {v0}, Lcom/android/phone/CancelRejectModeAlertDialog;->finish()V

    .line 109
    return-void
.end method
