.class public Lcom/android/phone/ims/ImsEditor;
.super Landroid/preference/PreferenceActivity;
.source "ImsEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ims/ImsEditor$PreferenceKey;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCheckbox:Landroid/preference/CheckBoxPreference;

.field private mRemoveButton:Landroid/widget/Button;

.field private mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-class v0, Lcom/android/phone/ims/ImsEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ims/ImsEditor;->TAG:Ljava/lang/String;

    .line 55
    const-string v0, "IMS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/ims/ImsEditor;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/phone/ims/ImsEditor;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/phone/ims/ImsEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getPreferenceKey(Landroid/preference/Preference;)Lcom/android/phone/ims/ImsEditor$PreferenceKey;
    .locals 6
    .parameter "pref"

    .prologue
    .line 261
    invoke-static {}, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->values()[Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    move-result-object v0

    .local v0, arr$:[Lcom/android/phone/ims/ImsEditor$PreferenceKey;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 262
    .local v2, key:Lcom/android/phone/ims/ImsEditor$PreferenceKey;
    iget-object v4, v2, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne v4, p1, :cond_0

    return-object v2

    .line 261
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v2           #key:Lcom/android/phone/ims/ImsEditor$PreferenceKey;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "not possible to reach here"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private loadPreferences()V
    .locals 5

    .prologue
    .line 198
    const/4 v2, 0x0

    .line 203
    .local v2, serverAddress:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-virtual {v3}, Lcom/android/phone/ims/ImsSharedPreferences;->getServerAddress()Ljava/lang/String;

    move-result-object v2

    .line 204
    sget-object v3, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->DomainAddress:Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    if-nez v2, :cond_0

    const-string v2, ""

    .end local v2           #serverAddress:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    .line 207
    iget-object v3, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-virtual {v3}, Lcom/android/phone/ims/ImsSharedPreferences;->getCallType()I

    move-result v0

    .line 208
    .local v0, imsCallType:I
    if-nez v0, :cond_1

    .line 209
    sget-object v3, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->CallType:Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    const-string v4, "Voice"

    invoke-virtual {v3, v4}, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    .line 215
    :goto_0
    iget-object v3, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-virtual {v3}, Lcom/android/phone/ims/ImsSharedPreferences;->getisImsDefault()Z

    move-result v1

    .line 216
    .local v1, isImsDefault:Z
    iget-object v3, p0, Lcom/android/phone/ims/ImsEditor;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 217
    return-void

    .line 211
    .end local v1           #isImsDefault:Z
    :cond_1
    sget-object v3, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->CallType:Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    const-string v4, "Video"

    invoke-virtual {v3, v4}, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removePreferencesAndFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/ims/ImsSharedPreferences;->setServerAddress(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-virtual {v0, v2}, Lcom/android/phone/ims/ImsSharedPreferences;->setCallType(I)V

    .line 242
    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-virtual {v0, v2}, Lcom/android/phone/ims/ImsSharedPreferences;->setIsImsDefault(Z)V

    .line 244
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/ims/ImsEditor;->setResult(I)V

    .line 245
    invoke-virtual {p0}, Lcom/android/phone/ims/ImsEditor;->finish()V

    .line 246
    return-void
.end method

.method private setupPreference(Landroid/preference/Preference;)V
    .locals 6
    .parameter "pref"

    .prologue
    .line 268
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 269
    invoke-static {}, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->values()[Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    move-result-object v0

    .local v0, arr$:[Lcom/android/phone/ims/ImsEditor$PreferenceKey;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 270
    .local v2, key:Lcom/android/phone/ims/ImsEditor$PreferenceKey;
    iget v5, v2, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->text:I

    invoke-virtual {p0, v5}, Lcom/android/phone/ims/ImsEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 272
    iput-object p1, v2, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    .line 276
    .end local v2           #key:Lcom/android/phone/ims/ImsEditor$PreferenceKey;
    .end local v4           #name:Ljava/lang/String;
    :cond_0
    return-void

    .line 269
    .restart local v2       #key:Lcom/android/phone/ims/ImsEditor$PreferenceKey;
    .restart local v4       #name:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private validateAndSetResult()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    sget-object v1, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->DomainAddress:Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/ims/ImsSharedPreferences;->setServerAddress(Ljava/lang/String;)V

    .line 224
    const-string v0, "Video"

    sget-object v1, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->CallType:Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/phone/ims/ImsSharedPreferences;->setCallType(I)V

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    iget-object v1, p0, Lcom/android/phone/ims/ImsEditor;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/ims/ImsSharedPreferences;->setIsImsDefault(Z)V

    .line 233
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/ims/ImsEditor;->setResult(I)V

    .line 234
    const v0, 0x7f090208

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 236
    invoke-virtual {p0}, Lcom/android/phone/ims/ImsEditor;->finish()V

    .line 237
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-virtual {v0, v2}, Lcom/android/phone/ims/ImsSharedPreferences;->setCallType(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 119
    sget-boolean v4, Lcom/android/phone/ims/ImsEditor;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/phone/ims/ImsEditor;->TAG:Ljava/lang/String;

    const-string v5, "start profile editor"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    new-instance v4, Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-direct {v4, p0}, Lcom/android/phone/ims/ImsSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/ims/ImsEditor;->mSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    .line 124
    const v4, 0x7f040055

    invoke-virtual {p0, v4}, Lcom/android/phone/ims/ImsEditor;->setContentView(I)V

    .line 125
    const v4, 0x7f060022

    invoke-virtual {p0, v4}, Lcom/android/phone/ims/ImsEditor;->addPreferencesFromResource(I)V

    .line 127
    invoke-virtual {p0}, Lcom/android/phone/ims/ImsEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 128
    .local v3, screen:Landroid/preference/PreferenceGroup;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 129
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/ims/ImsEditor;->setupPreference(Landroid/preference/Preference;)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/ims/ImsEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const v5, 0x7f090251

    invoke-virtual {p0, v5}, Lcom/android/phone/ims/ImsEditor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/ims/ImsEditor;->mCheckbox:Landroid/preference/CheckBoxPreference;

    .line 134
    const v4, 0x7f09024b

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 136
    invoke-direct {p0}, Lcom/android/phone/ims/ImsEditor;->loadPreferences()V

    .line 138
    invoke-virtual {p0}, Lcom/android/phone/ims/ImsEditor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 139
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 141
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 143
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 157
    const v0, 0x7f090254

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 159
    const/4 v0, 0x2

    const v1, 0x7f090255

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 161
    const/4 v0, 0x3

    const v1, 0x7f090256

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 163
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 189
    packed-switch p1, :pswitch_data_0

    .line 194
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 191
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/ims/ImsEditor;->validateAndSetResult()V

    .line 192
    const/4 v0, 0x1

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 184
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 172
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/ims/ImsEditor;->validateAndSetResult()V

    goto :goto_0

    .line 176
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/phone/ims/ImsEditor;->finish()V

    goto :goto_0

    .line 180
    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/ims/ImsEditor;->removePreferencesAndFinish()V

    goto :goto_0

    .line 168
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 147
    sget-boolean v0, Lcom/android/phone/ims/ImsEditor;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/ims/ImsEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsEditor onPause(): finishing? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/ims/ImsEditor;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/ims/ImsEditor;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/android/phone/ims/ImsEditor;->validateAndSetResult()V

    .line 151
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 152
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "pref"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    .line 249
    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 257
    :goto_0
    return v2

    .line 250
    :cond_0
    if-nez p2, :cond_1

    const-string v0, ""

    .line 251
    .local v0, value:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    invoke-direct {p0, p1}, Lcom/android/phone/ims/ImsEditor;->getPreferenceKey(Landroid/preference/Preference;)Lcom/android/phone/ims/ImsEditor$PreferenceKey;

    move-result-object v1

    iget v1, v1, Lcom/android/phone/ims/ImsEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 250
    .end local v0           #value:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 254
    .restart local v0       #value:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 112
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 113
    invoke-virtual {p0}, Lcom/android/phone/ims/ImsEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor;->mRemoveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/ImsEditor;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 115
    :cond_0
    return-void
.end method
