.class Lcom/android/phone/RoamingAutoDialOption$2;
.super Ljava/lang/Object;
.source "RoamingAutoDialOption.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RoamingAutoDialOption;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RoamingAutoDialOption;


# direct methods
.method constructor <init>(Lcom/android/phone/RoamingAutoDialOption;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/phone/RoamingAutoDialOption$2;->this$0:Lcom/android/phone/RoamingAutoDialOption;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 55
    if-nez p2, :cond_1

    .line 56
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    .line 60
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADOutgoingCallUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 61
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADOutgoingCallNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/android/phone/RoamingAutoDialOption$2;->this$0:Lcom/android/phone/RoamingAutoDialOption;

    #getter for: Lcom/android/phone/RoamingAutoDialOption;->callType:I
    invoke-static {v1}, Lcom/android/phone/RoamingAutoDialOption;->access$000(Lcom/android/phone/RoamingAutoDialOption;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 64
    iget-object v1, p0, Lcom/android/phone/RoamingAutoDialOption$2;->this$0:Lcom/android/phone/RoamingAutoDialOption;

    const-class v2, Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/android/phone/RoamingAutoDialOption$2;->this$0:Lcom/android/phone/RoamingAutoDialOption;

    invoke-virtual {v1, v0}, Lcom/android/phone/RoamingAutoDialOption;->startActivity(Landroid/content/Intent;)V

    .line 70
    :goto_1
    return-void

    .line 57
    :cond_1
    if-ne p2, v0, :cond_0

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    goto :goto_1
.end method
