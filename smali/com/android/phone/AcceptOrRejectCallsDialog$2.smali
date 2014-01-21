.class Lcom/android/phone/AcceptOrRejectCallsDialog$2;
.super Ljava/lang/Object;
.source "AcceptOrRejectCallsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AcceptOrRejectCallsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/AcceptOrRejectCallsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/phone/AcceptOrRejectCallsDialog$2;->this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog$2;->this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;

    #getter for: Lcom/android/phone/AcceptOrRejectCallsDialog;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/phone/AcceptOrRejectCallsDialog;->access$000(Lcom/android/phone/AcceptOrRejectCallsDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog$2;->this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;

    #getter for: Lcom/android/phone/AcceptOrRejectCallsDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/AcceptOrRejectCallsDialog;->access$200(Lcom/android/phone/AcceptOrRejectCallsDialog;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog$2;->this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;

    iget-object v1, p0, Lcom/android/phone/AcceptOrRejectCallsDialog$2;->this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;

    #getter for: Lcom/android/phone/AcceptOrRejectCallsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/AcceptOrRejectCallsDialog;->access$200(Lcom/android/phone/AcceptOrRejectCallsDialog;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/phone/AcceptOrRejectCallsDialog;->doNotShowAcceptOrRejectCallsAgain(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/phone/AcceptOrRejectCallsDialog;->access$300(Lcom/android/phone/AcceptOrRejectCallsDialog;Landroid/content/Context;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog$2;->this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;

    #getter for: Lcom/android/phone/AcceptOrRejectCallsDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/AcceptOrRejectCallsDialog;->access$200(Lcom/android/phone/AcceptOrRejectCallsDialog;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog$2;->this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;

    iget-object v1, p0, Lcom/android/phone/AcceptOrRejectCallsDialog$2;->this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;

    #getter for: Lcom/android/phone/AcceptOrRejectCallsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/AcceptOrRejectCallsDialog;->access$200(Lcom/android/phone/AcceptOrRejectCallsDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/AcceptOrRejectCallsDialog$2;->this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;

    #getter for: Lcom/android/phone/AcceptOrRejectCallsDialog;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/phone/AcceptOrRejectCallsDialog;->access$000(Lcom/android/phone/AcceptOrRejectCallsDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    #calls: Lcom/android/phone/AcceptOrRejectCallsDialog;->storeCheckedState(Landroid/content/Context;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/AcceptOrRejectCallsDialog;->access$100(Lcom/android/phone/AcceptOrRejectCallsDialog;Landroid/content/Context;Z)V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog$2;->this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;

    invoke-virtual {v0}, Lcom/android/phone/AcceptOrRejectCallsDialog;->dismiss()V

    .line 166
    return-void
.end method
