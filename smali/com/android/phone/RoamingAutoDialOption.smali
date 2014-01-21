.class public Lcom/android/phone/RoamingAutoDialOption;
.super Lcom/android/internal/app/AlertActivity;
.source "RoamingAutoDialOption.java"


# instance fields
.field final app:Lcom/android/phone/PhoneGlobals;

.field private callType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 32
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RoamingAutoDialOption;->app:Lcom/android/phone/PhoneGlobals;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/RoamingAutoDialOption;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/phone/RoamingAutoDialOption;->callType:I

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 37
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialOption;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 39
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.phone.extra.calltype"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/RoamingAutoDialOption;->callType:I

    .line 40
    iget-object v1, p0, Lcom/android/phone/RoamingAutoDialOption;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 41
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialOption;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 42
    .local v2, r:Landroid/content/res/Resources;
    const v3, 0x7f0903b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 43
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 44
    iget-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const v5, 0x7f0903b5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 45
    iget-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    const v4, 0x7f0903b6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 47
    const v3, 0x7f090024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 48
    new-instance v3, Lcom/android/phone/RoamingAutoDialOption$1;

    invoke-direct {v3, p0}, Lcom/android/phone/RoamingAutoDialOption$1;-><init>(Lcom/android/phone/RoamingAutoDialOption;)V

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 53
    new-instance v3, Lcom/android/phone/RoamingAutoDialOption$2;

    invoke-direct {v3, p0}, Lcom/android/phone/RoamingAutoDialOption$2;-><init>(Lcom/android/phone/RoamingAutoDialOption;)V

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 72
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialOption;->setupAlert()V

    .line 73
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 77
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialOption;->finish()V

    .line 78
    return-void
.end method
