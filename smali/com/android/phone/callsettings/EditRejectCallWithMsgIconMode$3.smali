.class Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3;
.super Ljava/lang/Object;
.source "EditRejectCallWithMsgIconMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 167
    new-instance v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;Landroid/content/Context;)V

    .line 168
    .local v0, dlg:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;
    const v1, 0x7f090848

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->setTitle(I)V

    .line 169
    invoke-virtual {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->show()V

    .line 170
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->setCanceledOnTouchOutside(Z)V

    .line 171
    new-instance v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3$1;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3$1;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3;Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 181
    return-void
.end method
