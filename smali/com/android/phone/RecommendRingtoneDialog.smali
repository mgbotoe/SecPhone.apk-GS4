.class public Lcom/android/phone/RecommendRingtoneDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "RecommendRingtoneDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRecommendAdapter:Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;

.field private mSelectedPosition:I

.field private mSimIndex:I

.field private offset:I

.field private ringtone:Landroid/media/Ringtone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 39
    iput v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSelectedPosition:I

    .line 46
    iput v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSimIndex:I

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/RecommendRingtoneDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/RecommendRingtoneDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/RecommendRingtoneDialog;)Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mRecommendAdapter:Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/media/Ringtone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/RecommendRingtoneDialog;Landroid/media/Ringtone;)Landroid/media/Ringtone;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/RecommendRingtoneDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSimIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/RecommendRingtoneDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->offset:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 114
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 116
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 128
    :cond_1
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 119
    iget v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSimIndex:I

    if-ne v0, v1, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recommendation_time_2"

    iget v2, p0, Lcom/android/phone/RecommendRingtoneDialog;->offset:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recommendation_time"

    iget v2, p0, Lcom/android/phone/RecommendRingtoneDialog;->offset:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/phone/RecommendRingtoneDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "recommend_offset"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->offset:I

    .line 57
    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "simIndex"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "simIndex"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSimIndex:I

    .line 61
    :cond_0
    iput-object p0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 64
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09027e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 66
    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 67
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 68
    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 69
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 70
    new-instance v1, Lcom/android/phone/RecommendRingtoneDialog$1;

    invoke-direct {v1, p0}, Lcom/android/phone/RecommendRingtoneDialog$1;-><init>(Lcom/android/phone/RecommendRingtoneDialog;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    new-instance v1, Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;

    invoke-direct {v1, p0}, Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;-><init>(Lcom/android/phone/RecommendRingtoneDialog;)V

    iput-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mRecommendAdapter:Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;

    .line 99
    iget-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mRecommendAdapter:Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 101
    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->setupAlert()V

    .line 102
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 109
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 110
    return-void
.end method
