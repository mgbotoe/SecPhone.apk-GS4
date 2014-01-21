.class Lcom/android/phone/IMSConferenceCallMain$3;
.super Ljava/lang/Object;
.source "IMSConferenceCallMain.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IMSConferenceCallMain;
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
    .line 874
    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallMain$3;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter "editable"

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 878
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$3;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside afterTextChanged() : Editable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/IMSConferenceCallMain;->access$600(Lcom/android/phone/IMSConferenceCallMain;Ljava/lang/String;)V

    .line 882
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v5, :cond_2

    .line 883
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$3;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    #getter for: Lcom/android/phone/IMSConferenceCallMain;->mContactButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallMain;->access$700(Lcom/android/phone/IMSConferenceCallMain;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$3;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    #getter for: Lcom/android/phone/IMSConferenceCallMain;->mPlusButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallMain;->access$800(Lcom/android/phone/IMSConferenceCallMain;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 892
    :cond_1
    :goto_0
    return-void

    .line 885
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 889
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$3;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    #getter for: Lcom/android/phone/IMSConferenceCallMain;->mPlusButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallMain;->access$800(Lcom/android/phone/IMSConferenceCallMain;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 890
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$3;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    #getter for: Lcom/android/phone/IMSConferenceCallMain;->mContactButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallMain;->access$700(Lcom/android/phone/IMSConferenceCallMain;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$3;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/phone/IMSConferenceCallMain;->mBeforeText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/IMSConferenceCallMain;->access$902(Lcom/android/phone/IMSConferenceCallMain;Ljava/lang/String;)Ljava/lang/String;

    .line 897
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 901
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    .line 902
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$3;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    const v1, 0x7f0906db

    #calls: Lcom/android/phone/IMSConferenceCallMain;->showToast(I)V
    invoke-static {v0, v1}, Lcom/android/phone/IMSConferenceCallMain;->access$1000(Lcom/android/phone/IMSConferenceCallMain;I)V

    .line 903
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$3;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    #getter for: Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallMain;->access$100(Lcom/android/phone/IMSConferenceCallMain;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain$3;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    #getter for: Lcom/android/phone/IMSConferenceCallMain;->mBeforeText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/IMSConferenceCallMain;->access$900(Lcom/android/phone/IMSConferenceCallMain;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$3;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    #getter for: Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallMain;->access$100(Lcom/android/phone/IMSConferenceCallMain;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain$3;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    #getter for: Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/android/phone/IMSConferenceCallMain;->access$100(Lcom/android/phone/IMSConferenceCallMain;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 906
    :cond_0
    return-void
.end method
