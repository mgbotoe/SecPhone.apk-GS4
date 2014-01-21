.class public Lcom/android/phone/RoamingAlertActivity;
.super Landroid/preference/PreferenceActivity;
.source "RoamingAlertActivity.java"


# instance fields
.field private mRoamingDialog:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 45
    .local v0, mPhone:Lcom/android/internal/telephony/Phone;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/RoamingAlertActivity;->mRoamingDialog:Landroid/app/AlertDialog$Builder;

    .line 46
    iget-object v1, p0, Lcom/android/phone/RoamingAlertActivity;->mRoamingDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/RoamingAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/android/phone/RoamingAlertActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/RoamingAlertActivity$3;-><init>(Lcom/android/phone/RoamingAlertActivity;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/android/phone/RoamingAlertActivity$2;

    invoke-direct {v3, p0}, Lcom/android/phone/RoamingAlertActivity$2;-><init>(Lcom/android/phone/RoamingAlertActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/android/phone/RoamingAlertActivity$1;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingAlertActivity$1;-><init>(Lcom/android/phone/RoamingAlertActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 66
    return-void
.end method
