.class Lcom/android/phone/GetPin2Screen$3;
.super Ljava/lang/Object;
.source "GetPin2Screen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GetPin2Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GetPin2Screen;


# direct methods
.method constructor <init>(Lcom/android/phone/GetPin2Screen;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/phone/GetPin2Screen$3;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const-wide/16 v2, 0x64

    .line 153
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$3;->this$0:Lcom/android/phone/GetPin2Screen;

    #getter for: Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->access$000(Lcom/android/phone/GetPin2Screen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$3;->this$0:Lcom/android/phone/GetPin2Screen;

    #getter for: Lcom/android/phone/GetPin2Screen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->access$200(Lcom/android/phone/GetPin2Screen;)Landroid/widget/Toast;

    move-result-object v0

    const v1, 0x7f09013e

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 155
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$3;->this$0:Lcom/android/phone/GetPin2Screen;

    #getter for: Lcom/android/phone/GetPin2Screen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->access$200(Lcom/android/phone/GetPin2Screen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 156
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$3;->this$0:Lcom/android/phone/GetPin2Screen;

    #getter for: Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->access$000(Lcom/android/phone/GetPin2Screen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 157
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$3;->this$0:Lcom/android/phone/GetPin2Screen;

    #getter for: Lcom/android/phone/GetPin2Screen;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->access$300(Lcom/android/phone/GetPin2Screen;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/phone/GetPin2Screen$3$1;

    invoke-direct {v1, p0}, Lcom/android/phone/GetPin2Screen$3$1;-><init>(Lcom/android/phone/GetPin2Screen$3;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$3;->this$0:Lcom/android/phone/GetPin2Screen;

    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$3;->this$0:Lcom/android/phone/GetPin2Screen;

    #calls: Lcom/android/phone/GetPin2Screen;->getPin2()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/GetPin2Screen;->access$400(Lcom/android/phone/GetPin2Screen;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/GetPin2Screen;->validatePin2(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/phone/GetPin2Screen;->access$500(Lcom/android/phone/GetPin2Screen;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$3;->this$0:Lcom/android/phone/GetPin2Screen;

    #getter for: Lcom/android/phone/GetPin2Screen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->access$200(Lcom/android/phone/GetPin2Screen;)Landroid/widget/Toast;

    move-result-object v0

    const v1, 0x7f09016b

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 165
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$3;->this$0:Lcom/android/phone/GetPin2Screen;

    #getter for: Lcom/android/phone/GetPin2Screen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->access$200(Lcom/android/phone/GetPin2Screen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 166
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$3;->this$0:Lcom/android/phone/GetPin2Screen;

    #getter for: Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->access$000(Lcom/android/phone/GetPin2Screen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 167
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$3;->this$0:Lcom/android/phone/GetPin2Screen;

    #getter for: Lcom/android/phone/GetPin2Screen;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->access$300(Lcom/android/phone/GetPin2Screen;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/phone/GetPin2Screen$3$2;

    invoke-direct {v1, p0}, Lcom/android/phone/GetPin2Screen$3$2;-><init>(Lcom/android/phone/GetPin2Screen$3;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$3;->this$0:Lcom/android/phone/GetPin2Screen;

    #calls: Lcom/android/phone/GetPin2Screen;->returnResult()V
    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->access$600(Lcom/android/phone/GetPin2Screen;)V

    goto :goto_0
.end method
