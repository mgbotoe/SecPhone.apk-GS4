.class public Lcom/android/phone/InCallMenu;
.super Ljava/lang/Object;
.source "InCallMenu.java"


# static fields
.field private static ONE_HAND_ENABLED:Ljava/lang/String;


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mChatOnID:Ljava/lang/String;

.field private mContactIdForChatOn:I

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mInPSVTCallMenu:Lcom/android/phone/InPSVTCallMenu;

.field private mParticipantUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "onehand_dialer_enabled"

    sput-object v0, Lcom/android/phone/InCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 2
    .parameter "inCallScreen"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mParticipantUri:Ljava/lang/String;

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InCallMenu;->mContactIdForChatOn:I

    .line 80
    const-string v0, "InCallMenu constructor..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;Z)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 85
    iput-object p1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 87
    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lcom/android/phone/InPSVTCallMenu;

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v1}, Lcom/android/phone/InPSVTCallMenu;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mInPSVTCallMenu:Lcom/android/phone/InPSVTCallMenu;

    .line 89
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInPSVTCallMenu:Lcom/android/phone/InPSVTCallMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/InPSVTCallMenu;->setMenuSelected(I)V

    .line 91
    :cond_0
    return-void
.end method

.method private IsActiveRcsFT()Z
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 850
    const/4 v7, 0x0

    .line 851
    .local v7, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 852
    .local v8, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 853
    .local v6, bgCall:Lcom/android/internal/telephony/Call;
    const/4 v9, 0x0

    .line 854
    .local v9, isAvailableFT:Z
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v10

    .line 856
    .local v10, telNum:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 857
    invoke-static {v10}, Lcom/android/phone/RcsShare;->generateTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mParticipantUri:Ljava/lang/String;

    .line 858
    sget-object v0, Lcom/android/phone/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mParticipantUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 859
    .local v1, queryUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/phone/RcsTransferConstants;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 861
    .end local v1           #queryUri:Landroid/net/Uri;
    :cond_0
    if-eqz v7, :cond_2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 862
    if-nez v8, :cond_1

    .line 863
    move-object v8, v6

    .line 864
    :cond_1
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 865
    invoke-static {v7}, Lcom/android/phone/RcsShare;->isRcsFTAvailable(Landroid/database/Cursor;)Z

    move-result v9

    .line 868
    :cond_2
    if-eqz v7, :cond_3

    .line 869
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 870
    :cond_3
    return v9
.end method

.method private getChatONIdFromContactId(I)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 817
    .line 818
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 819
    const-string v1, "limit"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 820
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 821
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "sync1"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_type=\'com.sec.chaton\' AND contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 828
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 829
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 831
    :cond_0
    if-eqz v0, :cond_1

    .line 832
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 834
    :cond_1
    return-object v4
.end method

.method private handleOneHandMode()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 752
    const-string v3, "support_onehand_operation"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 753
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/phone/InCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 755
    .local v0, isOnehandOn:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 756
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/phone/InCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 757
    const-string v1, "ssuport_hand_adapt_operation"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getHandAdaptEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    const-string v1, "onehand on"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 759
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->unregistCallHandGripChangeObserver()V

    .line 760
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->setHandGripCondition(Z)V

    .line 762
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 773
    .end local v0           #isOnehandOn:Z
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 753
    goto :goto_0

    .line 764
    .restart local v0       #isOnehandOn:Z
    :cond_3
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/phone/InCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 765
    const-string v2, "ssuport_hand_adapt_operation"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getHandAdaptEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 766
    const-string v2, "one hand off"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 767
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->registCallHandGripChangeObserver()V

    .line 768
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v1}, Lcom/android/phone/InCallScreen;->setHandGripCondition(Z)V

    .line 770
    :cond_4
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_1
.end method

.method private launchChatON()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 838
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 839
    const-string v0, "launchChatON() : mChatOnID is null"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;Z)V

    .line 848
    :goto_0
    return-void

    .line 842
    :cond_0
    const-string v0, "launchChatON "

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;Z)V

    .line 844
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    const-string v2, "chaton://file"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 845
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 846
    const-string v1, "receiver"

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private launchMemo()V
    .locals 2

    .prologue
    .line 801
    const-string v0, "service_memo_during_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.MEMO_OPEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 803
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 814
    :goto_0
    return-void

    .line 805
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 806
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 807
    const-string v1, "android.intent.action.MEMO_CREATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 810
    :catch_0
    move-exception v0

    .line 811
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private launchMessage()V
    .locals 4

    .prologue
    .line 776
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 779
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    const-string v1, "mms_non_oma"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 783
    const-string v1, "com.btb.intent.action.MESSAGE_START_MSGBOX"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 793
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    :goto_1
    return-void

    .line 784
    :cond_0
    const-string v1, "feature_kdi"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 785
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.kddi.android.cmail"

    const-string v3, "com.kddi.android.cmail.ui.detail.NewMessageActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 788
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.ConversationComposer"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 794
    :catch_0
    move-exception v0

    .line 795
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private launchRcsFileTransfer()V
    .locals 4

    .prologue
    .line 875
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 876
    const-string v1, "com.samsung.rcs"

    const-string v2, "com.samsung.rcs.filetransfer.TransferContentActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 878
    const-string v1, "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 880
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mParticipantUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 881
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    :goto_0
    return-void

    .line 882
    :catch_0
    move-exception v0

    .line 883
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f09061a

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FT Failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 946
    const-string v0, "InCallMenu"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 950
    const-string v0, "InCallMenu"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 951
    return-void
