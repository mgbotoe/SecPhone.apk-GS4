.class public Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;
.super Landroid/app/Dialog;
.source "CallCardCoveredDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCardCoveredDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClearCoverDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCardCoveredDialog;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallCardCoveredDialog;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->this$0:Lcom/android/phone/CallCardCoveredDialog;

    .line 225
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 226
    #setter for: Lcom/android/phone/CallCardCoveredDialog;->mContext:Landroid/content/Context;
    invoke-static {p1, p2}, Lcom/android/phone/CallCardCoveredDialog;->access$002(Lcom/android/phone/CallCardCoveredDialog;Landroid/content/Context;)Landroid/content/Context;

    .line 227
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->requestWindowFeature(I)Z

    .line 228
    #getter for: Lcom/android/phone/CallCardCoveredDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/phone/CallCardCoveredDialog;->access$000(Lcom/android/phone/CallCardCoveredDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040014

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallCardCovered;

    #setter for: Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;
    invoke-static {p1, v1}, Lcom/android/phone/CallCardCoveredDialog;->access$102(Lcom/android/phone/CallCardCoveredDialog;Lcom/android/phone/CallCardCovered;)Lcom/android/phone/CallCardCovered;

    .line 229
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->setCancelable(Z)V

    .line 230
    #getter for: Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;
    invoke-static {p1}, Lcom/android/phone/CallCardCoveredDialog;->access$100(Lcom/android/phone/CallCardCoveredDialog;)Lcom/android/phone/CallCardCovered;

    move-result-object v0

    .line 231
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->setContentView(Landroid/view/View;)V

    .line 232
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 236
    packed-switch p1, :pswitch_data_0

    .line 244
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 238
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->this$0:Lcom/android/phone/CallCardCoveredDialog;

    #getter for: Lcom/android/phone/CallCardCoveredDialog;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/CallCardCoveredDialog;->access$200(Lcom/android/phone/CallCardCoveredDialog;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->this$0:Lcom/android/phone/CallCardCoveredDialog;

    #getter for: Lcom/android/phone/CallCardCoveredDialog;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/CallCardCoveredDialog;->access$200(Lcom/android/phone/CallCardCoveredDialog;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->answerAnyKeyModeCall()V

    .line 240
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
