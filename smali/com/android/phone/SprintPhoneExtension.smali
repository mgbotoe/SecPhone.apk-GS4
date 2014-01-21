.class public Lcom/android/phone/SprintPhoneExtension;
.super Ljava/lang/Object;
.source "SprintPhoneExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SprintPhoneExtension$1;,
        Lcom/android/phone/SprintPhoneExtension$MyHandler;,
        Lcom/android/phone/SprintPhoneExtension$RejectCallWithMessagePendingList;
    }
.end annotation


# static fields
.field private static BOOST_CODE:Ljava/lang/String;

.field private static CHAMELEON_CODE:Ljava/lang/String;

.field private static FILE_EXISTS:Ljava/lang/String;

.field private static HOME_ONLY:Ljava/lang/String;

.field private static SPRINT_CODE:Ljava/lang/String;

.field private static UNINIT:I

.field private static VIRGIN_MOBILE_USA_CODE:Ljava/lang/String;

.field private static VISUAL_VOICEMAIL_NODE:Ljava/lang/String;

.field private static VISUAL_VOICEMAIL_PACKAGE:Ljava/lang/String;

.field private static mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCscChameleonBit:I

.field private static mDataRoamingGuard:Lcom/android/phone/DataRoamingGuard;

.field private static mHandler:Lcom/android/phone/SprintPhoneExtension$MyHandler;

.field private static mParser:Lcom/android/phone/CscParser;

.field private static mPhoneNameKey:Ljava/lang/String;

.field private static mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/SprintPhoneExtension$RejectCallWithMessagePendingList;",
            ">;"
        }
    .end annotation
.end field

.field private static mShowCallRoamingGuardDialog:Z

.field private static mVisualVoicemailEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    .line 75
    const-string v0, "com.coremobility.app.vnotes"

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->VISUAL_VOICEMAIL_PACKAGE:Ljava/lang/String;

    .line 76
    const-string v0, "Operators.EnabledAppsVvm"

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->VISUAL_VOICEMAIL_NODE:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    .line 84
    const-string v0, "INIT"

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->mPhoneNameKey:Ljava/lang/String;

    .line 87
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/SprintPhoneExtension;->UNINIT:I

    .line 89
    new-instance v0, Lcom/android/phone/SprintPhoneExtension$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/phone/SprintPhoneExtension$MyHandler;-><init>(Lcom/android/phone/SprintPhoneExtension$1;)V

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->mHandler:Lcom/android/phone/SprintPhoneExtension$MyHandler;

    .line 91
    const-string v0, "file_exists"

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->FILE_EXISTS:Ljava/lang/String;

    .line 92
    const-string v0, "home_only"

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->HOME_ONLY:Ljava/lang/String;

    .line 94
    const-string v0, "CODE"

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->CHAMELEON_CODE:Ljava/lang/String;

    .line 95
    const-string v0, "310120"

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->SPRINT_CODE:Ljava/lang/String;

    .line 96
    const-string v0, "311490"

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->VIRGIN_MOBILE_USA_CODE:Ljava/lang/String;

    .line 97
    const-string v0, "311870"

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->BOOST_CODE:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 792
    return-void
.end method

.method public static addRejectCallWithMessagePendingList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "phoneNumber"
    .parameter "presetMessage"

    .prologue
    const/4 v2, 0x1

    .line 827
    const-string v0, "addRejectCallWithMessagePendingList"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 829
    sget-object v0, Lcom/android/phone/SprintPhoneExtension;->mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 832
    sget-object v0, Lcom/android/phone/SprintPhoneExtension;->mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/phone/SprintPhoneExtension$RejectCallWithMessagePendingList;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/SprintPhoneExtension$RejectCallWithMessagePendingList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    const-string v0, "mRejectCallWithMessagePendingArrayList.add()"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 835
    :cond_0
    return-void
.end method

