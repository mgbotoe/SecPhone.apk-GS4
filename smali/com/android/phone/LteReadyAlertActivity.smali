.class public Lcom/android/phone/LteReadyAlertActivity;
.super Landroid/preference/PreferenceActivity;
.source "LteReadyAlertActivity.java"


# instance fields
.field private mLTENetworkDialog:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/LteReadyAlertActivity;->mLTENetworkDialog:Landroid/app/AlertDialog$Builder;

    .line 46
    iget-object v0, p0, Lcom/android/phone/LteReadyAlertActivity;->mLTENetworkDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/LteReadyAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902b1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/LteReadyAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0906cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/LteReadyAlertActivity$3;

    invoke-direct {v2, p0}, Lcom/android/phone/LteReadyAlertActivity$3;-><init>(Lcom/android/phone/LteReadyAlertActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/phone/LteReadyAlertActivity$2;

    invoke-direct {v2, p0}, Lcom/android/phone/LteReadyAlertActivity$2;-><init>(Lcom/android/phone/LteReadyAlertActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/LteReadyAlertActivity$1;

    invoke-direct {v1, p0}, Lcom/android/phone/LteReadyAlertActivity$1;-><init>(Lcom/android/phone/LteReadyAlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 70
    return-void
.end method
