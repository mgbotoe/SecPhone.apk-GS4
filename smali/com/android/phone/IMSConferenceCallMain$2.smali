.class Lcom/android/phone/IMSConferenceCallMain$2;
.super Ljava/lang/Object;
.source "IMSConferenceCallMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IMSConferenceCallMain;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IMSConferenceCallMain;


# direct methods
.method constructor <init>(Lcom/android/phone/IMSConferenceCallMain;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallMain$2;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$2;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    #getter for: Lcom/android/phone/IMSConferenceCallMain;->mIsForegroundActivity:Z
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallMain;->access$400(Lcom/android/phone/IMSConferenceCallMain;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$2;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    #getter for: Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallMain;->access$100(Lcom/android/phone/IMSConferenceCallMain;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 318
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$2;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    #getter for: Lcom/android/phone/IMSConferenceCallMain;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallMain;->access$500(Lcom/android/phone/IMSConferenceCallMain;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain$2;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    #getter for: Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/android/phone/IMSConferenceCallMain;->access$100(Lcom/android/phone/IMSConferenceCallMain;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 320
    :cond_0
    return-void
.end method
