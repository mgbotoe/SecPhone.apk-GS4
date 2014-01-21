.class Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$1;
.super Ljava/lang/Object;
.source "EditRejectCallWithMsgIconMode.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$1;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$1;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    #setter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mPosition:I
    invoke-static {v0, p3}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->access$302(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;I)I

    .line 354
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$1;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->dismiss()V

    .line 355
    return-void
.end method
