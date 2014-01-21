.class Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver$2;
.super Ljava/lang/Object;
.source "PhoneGlobals.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;

.field final synthetic val$request:[B


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4735
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver$2;->this$1:Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;

    iput-object p2, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver$2;->val$request:[B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 4738
    const-string v2, "PhoneApp"

    const-string v3, "Wfc ACTION_WFC_SWITCH_PROFILE_BROADCAST received"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4739
    const/16 v2, 0xc8

    new-array v1, v2, [B

    .line 4740
    .local v1, response:[B
    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver$2;->this$1:Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver$2;->val$request:[B

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendOemRilRequestRaw([B[B)I

    move-result v0

    .line 4741
    .local v0, intResponse:I
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responce"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " i="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4742
    return-void
.end method
