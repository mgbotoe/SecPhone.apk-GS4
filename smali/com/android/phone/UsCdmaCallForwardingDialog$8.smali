.class Lcom/android/phone/UsCdmaCallForwardingDialog$8;
.super Ljava/lang/Object;
.source "UsCdmaCallForwardingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UsCdmaCallForwardingDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/UsCdmaCallForwardingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$8;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$8;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    invoke-virtual {v0}, Lcom/android/phone/UsCdmaCallForwardingDialog;->finish()V

    .line 247
    return-void
.end method