.method public static chameleonPreconfig(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 692
    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->CHAMELEON_CODE:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    .line 694
    .local v1, hasChameleonCode:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chameleonPreconfig - hasChameleonCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 696
    if-eqz v1, :cond_3

    .line 697
    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->CHAMELEON_CODE:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, chameleonCode:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chameleonPreconfig - chameleonCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 701
    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->SPRINT_CODE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 702
    const-string v2, "chameleonPreconfig - chameleonCode is sprint_code"

    invoke-static {v2, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 719
    .end local v0           #chameleonCode:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 703
    .restart local v0       #chameleonCode:Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->VIRGIN_MOBILE_USA_CODE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->BOOST_CODE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 705
    :cond_2
    const-string v2, "chameleonPreconfig - chameleonCode is sprint_mvno_code"

    invoke-static {v2, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 706
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->resetNetworkModeToDefault()V

    goto :goto_0

    .line 709
    .end local v0           #chameleonCode:Ljava/lang/String;
    :cond_3
    const-string v2, "chameleonPreconfig - chameleonCode is not set"

    invoke-static {v2, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 710
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->resetNetworkModeToDefault()V

    goto :goto_0
.end method

.method public static checkCscChameleonFile()V
    .locals 2

    .prologue
    .line 480
    invoke-static {}, Lcom/android/phone/CscParser;->getChameleonPath()Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, cscChameleonPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/SprintPhoneExtension;->existsCscChameleonFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    sget v1, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    or-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    .line 483
    invoke-static {v0}, Lcom/android/phone/CscParser;->getChameleonInstance(Ljava/lang/String;)Lcom/android/phone/CscParser;

    move-result-object v1

    sput-object v1, Lcom/android/phone/SprintPhoneExtension;->mParser:Lcom/android/phone/CscParser;

    .line 484
    sget-object v1, Lcom/android/phone/SprintPhoneExtension;->mParser:Lcom/android/phone/CscParser;

    if-eqz v1, :cond_0

    .line 485
    sget v1, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    or-int/lit8 v1, v1, 0x2

    sput v1, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    .line 487
    :cond_0
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->putCscChameleonDatabase()V

    .line 488
    return-void
.end method

.method public static clearRejectCallWithMessagePendingList()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 862
    const-string v0, "clearRejectCallWithMessagePendingList()"

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 863
    sget-object v0, Lcom/android/phone/SprintPhoneExtension;->mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/SprintPhoneExtension;->mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 865
    sget-object v0, Lcom/android/phone/SprintPhoneExtension;->mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 866
    const-string v0, "mRejectCallWithMessagePendingArrayList.clear()"

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 868
    :cond_0
    return-void
.end method

.method private static cscChameleonEnable()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 520
    const-string v4, "csc_chameleon_enable"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    .line 521
    .local v1, cscChameleonEnableFeature:Z
    const/4 v4, 0x3

    sget v5, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    and-int/lit8 v5, v5, 0x3

    if-ne v4, v5, :cond_0

    move v0, v2

    .line 524
    .local v0, cscChameleonBit:Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cscChameleonEnable - cscChameleonEnableFeature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cscChameleonBit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mCscChameleonBit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 526
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v2

    .end local v0           #cscChameleonBit:Z
    :cond_0
    move v0, v3

    .line 521
    goto :goto_0

    .restart local v0       #cscChameleonBit:Z
    :cond_1
    move v2, v3

    .line 526
    goto :goto_1
.end method

.method public static cscChameleonUpdateCallSettings(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 652
    const-string v2, "cscChameleonUpdateCallSettings"

    invoke-static {v2, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 654
    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->FILE_EXISTS:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 655
    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->FILE_EXISTS:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 656
    .local v0, fileExists:Z
    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->HOME_ONLY:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, homeOnly:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cscChameleonUpdateCallSettings - file_exists : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " home_only : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 660
    if-eqz v0, :cond_3

    .line 661
    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->HOME_ONLY:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 662
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 663
    invoke-static {v4}, Lcom/android/phone/SprintPhoneExtension;->systemSelectRoamingType(I)V

    .line 664
    const-string v2, "reset_network_mode_to_chameleon"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 665
    invoke-static {v5}, Lcom/android/phone/SprintPhoneExtension;->setPreferredNetworkModeEntry(Z)V

    .line 666
    invoke-static {v5}, Lcom/android/phone/SprintPhoneExtension;->setSystemSelectHomeOnlyEntry(Z)V

    .line 667
    invoke-static {v5}, Lcom/android/phone/SprintPhoneExtension;->setNetworkModeToChameleonCode(Z)V

    .line 687
    .end local v0           #fileExists:Z
    .end local v1           #homeOnly:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/phone/SprintPhoneExtension;->chameleonPreconfig(Landroid/content/Intent;)V

    .line 688
    return-void

    .line 669
    .restart local v0       #fileExists:Z
    .restart local v1       #homeOnly:Ljava/lang/String;
    :cond_1
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 670
    invoke-static {v5}, Lcom/android/phone/SprintPhoneExtension;->systemSelectRoamingType(I)V

    .line 671
    const-string v2, "reset_network_mode_to_chameleon"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 672
    invoke-static {v4}, Lcom/android/phone/SprintPhoneExtension;->setPreferredNetworkModeEntry(Z)V

    .line 673
    invoke-static {v4}, Lcom/android/phone/SprintPhoneExtension;->setSystemSelectHomeOnlyEntry(Z)V

    .line 674
    invoke-static {v4}, Lcom/android/phone/SprintPhoneExtension;->setNetworkModeToChameleonCode(Z)V

    goto :goto_0

    .line 678
    :cond_2
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->systemSelectSalesCode()V

    goto :goto_0

    .line 681
    :cond_3
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->systemSelectSalesCode()V

    goto :goto_0

    .line 684
    .end local v0           #fileExists:Z
    .end local v1           #homeOnly:Ljava/lang/String;
    :cond_4
    const-string v2, "cscChameleonUpdateCallSettings - file_exists is not set"

    invoke-static {v2, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static existsCscChameleonFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "cscChameleonFileName"

    .prologue
    .line 491
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static getAbbreviatedDialingCodes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 603
    if-eqz p0, :cond_0

    .line 604
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 605
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/phone/SprintPhoneExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 607
    sget-object v0, Lcom/android/phone/SprintPhoneExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 609
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static getDataRoamingGuardInstance()Lcom/android/phone/DataRoamingGuard;
    .locals 1

    .prologue
    .line 367
    sget-object v0, Lcom/android/phone/SprintPhoneExtension;->mDataRoamingGuard:Lcom/android/phone/DataRoamingGuard;

    return-object v0
.end method

.method private static getPhoneNameKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPhoneNameKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/SprintPhoneExtension;->mPhoneNameKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 142
    sget-object v0, Lcom/android/phone/SprintPhoneExtension;->mPhoneNameKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getSecureSettingBoolean(Ljava/lang/String;I)Z
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    const/4 v0, 0x1

    .line 354
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p0, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSecureSettingValueInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 350
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getShowCallRoamingGuardDialog()Z
    .locals 2

    .prologue
    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getShowCallRoamingGuardDialog : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/SprintPhoneExtension;->mShowCallRoamingGuardDialog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 377
    sget-boolean v0, Lcom/android/phone/SprintPhoneExtension;->mShowCallRoamingGuardDialog:Z

    return v0
.end method

.method public static getVisualVoicemailEnabled()Z
    .locals 1

    .prologue
    .line 513
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->cscChameleonEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    sget-boolean v0, Lcom/android/phone/SprintPhoneExtension;->mVisualVoicemailEnabled:Z

    .line 516
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->hasVisualVoicemail()Z

    move-result v0

    goto :goto_0
.end method

.method public static hasVisualVoicemail()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 638
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 639
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 640
    sget-object v4, Lcom/android/phone/SprintPhoneExtension;->VISUAL_VOICEMAIL_PACKAGE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 641
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 648
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v3

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 645
    .end local v0           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 646
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isAbbreviatedDialingCodes(Ljava/lang/String;)Z
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 593
    if-eqz p0, :cond_0

    .line 594
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 595
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/phone/SprintPhoneExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 597
    sget-object v0, Lcom/android/phone/SprintPhoneExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 599
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDomesticRoamingInService()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 160
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 161
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->IsDomesticRoaming()Z

    move-result v0

    .line 162
    .local v0, isDomesticRoaming:Z
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_0

    move v2, v3

    .line 164
    .local v2, stateInService:Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StateInService : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / isDomesticRoaming : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 166
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v3

    .end local v2           #stateInService:Z
    :cond_0
    move v2, v4

    .line 162
    goto :goto_0

    .restart local v2       #stateInService:Z
    :cond_1
    move v3, v4

    .line 166
    goto :goto_1
.end method

.method public static isDomesticRoamingSettingInService()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 230
    const-string v3, "roam_guard_call_domestic"

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 231
    .local v0, domesticCallGuardEnabled:Z
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v1

    .line 233
    .local v1, isDomesticRoamingInService:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DomesticCallGuardEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / isDomesticRoamingInService : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 235
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isInternationalRoamingInService()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 195
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 196
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->IsInternationalRoaming()Z

    move-result v0

    .line 197
    .local v0, isInternationalRoaming:Z
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_0

    move v2, v3

    .line 199
    .local v2, stateInService:Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StateInService : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / isInternationalRoaming : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 201
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v3

    .end local v2           #stateInService:Z
    :cond_0
    move v2, v4

    .line 197
    goto :goto_0

    .restart local v2       #stateInService:Z
    :cond_1
    move v3, v4

    .line 201
    goto :goto_1
.end method

.method public static isInternationalRoamingInServiceGsm()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 307
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 308
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_0

    move v2, v3

    .line 309
    .local v2, stateInService:Z
    :goto_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    .line 311
    .local v1, roaming:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StateInService : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / roaming : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 312
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    :goto_1
    return v3

    .end local v1           #roaming:Z
    .end local v2           #stateInService:Z
    :cond_0
    move v2, v4

    .line 308
    goto :goto_0

    .restart local v1       #roaming:Z
    .restart local v2       #stateInService:Z
    :cond_1
    move v3, v4

    .line 312
    goto :goto_1
.end method

.method public static isInternationalRoamingSettingInService()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 264
    const-string v3, "roam_guard_call_international"

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 265
    .local v0, internationalCallGuardEnabled:Z
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v1

    .line 267
    .local v1, isInternationalRoamingInService:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InternationalCallGuardEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / isInternationalRoamingInService : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 269
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isInternationalRoamingSettingInServiceGsm()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 296
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 297
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-nez v6, :cond_0

    move v3, v4

    .line 298
    .local v3, stateInService:Z
    :goto_0
    const-string v6, "sprint_gsm_voice_guard"

    invoke-static {v6, v4}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 299
    .local v0, internationalCallGuardEnabledGsm:Z
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    .line 301
    .local v2, roaming:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StateInService : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / internationalCallGuardEnabledGsm : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / roaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 303
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    :goto_1
    return v4

    .end local v0           #internationalCallGuardEnabledGsm:Z
    .end local v2           #roaming:Z
    .end local v3           #stateInService:Z
    :cond_0
    move v3, v5

    .line 297
    goto :goto_0

    .restart local v0       #internationalCallGuardEnabledGsm:Z
    .restart local v2       #roaming:Z
    .restart local v3       #stateInService:Z
    :cond_1
    move v4, v5

    .line 303
    goto :goto_1
.end method

.method public static isNorthAmericanDialingPlanCountry()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 613
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 614
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v6, :cond_1

    .line 615
    const-string v8, "isNorthAmericanDialingPlanCountry - TelephonyManager is null"

    invoke-static {v8, v7}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 633
    :cond_0
    :goto_0
    return v7

    .line 619
    :cond_1
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 620
    .local v3, networkCountryIso:Ljava/lang/String;
    if-nez v6, :cond_2

    .line 621
    const-string v8, "isNorthAmericanDialingPlanCountry - NetworkCountryIso is null"

    invoke-static {v8, v7}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 625
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NetworkCountryIso : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 627
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08007b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 628
    .local v5, northAmericanNumberingPlan:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 629
    .local v4, northAmericanDailingPlan:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 628
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 633
    .end local v4           #northAmericanDailingPlan:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static isPhoneNameKeyChanged(Ljava/lang/String;)Z
    .locals 4
    .parameter "phoneName"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 146
    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mPhoneNameKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-nez p0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPhoneNameKeyChanged - mPhoneNameKey : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/SprintPhoneExtension;->mPhoneNameKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / phoneName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 151
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->getPhoneNameKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 154
    goto :goto_0
.end method

.method public static isRoamingInService()Z
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRoamingSettingInService()Z
    .locals 1

    .prologue
    .line 320
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingSettingInService()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingSettingInService()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "always"

    .prologue
    .line 875
    const-string v0, "SprintPhoneExtension"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 876
    return-void
.end method

.method private static putAbbreviatedDialingCodesDefaultTable()V
    .locals 4

    .prologue
    .line 559
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 561
    .local v2, resources:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 562
    .local v0, abbreviatedDialingCodesDefaultTableKeys:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 564
    .local v1, abbreviatedDialingCodesDefaultTableValues:[Ljava/lang/String;
    const-string v3, "abbreviated_dialing_codes_table_sprint"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 565
    const v3, 0x7f080073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 566
    const v3, 0x7f080074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 567
    sget v3, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    or-int/lit8 v3, v3, 0x4

    sput v3, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    .line 578
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->putAbbreviatedDialingCodesTable([Ljava/lang/String;[Ljava/lang/String;)V

    .line 579
    return-void

    .line 568
    :cond_1
    const-string v3, "abbreviated_dialing_codes_table_virgin"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 569
    const v3, 0x7f080075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 570
    const v3, 0x7f080076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 571
    sget v3, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    or-int/lit8 v3, v3, 0x8

    sput v3, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    goto :goto_0

    .line 572
    :cond_2
    const-string v3, "abbreviated_dialing_codes_table_boost"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 573
    const v3, 0x7f080077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 574
    const v3, 0x7f080078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 575
    sget v3, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    or-int/lit8 v3, v3, 0x10

    sput v3, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    goto :goto_0
.end method

.method private static putAbbreviatedDialingCodesTable([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "abbreviatedDialingCodesTableKeys"
    .parameter "abbreviatedDialingCodesTableValues"

    .prologue
    .line 583
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 590
    :cond_0
    return-void

    .line 586
    :cond_1
    array-length v1, p0

    array-length v2, p1

    if-ne v1, v2, :cond_0

    .line 587
    const/4 v0, 0x0

    .local v0, row:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 588
    sget-object v1, Lcom/android/phone/SprintPhoneExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static putCscChameleonDatabase()V
    .locals 1

    .prologue
    .line 496
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->cscChameleonEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->setAbbreviatedDialingCodesTable()V

    .line 498
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->putVisualVoicemailEnabled()V

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_0
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->putAbbreviatedDialingCodesDefaultTable()V

    goto :goto_0
.end method

.method private static putGenericAbbreviatedDialingCodesTable()V
    .locals 4

    .prologue
    .line 549
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 551
    .local v2, resources:Landroid/content/res/Resources;
    const v3, 0x7f080079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, abbreviatedDialingCodesDefaultTableKeys:[Ljava/lang/String;
    const v3, 0x7f08007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, abbreviatedDialingCodesDefaultTableValues:[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->putAbbreviatedDialingCodesTable([Ljava/lang/String;[Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method private static putVisualVoicemailEnabled()V
    .locals 3

    .prologue
    .line 505
    sget-object v1, Lcom/android/phone/SprintPhoneExtension;->mParser:Lcom/android/phone/CscParser;

    if-eqz v1, :cond_0

    .line 506
    sget-object v1, Lcom/android/phone/SprintPhoneExtension;->mParser:Lcom/android/phone/CscParser;

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->VISUAL_VOICEMAIL_NODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, visualVoicemailNode:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 508
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/SprintPhoneExtension;->mVisualVoicemailEnabled:Z

    .line 510
    :cond_0
    return-void
.end method

.method private static resetNetworkModeToDefault()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 756
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 757
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 759
    .local v1, settingsNetworkMode:I
    const-string v2, "reset_network_mode_to_default"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    if-ne v2, v1, :cond_0

    .line 761
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 762
    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mHandler:Lcom/android/phone/SprintPhoneExtension$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/SprintPhoneExtension$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 764
    :cond_0
    return-void
.end method

.method public static sendRejectCallWithMessagePendingList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 838
    const-string v2, "sendRejectCallWithMessagePendingList()"

    invoke-static {v2, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 839
    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 841
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendRejectCallWithMessagePendingList() - size() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/SprintPhoneExtension;->mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 842
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 843
    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/SprintPhoneExtension$RejectCallWithMessagePendingList;

    .line 844
    .local v1, rejectCallWithMessagePendingList:Lcom/android/phone/SprintPhoneExtension$RejectCallWithMessagePendingList;
    invoke-virtual {v1}, Lcom/android/phone/SprintPhoneExtension$RejectCallWithMessagePendingList;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/phone/SprintPhoneExtension$RejectCallWithMessagePendingList;->getPresetMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/SprintPhoneExtension;->sendRejectCallWithMessagePendingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 847
    .end local v1           #rejectCallWithMessagePendingList:Lcom/android/phone/SprintPhoneExtension$RejectCallWithMessagePendingList;
    :cond_0
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->clearRejectCallWithMessagePendingList()V

    .line 849
    :cond_1
    return-void
.end method

.method private static sendRejectCallWithMessagePendingList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "phoneNumber"
    .parameter "presetMessage"

    .prologue
    .line 852
    const-string v2, "sendRejectCallWithMessagePendingList"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 854
    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 855
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 856
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 858
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneGlobals;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 859
    return-void
.end method

.method private static setAbbreviatedDialingCodesTable()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 530
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->putGenericAbbreviatedDialingCodesTable()V

    .line 532
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080072

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, abbreviatedDialingCodesNodes:[Ljava/lang/String;
    sget-object v7, Lcom/android/phone/SprintPhoneExtension;->mParser:Lcom/android/phone/CscParser;

    if-eqz v7, :cond_1

    .line 534
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 535
    .local v0, abbreviatedDialingCodesNode:Ljava/lang/String;
    sget-object v7, Lcom/android/phone/SprintPhoneExtension;->mParser:Lcom/android/phone/CscParser;

    invoke-virtual {v7, v0}, Lcom/android/phone/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 536
    .local v5, parserAbbreviatedDialingCodes:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 538
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 539
    .local v6, splitAbbreviatedDialingCodes:[Ljava/lang/String;
    if-eqz v6, :cond_0

    const/4 v7, 0x2

    array-length v8, v6

    if-ne v7, v8, :cond_0

    aget-object v7, v6, v10

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    aget-object v7, v6, v11

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 542
    sget-object v7, Lcom/android/phone/SprintPhoneExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    aget-object v8, v6, v10

    aget-object v9, v6, v11

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    .end local v6           #splitAbbreviatedDialingCodes:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 546
    .end local v0           #abbreviatedDialingCodesNode:Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #parserAbbreviatedDialingCodes:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static setDataRoamingGuardInstance(Lcom/android/phone/DataRoamingGuard;)V
    .locals 2
    .parameter "dataRoamingGuard"

    .prologue
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataRoamingGuardInstance : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 363
    sput-object p0, Lcom/android/phone/SprintPhoneExtension;->mDataRoamingGuard:Lcom/android/phone/DataRoamingGuard;

    .line 364
    return-void
.end method

.method private static setNetworkModeToChameleonCode(Z)V
    .locals 8
    .parameter "homeOnly"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0xa

    const/16 v5, 0x8

    .line 767
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 768
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 770
    .local v1, settingsNetworkMode:I
    if-eqz p0, :cond_1

    .line 771
    if-eq v5, v1, :cond_0

    .line 772
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 773
    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mHandler:Lcom/android/phone/SprintPhoneExtension$MyHandler;

    invoke-virtual {v2, v7}, Lcom/android/phone/SprintPhoneExtension$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    if-eq v6, v1, :cond_0

    .line 777
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 778
    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mHandler:Lcom/android/phone/SprintPhoneExtension$MyHandler;

    invoke-virtual {v2, v7}, Lcom/android/phone/SprintPhoneExtension$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public static setPhoneNameKey()V
    .locals 3

    .prologue
    .line 127
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, phoneTypeName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPhoneNameKey - mPhoneNameKey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mPhoneNameKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / phoneTypeName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 130
    invoke-static {v0}, Lcom/android/phone/SprintPhoneExtension;->isPhoneNameKeyChanged(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-static {v0}, Lcom/android/phone/SprintPhoneExtension;->setPhoneNameKey(Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method public static setPhoneNameKey(Ljava/lang/String;)V
    .locals 2
    .parameter "phoneName"

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhoneNameKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 137
    sput-object p0, Lcom/android/phone/SprintPhoneExtension;->mPhoneNameKey:Ljava/lang/String;

    .line 138
    return-void
.end method

.method private static setPreferredNetworkModeEntry(Z)V
    .locals 2
    .parameter "homeOnly"

    .prologue
    .line 784
    const-string v0, "network_mode_cdma_lte"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneFeature;->putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 785
    const-string v1, "network_mode_automatic_cdma_lte_gsm"

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/PhoneFeature;->putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 786
    return-void

    .line 785
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSecureSettingDataRoaming()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 324
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 325
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / data_roaming - domestic_cdma_data_roaming_setting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "roam_setting_data_domestic"

    invoke-static {v2, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / data_roaming - international_cdma_data_roaming_setting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "roam_setting_data_international"

    invoke-static {v2, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 330
    const-string v1, "roam_setting_data_domestic"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "roam_setting_data_international"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    :cond_0
    const-string v1, "data_roaming"

    invoke-static {v1, v4}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 346
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / data_roaming : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v2, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 347
    return-void

    .line 334
    :cond_1
    const-string v1, "data_roaming"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 335
    :cond_2
    if-eq v0, v4, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 338
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / data_roaming - international_gsm_data_roaming_setting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sprint_gsm_data_roaming"

    invoke-static {v2, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 339
    const-string v1, "sprint_gsm_data_roaming"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 340
    const-string v1, "data_roaming"

    invoke-static {v1, v4}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 342
    :cond_4
    const-string v1, "data_roaming"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 344
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setSecureSettingValue(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 358
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    return-void
.end method

.method public static setShowCallRoamingGuardDialog(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShowCallRoamingGuardDialog : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    .line 372
    sput-boolean p0, Lcom/android/phone/SprintPhoneExtension;->mShowCallRoamingGuardDialog:Z

    .line 373
    return-void
.end method

.method private static setSystemSelectHomeOnlyEntry(Z)V
    .locals 2
    .parameter "homeOnly"

    .prologue
    .line 789
    const-string v0, "system_select_home_only_entry"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneFeature;->putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 790
    return-void
.end method

.method private static systemSelectAutomatic()V
    .locals 4

    .prologue
    .line 744
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 745
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    const-string v1, "roaming_settings"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 746
    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mHandler:Lcom/android/phone/SprintPhoneExtension$MyHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/phone/SprintPhoneExtension$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 747
    return-void
.end method

.method private static systemSelectHomeOnly()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 750
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 751
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    const-string v1, "roaming_settings"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 752
    sget-object v1, Lcom/android/phone/SprintPhoneExtension;->mHandler:Lcom/android/phone/SprintPhoneExtension$MyHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/phone/SprintPhoneExtension$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 753
    return-void
.end method

.method private static systemSelectRoamingType(I)V
    .locals 1
    .parameter "cdmaRoamingType"

    .prologue
    .line 730
    if-nez p0, :cond_1

    .line 731
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->systemSelectHomeOnly()V

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    .line 733
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->systemSelectAutomatic()V

    goto :goto_0
.end method

.method private static systemSelectSalesCode()V
    .locals 1

    .prologue
    .line 737
    const-string v0, "system_select_home_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->systemSelectHomeOnly()V

    .line 741
    :goto_0
    return-void

    .line 740
    :cond_0
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->systemSelectAutomatic()V

    goto :goto_0
.end method
