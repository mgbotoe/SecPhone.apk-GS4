.class Lcom/android/phone/UsCdmaCallForwardingDialog$3;
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
    .line 159
    iput-object p1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$3;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$3;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    #getter for: Lcom/android/phone/UsCdmaCallForwardingDialog;->mPreNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$100(Lcom/android/phone/UsCdmaCallForwardingDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$3;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    #getter for: Lcom/android/phone/UsCdmaCallForwardingDialog;->mDialNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$200(Lcom/android/phone/UsCdmaCallForwardingDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 162
    .local v0, mIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$3;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    #getter for: Lcom/android/phone/UsCdmaCallForwardingDialog;->mConvertCFCallToIMS:Z
    invoke-static {v1}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$300(Lcom/android/phone/UsCdmaCallForwardingDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$3;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    #getter for: Lcom/android/phone/UsCdmaCallForwardingDialog;->mExtraCallType:I
    invoke-static {v1}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$400(Lcom/android/phone/UsCdmaCallForwardingDialog;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->convertCallToIMS(Landroid/content/Intent;I)V

    .line 164
    iget-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$3;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    const-string v2, "convertCallToIMS..."

    const/4 v3, 0x1

    #calls: Lcom/android/phone/UsCdmaCallForwardingDialog;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$500(Lcom/android/phone/UsCdmaCallForwardingDialog;Ljava/lang/String;Z)V

    .line 166
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    .line 167
    iget-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$3;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    invoke-virtual {v1}, Lcom/android/phone/UsCdmaCallForwardingDialog;->finish()V

    .line 168
    return-void
.end method
