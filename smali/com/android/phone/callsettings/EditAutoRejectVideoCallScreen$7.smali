.class Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$7;
.super Ljava/lang/Object;
.source "EditAutoRejectVideoCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->alertdialogSearch()V
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
    .line 468
    iput-object p1, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$7;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$7;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->isDialogCreated:Z
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->access$102(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;Z)Z

    .line 471
    return-void
.end method
