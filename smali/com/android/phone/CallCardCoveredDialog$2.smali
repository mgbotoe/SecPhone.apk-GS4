.class Lcom/android/phone/CallCardCoveredDialog$2;
.super Ljava/lang/Object;
.source "CallCardCoveredDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallCardCoveredDialog;->showDialog(Landroid/content/Context;Lcom/android/phone/InCallScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCardCoveredDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCardCoveredDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/phone/CallCardCoveredDialog$2;->this$0:Lcom/android/phone/CallCardCoveredDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 140
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    .line 141
    .local v0, ringer:Lcom/android/phone/Ringer;
    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopNotiFlash()V

    .line 143
    const/4 v1, 0x0

    return v1
.end method
