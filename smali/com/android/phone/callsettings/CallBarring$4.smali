.class Lcom/android/phone/callsettings/CallBarring$4;
.super Ljava/lang/Object;
.source "CallBarring.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CallBarring;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallBarring;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring$4;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 343
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$4;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #getter for: Lcom/android/phone/callsettings/CallBarring;->mOldPassword:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$700(Lcom/android/phone/callsettings/CallBarring;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, l_oldPasswordStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$4;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #getter for: Lcom/android/phone/callsettings/CallBarring;->mNewPassword:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$800(Lcom/android/phone/callsettings/CallBarring;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, l_newPasswordStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$4;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #getter for: Lcom/android/phone/callsettings/CallBarring;->mConfirmPassword:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$900(Lcom/android/phone/callsettings/CallBarring;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, l_confirmPasswordStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$4;->this$0:Lcom/android/phone/callsettings/CallBarring;

    const/4 v4, 0x3

    #calls: Lcom/android/phone/callsettings/CallBarring;->changePasswordCallBarring(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v2, v1, v0}, Lcom/android/phone/callsettings/CallBarring;->access$1000(Lcom/android/phone/callsettings/CallBarring;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void
.end method
