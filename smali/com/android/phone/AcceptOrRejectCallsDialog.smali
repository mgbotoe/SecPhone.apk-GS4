.class public Lcom/android/phone/AcceptOrRejectCallsDialog;
.super Landroid/app/AlertDialog;
.source "AcceptOrRejectCallsDialog.java"


# static fields
.field private static mAcceptOrRejectCallsDialog:Lcom/android/phone/AcceptOrRejectCallsDialog;


# instance fields
.field private mAcceptOrRejectCallsImageView:[Landroid/widget/ImageView;

.field private mAnimationDrawableList:[Landroid/graphics/drawable/AnimationDrawable;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mContext:Landroid/content/Context;

.field private final mDoneClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x2

    .line 64
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 60
    new-array v0, v1, [Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mAnimationDrawableList:[Landroid/graphics/drawable/AnimationDrawable;

    .line 61
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mAcceptOrRejectCallsImageView:[Landroid/widget/ImageView;

    .line 153
    new-instance v0, Lcom/android/phone/AcceptOrRejectCallsDialog$2;

    invoke-direct {v0, p0}, Lcom/android/phone/AcceptOrRejectCallsDialog$2;-><init>(Lcom/android/phone/AcceptOrRejectCallsDialog;)V

    iput-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mDoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 65
    iput-object p1, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mContext:Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Lcom/android/phone/AcceptOrRejectCallsDialog;->createAcceptOrRejectCallsDialog()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/AcceptOrRejectCallsDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/AcceptOrRejectCallsDialog;Landroid/content/Context;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/phone/AcceptOrRejectCallsDialog;->storeCheckedState(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/AcceptOrRejectCallsDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/AcceptOrRejectCallsDialog;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/phone/AcceptOrRejectCallsDialog;->doNotShowAcceptOrRejectCallsAgain(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/AcceptOrRejectCallsDialog;)[Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mAnimationDrawableList:[Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private static checkShowAcceptOrRejectCalls(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/phone/AcceptOrRejectCallsDialog;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_show_accept_or_reject_calls"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private createAcceptOrRejectCallsDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 94
    invoke-virtual {p0}, Lcom/android/phone/AcceptOrRejectCallsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/phone/AcceptOrRejectCallsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 97
    iget-object v2, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/high16 v3, 0x7f04

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 99
    .local v1, view:Landroid/view/View;
    iget-object v3, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mAcceptOrRejectCallsImageView:[Landroid/widget/ImageView;

    const/4 v4, 0x0

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v4

    .line 100
    iget-object v3, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mAcceptOrRejectCallsImageView:[Landroid/widget/ImageView;

    const v2, 0x7f0a0011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v5

    .line 102
    invoke-direct {p0}, Lcom/android/phone/AcceptOrRejectCallsDialog;->startAnimationForAcceptOrRejectCallsImage()V

    .line 104
    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 105
    iget-object v2, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v3, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/phone/AcceptOrRejectCallsDialog;->getCheckedState(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 107
    const v2, 0x7f0a0012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, doNotShowAgainContainer:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 110
    new-instance v2, Lcom/android/phone/AcceptOrRejectCallsDialog$1;

    invoke-direct {v2, p0}, Lcom/android/phone/AcceptOrRejectCallsDialog$1;-><init>(Lcom/android/phone/AcceptOrRejectCallsDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v2, 0x7f090836

    invoke-virtual {p0, v2}, Lcom/android/phone/AcceptOrRejectCallsDialog;->setTitle(I)V

    .line 120
    invoke-virtual {p0, v1}, Lcom/android/phone/AcceptOrRejectCallsDialog;->setView(Landroid/view/View;)V

    .line 121
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/phone/AcceptOrRejectCallsDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090170

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mDoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/phone/AcceptOrRejectCallsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 122
    return-void
.end method

.method private doNotShowAcceptOrRejectCallsAgain(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 82
    invoke-static {p1}, Lcom/android/phone/AcceptOrRejectCallsDialog;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_show_accept_or_reject_calls"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    return-void
.end method

.method private getCheckedState(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 86
    invoke-static {p1}, Lcom/android/phone/AcceptOrRejectCallsDialog;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_do_not_show_again_check_state"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 125
    invoke-static {p0}, Lcom/android/phone/AcceptOrRejectCallsDialog;->checkShowAcceptOrRejectCalls(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    sget-object v0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mAcceptOrRejectCallsDialog:Lcom/android/phone/AcceptOrRejectCallsDialog;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mAcceptOrRejectCallsDialog:Lcom/android/phone/AcceptOrRejectCallsDialog;

    invoke-virtual {v0}, Lcom/android/phone/AcceptOrRejectCallsDialog;->dismiss()V

    .line 128
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mAcceptOrRejectCallsDialog:Lcom/android/phone/AcceptOrRejectCallsDialog;

    .line 131
    :cond_0
    new-instance v0, Lcom/android/phone/AcceptOrRejectCallsDialog;

    invoke-direct {v0, p0}, Lcom/android/phone/AcceptOrRejectCallsDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mAcceptOrRejectCallsDialog:Lcom/android/phone/AcceptOrRejectCallsDialog;

    .line 133
    sget-object v0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mAcceptOrRejectCallsDialog:Lcom/android/phone/AcceptOrRejectCallsDialog;

    if-eqz v0, :cond_1

    .line 134
    sget-object v0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mAcceptOrRejectCallsDialog:Lcom/android/phone/AcceptOrRejectCallsDialog;

    invoke-virtual {v0}, Lcom/android/phone/AcceptOrRejectCallsDialog;->show()V

    .line 136
    :cond_1
    return-void
.end method

.method private startAnimationForAcceptOrRejectCallsImage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    iget-object v1, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mAnimationDrawableList:[Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mAcceptOrRejectCallsImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    aput-object v0, v1, v2

    .line 171
    iget-object v1, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mAnimationDrawableList:[Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mAcceptOrRejectCallsImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    aput-object v0, v1, v3

    .line 173
    iget-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mAcceptOrRejectCallsImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    new-instance v1, Lcom/android/phone/AcceptOrRejectCallsDialog$3;

    invoke-direct {v1, p0}, Lcom/android/phone/AcceptOrRejectCallsDialog$3;-><init>(Lcom/android/phone/AcceptOrRejectCallsDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 179
    iget-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mAcceptOrRejectCallsImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/phone/AcceptOrRejectCallsDialog$4;

    invoke-direct {v1, p0}, Lcom/android/phone/AcceptOrRejectCallsDialog$4;-><init>(Lcom/android/phone/AcceptOrRejectCallsDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method

.method private storeCheckedState(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "checkedState"

    .prologue
    .line 90
    invoke-static {p1}, Lcom/android/phone/AcceptOrRejectCallsDialog;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_do_not_show_again_check_state"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 141
    iget-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mAnimationDrawableList:[Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 142
    iget-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog;->mAnimationDrawableList:[Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 143
    return-void
.end method
