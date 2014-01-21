.class Lcom/android/phone/AcceptOrRejectCallsDialog$1;
.super Ljava/lang/Object;
.source "AcceptOrRejectCallsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AcceptOrRejectCallsDialog;->createAcceptOrRejectCallsDialog()V
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
    .line 110
    iput-object p1, p0, Lcom/android/phone/AcceptOrRejectCallsDialog$1;->this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 113
    iget-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog$1;->this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;

    #getter for: Lcom/android/phone/AcceptOrRejectCallsDialog;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/phone/AcceptOrRejectCallsDialog;->access$000(Lcom/android/phone/AcceptOrRejectCallsDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog$1;->this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;

    #getter for: Lcom/android/phone/AcceptOrRejectCallsDialog;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/phone/AcceptOrRejectCallsDialog;->access$000(Lcom/android/phone/AcceptOrRejectCallsDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog$1;->this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/AcceptOrRejectCallsDialog$1;->this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;

    #getter for: Lcom/android/phone/AcceptOrRejectCallsDialog;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/phone/AcceptOrRejectCallsDialog;->access$000(Lcom/android/phone/AcceptOrRejectCallsDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    #calls: Lcom/android/phone/AcceptOrRejectCallsDialog;->storeCheckedState(Landroid/content/Context;Z)V
    invoke-static {v0, v2, v3}, Lcom/android/phone/AcceptOrRejectCallsDialog;->access$100(Lcom/android/phone/AcceptOrRejectCallsDialog;Landroid/content/Context;Z)V

    .line 115
    iget-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog$1;->this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;

    #getter for: Lcom/android/phone/AcceptOrRejectCallsDialog;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/phone/AcceptOrRejectCallsDialog;->access$000(Lcom/android/phone/AcceptOrRejectCallsDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 116
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
