.class Lcom/android/phone/UsCdmaCallForwardingDialog$9;
.super Ljava/lang/Object;
.source "UsCdmaCallForwardingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 239
    iput-object p1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$9;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$9;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    invoke-virtual {v0}, Lcom/android/phone/UsCdmaCallForwardingDialog;->finish()V

    .line 242
    return-void
.end method
