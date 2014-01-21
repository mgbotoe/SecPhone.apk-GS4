.class Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$3;
.super Ljava/lang/Object;
.source "EditAutoRejectVideoCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$3;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 205
    const-string v0, "EditAutoRejectSVideoCallcreen"

    const-string v1, "onClick searchButton"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$3;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    #getter for: Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->isDialogCreated:Z
    invoke-static {v0}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->access$100(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$3;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->isDialogCreated:Z
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->access$102(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;Z)Z

    .line 208
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$3;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    #calls: Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->alertdialogSearch()V
    invoke-static {v0}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->access$200(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    const-string v0, "EditAutoRejectSVideoCallcreen"

    const-string v1, "Search dialog is already created"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
