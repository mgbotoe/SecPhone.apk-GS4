.class Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3$1;
.super Ljava/lang/Object;
.source "EditRejectCallWithMsgIconMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3;

.field final synthetic val$dlg:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3;Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3$1;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3;

    iput-object p2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3$1;->val$dlg:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3$1;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3;

    iget-object v0, v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3$1;->val$dlg:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->getPosition()I

    move-result v1

    #setter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mNewIconIndex:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$102(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;I)I

    .line 177
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3$1;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3;

    iget-object v0, v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mNewIconIndex:I
    invoke-static {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$100(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3$1;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3;

    iget-object v0, v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$200(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/widget/ImageButton;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->THUMB_ICONS:[I

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3$1;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3;

    iget-object v2, v2, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mNewIconIndex:I
    invoke-static {v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$100(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 179
    :cond_0
    return-void
.end method
