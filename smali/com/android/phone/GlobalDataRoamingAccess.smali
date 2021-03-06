.class public Lcom/android/phone/GlobalDataRoamingAccess;
.super Landroid/preference/DialogPreference;
.source "GlobalDataRoamingAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;,
        Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mGlobalDataRoamingAccessObserver:Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;

.field private mInflater:Landroid/view/LayoutInflater;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRadioButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/phone/GlobalDataRoamingAccess;->DBG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 263
    new-instance v0, Lcom/android/phone/GlobalDataRoamingAccess$1;

    invoke-direct {v0, p0}, Lcom/android/phone/GlobalDataRoamingAccess$1;-><init>(Lcom/android/phone/GlobalDataRoamingAccess;)V

    iput-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 263
    new-instance v0, Lcom/android/phone/GlobalDataRoamingAccess$1;

    invoke-direct {v0, p0}, Lcom/android/phone/GlobalDataRoamingAccess$1;-><init>(Lcom/android/phone/GlobalDataRoamingAccess;)V

    iput-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 95
    iput-object p1, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContext:Landroid/content/Context;

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mInflater:Landroid/view/LayoutInflater;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/GlobalDataRoamingAccess;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/GlobalDataRoamingAccess;->getMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/phone/GlobalDataRoamingAccess;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/GlobalDataRoamingAccess;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/GlobalDataRoamingAccess;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/GlobalDataRoamingAccess;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/phone/GlobalDataRoamingAccess;->checkSecureSetting(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/GlobalDataRoamingAccess;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mRadioButtonList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/GlobalDataRoamingAccess;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private checkSecureSetting(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/phone/GlobalDataRoamingAccess;->getMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMode()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 179
    iget-object v3, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 180
    .local v1, isRoam:I
    iget-object v3, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming_onetime"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 181
    .local v0, isOnetime:I
    const/4 v2, 0x0

    .line 182
    .local v2, mode:I
    if-ne v1, v6, :cond_0

    .line 183
    if-ne v0, v6, :cond_1

    .line 184
    const/4 v2, 0x1

    .line 189
    :cond_0
    :goto_0
    return v2

    .line 186
    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 133
    const v1, 0x7f0a0187

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 135
    .local v0, mListViewRadioButton:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04004c

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 137
    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04004a

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 138
    new-instance v1, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;-><init>(Lcom/android/phone/GlobalDataRoamingAccess;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 142
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntries:[Ljava/lang/CharSequence;

    .line 106
    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntryValues:[Ljava/lang/CharSequence;

    .line 108
    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntries:[Ljava/lang/CharSequence;

    array-length v0, v0

    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array which are both the same length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mRadioButtonList:Ljava/util/ArrayList;

    .line 116
    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;

    .line 117
    new-instance v0, Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;

    invoke-direct {v0, p0}, Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;-><init>(Lcom/android/phone/GlobalDataRoamingAccess;)V

    iput-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mGlobalDataRoamingAccessObserver:Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;

    .line 119
    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "data_roaming"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mGlobalDataRoamingAccessObserver:Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 120
    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "data_roaming_onetime"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mGlobalDataRoamingAccessObserver:Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 121
    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "data_roam_access_notify"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mGlobalDataRoamingAccessObserver:Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 123
    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 124
    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 126
    const v0, 0x7f040049

    invoke-virtual {p0, v0}, Lcom/android/phone/GlobalDataRoamingAccess;->setDialogLayoutResource(I)V

    .line 128
    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mGlobalDataRoamingAccessObserver:Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 153
    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 154
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 155
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 147
    invoke-virtual {p1, v0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    return-void
.end method

.method setOneTripState(Landroid/telephony/ServiceState;)V
    .locals 8
    .parameter "serviceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 271
    const-string v4, "true"

    const-string v5, "gsm.operator.isroaming"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 272
    .local v1, isRoaming:Z
    iget-object v4, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "data_roaming_onetime"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 273
    .local v2, oneTrip:I
    iget-object v4, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "globaldata_preroam_state"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 275
    .local v3, preRoamState:I
    const/4 v0, 0x0

    .line 277
    .local v0, isRoamStateChangedToHome:Z
    if-eqz v1, :cond_3

    .line 278
    if-nez v3, :cond_0

    .line 279
    iget-object v4, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "globaldata_preroam_state"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 288
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 289
    if-ne v2, v7, :cond_2

    .line 290
    sget-boolean v4, Lcom/android/phone/GlobalDataRoamingAccess;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "GlobalDataRoamingAccess"

    const-string v5, "Reset data roaming"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1
    iget-object v4, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "data_roaming"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    iget-object v4, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "data_roaming_onetime"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 295
    :cond_2
    return-void

    .line 282
    :cond_3
    if-ne v3, v7, :cond_0

    .line 283
    iget-object v4, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "globaldata_preroam_state"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    const/4 v0, 0x1

    goto :goto_0
.end method