.end method

.method private prepareOptionMenuForEasyMode(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 106
    const/4 v0, 0x0

    .line 108
    .local v0, currentMuteState:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 109
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 110
    .local v3, itemId:I
    packed-switch v3, :pswitch_data_0

    .line 122
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 123
    .local v1, etc:Landroid/view/MenuItem;
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 108
    .end local v1           #etc:Landroid/view/MenuItem;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :pswitch_0
    const v6, 0x7f0a03c6

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 114
    .local v5, muteOn:Landroid/view/MenuItem;
    const v6, 0x7f0a03c5

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 115
    .local v4, muteOff:Landroid/view/MenuItem;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    .line 116
    const v6, 0x7f020612

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 117
    const v6, 0x7f020613

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 118
    if-nez v0, :cond_0

    move v6, v7

    :goto_2
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 119
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    move v6, v8

    .line 118
    goto :goto_2

    .line 128
    .end local v3           #itemId:I
    .end local v4           #muteOff:Landroid/view/MenuItem;
    .end local v5           #muteOn:Landroid/view/MenuItem;
    :cond_1
    return v7

    .line 110
    :pswitch_data_0
    .packed-switch 0x7f0a03c5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected clearInCallScreenReference()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 95
    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInPSVTCallMenu:Lcom/android/phone/InPSVTCallMenu;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInPSVTCallMenu:Lcom/android/phone/InPSVTCallMenu;

    invoke-virtual {v0}, Lcom/android/phone/InPSVTCallMenu;->clearVTCommonFunctionReference()V

    .line 100
    :cond_0
    return-void
.end method

.method public onPressNoiseReductionMenu()V
    .locals 6

    .prologue
    const v5, 0x7f090396

    const v4, 0x7f090395

    const v3, 0x7f090393

    const v2, 0x7f090394

    .line 904
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 907
    invoke-virtual {p0}, Lcom/android/phone/InCallMenu;->shouldShowHeadsetToast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 908
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/RcsShare;->isShareInSession(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 909
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    .line 941
    :goto_0
    return-void

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/RcsShare;->sendToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 912
    :cond_1
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 913
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/RcsShare;->isShareInSession(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 914
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_0

    .line 916
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v3}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/RcsShare;->sendToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 917
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "noise_suppression_support_speaker"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 919
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/RcsShare;->isShareInSession(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 920
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_0

    .line 922
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v4}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/RcsShare;->sendToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 923
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSupportedNoiseReductionInWBMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isWBMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 925
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/RcsShare;->isShareInSession(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 926
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_0

    .line 928
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v5}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/RcsShare;->sendToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 929
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isHacEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 931
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto/16 :goto_0

    .line 935
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 936
    :goto_1
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->noiseReductionBroadcast(Landroid/content/Context;I)V

    .line 937
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 939
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f09037a

    :goto_2
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto/16 :goto_0

    .line 935
    :cond_9
    const/4 v0, 0x1

    goto :goto_1

    .line 939
    :cond_a
    const v0, 0x7f090379

    goto :goto_2
.end method

.method protected optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 610
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- optionsItemSelected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 611
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 612
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  title: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 614
    iget-object v7, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v7, :cond_0

    .line 615
    const-string v7, "InCallMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "optionsItemSelected("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), but null mInCallScreen!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 748
    :goto_0
    return v5

    .line 618
    :cond_0
    iget-object v7, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 619
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v7, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 621
    .local v3, rCall:Lcom/android/internal/telephony/Call;
    const-string v7, "common_volte"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 623
    :cond_1
    iget-object v7, p0, Lcom/android/phone/InCallMenu;->mInPSVTCallMenu:Lcom/android/phone/InPSVTCallMenu;

    invoke-virtual {v7, p1}, Lcom/android/phone/InPSVTCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 624
    goto :goto_0

    .line 628
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 743
    const-string v6, "InCallMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "optionsItemSelected:  unexpected View ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (MenuItem = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\')"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 643
    :sswitch_0
    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    :goto_1
    move v5, v6

    .line 748
    goto :goto_0

    .line 647
    :sswitch_1
    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v7, 0x7f0a01ad

    invoke-virtual {v5, v7}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 651
    :sswitch_2
    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v7, 0x7f0a0124

    invoke-virtual {v5, v7}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 655
    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/InCallMenu;->launchMessage()V

    .line 656
    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->inCallmoveTaskToBack()V

    goto :goto_1

    .line 660
    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/InCallMenu;->launchMemo()V

    goto :goto_1

    .line 665
    :sswitch_5
    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v7, 0x7f0a01b1

    invoke-virtual {v5, v7}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 669
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/phone/InCallMenu;->onPressNoiseReductionMenu()V

    goto :goto_1

    .line 673
    :sswitch_7
    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->onPressVoiceCallEqMenu()V

    goto :goto_1

    .line 677
    :sswitch_8
    invoke-direct {p0}, Lcom/android/phone/InCallMenu;->launchChatON()V

    goto :goto_1

    .line 680
    :sswitch_9
    invoke-direct {p0}, Lcom/android/phone/InCallMenu;->launchRcsFileTransfer()V

    goto :goto_1

    .line 683
    :sswitch_a
    const-string v5, "feature_chn_duos_gsm_gsm"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 684
    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v5

    if-nez v5, :cond_3

    .line 685
    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.stk.start_main_activity"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 687
    :cond_3
    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.stk.start_main_activity2"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 688
    :cond_4
    const-string v5, "sec_product_feature_common_dsds_support"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 690
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.stk.start_main_activity"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 691
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->getActiveSimId()I

    move-result v5

    if-nez v5, :cond_5

    .line 692
    const/4 v4, 0x0

    .line 696
    .local v4, simId:I
    :goto_2
    const-string v5, "simId"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 697
    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5, v1}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 694
    .end local v4           #simId:I
    :cond_5
    const/4 v4, 0x1

    .restart local v4       #simId:I
    goto :goto_2

    .line 698
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #simId:I
    :cond_6
    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 699
    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.stk.start_main_activity"

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 701
    :cond_7
    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.stk.start_main_activity"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 706
    :sswitch_b
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 707
    .local v2, intents:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v7, "com.samsung.bst.uimdual"

    const-string v8, "com.samsung.bst.uimdual.RegisterCardInfo"

    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 708
    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5, v2}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 712
    .end local v2           #intents:Landroid/content/Intent;
    :sswitch_c
    const-string v5, "feature_chn_duos"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 713
    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->explicitCallTransfer(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_1

    .line 715
    :cond_8
    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->explicitCallTransfer(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_1

    .line 720
    :sswitch_d
    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v7, 0x7f0a01b5

    invoke-virtual {v5, v7}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 724
    :sswitch_e
    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v7, 0x7f0a01af

    invoke-virtual {v5, v7}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 728
    :sswitch_f
    invoke-direct {p0}, Lcom/android/phone/InCallMenu;->handleOneHandMode()V

    goto/16 :goto_1

    .line 733
    :sswitch_10
    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v7, 0x7f0a009a

    invoke-virtual {v5, v7}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 736
    :sswitch_11
    const-string v5, " Menu : Select camera on"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 737
    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->onModifyCallByCameraButton()V

    goto/16 :goto_1

    .line 740
    :sswitch_12
    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v7, 0x7f0a03cb

    invoke-virtual {v5, v7}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 628
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00ea -> :sswitch_3
        0x7f0a0366 -> :sswitch_6
        0x7f0a03b8 -> :sswitch_e
        0x7f0a03b9 -> :sswitch_0
        0x7f0a03ba -> :sswitch_1
        0x7f0a03bb -> :sswitch_2
        0x7f0a03bc -> :sswitch_4
        0x7f0a03bd -> :sswitch_5
        0x7f0a03be -> :sswitch_5
        0x7f0a03bf -> :sswitch_7
        0x7f0a03c0 -> :sswitch_8
        0x7f0a03c1 -> :sswitch_9
        0x7f0a03c2 -> :sswitch_c
        0x7f0a03c3 -> :sswitch_d
        0x7f0a03c4 -> :sswitch_d
        0x7f0a03c5 -> :sswitch_10
        0x7f0a03c6 -> :sswitch_10
        0x7f0a03c7 -> :sswitch_f
        0x7f0a03c8 -> :sswitch_a
        0x7f0a03c9 -> :sswitch_b
        0x7f0a03ca -> :sswitch_11
        0x7f0a03cb -> :sswitch_12
    .end sparse-switch
.end method

.method protected prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 47
    .parameter "menu"

    .prologue
    .line 132
    const-string v44, "prepareOptionsMenu()..."

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v17

    .line 141
    .local v17, inCallControlState:Lcom/android/phone/InCallControlState;
    const-string v44, "feature_chn_duos"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_2

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/phone/InCallScreen;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    .line 143
    .local v15, fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/phone/InCallScreen;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 144
    .local v6, bgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/phone/InCallScreen;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v35

    .line 153
    .local v35, rCall:Lcom/android/internal/telephony/Call;
    :goto_0
    const-string v44, "tablet_device"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_3

    .line 154
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v44

    if-eqz v44, :cond_0

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v44

    if-eqz v44, :cond_3

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v44

    if-eqz v44, :cond_3

    .line 155
    :cond_0
    const/16 v36, 0x0

    .line 606
    :cond_1
    :goto_1
    return v36

    .line 146
    .end local v6           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v15           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v35           #rCall:Lcom/android/internal/telephony/Call;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    .line 147
    .restart local v15       #fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 148
    .restart local v6       #bgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v35

    .restart local v35       #rCall:Lcom/android/internal/telephony/Call;
    goto :goto_0

    .line 159
    :cond_3
    const-string v44, "support_easy_mode"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v44

    if-eqz v44, :cond_5

    .line 162
    const/16 v36, 0x0

    .line 163
    .local v36, result:Z
    const-string v44, "mute_menu_in_easy_mode"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_4

    .line 164
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/InCallMenu;->prepareOptionMenuForEasyMode(Landroid/view/Menu;)Z

    move-result v36

    .line 166
    :cond_4
    const-string v44, "common_volte_vt_kor"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_1

    .line 167
    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v44

    if-eqz v44, :cond_1

    .line 174
    .end local v36           #result:Z
    :cond_5
    const-string v44, "support_nsri_secure"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_6

    .line 175
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/phone/PhoneGlobals;->isNSRISecureCall()Z

    move-result v44

    if-eqz v44, :cond_6

    const/16 v36, 0x0

    goto :goto_1

    .line 178
    :cond_6
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v44

    move/from16 v0, v16

    move/from16 v1, v44

    if-ge v0, v1, :cond_4b

    .line 179
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Landroid/view/MenuItem;->getItemId()I

    move-result v22

    .line 180
    .local v22, itemId:I
    sparse-switch v22, :sswitch_data_0

    .line 178
    :cond_7
    :goto_3
    :sswitch_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 183
    :sswitch_1
    const v44, 0x7f0a03c6

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v29

    .line 184
    .local v29, muteOn:Landroid/view/MenuItem;
    const v44, 0x7f0a03c5

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v28

    .line 185
    .local v28, muteOff:Landroid/view/MenuItem;
    const/16 v44, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 186
    const/16 v44, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 191
    .end local v28           #muteOff:Landroid/view/MenuItem;
    .end local v29           #muteOn:Landroid/view/MenuItem;
    :sswitch_2
    const v44, 0x7f0a03bb

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v23

    .line 192
    .local v23, launchContact:Landroid/view/MenuItem;
    const v44, 0x7f020614

    move-object/from16 v0, v23

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 193
    const-string v44, "no_receiver_in_call"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_8

    .line 194
    const/16 v44, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 196
    :cond_8
    const/16 v44, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 202
    .end local v23           #launchContact:Landroid/view/MenuItem;
    :sswitch_3
    const v44, 0x7f0a03b8

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v26

    .line 203
    .local v26, mergeCalls:Landroid/view/MenuItem;
    const v44, 0x7f020626

    move-object/from16 v0, v26

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 204
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    move/from16 v44, v0

    if-eqz v44, :cond_c

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v44

    sget-object v45, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_c

    const-string v44, "voice_call_recording"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_9

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    move/from16 v44, v0

    if-nez v44, :cond_9

    const-string v44, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_a

    :cond_9
    const-string v44, "support_merge_call"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_b

    :cond_a
    const-string v44, "ims_rcs"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_c

    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v44

    if-eqz v44, :cond_c

    .line 210
    :cond_b
    const/16 v44, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 212
    :cond_c
    const/16 v44, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 217
    .end local v26           #mergeCalls:Landroid/view/MenuItem;
    :sswitch_4
    const v44, 0x7f0a03b9

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v24

    .line 218
    .local v24, manageCofCall:Landroid/view/MenuItem;
    const v44, 0x7f020610

    move-object/from16 v0, v24

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 219
    if-eqz v15, :cond_12

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v44

    if-eqz v44, :cond_12

    const-string v44, "manage_conference_call_menu_disable"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_d

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v44

    const/16 v45, 0x2

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_12

    :cond_d
    const-string v44, "onscreen_manage_conference"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_12

    .line 225
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v44

    const-string v45, "com.movial.ipphone.IPPhone"

    invoke-static/range {v45 .. v45}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_11

    .line 226
    const/16 v44, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_4
    const-string v44, "feature_ctc"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_e

    const-string v44, "feature_lgt"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_f

    .line 245
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v44, v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v33

    .line 246
    .local v33, phoneType:I
    const/16 v44, 0x2

    move/from16 v0, v33

    move/from16 v1, v44

    if-ne v0, v1, :cond_f

    .line 247
    const/16 v44, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 251
    .end local v33           #phoneType:I
    :cond_f
    const-string v44, "feature_kdi"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_10

    .line 252
    const/16 v44, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 258
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v44, v0

    sget-object v45, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_7

    .line 259
    const/16 v44, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 228
    :cond_11
    const/16 v44, 0x1

    :try_start_1
    move-object/from16 v0, v24

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 230
    :catch_0
    move-exception v14

    .line 231
    .local v14, e:Ljava/lang/Exception;
    const-string v44, "IPPhone doesn\'t exists"

    const/16 v45, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;Z)V

    goto :goto_4

    .line 236
    .end local v14           #e:Ljava/lang/Exception;
    :cond_12
    if-eqz v15, :cond_13

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v44

    if-eqz v44, :cond_13

    const-string v44, "global_network_cdma_gsm_enable"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v44, v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_13

    .line 239
    const/16 v44, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 241
    :cond_13
    const/16 v44, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 263
    .end local v24           #manageCofCall:Landroid/view/MenuItem;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v21

    .line 264
    .local v21, isWebExEnabled:Z
    const v44, 0x7f0a03ba

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 265
    .local v4, addCall:Landroid/view/MenuItem;
    const v44, 0x7f020605

    move/from16 v0, v44

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 268
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    move/from16 v44, v0

    if-eqz v44, :cond_17

    if-nez v21, :cond_14

    const-string v44, "ims_rcs"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_17

    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v44

    if-eqz v44, :cond_17

    .line 270
    :cond_14
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 275
    :goto_5
    const-string v44, "roaming_auto_dial"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_15

    .line 276
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v33

    .line 277
    .restart local v33       #phoneType:I
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v44

    if-eqz v44, :cond_15

    const/16 v44, 0x2

    move/from16 v0, v33

    move/from16 v1, v44

    if-ne v0, v1, :cond_15

    .line 278
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 281
    .end local v33           #phoneType:I
    :cond_15
    const-string v44, "voice_call_recording"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_16

    const-string v44, "voice_call_recording_menu"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_16

    .line 283
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    move/from16 v44, v0

    move/from16 v0, v44

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 285
    :cond_16
    const-string v44, "common_volte"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneUtils;->isIMSVideoCallActive(Lcom/android/internal/telephony/Call;)Z

    move-result v44

    if-eqz v44, :cond_7

    .line 287
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    move/from16 v44, v0

    move/from16 v0, v44

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 272
    :cond_17
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    .line 293
    .end local v4           #addCall:Landroid/view/MenuItem;
    .end local v21           #isWebExEnabled:Z
    :sswitch_6
    const v44, 0x7f0a03bd

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v39

    .line 294
    .local v39, startRecord:Landroid/view/MenuItem;
    const v44, 0x7f0a03be

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v40

    .line 295
    .local v40, stopRecord:Landroid/view/MenuItem;
    const v44, 0x7f02061c

    move-object/from16 v0, v39

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 296
    const v44, 0x7f02061d

    move-object/from16 v0, v40

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 297
    const/16 v44, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 298
    const/16 v44, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 299
    const-string v44, "voice_call_recording"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_19

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v44

    if-nez v44, :cond_18

    const-string v44, "voice_call_recording_menu"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_18

    const-string v44, "ims_rcs"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_19

    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v44

    if-eqz v44, :cond_19

    .line 302
    :cond_18
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v20

    .line 303
    .local v20, isRecording:Z
    if-nez v20, :cond_1b

    const/16 v44, 0x1

    :goto_6
    move-object/from16 v0, v39

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 304
    move-object/from16 v0, v40

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 306
    if-eqz v20, :cond_1c

    .line 307
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canRecord:Z

    move/from16 v44, v0

    move-object/from16 v0, v40

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 313
    .end local v20           #isRecording:Z
    :cond_19
    :goto_7
    const-string v44, "automatic_answering_machine"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_7

    .line 314
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isPlayGuidance()Z

    move-result v44

    if-nez v44, :cond_1a

    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v44

    if-eqz v44, :cond_7

    .line 315
    :cond_1a
    const/16 v44, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 316
    const/16 v44, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 303
    .restart local v20       #isRecording:Z
    :cond_1b
    const/16 v44, 0x0

    goto :goto_6

    .line 309
    :cond_1c
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canRecord:Z

    move/from16 v44, v0

    move-object/from16 v0, v39

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_7

    .line 323
    .end local v20           #isRecording:Z
    .end local v39           #startRecord:Landroid/view/MenuItem;
    .end local v40           #stopRecord:Landroid/view/MenuItem;
    :sswitch_7
    const v44, 0x7f0a00ea

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    .line 324
    .local v27, message:Landroid/view/MenuItem;
    const v44, 0x7f020606

    move-object/from16 v0, v27

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 325
    const-string v44, "feature_kdi"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_20

    .line 326
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v33

    .line 327
    .restart local v33       #phoneType:I
    const/16 v44, 0x2

    move/from16 v0, v33

    move/from16 v1, v44

    if-ne v0, v1, :cond_1d

    .line 328
    const/16 v44, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 330
    :cond_1d
    const-string v44, "menu_message"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_1e

    const-string v44, "in_call_menu_message_enable"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_1f

    :cond_1e
    const/16 v44, 0x1

    :goto_8
    move-object/from16 v0, v27

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_1f
    const/16 v44, 0x0

    goto :goto_8

    .line 333
    .end local v33           #phoneType:I
    :cond_20
    const-string v44, "menu_message"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_21

    const-string v44, "in_call_menu_message_enable"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_22

    :cond_21
    const/16 v44, 0x1

    :goto_9
    move-object/from16 v0, v27

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_22
    const/16 v44, 0x0

    goto :goto_9

    .line 338
    .end local v27           #message:Landroid/view/MenuItem;
    :sswitch_8
    const v44, 0x7f0a03bc

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    .line 339
    .local v25, memo:Landroid/view/MenuItem;
    const v44, 0x7f020611

    move-object/from16 v0, v25

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 340
    const-string v44, "use_snote_string"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_24

    .line 341
    const v44, 0x7f090377

    move-object/from16 v0, v25

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 346
    :cond_23
    :goto_a
    const-string v44, "in_call_menu_memo_enable"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    move-object/from16 v0, v25

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 342
    :cond_24
    const-string v44, "use_action_memo_string"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_23

    .line 343
    const v44, 0x7f090378

    move-object/from16 v0, v25

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_a

    .line 350
    .end local v25           #memo:Landroid/view/MenuItem;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 351
    .local v34, previousChatOnID:Ljava/lang/String;
    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    .line 353
    const-string v44, "feature_chn_duos"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_27

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v18

    .line 358
    .local v18, isMulticall:Z
    :goto_b
    if-nez v18, :cond_26

    .line 359
    if-nez v15, :cond_25

    .line 360
    move-object v15, v6

    .line 362
    :cond_25
    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v44

    if-nez v44, :cond_26

    .line 363
    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    .line 364
    .local v13, conn:Lcom/android/internal/telephony/Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-static {v0, v13}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v12

    .line 365
    .local v12, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v12, :cond_29

    iget-boolean v0, v12, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move/from16 v44, v0

    if-eqz v44, :cond_29

    .line 366
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallMenu;->mContactIdForChatOn:I

    move/from16 v44, v0

    iget-wide v0, v12, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v45, v0

    move-wide/from16 v0, v45

    long-to-int v0, v0

    move/from16 v45, v0

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_28

    .line 368
    iget-wide v0, v12, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/InCallMenu;->mContactIdForChatOn:I

    .line 369
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallMenu;->mContactIdForChatOn:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/phone/InCallMenu;->getChatONIdFromContactId(I)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    .line 379
    .end local v12           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v13           #conn:Lcom/android/internal/telephony/Connection;
    :cond_26
    :goto_c
    const v44, 0x7f0a03c0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 380
    .local v11, chatOnItem:Landroid/view/MenuItem;
    const v44, 0x7f020619

    move/from16 v0, v44

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    move-object/from16 v44, v0

    if-nez v44, :cond_2a

    .line 382
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 356
    .end local v11           #chatOnItem:Landroid/view/MenuItem;
    .end local v18           #isMulticall:Z
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v18

    .restart local v18       #isMulticall:Z
    goto/16 :goto_b

    .line 371
    .restart local v12       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v13       #conn:Lcom/android/internal/telephony/Connection;
    :cond_28
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    goto :goto_c

    .line 374
    :cond_29
    const/16 v44, -0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/InCallMenu;->mContactIdForChatOn:I

    goto :goto_c

    .line 384
    .end local v12           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v13           #conn:Lcom/android/internal/telephony/Connection;
    .restart local v11       #chatOnItem:Landroid/view/MenuItem;
    :cond_2a
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 388
    .end local v11           #chatOnItem:Landroid/view/MenuItem;
    .end local v18           #isMulticall:Z
    .end local v34           #previousChatOnID:Ljava/lang/String;
    :sswitch_a
    const v44, 0x7f0a03c1

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 389
    .local v3, RcsFileTransferItem:Landroid/view/MenuItem;
    const v44, 0x7f02060e

    move/from16 v0, v44

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 390
    const-string v44, "ims_rcs"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_2d

    .line 391
    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v44

    if-eqz v44, :cond_2c

    .line 392
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 393
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallMenu;->IsActiveRcsFT()Z

    move-result v44

    if-eqz v44, :cond_2b

    .line 394
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 396
    :cond_2b
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 399
    :cond_2c
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 402
    :cond_2d
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 407
    .end local v3           #RcsFileTransferItem:Landroid/view/MenuItem;
    :sswitch_b
    const v44, 0x7f0a03bf

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v43

    .line 408
    .local v43, voiceEQ:Landroid/view/MenuItem;
    const v44, 0x7f020608

    invoke-interface/range {v43 .. v44}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v44

    if-eqz v44, :cond_2e

    .line 410
    const/16 v44, 0x1

    invoke-interface/range {v43 .. v44}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 417
    :goto_d
    const/16 v44, 0x0

    invoke-interface/range {v43 .. v44}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 412
    :cond_2e
    const/16 v44, 0x0

    invoke-interface/range {v43 .. v44}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_d

    .line 420
    .end local v43           #voiceEQ:Landroid/view/MenuItem;
    :sswitch_c
    const v44, 0x7f0a0366

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v30

    .line 421
    .local v30, noiseReductionItem:Landroid/view/MenuItem;
    const v44, 0x7f020615

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 422
    const/16 v44, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v44

    if-eqz v44, :cond_30

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v44

    if-eqz v44, :cond_2f

    .line 425
    const/16 v44, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 435
    :goto_e
    const/16 v44, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 427
    :cond_2f
    const/16 v44, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_e

    .line 430
    :cond_30
    const/16 v44, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_e

    .line 439
    .end local v30           #noiseReductionItem:Landroid/view/MenuItem;
    :sswitch_d
    const-string v44, "feature_chn_duos_gsm_gsm"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_33

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/phone/InCallScreen;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v44

    if-nez v44, :cond_32

    .line 441
    const-string v44, "gsm.STK_SETUP_MENU"

    invoke-static/range {v44 .. v44}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 454
    .local v37, simService:Ljava/lang/String;
    :goto_f
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "simService - "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 455
    const v44, 0x7f0a03c8

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v38

    .line 456
    .local v38, simServices:Landroid/view/MenuItem;
    const-string v44, "feature_ctc"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_31

    const-string v44, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_31

    const-string v44, "ctc_dual_mode_single_phone_byqc"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_31

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v44, v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v33

    .line 460
    .restart local v33       #phoneType:I
    const/16 v44, 0x2

    move/from16 v0, v33

    move/from16 v1, v44

    if-ne v0, v1, :cond_31

    .line 461
    const v44, 0x7f09038a

    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 464
    .end local v33           #phoneType:I
    :cond_31
    const v44, 0x7f02061b

    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 465
    if-eqz v37, :cond_37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v44

    if-lez v44, :cond_37

    const/16 v44, 0x1

    :goto_10
    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 443
    .end local v37           #simService:Ljava/lang/String;
    .end local v38           #simServices:Landroid/view/MenuItem;
    :cond_32
    const-string v44, "gsm.STK_SETUP_MENU2"

    invoke-static/range {v44 .. v44}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .restart local v37       #simService:Ljava/lang/String;
    goto/16 :goto_f

    .line 444
    .end local v37           #simService:Ljava/lang/String;
    :cond_33
    const-string v44, "sec_product_feature_common_dsds_support"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_35

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/phone/InCallScreen;->getActiveSimId()I

    move-result v44

    if-nez v44, :cond_34

    .line 446
    const-string v44, "gsm.STK_SETUP_MENU"

    invoke-static/range {v44 .. v44}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .restart local v37       #simService:Ljava/lang/String;
    goto/16 :goto_f

    .line 448
    .end local v37           #simService:Ljava/lang/String;
    :cond_34
    const-string v44, "gsm.STK_SETUP_MENU2"

    invoke-static/range {v44 .. v44}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .restart local v37       #simService:Ljava/lang/String;
    goto/16 :goto_f

    .line 449
    .end local v37           #simService:Ljava/lang/String;
    :cond_35
    const-string v44, "feature_multisim"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_36

    .line 450
    const-string v44, "gsm.STK_SETUP_MENU"

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v45

    invoke-static/range {v44 .. v45}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    .restart local v37       #simService:Ljava/lang/String;
    goto/16 :goto_f

    .line 452
    .end local v37           #simService:Ljava/lang/String;
    :cond_36
    const-string v44, "gsm.STK_SETUP_MENU"

    invoke-static/range {v44 .. v44}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .restart local v37       #simService:Ljava/lang/String;
    goto/16 :goto_f

    .line 465
    .restart local v38       #simServices:Landroid/view/MenuItem;
    :cond_37
    const/16 v44, 0x0

    goto :goto_10

    .line 468
    .end local v37           #simService:Ljava/lang/String;
    .end local v38           #simServices:Landroid/view/MenuItem;
    :sswitch_e
    const v44, 0x7f0a03c9

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v42

    .line 469
    .local v42, uimServices:Landroid/view/MenuItem;
    const v44, 0x7f02061b

    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 470
    const-string v44, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_38

    const-string v44, "ctc_dual_mode_single_phone_byqc"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_3b

    .line 472
    :cond_38
    const-string v44, "gsm.UTK_SETUP_MENU"

    invoke-static/range {v44 .. v44}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 473
    .local v41, uimService:Ljava/lang/String;
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "uimService - "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 474
    if-eqz v41, :cond_39

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v44

    if-lez v44, :cond_39

    const/16 v44, 0x1

    :goto_11
    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 475
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, " UIM - "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    if-eqz v41, :cond_3a

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v44

    if-lez v44, :cond_3a

    const/16 v44, 0x1

    :goto_12
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 474
    :cond_39
    const/16 v44, 0x0

    goto :goto_11

    .line 475
    :cond_3a
    const/16 v44, 0x0

    goto :goto_12

    .line 477
    .end local v41           #uimService:Ljava/lang/String;
    :cond_3b
    const/16 v44, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 482
    .end local v42           #uimServices:Landroid/view/MenuItem;
    :sswitch_f
    const v44, 0x7f0a03c2

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 483
    .local v9, callTransfer:Landroid/view/MenuItem;
    const v44, 0x7f020607

    move/from16 v0, v44

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 485
    const-string v44, "support_call_transfer"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_3e

    if-eqz v15, :cond_3e

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v44

    if-nez v44, :cond_3e

    if-eqz v6, :cond_3e

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v44

    if-nez v44, :cond_3e

    .line 487
    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v44

    if-nez v44, :cond_7

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v44

    if-nez v44, :cond_7

    .line 489
    const-string v44, "feature_kor"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_3d

    .line 490
    invoke-static {v15}, Lcom/android/phone/PhoneUtilsExt;->isCSCall(Lcom/android/internal/telephony/Call;)Z

    move-result v44

    if-eqz v44, :cond_3c

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsExt;->isCSCall(Lcom/android/internal/telephony/Call;)Z

    move-result v44

    if-eqz v44, :cond_3c

    .line 491
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canTransfer:Z

    move/from16 v44, v0

    move/from16 v0, v44

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 493
    :cond_3c
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 496
    :cond_3d
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canTransfer:Z

    move/from16 v44, v0

    move/from16 v0, v44

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 500
    :cond_3e
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 506
    .end local v9           #callTransfer:Landroid/view/MenuItem;
    :sswitch_10
    const v44, 0x7f0a03c3

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 507
    .local v8, btHeadsetOnItem:Landroid/view/MenuItem;
    const v44, 0x7f0a03c4

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 509
    .local v7, btHeadsetOffItem:Landroid/view/MenuItem;
    const-string v44, "ims_rcs"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_42

    .line 510
    const v44, 0x7f0205ff

    move/from16 v0, v44

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 511
    const v44, 0x7f0205ff

    move/from16 v0, v44

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 513
    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v44

    if-eqz v44, :cond_41

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v44, v0

    if-eqz v44, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v44

    if-eqz v44, :cond_40

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v44

    if-eqz v44, :cond_3f

    .line 516
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 517
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 519
    :cond_3f
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 520
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 523
    :cond_40
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 524
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 527
    :cond_41
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 528
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 531
    :cond_42
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 532
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 537
    .end local v7           #btHeadsetOffItem:Landroid/view/MenuItem;
    .end local v8           #btHeadsetOnItem:Landroid/view/MenuItem;
    :sswitch_11
    const v44, 0x7f0a03c7

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v31

    .line 538
    .local v31, onehandOperation:Landroid/view/MenuItem;
    const-string v44, "support_onehand_any_screen"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_43

    .line 539
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isOnehandAnyScreen()Z

    move-result v44

    if-eqz v44, :cond_43

    .line 540
    const/16 v44, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 544
    :cond_43
    const-string v44, "support_onehand_operation"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_47

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v44

    sget-object v45, Lcom/android/phone/InCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    const/16 v46, 0x0

    invoke-static/range {v44 .. v46}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_44

    const/16 v19, 0x1

    .line 547
    .local v19, isOnehandOn:Z
    :goto_13
    if-eqz v19, :cond_45

    .line 548
    const v44, 0x7f090382

    move-object/from16 v0, v31

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 549
    const v44, 0x7f020616

    move-object/from16 v0, v31

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 555
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/phone/InCallScreen;->isPortraitMode()Z

    move-result v44

    if-eqz v44, :cond_46

    .line 556
    const/16 v44, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 545
    .end local v19           #isOnehandOn:Z
    :cond_44
    const/16 v19, 0x0

    goto :goto_13

    .line 551
    .restart local v19       #isOnehandOn:Z
    :cond_45
    const v44, 0x7f090381

    move-object/from16 v0, v31

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 552
    const v44, 0x7f020617

    move-object/from16 v0, v31

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_14

    .line 558
    :cond_46
    const/16 v44, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 561
    .end local v19           #isOnehandOn:Z
    :cond_47
    const/16 v44, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 566
    .end local v31           #onehandOperation:Landroid/view/MenuItem;
    :sswitch_12
    const v44, 0x7f0a03ca

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v32

    .line 567
    .local v32, openCamera:Landroid/view/MenuItem;
    if-eqz v32, :cond_7

    .line 568
    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->getIMSCallType(Lcom/android/internal/telephony/Call;)I

    move-result v10

    .line 569
    .local v10, callType:I
    const-string v44, "vzw_volte_ui"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_48

    const/16 v44, 0xa

    move/from16 v0, v44

    if-eq v10, v0, :cond_48

    .line 571
    const/16 v44, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 573
    :cond_48
    const/16 v44, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 578
    .end local v10           #callType:I
    .end local v32           #openCamera:Landroid/view/MenuItem;
    :sswitch_13
    const v44, 0x7f0a03cb

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 579
    .local v5, addUserVoice:Landroid/view/MenuItem;
    const-string v44, "ims_conference_voice"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_4a

    .line 580
    const-string v44, "feature_lgt"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_7

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneUtilsExt;->isAvailableAddUser(Lcom/android/internal/telephony/Call;)Z

    move-result v44

    if-eqz v44, :cond_49

    .line 582
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 583
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 586
    :cond_49
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 587
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 591
    :cond_4a
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 592
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 601
    .end local v5           #addUserVoice:Landroid/view/MenuItem;
    .end local v22           #itemId:I
    :cond_4b
    const-string v44, "common_volte"

    invoke-static/range {v44 .. v44}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_4d

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v44

    if-nez v44, :cond_4c

    invoke-static/range {v35 .. v35}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v44

    if-eqz v44, :cond_4d

    .line 603
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInPSVTCallMenu:Lcom/android/phone/InPSVTCallMenu;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/phone/InPSVTCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    .line 606
    :cond_4d
    const/16 v36, 0x1

    goto/16 :goto_1

    .line 180
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00ea -> :sswitch_7
        0x7f0a0366 -> :sswitch_c
        0x7f0a03b8 -> :sswitch_3
        0x7f0a03b9 -> :sswitch_4
        0x7f0a03ba -> :sswitch_5
        0x7f0a03bb -> :sswitch_2
        0x7f0a03bc -> :sswitch_8
        0x7f0a03bd -> :sswitch_0
        0x7f0a03be -> :sswitch_6
        0x7f0a03bf -> :sswitch_b
        0x7f0a03c0 -> :sswitch_9
        0x7f0a03c1 -> :sswitch_a
        0x7f0a03c2 -> :sswitch_f
        0x7f0a03c3 -> :sswitch_0
        0x7f0a03c4 -> :sswitch_10
        0x7f0a03c5 -> :sswitch_1
        0x7f0a03c6 -> :sswitch_1
        0x7f0a03c7 -> :sswitch_11
        0x7f0a03c8 -> :sswitch_d
        0x7f0a03c9 -> :sswitch_e
        0x7f0a03ca -> :sswitch_12
        0x7f0a03cb -> :sswitch_13
    .end sparse-switch
.end method

.method shouldShowHeadsetToast()Z
    .locals 3

    .prologue
    .line 890
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v0

    .line 891
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    .line 896
    const-string v2, "noise_suppression_support_speaker"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 897
    const/4 v0, 0x0

    .line 900
    :cond_0
    return v0
.end method
