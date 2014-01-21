.class public Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "EditRejectCallWithMsgIconMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;,
        Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ViewHolder;
    }
.end annotation


# instance fields
.field private mBodyEditText:Landroid/widget/EditText;

.field private mBodyMsg:Ljava/lang/String;

.field private mIconIndex:I

.field private mImageButton:Landroid/widget/ImageButton;

.field private mInputMgr:Landroid/view/inputmethod/InputMethodManager;

.field private mNewIconIndex:I

.field private mSaveItem:Landroid/view/MenuItem;

.field private mTitleEditText:Landroid/widget/EditText;

.field private mTitleMsg:Ljava/lang/String;

.field private mViewRoot:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 49
    iput v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mIconIndex:I

    .line 50
    iput v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mNewIconIndex:I

    .line 51
    iput-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleMsg:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyMsg:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mSaveItem:Landroid/view/MenuItem;

    .line 61
    iput-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mInputMgr:Landroid/view/inputmethod/InputMethodManager;

    .line 328
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mSaveItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mNewIconIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mNewIconIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private do_save()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, -0x1

    .line 220
    const/4 v2, 0x0

    .line 221
    .local v2, hasChanged:Z
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 222
    .local v4, result:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 224
    .local v1, bundle:Landroid/os/Bundle;
    iget-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, body:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, title:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyMsg:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eq v6, v7, :cond_0

    .line 228
    const/4 v2, 0x1

    .line 229
    const-string v6, "msgBody"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    iget-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleMsg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eq v6, v7, :cond_1

    .line 233
    const/4 v2, 0x1

    .line 234
    const-string v6, "title"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_1
    iget v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mNewIconIndex:I

    if-eq v6, v8, :cond_2

    iget v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mNewIconIndex:I

    iget v7, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mIconIndex:I

    if-eq v6, v7, :cond_2

    .line 238
    const/4 v2, 0x1

    .line 239
    const-string v6, "iconId"

    iget v7, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mNewIconIndex:I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    :cond_2
    if-eqz v2, :cond_3

    .line 243
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 246
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 247
    .local v3, pa:Landroid/preference/PreferenceActivity;
    invoke-virtual {v3, p0, v8, v4}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 248
    return-void
.end method

.method private isLandscape()Z
    .locals 3

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 283
    .local v0, isLand:Z
    :goto_0
    return v0

    .line 281
    .end local v0           #isLand:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 319
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 321
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 65
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 68
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 69
    const-string v2, "iconId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mIconIndex:I

    .line 70
    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleMsg:Ljava/lang/String;

    .line 71
    const-string v2, "msgBody"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyMsg:Ljava/lang/String;

    .line 73
    const-string v2, "EditIconMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "icon id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mIconIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 77
    .local v0, actionbar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 79
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 81
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->setHasOptionsMenu(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mInputMgr:Landroid/view/inputmethod/InputMethodManager;

    .line 84
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .parameter "menu"
    .parameter "menuInflater"

    .prologue
    const v8, 0x7f0902bc

    const v7, 0x7f0902b8

    const/4 v6, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 254
    const-string v4, "order_neg_pos_buttons"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 255
    .local v0, cancelOrder:I
    :goto_0
    const-string v4, "order_neg_pos_buttons"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 258
    .local v1, saveOrder:I
    :goto_1
    invoke-interface {p1, v2, v3, v0, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const/high16 v5, 0x7f02

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 263
    const/4 v4, 0x2

    invoke-interface {p1, v2, v4, v0, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 268
    const/4 v4, 0x3

    invoke-interface {p1, v2, v4, v1, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020001

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 273
    const/4 v4, 0x4

    invoke-interface {p1, v2, v4, v1, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 277
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 278
    return-void

    .end local v0           #cancelOrder:I
    .end local v1           #saveOrder:I
    :cond_0
    move v0, v3

    .line 254
    goto :goto_0

    .restart local v0       #cancelOrder:I
    :cond_1
    move v1, v2

    .line 255
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 89
    const v2, 0x7f04009a

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, root:Landroid/view/View;
    iput-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mViewRoot:Landroid/view/View;

    .line 93
    const v2, 0x7f0a02ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleEditText:Landroid/widget/EditText;

    .line 95
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleMsg:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleMsg:Ljava/lang/String;

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 98
    .local v0, len:I
    if-lez v0, :cond_0

    .line 99
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 101
    .end local v0           #len:I
    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleEditText:Landroid/widget/EditText;

    new-array v3, v7, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0xf

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 104
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$1;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$1;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    const v2, 0x7f0a02bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyEditText:Landroid/widget/EditText;

    .line 125
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyMsg:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyEditText:Landroid/widget/EditText;

    new-array v3, v7, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 130
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$2;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$2;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    const v2, 0x7f0a02b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageButton:Landroid/widget/ImageButton;

    .line 156
    iget v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mIconIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 157
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageButton:Landroid/widget/ImageButton;

    sget-object v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->THUMB_ICONS:[I

    iget v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mIconIndex:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 163
    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    return-object v1

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageButton:Landroid/widget/ImageButton;

    sget-object v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->THUMB_ICONS:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 161
    iput v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mNewIconIndex:I

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mInputMgr:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 190
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mInputMgr:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 191
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroyView()V

    .line 192
    const-string v0, "EditIconMode"

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 197
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 216
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 203
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->finish()V

    goto :goto_0

    .line 208
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->do_save()V

    goto :goto_0

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 11
    .parameter "menu"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 289
    invoke-direct {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->isLandscape()Z

    move-result v0

    .line 290
    .local v0, isLand:Z
    const/4 v1, 0x1

    .line 291
    .local v1, isSaveEnable:Z
    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, temString:Ljava/lang/String;
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    const/4 v1, 0x0

    .line 296
    :cond_0
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    .line 297
    :cond_1
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 298
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 299
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mSaveItem:Landroid/view/MenuItem;

    .line 300
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 302
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 303
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 314
    :goto_0
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 315
    return-void

    .line 305
    :cond_2
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 306
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 308
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 309
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 310
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mSaveItem:Landroid/view/MenuItem;

    .line 311
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
