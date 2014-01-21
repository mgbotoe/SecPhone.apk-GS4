.class public Lcom/android/phone/sip/SipSettings;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "SipSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/sip/SipSettings$SipPreference;
    }
.end annotation


# static fields
.field private static updatedCipherProfiles:Z


# instance fields
.field private fromSettingSearch:Z

.field private mButtonAddSipAccount:Landroid/widget/Button;

.field private mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

.field private mCallManager:Lcom/android/internal/telephony/CallManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProfile:Landroid/net/sip/SipProfile;

.field private mProfileDb:Lcom/android/phone/sip/SipProfileDb;

.field private mSipListContainer:Landroid/preference/PreferenceCategory;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mSipPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/sip/SipSettings$SipPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSipProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/sip/SipSettings;->updatedCipherProfiles:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 96
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Lcom/android/phone/sip/SipSettings;->mUid:I

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->getProfileName(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/sip/SipSettings;)Lcom/android/phone/sip/SipSharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/sip/SipSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->retrieveSipLists()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->handleProfileClick(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->unregisterProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/sip/SipSettings;)Landroid/net/sip/SipManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/sip/SipSettings;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mSipPreferenceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/sip/SipSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/sip/SipSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/phone/sip/SipSettings;->mUid:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/sip/SipSettings;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/sip/SipSettings;)Lcom/android/phone/sip/SipProfileDb;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/sip/SipSettings;)Landroid/net/sip/SipProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->addProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/sip/SipSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->updateProfilesStatus()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->startSipEditor(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/sip/SipSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->handleSipReceiveCallsOption(Z)V

    return-void
.end method

.method private addPreferenceFor(Landroid/net/sip/SipProfile;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 462
    const-string v1, "SipSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPreferenceFor profile uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUri()Ljavax/sip/address/SipURI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 477
    :goto_0
    return-void

    .line 465
    :cond_0
    new-instance v0, Lcom/android/phone/sip/SipSettings$SipPreference;

    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/phone/sip/SipSettings$SipPreference;-><init>(Lcom/android/phone/sip/SipSettings;Landroid/content/Context;Landroid/net/sip/SipProfile;)V

    .line 466
    .local v0, pref:Lcom/android/phone/sip/SipSettings$SipPreference;
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 469
    new-instance v1, Lcom/android/phone/sip/SipSettings$7;

    invoke-direct {v1, p0}, Lcom/android/phone/sip/SipSettings$7;-><init>(Lcom/android/phone/sip/SipSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/sip/SipSettings$SipPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private addProfile(Landroid/net/sip/SipProfile;)V
    .locals 4
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    const-string v1, "SipSettings"

    const-string v2, "addProfile:"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->createRegistrationListener()Landroid/net/sip/SipRegistrationListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/sip/SipManager;->setRegistrationListener(Ljava/lang/String;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_0
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 532
    const-string v1, "SipSettings"

    const-string v2, "mSipProfileList is null. Set mSipProfileList from mProfileDb."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 537
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->addPreferenceFor(Landroid/net/sip/SipProfile;)V

    .line 540
    :cond_1
    return-void

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SipSettings"

    const-string v2, "cannot set registration listener"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createRegistrationListener()Landroid/net/sip/SipRegistrationListener;
    .locals 1

    .prologue
    .line 567
    new-instance v0, Lcom/android/phone/sip/SipSettings$11;

    invoke-direct {v0, p0}, Lcom/android/phone/sip/SipSettings$11;-><init>(Lcom/android/phone/sip/SipSettings;)V

    return-object v0
.end method

.method private getPackageNameFromUid(I)Ljava/lang/String;
    .locals 6
    .parameter "uid"

    .prologue
    .line 145
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, pkgs:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 148
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 152
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #pkgs:[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SipSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot find name of uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getProfileFromList(Landroid/net/sip/SipProfile;)Landroid/net/sip/SipProfile;
    .locals 4
    .parameter "activeProfile"

    .prologue
    .line 452
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/sip/SipProfile;

    .line 453
    .local v1, p:Landroid/net/sip/SipProfile;
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    .end local v1           #p:Landroid/net/sip/SipProfile;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getProfileName(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 3
    .parameter "profile"

    .prologue
    .line 398
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, profileName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    :cond_0
    return-object v0
.end method

.method private handleProfileClick(Landroid/net/sip/SipProfile;)V
    .locals 4
    .parameter "profile"

    .prologue
    .line 480
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v0

    .line 481
    .local v0, uid:I
    iget v1, p0, Lcom/android/phone/sip/SipSettings;->mUid:I

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 482
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipSettings;->startSipEditor(Landroid/net/sip/SipProfile;)V

    .line 498
    :goto_0
    return-void

    .line 485
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09020c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09020e

    new-instance v3, Lcom/android/phone/sip/SipSettings$8;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/sip/SipSettings$8;-><init>(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private declared-synchronized handleSipReceiveCallsOption(Z)V
    .locals 8
    .parameter "enabled"

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/phone/sip/SipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v5, p1}, Lcom/android/phone/sip/SipSharedPreferences;->setReceivingCallsEnabled(Z)V

    .line 347
    iget-object v5, p0, Lcom/android/phone/sip/SipSettings;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v5}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v3

    .line 348
    .local v3, sipProfileList:Ljava/util/List;,"Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    .line 349
    .local v2, p:Landroid/net/sip/SipProfile;
    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    .line 350
    .local v4, sipUri:Ljava/lang/String;
    invoke-direct {p0, v2, p1}, Lcom/android/phone/sip/SipSettings;->updateAutoRegistrationFlag(Landroid/net/sip/SipProfile;Z)Landroid/net/sip/SipProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 352
    if-eqz p1, :cond_1

    .line 353
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-static {}, Lcom/android/phone/SipUtil;->createIncomingCallPendingIntent()Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v6, v7}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "SipSettings"

    const-string v6, "register failed"

    invoke-static {v5, v6, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 346
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #p:Landroid/net/sip/SipProfile;
    .end local v3           #sipProfileList:Ljava/util/List;,"Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    .end local v4           #sipUri:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 356
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #p:Landroid/net/sip/SipProfile;
    .restart local v3       #sipProfileList:Ljava/util/List;,"Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    .restart local v4       #sipUri:Ljava/lang/String;
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v5, v4}, Landroid/net/sip/SipManager;->close(Ljava/lang/String;)V

    .line 357
    iget-object v5, p0, Lcom/android/phone/sip/SipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v5, v4}, Lcom/android/phone/sip/SipSharedPreferences;->isPrimaryAccount(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 359
    iget-object v5, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v5, v2}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 366
    .end local v2           #p:Landroid/net/sip/SipProfile;
    .end local v4           #sipUri:Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->updateProfilesStatus()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 367
    monitor-exit p0

    return-void
.end method

.method private processActiveProfilesFromSipService()V
    .locals 7

    .prologue
    .line 440
    iget-object v6, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v6}, Landroid/net/sip/SipManager;->getListOfProfiles()[Landroid/net/sip/SipProfile;

    move-result-object v0

    .line 441
    .local v0, activeList:[Landroid/net/sip/SipProfile;
    move-object v2, v0

    .local v2, arr$:[Landroid/net/sip/SipProfile;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 442
    .local v1, activeProfile:Landroid/net/sip/SipProfile;
    invoke-direct {p0, v1}, Lcom/android/phone/sip/SipSettings;->getProfileFromList(Landroid/net/sip/SipProfile;)Landroid/net/sip/SipProfile;

    move-result-object v5

    .line 443
    .local v5, profile:Landroid/net/sip/SipProfile;
    if-nez v5, :cond_0

    .line 444
    iget-object v6, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/net/sip/SipProfile;->setCallingUid(I)V

    goto :goto_1

    .line 449
    .end local v1           #activeProfile:Landroid/net/sip/SipProfile;
    .end local v5           #profile:Landroid/net/sip/SipProfile;
    :cond_1
    return-void
.end method

.method private registerForAddSipListener()V
    .locals 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0303

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonAddSipAccount:Landroid/widget/Button;

    .line 312
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonAddSipAccount:Landroid/widget/Button;

    new-instance v1, Lcom/android/phone/sip/SipSettings$3;

    invoke-direct {v1, p0}, Lcom/android/phone/sip/SipSettings$3;-><init>(Lcom/android/phone/sip/SipSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    return-void
.end method

.method private registerForReceiveCallsCheckBox()V
    .locals 2

    .prologue
    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/sip/SipSettings;->fromSettingSearch:Z

    .line 322
    const-string v0, "sip_receive_calls_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/SipSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

    .line 323
    sget-boolean v0, Lcom/android/phone/sip/SipSettings;->mOpenDetailMenu:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/phone/sip/SipSettings;->mSettingValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/phone/sip/SipSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/sip/SipSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v1, "sip_receive_calls_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

    sget-boolean v1, Lcom/android/phone/sip/SipSettings;->mCheckValue:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/sip/SipSettings;->fromSettingSearch:Z

    .line 330
    :goto_0
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/phone/sip/SipSettings$4;

    invoke-direct {v1, p0}, Lcom/android/phone/sip/SipSettings$4;-><init>(Lcom/android/phone/sip/SipSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 343
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private retrieveSipLists()V
    .locals 6

    .prologue
    .line 406
    const-string v3, "SipSettings"

    const-string v4, "retrieveSipLists:"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipPreferenceMap:Ljava/util/Map;

    .line 408
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v3}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    .line 409
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->processActiveProfilesFromSipService()V

    .line 410
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    new-instance v4, Lcom/android/phone/sip/SipSettings$6;

    invoke-direct {v4, p0}, Lcom/android/phone/sip/SipSettings$6;-><init>(Lcom/android/phone/sip/SipSettings;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 421
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 422
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    .line 423
    .local v2, p:Landroid/net/sip/SipProfile;
    invoke-direct {p0, v2}, Lcom/android/phone/sip/SipSettings;->addPreferenceFor(Landroid/net/sip/SipProfile;)V

    goto :goto_0

    .line 426
    .end local v2           #p:Landroid/net/sip/SipProfile;
    :cond_0
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v3}, Lcom/android/phone/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 437
    :cond_1
    return-void

    .line 427
    :cond_2
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    .line 428
    .restart local v2       #p:Landroid/net/sip/SipProfile;
    iget v3, p0, Lcom/android/phone/sip/SipSettings;->mUid:I

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 430
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->createRegistrationListener()Landroid/net/sip/SipRegistrationListener;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/sip/SipManager;->setRegistrationListener(Ljava/lang/String;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Landroid/net/sip/SipException;
    const-string v3, "SipSettings"

    const-string v4, "cannot set registration listener"

    invoke-static {v3, v4, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "profileUri"
    .parameter "message"

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/phone/sip/SipSettings$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/phone/sip/SipSettings$10;-><init>(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 564
    return-void
.end method

.method private startSipEditor(Landroid/net/sip/SipProfile;)V
    .locals 6
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/phone/sip/SipSettings;->mProfile:Landroid/net/sip/SipProfile;

    .line 545
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 546
    const-string v0, "sip_profile"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 548
    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    const-class v0, Lcom/android/phone/sip/SipEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const v5, 0x7f09021c

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/sip/SipSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 551
    :cond_0
    return-void
.end method

.method private unregisterProfile(Landroid/net/sip/SipProfile;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 502
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/sip/SipSettings$9;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/sip/SipSettings$9;-><init>(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V

    const-string v2, "unregisterProfile"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 512
    return-void
.end method

.method private updateAutoRegistrationFlag(Landroid/net/sip/SipProfile;Z)Landroid/net/sip/SipProfile;
    .locals 4
    .parameter "p"
    .parameter "enabled"

    .prologue
    .line 371
    new-instance v2, Landroid/net/sip/SipProfile$Builder;

    invoke-direct {v2, p1}, Landroid/net/sip/SipProfile$Builder;-><init>(Landroid/net/sip/SipProfile;)V

    invoke-virtual {v2, p2}, Landroid/net/sip/SipProfile$Builder;->setAutoRegistration(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v1

    .line 375
    .local v1, newProfile:Landroid/net/sip/SipProfile;
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v2, p1}, Lcom/android/phone/sip/SipProfileDb;->deleteProfile(Landroid/net/sip/SipProfile;)V

    .line 376
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v2, v1}, Lcom/android/phone/sip/SipProfileDb;->saveProfile(Landroid/net/sip/SipProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-object v1

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SipSettings"

    const-string v3, "updateAutoRegistrationFlag error"

    invoke-static {v2, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateProfilesStatus()V
    .locals 2

    .prologue
    .line 384
    const-string v0, "SipSettings"

    const-string v1, "updateProfilesStatus:"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/sip/SipSettings$5;

    invoke-direct {v1, p0}, Lcom/android/phone/sip/SipSettings$5;-><init>(Lcom/android/phone/sip/SipSettings;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 395
    return-void
.end method


# virtual methods
.method deleteProfile(Landroid/net/sip/SipProfile;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 515
    const-string v1, "SipSettings"

    const-string v2, "deleteProfile:"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 517
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/sip/SipSettings$SipPreference;

    .line 518
    .local v0, pref:Lcom/android/phone/sip/SipSettings$SipPreference;
    if-eqz v0, :cond_0

    .line 519
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 521
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 285
    const-string v0, "SipSettings"

    const-string v1, "onActivityResult:"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    new-instance v0, Lcom/android/phone/sip/SipSettings$2;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/phone/sip/SipSettings$2;-><init>(Lcom/android/phone/sip/SipSettings;Landroid/content/Intent;I)V

    invoke-virtual {v0}, Lcom/android/phone/sip/SipSettings$2;->start()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 157
    const-string v1, "SipSettings"

    const-string v2, "onCreate:"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 160
    const v1, 0x7f060042

    invoke-virtual {p0, v1}, Lcom/android/phone/sip/SipSettings;->addPreferencesFromResource(I)V

    .line 162
    const-string v1, "sip_account_list"

    invoke-virtual {p0, v1}, Lcom/android/phone/sip/SipSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    .line 164
    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    .line 165
    new-instance v1, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/sip/SipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 166
    new-instance v1, Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/sip/SipSettings;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    .line 168
    sget-boolean v1, Lcom/android/phone/sip/SipSettings;->updatedCipherProfiles:Z

    if-nez v1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/phone/sip/SipSettings$1;

    invoke-direct {v2, p0}, Lcom/android/phone/sip/SipSettings$1;-><init>(Lcom/android/phone/sip/SipSettings;)V

    const-string v3, "updateCipherProfiles"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 179
    sput-boolean v4, Lcom/android/phone/sip/SipSettings;->updatedCipherProfiles:Z

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/sip/SipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 184
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/sip/SipSettings;->mCallManager:Lcom/android/internal/telephony/CallManager;

    .line 186
    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 187
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 191
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/phone/sip/SipSettings;->setHasOptionsMenu(Z)V

    .line 192
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x1

    .line 244
    const/4 v0, 0x0

    const v1, 0x7f0902b6

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020002

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 247
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 248
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 197
    const-string v1, "SipSettings"

    const-string v2, "onCreateView:"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const v1, 0x7f0400bf

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, v:Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 279
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    .line 280
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 266
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 267
    .local v0, itemId:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 274
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 270
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/sip/SipSettings;->startSipEditor(Landroid/net/sip/SipProfile;)V

    .line 271
    const/4 v1, 0x1

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 252
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 253
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 255
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 262
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 260
    :cond_1
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 216
    const-string v0, "SipSettings"

    const-string v1, "onResume:"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 219
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_2

    .line 220
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonAddSipAccount:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 227
    :goto_0
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0302

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    invoke-virtual {p0}, Lcom/android/phone/sip/SipSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 232
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/sip/SipSettings;->fromSettingSearch:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/sip/SipSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 233
    const-string v0, "SipSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/phone/sip/SipSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called by SettingSearch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 234
    sput-boolean v3, Lcom/android/phone/sip/SipSettings;->mOpenDetailMenu:Z

    .line 235
    iput-boolean v3, p0, Lcom/android/phone/sip/SipSettings;->fromSettingSearch:Z

    .line 236
    sget-object v0, Lcom/android/phone/sip/SipSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v1, "sip_receive_calls_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    sget-boolean v0, Lcom/android/phone/sip/SipSettings;->mCheckValue:Z

    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipSettings;->handleSipReceiveCallsOption(Z)V

    .line 240
    :cond_1
    return-void

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonAddSipAccount:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings;->mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 205
    const-string v0, "SipSettings"

    const-string v1, "onStart:"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStart()V

    .line 208
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->registerForAddSipListener()V

    .line 209
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->registerForReceiveCallsCheckBox()V

    .line 211
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;->updateProfilesStatus()V

    .line 212
    return-void
.end method
