.class public Lcom/android/phone/callsettings/RejectCallWithMsgModes;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "RejectCallWithMsgModes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;
    }
.end annotation


# instance fields
.field private mCurMode:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mListViewAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

.field private mModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 39
    const-string v0, "text"

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mCurMode:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "text"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "icon"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mModeList:Ljava/util/ArrayList;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/RejectCallWithMsgModes;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mCurMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/callsettings/RejectCallWithMsgModes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mCurMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Landroid/content/Context;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->getDisplayMode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/RejectCallWithMsgModes;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mModeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/RejectCallWithMsgModes;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->storeDisplayMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/RejectCallWithMsgModes;)Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mListViewAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/callsettings/RejectCallWithMsgModes;Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;)Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mListViewAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/RejectCallWithMsgModes;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private static getDisplayMode(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, displayMode:I
    if-nez p0, :cond_0

    move v1, v0

    .line 185
    .end local v0           #displayMode:I
    .local v1, displayMode:I
    :goto_0
    return v1

    .line 177
    .end local v1           #displayMode:I
    .restart local v0       #displayMode:I
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 178
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    const-string v3, "display_mode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 181
    if-eqz v0, :cond_1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 183
    const/4 v0, 0x0

    :cond_1
    move v1, v0

    .line 185
    .end local v0           #displayMode:I
    .restart local v1       #displayMode:I
    goto :goto_0
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 4
    .parameter "layout"

    .prologue
    .line 77
    const v0, 0x7f0a02c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mListView:Landroid/widget/ListView;

    .line 78
    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0400a2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mModeList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgModes;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mListViewAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    .line 79
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mListViewAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 94
    return-void
.end method

.method public static isIconModeEnable(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 202
    const/4 v1, 0x0

    .line 204
    .local v1, enable:Z
    if-nez p0, :cond_0

    .line 205
    const-string v2, "RejectCallDisplayMode"

    const-string v3, "check icon mode, context is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v2, 0x0

    .line 217
    :goto_0
    return v2

    .line 209
    :cond_0
    const-string v2, "reject_call_with_message_icon_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    invoke-static {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->getDisplayMode(Landroid/content/Context;)I

    move-result v0

    .line 212
    .local v0, displayMode:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 213
    const/4 v1, 0x1

    .end local v0           #displayMode:I
    :cond_1
    move v2, v1

    .line 217
    goto :goto_0
.end method

.method private setDisplayMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 189
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 191
    const/4 p1, 0x0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 195
    .local v1, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 196
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "display_mode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 197
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    return-void
.end method

.method private storeDisplayMode(Ljava/lang/String;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 162
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->setDisplayMode(I)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->setDisplayMode(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 50
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mModeList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->getDisplayMode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mCurMode:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 60
    const v1, 0x7f0400a1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, v:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->initLayout(Landroid/view/View;)V

    .line 63
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    .line 69
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 74
    return-void
.end method
