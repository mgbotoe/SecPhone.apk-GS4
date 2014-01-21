.class public Lcom/android/phone/CancelRejectModeAlertDialog;
.super Landroid/app/Activity;
.source "CancelRejectModeAlertDialog.java"


# instance fields
.field createDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showAutoRejectDialog()V
    .locals 5

    .prologue
    .line 73
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 76
    .local v1, app:Lcom/android/phone/PhoneGlobals;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0902d6

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090021

    new-instance v4, Lcom/android/phone/CancelRejectModeAlertDialog$3;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/CancelRejectModeAlertDialog$3;-><init>(Lcom/android/phone/CancelRejectModeAlertDialog;Lcom/android/phone/PhoneGlobals;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0902da

    new-instance v4, Lcom/android/phone/CancelRejectModeAlertDialog$2;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/CancelRejectModeAlertDialog$2;-><init>(Lcom/android/phone/CancelRejectModeAlertDialog;Lcom/android/phone/PhoneGlobals;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/CancelRejectModeAlertDialog$1;

    invoke-direct {v3, p0}, Lcom/android/phone/CancelRejectModeAlertDialog$1;-><init>(Lcom/android/phone/CancelRejectModeAlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CancelRejectModeAlertDialog;->createDialog:Landroid/app/AlertDialog;

    .line 114
    iget-object v2, p0, Lcom/android/phone/CancelRejectModeAlertDialog;->createDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/phone/CancelRejectModeAlertDialog$4;

    invoke-direct {v3, p0}, Lcom/android/phone/CancelRejectModeAlertDialog$4;-><init>(Lcom/android/phone/CancelRejectModeAlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 120
    iget-object v2, p0, Lcom/android/phone/CancelRejectModeAlertDialog;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 121
    return-void
.end method

.method private showBlockModeDialog()V
    .locals 5

    .prologue
    .line 125
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 128
    .local v1, app:Lcom/android/phone/PhoneGlobals;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0902d8

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090021

    new-instance v4, Lcom/android/phone/CancelRejectModeAlertDialog$7;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/CancelRejectModeAlertDialog$7;-><init>(Lcom/android/phone/CancelRejectModeAlertDialog;Lcom/android/phone/PhoneGlobals;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0902da

    new-instance v4, Lcom/android/phone/CancelRejectModeAlertDialog$6;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/CancelRejectModeAlertDialog$6;-><init>(Lcom/android/phone/CancelRejectModeAlertDialog;Lcom/android/phone/PhoneGlobals;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/CancelRejectModeAlertDialog$5;

    invoke-direct {v3, p0}, Lcom/android/phone/CancelRejectModeAlertDialog$5;-><init>(Lcom/android/phone/CancelRejectModeAlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CancelRejectModeAlertDialog;->createDialog:Landroid/app/AlertDialog;

    .line 166
    iget-object v2, p0, Lcom/android/phone/CancelRejectModeAlertDialog;->createDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/phone/CancelRejectModeAlertDialog$8;

    invoke-direct {v3, p0}, Lcom/android/phone/CancelRejectModeAlertDialog$8;-><init>(Lcom/android/phone/CancelRejectModeAlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 172
    iget-object v2, p0, Lcom/android/phone/CancelRejectModeAlertDialog;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 173
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/phone/CancelRejectModeAlertDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.phone.callsettings.extra.TYPE_OF_REJECT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    const-string v1, "CancelRejectModeAlertDialog"

    const-string v2, "intent.getStringExtra(EXTRA_TYPE_OF_REJECT_MODE) is null"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 52
    invoke-virtual {p0}, Lcom/android/phone/CancelRejectModeAlertDialog;->finish()V

    .line 69
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v1, "CancelRejectModeAlertDialog"

    const-string v2, "android.phone.callsettings.extra.TYPE_OF_REJECT_MODE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 58
    const-string v1, "android.phone.callsettings.extra.TYPE_OF_REJECT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto_reject"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-direct {p0}, Lcom/android/phone/CancelRejectModeAlertDialog;->showAutoRejectDialog()V

    goto :goto_0

    .line 61
    :cond_1
    const-string v1, "android.phone.callsettings.extra.TYPE_OF_REJECT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "block_mode"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    invoke-direct {p0}, Lcom/android/phone/CancelRejectModeAlertDialog;->showBlockModeDialog()V

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CancelRejectModeAlertDialog;->finish()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 179
    invoke-virtual {p0}, Lcom/android/phone/CancelRejectModeAlertDialog;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CancelRejectModeAlertDialog;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 183
    invoke-virtual {p0}, Lcom/android/phone/CancelRejectModeAlertDialog;->finish()V

    goto :goto_0
.end method
