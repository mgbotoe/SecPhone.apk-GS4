.class public Lcom/android/phone/IMSConferenceCallMain;
.super Landroid/app/ListActivity;
.source "IMSConferenceCallMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IMSConferenceCallMain$HolderCtl;,
        Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;,
        Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;
    }
.end annotation


# static fields
.field private static activity:Lcom/android/phone/IMSConferenceCallMain;

.field public static bIsSameUser:Z

.field private static mIsNotifyRcvd:Z

.field private static mNotifiedCallersCnt:I

.field private static mToastObj:Landroid/widget/Toast;


# instance fields
.field private final AUTO_TEST_FLAG:Ljava/lang/String;

.field private CONF_NO_SPLITSTRING:Ljava/lang/String;

.field private final ENABLE_TOAST:I

.field private final LOG_TAG:Ljava/lang/String;

.field private ORIGIN_CONF_NO_SPLITSTRING:Ljava/lang/String;

.field private final PHONE_NUMBER:Ljava/lang/String;

.field private final REQUEST_CALLERS:I

.field private final REQUEST_PHONE_MULTI:I

.field private final SELECTED_USERS:Ljava/lang/String;

.field private final TOAST_SHORT_DELAY:J

.field private app:Lcom/android/phone/PhoneGlobals;

.field private bToastShowInProgress:Z

.field private conn:Lcom/android/internal/telephony/Connection;

.field private forcefinishing:Z

.field private icCM:Lcom/android/phone/IMSConferenceCallMgr;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private intent:Landroid/content/Intent;

.field private mAddUser:Z

.field private mBeforeText:Ljava/lang/String;

.field private mButton_SendVT:Landroid/widget/Button;

.field private mButton_SendVoLTE:Landroid/widget/Button;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field private mContactButton:Landroid/widget/ImageButton;

.field private mDeleteOption:Landroid/view/MenuItem;

.field private mDisableCallers:Z

.field private mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

.field private mIsConfTypeVoice:Z

.field private mIsForegroundActivity:Z

.field private mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPlusButton:Landroid/widget/ImageButton;

.field private mRecipientsText:Landroid/widget/AutoCompleteTextView;

.field private sTitleVal:Ljava/lang/String;

.field textwatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 112
    sput-object v1, Lcom/android/phone/IMSConferenceCallMain;->activity:Lcom/android/phone/IMSConferenceCallMain;

    .line 113
    sput-object v1, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    .line 114
    sput-boolean v0, Lcom/android/phone/IMSConferenceCallMain;->mIsNotifyRcvd:Z

    .line 115
    sput v0, Lcom/android/phone/IMSConferenceCallMain;->mNotifiedCallersCnt:I

    .line 143
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/IMSConferenceCallMain;->bIsSameUser:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 105
    const/16 v0, 0x67

    iput v0, p0, Lcom/android/phone/IMSConferenceCallMain;->ENABLE_TOAST:I

    .line 106
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/phone/IMSConferenceCallMain;->TOAST_SHORT_DELAY:J

    .line 107
    iput-boolean v3, p0, Lcom/android/phone/IMSConferenceCallMain;->bToastShowInProgress:Z

    .line 117
    const-string v0, "[IMSConferenceCallMain]"

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->LOG_TAG:Ljava/lang/String;

    .line 118
    iput v4, p0, Lcom/android/phone/IMSConferenceCallMain;->REQUEST_CALLERS:I

    .line 119
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/phone/IMSConferenceCallMain;->REQUEST_PHONE_MULTI:I

    .line 120
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_SendVT:Landroid/widget/Button;

    .line 121
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_SendVoLTE:Landroid/widget/Button;

    .line 122
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->sTitleVal:Ljava/lang/String;

    .line 126
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    .line 127
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mContactButton:Landroid/widget/ImageButton;

    .line 128
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mPlusButton:Landroid/widget/ImageButton;

    .line 129
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mDeleteOption:Landroid/view/MenuItem;

    .line 131
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->intent:Landroid/content/Intent;

    .line 132
    iput-boolean v3, p0, Lcom/android/phone/IMSConferenceCallMain;->mAddUser:Z

    .line 133
    iput-boolean v4, p0, Lcom/android/phone/IMSConferenceCallMain;->mDisableCallers:Z

    .line 134
    const-string v0, "SELECTED_USERS"

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->SELECTED_USERS:Ljava/lang/String;

    .line 135
    const-string v0, "PHONE_NUMBER_FROM_DIALER"

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->PHONE_NUMBER:Ljava/lang/String;

    .line 137
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->app:Lcom/android/phone/PhoneGlobals;

    .line 138
    const-string v0, ","

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->CONF_NO_SPLITSTRING:Ljava/lang/String;

    .line 139
    const-string v0, "$"

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->ORIGIN_CONF_NO_SPLITSTRING:Ljava/lang/String;

    .line 141
    const-string v0, "auto_test"

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->AUTO_TEST_FLAG:Ljava/lang/String;

    .line 144
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 145
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    .line 149
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mBeforeText:Ljava/lang/String;

    .line 151
    iput-boolean v3, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsForegroundActivity:Z

    .line 152
    iput-boolean v3, p0, Lcom/android/phone/IMSConferenceCallMain;->forcefinishing:Z

    .line 153
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;

    .line 154
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    .line 156
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->conn:Lcom/android/internal/telephony/Connection;

    .line 157
    iput-boolean v3, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsConfTypeVoice:Z

    .line 159
    new-instance v0, Lcom/android/phone/IMSConferenceCallMain$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IMSConferenceCallMain$1;-><init>(Lcom/android/phone/IMSConferenceCallMain;)V

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHandler:Landroid/os/Handler;

    .line 874
    new-instance v0, Lcom/android/phone/IMSConferenceCallMain$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IMSConferenceCallMain$3;-><init>(Lcom/android/phone/IMSConferenceCallMain;)V

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->textwatcher:Landroid/text/TextWatcher;

    .line 1051
    return-void
.end method

.method private InitiateConfCall(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 585
    .line 586
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->app:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    .line 589
    const-string v1, "[InitiateConfCall] enter"

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 590
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 591
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr;->getDialedParticipantNumberList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMain;->makeNumber(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 592
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v3, v1}, Lcom/android/phone/IMSConferenceCallMgr;->prepareDial(Lcom/android/internal/telephony/Connection;)V

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[InitiateConfCall] number : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V

    .line 596
    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mAddUser:Z

    if-eqz v1, :cond_0

    .line 597
    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->addUserToConfCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)I

    .line 626
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain;->finish()V

    .line 628
    return-void

    .line 599
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 601
    if-eqz p1, :cond_1

    .line 602
    const-string v1, "videocall"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 604
    :cond_1
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getCallerListCount()I

    move-result v1

    if-le v1, v5, :cond_2

    .line 606
    const-string v1, "IS_CONF_CALL"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 608
    :cond_2
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[InitiateConfCall] phoneIsInUse :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->phoneIsInUse()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 612
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->phoneIsInUse()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 613
    const-string v0, "Active Call running!! Do not allow conference Call as "

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 614
    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsConfTypeVoice:Z

    if-eqz v0, :cond_3

    .line 615
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090919

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 617
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090761

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 621
    :cond_4
    const-string v1, "No Active Call running!! Allow Conference Call"

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 622
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-static {v5}, Lcom/android/phone/IMSConferenceCallMgr;->setDirectConfCall(Z)V

    .line 623
    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private InitiateConfCallUI()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 515
    const-string v0, "inside InitiateConfCallUI()"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 517
    const v0, 0x7f040053

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->setContentView(I)V

    .line 519
    const v0, 0x7f0a01a3

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mContactButton:Landroid/widget/ImageButton;

    .line 520
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mContactButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    const v0, 0x7f0a01a4

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mPlusButton:Landroid/widget/ImageButton;

    .line 522
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mPlusButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    const v0, 0x7f0a01a8

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_SendVT:Landroid/widget/Button;

    .line 524
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_SendVT:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    const v0, 0x7f0a01a2

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    .line 526
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    const-string v0, "ims_conference_voice"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    const v0, 0x7f0a01a7

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_SendVoLTE:Landroid/widget/Button;

    .line 530
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_SendVoLTE:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->show_SendButton(Z)V

    .line 534
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 535
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->textwatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 536
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 538
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 539
    .local v7, c:Landroid/database/Cursor;
    new-instance v6, Lcom/android/phone/RecipientsAutoCompleteCursorAdapter;

    invoke-direct {v6, p0, v7}, Lcom/android/phone/RecipientsAutoCompleteCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 540
    .local v6, adapter:Lcom/android/phone/RecipientsAutoCompleteCursorAdapter;
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v6}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 541
    if-eqz v7, :cond_1

    .line 542
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 545
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsConfTypeVoice:Z

    if-eqz v0, :cond_2

    .line 546
    const v0, 0x7f090915

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->sTitleVal:Ljava/lang/String;

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_2
    const v0, 0x7f0906d6

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->sTitleVal:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/phone/IMSConferenceCallMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/phone/IMSConferenceCallMain;->bToastShowInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/IMSConferenceCallMain;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/IMSConferenceCallMain;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallMain;->showToast(I)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/phone/IMSConferenceCallMain;Lcom/android/phone/IMSConferenceCallMain$HolderCtl;)Lcom/android/phone/IMSConferenceCallMain$HolderCtl;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/phone/IMSConferenceCallMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->setDeleteButton()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/IMSConferenceCallMain;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Lcom/android/phone/IMSConferenceCallMain;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->activity:Lcom/android/phone/IMSConferenceCallMain;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/IMSConferenceCallMain;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mGenericErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/IMSConferenceCallMain;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallMain;->mGenericErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/IMSConferenceCallMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/IMSConferenceCallMain;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/IMSConferenceCallMain;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/IMSConferenceCallMain;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mContactButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/IMSConferenceCallMain;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mPlusButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/IMSConferenceCallMain;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mBeforeText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/phone/IMSConferenceCallMain;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallMain;->mBeforeText:Ljava/lang/String;

    return-object p1
.end method

.method private addCallerList(Ljava/lang/String;)V
    .locals 1
    .parameter "newParticipant"

    .prologue
    .line 712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->addCallerList(Ljava/util/ArrayList;)V

    .line 715
    return-void
.end method

.method private addCallerList(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 718
    const-string v0, "inside addCallerList()"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 724
    if-eqz p1, :cond_6

    move v3, v4

    move v1, v4

    .line 725
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 726
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 727
    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->getSIMNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 729
    const v0, 0x7f090766

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->showToast(I)V

    move v0, v1

    .line 725
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 730
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->alreadyAddedUser(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    .line 731
    goto :goto_1

    .line 733
    :cond_1
    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v5}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v5

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 734
    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    sget-object v6, Lcom/android/phone/IMSConferenceCallMgr$State;->IDLE:Lcom/android/phone/IMSConferenceCallMgr$State;

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/phone/IMSConferenceCallMgr;->addParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)Z

    .line 736
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[addCallerList]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 746
    :goto_2
    if-eqz v1, :cond_4

    .line 747
    const v0, 0x7f0906d3

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->showToast(I)V

    .line 752
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain;->updateScreen()V

    .line 753
    return-void

    .line 748
    :cond_4
    if-eqz v0, :cond_3

    .line 749
    const v0, 0x7f0906d2

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/IMSConferenceCallMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->showToast(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move v0, v4

    goto :goto_2

    :cond_6
    move v0, v4

    move v1, v4

    goto :goto_2
.end method

.method private alreadyAddedUser(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 809
    const-string v0, "alreadyAddedUser enter"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    move v0, v1

    .line 810
    :goto_0
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 811
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v3, v0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipant(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v3

    .line 812
    if-nez v3, :cond_1

    .line 810
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 815
    :cond_1
    iget-object v4, v3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alreadyAddedUser ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") : TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V

    move v1, v2

    .line 829
    :cond_2
    :goto_1
    return v1

    .line 820
    :cond_3
    iget-object v3, v3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsIms;->addPrefixIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 821
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsIms;->addPrefixIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 823
    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alreadyAddedUser ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") : TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V

    move v1, v2

    .line 825
    goto :goto_1
.end method

.method private englog(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1157
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    const-string v0, "[IMSConferenceCallMain]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_0
    return-void
.end method

.method private getCallerListCount()I
    .locals 3

    .prologue
    .line 704
    const/4 v0, 0x0

    .line 705
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    if-eqz v1, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v0

    .line 707
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCallerListCount] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V

    .line 708
    return v0
.end method

.method private getInitialListFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 7
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 553
    const-string v5, "[getInitialListFromIntent] enter"

    invoke-direct {p0, v5}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 555
    if-nez p1, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-object v1

    .line 559
    :cond_1
    const-string v5, "DEL_USER_FRM_CONF"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 560
    .local v0, isDelClicked:Z
    const-string v5, "ConferenceFromContacts"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 561
    .local v4, startedFromContacts:Z
    const-string v5, "ConferenceFromCallLog"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 563
    .local v3, startedFromCallLog:Z
    if-nez v0, :cond_2

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    .line 565
    const-string v5, "PHONE_NUMBER_FROM_DIALER"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 569
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 570
    .local v1, participantsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "SELECTED_USERS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 571
    const-string v5, "SELECTED_USERS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 574
    :cond_3
    const-string v5, "PHONE_NUMBER_FROM_DIALER"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 575
    const-string v5, "PHONE_NUMBER_FROM_DIALER"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, savedNumber:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 577
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getMaxUserCount()I
    .locals 3

    .prologue
    .line 947
    const/4 v0, 0x3

    .line 949
    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsConfTypeVoice:Z

    if-eqz v1, :cond_0

    .line 950
    const/16 v0, 0x9

    .line 952
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxUserCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V

    .line 953
    return v0
.end method

.method private isDeviceOnLTE()Z
    .locals 4

    .prologue
    .line 368
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/phone/IMSConferenceCallMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 369
    .local v0, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 370
    .local v1, networkType:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Type returned for TelephonyManager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 371
    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 372
    const/4 v2, 0x1

    .line 374
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadTabs()V
    .locals 3

    .prologue
    .line 438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v0, phonebookIntent:Landroid/content/Intent;
    const-string v1, "additional"

    const-string v2, "phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v1, "existingRecipientCount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    const-string v1, "isGroupConference"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 443
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/IMSConferenceCallMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 444
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 1153
    const-string v0, "[IMSConferenceCallMain]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    return-void
.end method

.method private makeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/4 v3, -0x1

    .line 474
    move-object v0, p1

    .line 476
    .local v0, formattedString:Ljava/lang/String;
    :goto_0
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 477
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 479
    :cond_0
    :goto_1
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 480
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 482
    :cond_1
    :goto_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 483
    const-string v1, ")"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 485
    :cond_2
    :goto_3
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 486
    const-string v1, "("

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 488
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside makeNumber() : formattedString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V

    .line 492
    return-object v0
.end method

.method private makeNumber(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 498
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, ""

    .line 499
    .local v1, sCallerNos:Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 500
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 501
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 502
    iget-boolean v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mAddUser:Z

    if-eqz v2, :cond_1

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMain;->CONF_NO_SPLITSTRING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 507
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMain;->ORIGIN_CONF_NO_SPLITSTRING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 511
    .end local v0           #index:I
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private phoneIsInUse()Z
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasCSVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDeleteButton()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 852
    const/4 v0, 0x0

    .line 854
    .local v0, optionEnable:Z
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mDeleteOption:Landroid/view/MenuItem;

    if-nez v1, :cond_0

    .line 862
    :goto_0
    return-void

    .line 856
    :cond_0
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mDeleteOption:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 857
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->getIDLECount()I

    move-result v1

    if-lez v1, :cond_1

    .line 858
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mDeleteOption:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 860
    :cond_1
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mDeleteOption:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private setElapsedTime(Landroid/widget/TextView;J)V
    .locals 2
    .parameter "view"
    .parameter "timeElapsed"

    .prologue
    .line 1145
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 1146
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    :goto_0
    return-void

    .line 1148
    :cond_0
    invoke-static {p2, p3}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showEmptyToast(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 796
    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->bToastShowInProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 805
    :goto_0
    return-void

    .line 799
    :cond_0
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 800
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    .line 804
    :goto_1
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 802
    :cond_1
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1
.end method

.method private showToast(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 774
    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->bToastShowInProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 782
    :goto_0
    return-void

    .line 777
    :cond_0
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 778
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 780
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    .line 781
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->bToastShowInProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 793
    :goto_0
    return-void

    .line 788
    :cond_0
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 789
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 791
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    .line 792
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private show_SendButton(Z)V
    .locals 10
    .parameter "withVoLTE"

    .prologue
    const/16 v9, 0x8

    const/high16 v8, 0x40a0

    const/4 v7, 0x0

    .line 447
    const/16 v2, 0x128

    .line 448
    .local v2, DIP_SIZE_WIDTH:I
    const/16 v1, 0x28

    .line 449
    .local v1, DIP_SIZE_HEIGHT:I
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 450
    .local v0, DENSITY:F
    const/4 v4, 0x0

    .line 452
    .local v4, mButtonParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallMain;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->getValidCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 453
    .local v3, call:Lcom/android/internal/telephony/Call;
    if-eqz v3, :cond_2

    .line 454
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4           #mButtonParams:Landroid/widget/LinearLayout$LayoutParams;
    int-to-float v5, v2

    mul-float/2addr v5, v0

    float-to-int v5, v5

    int-to-float v6, v1

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 455
    .restart local v4       #mButtonParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->isVoLTECall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->isAudioConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 456
    :cond_0
    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_SendVT:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 457
    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_SendVoLTE:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_SendVoLTE:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 471
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_SendVoLTE:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 461
    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_SendVT:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_SendVT:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 465
    :cond_2
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4           #mButtonParams:Landroid/widget/LinearLayout$LayoutParams;
    int-to-float v5, v2

    mul-float/2addr v5, v0

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v6, v1

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 466
    .restart local v4       #mButtonParams:Landroid/widget/LinearLayout$LayoutParams;
    mul-float v5, v8, v0

    float-to-int v5, v5

    mul-float v6, v8, v0

    float-to-int v6, v6

    invoke-virtual {v4, v5, v7, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 467
    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_SendVT:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_SendVoLTE:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_SendVoLTE:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateUIForSelectedCallerCount()V
    .locals 3

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getCallerListCount()I

    move-result v0

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->sTitleVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->setTitle(Ljava/lang/CharSequence;)V

    .line 700
    return-void
.end method


# virtual methods
.method public deInitializeMgr()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 964
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    if-eqz v0, :cond_1

    .line 965
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->stopTimer()V

    .line 966
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->getAliveStateCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 967
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->initParticipantsList()V

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->setActivity(Lcom/android/phone/IMSConferenceCallMain;)V

    .line 970
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->resetParticipantsList()V

    .line 971
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    .line 973
    :cond_1
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;

    .line 974
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    .line 975
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchKeyEvent(event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 843
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 838
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 839
    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 835
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public initializeMgr(Lcom/android/phone/IMSConferenceCallMgr;)V
    .locals 2
    .parameter "ccm"

    .prologue
    .line 957
    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    .line 958
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    sget-object v1, Lcom/android/phone/IMSConferenceCallMain;->activity:Lcom/android/phone/IMSConferenceCallMain;

    invoke-virtual {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->setActivity(Lcom/android/phone/IMSConferenceCallMain;)V

    .line 959
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->resetLastLog()V

    .line 960
    new-instance v0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;-><init>(Lcom/android/phone/IMSConferenceCallMain;Lcom/android/phone/IMSConferenceCallMgr;)V

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;

    .line 961
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 962
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x7f0906d4

    const/16 v8, 0x3b

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult() : requestCode(REQUEST_CALLERS)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "); resultCode(RESULT_OK)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "); data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 639
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 640
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 643
    if-ne p1, v2, :cond_2

    if-ne p2, v6, :cond_2

    .line 644
    iput-boolean v7, p0, Lcom/android/phone/IMSConferenceCallMain;->mDisableCallers:Z

    .line 646
    sget-boolean v0, Lcom/android/phone/IMSConferenceCallMain;->bIsSameUser:Z

    if-eqz v0, :cond_0

    .line 647
    sput-boolean v7, Lcom/android/phone/IMSConferenceCallMain;->bIsSameUser:Z

    .line 648
    invoke-direct {p0, v9}, Lcom/android/phone/IMSConferenceCallMain;->showToast(I)V

    .line 651
    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 654
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside onActivityResult() : RESULT_OK ->USER_LIST = size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 656
    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->addCallerList(Ljava/util/ArrayList;)V

    .line 694
    :cond_1
    :goto_0
    return-void

    .line 660
    :cond_2
    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    if-ne p2, v6, :cond_6

    .line 661
    const-string v0, "[IMSConferenceCallMain]"

    const-string v2, "onActivityResult(REQUEST_PHONE_MULTI & RESULT_OK)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    if-eqz p3, :cond_1

    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 664
    if-eqz v2, :cond_5

    .line 666
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 667
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v6, :cond_3

    .line 668
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 670
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 671
    const-string v4, "P"

    const-string v5, ","

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "W"

    const-string v5, ";"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 672
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 673
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 674
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 680
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v0, v2, :cond_5

    .line 681
    invoke-direct {p0, v9}, Lcom/android/phone/IMSConferenceCallMain;->showToast(I)V

    .line 685
    :cond_5
    iput-boolean v7, p0, Lcom/android/phone/IMSConferenceCallMain;->mDisableCallers:Z

    .line 687
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 688
    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->addCallerList(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 692
    :cond_6
    const-string v0, "onActivityResult() : don\'t doing anything!!!"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const v7, 0x7f09091e

    const v6, 0x7f0906da

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 378
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 434
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 380
    :pswitch_1
    const-string v2, "[IMSConferenceCallMain]"

    const-string v3, "add contact for VT-conference"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_1

    .line 382
    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7, v2}, Lcom/android/phone/IMSConferenceCallMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMain;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->loadTabs()V

    goto :goto_0

    .line 389
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, inputNum:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    .line 391
    .local v1, isValidNumber:Z
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_2

    .line 392
    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7, v2}, Lcom/android/phone/IMSConferenceCallMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMain;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_2
    if-eqz v1, :cond_3

    .line 396
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 397
    iput-boolean v5, p0, Lcom/android/phone/IMSConferenceCallMain;->mDisableCallers:Z

    .line 398
    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->addCallerList(Ljava/lang/String;)V

    .line 399
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 402
    :cond_3
    const v2, 0x7f0906d8

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMain;->showToast(I)V

    goto :goto_0

    .line 407
    .end local v0           #inputNum:Ljava/lang/String;
    .end local v1           #isValidNumber:Z
    :pswitch_3
    const-string v2, "[IMSConferenceCallMain]"

    const-string v3, "btnVT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr;->getIDLECount()I

    move-result v2

    if-ge v2, v4, :cond_4

    .line 409
    invoke-direct {p0, v6}, Lcom/android/phone/IMSConferenceCallMain;->showEmptyToast(I)V

    goto/16 :goto_0

    .line 413
    :cond_4
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_SendVT:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 414
    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMain;->InitiateConfCall(Z)V

    .line 415
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_SendVT:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 420
    :pswitch_4
    const-string v2, "[IMSConferenceCallMain]"

    const-string v3, "btnVoLTE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr;->getIDLECount()I

    move-result v2

    if-ge v2, v4, :cond_5

    .line 422
    invoke-direct {p0, v6}, Lcom/android/phone/IMSConferenceCallMain;->showEmptyToast(I)V

    goto/16 :goto_0

    .line 426
    :cond_5
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_SendVT:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 427
    invoke-direct {p0, v5}, Lcom/android/phone/IMSConferenceCallMain;->InitiateConfCall(Z)V

    .line 428
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_SendVT:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a01a3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onConferenceStateChanged()V
    .locals 2

    .prologue
    .line 755
    const-string v0, "onConferenceStateChanged  enter"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->getActiveCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 758
    if-eqz v0, :cond_0

    .line 759
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/phone/IMSConferenceCallMgr;->startTimer(Lcom/android/internal/telephony/Call;)V

    .line 761
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain;->updateScreen()V

    .line 762
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f0906d2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 199
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 201
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    invoke-virtual {p0, v6}, Lcom/android/phone/IMSConferenceCallMain;->setRequestedOrientation(I)V

    .line 205
    :cond_0
    iput-boolean v5, p0, Lcom/android/phone/IMSConferenceCallMain;->forcefinishing:Z

    .line 206
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->intent:Landroid/content/Intent;

    .line 207
    const-string v1, "ims_conference_voice"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->intent:Landroid/content/Intent;

    const-string v2, "CONF_TYPE_VOICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->intent:Landroid/content/Intent;

    const-string v2, "CONF_TYPE_VOICE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsConfTypeVoice:Z

    .line 213
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    const-string v1, "inside onCreate() : cannot proceed group videocall. Here is Roaming Area"

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 216
    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsConfTypeVoice:Z

    if-eqz v1, :cond_2

    .line 217
    const v1, 0x7f09091c

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 220
    :goto_0
    iput-boolean v6, p0, Lcom/android/phone/IMSConferenceCallMain;->forcefinishing:Z

    .line 221
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain;->finish()V

    .line 306
    :goto_1
    return-void

    .line 219
    :cond_2
    const v1, 0x7f09053e

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 225
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSimCardReady()Z

    move-result v1

    if-nez v1, :cond_5

    .line 226
    const-string v1, "Inside onCreate() : Not on LTE..returning"

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 227
    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsConfTypeVoice:Z

    if-eqz v1, :cond_4

    .line 228
    const v1, 0x7f09091b

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 231
    :goto_2
    iput-boolean v6, p0, Lcom/android/phone/IMSConferenceCallMain;->forcefinishing:Z

    .line 232
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain;->finish()V

    goto :goto_1

    .line 230
    :cond_4
    const v1, 0x7f0906cf

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 236
    :cond_5
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->isDeviceOnLTE()Z

    move-result v1

    if-nez v1, :cond_7

    .line 237
    const-string v1, "Inside onCreate() : Not on LTE..returning"

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 238
    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsConfTypeVoice:Z

    if-eqz v1, :cond_6

    .line 239
    const v1, 0x7f09091d

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 242
    :goto_3
    iput-boolean v6, p0, Lcom/android/phone/IMSConferenceCallMain;->forcefinishing:Z

    .line 243
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain;->finish()V

    goto :goto_1

    .line 241
    :cond_6
    const v1, 0x7f0906de

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 247
    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->app:Lcom/android/phone/PhoneGlobals;

    .line 248
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->app:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 249
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->app:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 250
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 251
    sput-object p0, Lcom/android/phone/IMSConferenceCallMain;->activity:Lcom/android/phone/IMSConferenceCallMain;

    .line 252
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->init()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->initializeMgr(Lcom/android/phone/IMSConferenceCallMgr;)V

    .line 254
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->intent:Landroid/content/Intent;

    const-string v2, "ADD_USER_TO_CONF"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 255
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->intent:Landroid/content/Intent;

    const-string v2, "ADD_USER_TO_CONF"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mAddUser:Z

    .line 286
    :cond_8
    :goto_4
    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mAddUser:Z

    iput-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mDisableCallers:Z

    .line 288
    const-string v1, "inside onCreate()"

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->InitiateConfCallUI()V

    .line 291
    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mAddUser:Z

    if-eqz v1, :cond_12

    .line 292
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 293
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v1

    if-ge v1, v6, :cond_9

    .line 294
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 295
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->initParticipantsList()V

    .line 296
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/IMSConferenceCallMgr$State;->WAITING:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/phone/IMSConferenceCallMgr;->addParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)Z

    .line 299
    :cond_9
    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->getActiveCount()I

    move-result v1

    if-lez v1, :cond_a

    .line 300
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/IMSConferenceCallMgr;->startTimer(Lcom/android/internal/telephony/Call;)V

    .line 305
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain;->updateScreen()V

    goto/16 :goto_1

    .line 257
    :cond_b
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 258
    .restart local v0       #conn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_11

    .line 259
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 260
    :cond_c
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->getAliveStateCount()I

    move-result v1

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 261
    iput-boolean v6, p0, Lcom/android/phone/IMSConferenceCallMain;->mAddUser:Z

    goto :goto_4

    .line 263
    :cond_d
    new-array v1, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v7, v1}, Lcom/android/phone/IMSConferenceCallMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->showToast(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain;->finish()V

    goto/16 :goto_1

    .line 268
    :cond_e
    const-string v1, "ims_conference_voice"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 269
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isVoLTECall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isAudioConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 270
    :cond_f
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->getAliveStateCount()I

    move-result v1

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 271
    iput-boolean v6, p0, Lcom/android/phone/IMSConferenceCallMain;->mAddUser:Z

    goto/16 :goto_4

    .line 273
    :cond_10
    new-array v1, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v7, v1}, Lcom/android/phone/IMSConferenceCallMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->showToast(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain;->finish()V

    goto/16 :goto_1

    .line 281
    :cond_11
    iput-boolean v5, p0, Lcom/android/phone/IMSConferenceCallMain;->mAddUser:Z

    goto/16 :goto_4

    .line 302
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    :cond_12
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->initParticipantsList()V

    .line 303
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->intent:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->getInitialListFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->addCallerList(Ljava/util/ArrayList;)V

    goto/16 :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 914
    const v0, 0x7f0a03f2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mDeleteOption:Landroid/view/MenuItem;

    .line 915
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 339
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside ondestroy() mPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 341
    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->forcefinishing:Z

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "onDestroy - activity was forcely finished"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 365
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 349
    :cond_1
    sput-object v2, Lcom/android/phone/IMSConferenceCallMain;->activity:Lcom/android/phone/IMSConferenceCallMain;

    .line 350
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->app:Lcom/android/phone/PhoneGlobals;

    .line 352
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain;->deInitializeMgr()V

    .line 354
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_SendVT:Landroid/widget/Button;

    .line 355
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_SendVoLTE:Landroid/widget/Button;

    .line 357
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->sTitleVal:Ljava/lang/String;

    .line 358
    sput-object v2, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    .line 359
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->intent:Landroid/content/Intent;

    .line 361
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mContactButton:Landroid/widget/ImageButton;

    .line 362
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mPlusButton:Landroid/widget/ImageButton;

    .line 363
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 929
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 943
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 931
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain;->finish()V

    goto :goto_0

    .line 935
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/IMSConferenceCallDelete;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 936
    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 929
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0a03f2 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 328
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 329
    const-string v0, "inside onPause()"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 330
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 333
    :cond_0
    iput-boolean v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsForegroundActivity:Z

    .line 334
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 335
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 921
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 922
    const-string v0, "onPrepareOptionsMenu"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V

    .line 923
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->setDeleteButton()V

    .line 924
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 310
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 311
    const-string v0, "inside onResume()"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsForegroundActivity:Z

    .line 314
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/phone/IMSConferenceCallMain$2;

    invoke-direct {v1, p0}, Lcom/android/phone/IMSConferenceCallMain$2;-><init>(Lcom/android/phone/IMSConferenceCallMain;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 323
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->updateUIForSelectedCallerCount()V

    .line 324
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 866
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onWindowFocusChanged(Z)V

    .line 867
    if-eqz p1, :cond_0

    .line 868
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 869
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 871
    :cond_0
    return-void
.end method

.method public setHolderCtl(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V
    .locals 3
    .parameter "info"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1067
    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsConfTypeVoice:Z

    if-nez v0, :cond_0

    const-string v0, "ims_conference_voice"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iput-boolean v2, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->showContactImage:Z

    .line 1069
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iput-boolean v2, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->showConnectionInfo:Z

    .line 1070
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iput-boolean v2, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->enableRedialbutton:Z

    .line 1076
    :goto_0
    return-void

    .line 1072
    :cond_1
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iput-boolean v1, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->showContactImage:Z

    .line 1073
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iput-boolean v1, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->showConnectionInfo:Z

    .line 1074
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iput-boolean v1, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->enableRedialbutton:Z

    goto :goto_0
.end method

.method public setHolderData(Landroid/view/View;Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;Lcom/android/phone/IMSConferenceCallMgr$Participant;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHolderData info.mNumber : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p0, p3}, Lcom/android/phone/IMSConferenceCallMain;->setHolderCtl(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    .line 1081
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mName:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mNumber:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mStatus:Landroid/widget/TextView;

    const v1, 0x7f090912

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1084
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mRedial_Button:Landroid/widget/Button;

    const v1, 0x7f090911

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1086
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->showContactImage:Z

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mContact:Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1089
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mContact:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1091
    :cond_0
    return-void
.end method

.method public setParticipantHolder(Landroid/view/View;Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1058
    const v0, 0x7f0a0043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mContact:Landroid/widget/ImageView;

    .line 1059
    const v0, 0x7f0a027e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mName:Landroid/widget/TextView;

    .line 1060
    const v0, 0x7f0a027c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mNumber:Landroid/widget/TextView;

    .line 1061
    const v0, 0x7f0a0280

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mStatus:Landroid/widget/TextView;

    .line 1062
    const v0, 0x7f0a004d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mElapsedTime:Landroid/widget/TextView;

    .line 1063
    const v0, 0x7f0a0281

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mRedial_Button:Landroid/widget/Button;

    .line 1064
    return-void
.end method

.method public showParticipantHolder(Landroid/view/View;Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;Lcom/android/phone/IMSConferenceCallMgr$Participant;)V
    .locals 5
    .parameter "view"
    .parameter "holder"
    .parameter "info"

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1095
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->enableRedialbutton:Z

    if-eqz v0, :cond_2

    .line 1096
    iget-object v0, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$State;->isWAITING()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mAddUser:Z

    if-nez v0, :cond_1

    .line 1097
    :cond_0
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mRedial_Button:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1104
    :goto_0
    iget-object v0, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$State;->isIDLE()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1105
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1106
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1107
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1109
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1110
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mRedial_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1142
    :goto_1
    return-void

    .line 1099
    :cond_1
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mRedial_Button:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1101
    :cond_2
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mRedial_Button:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1112
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1113
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1114
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1116
    iget-object v0, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1117
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->showConnectionInfo:Z

    if-eqz v0, :cond_4

    .line 1118
    iget-object v0, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$State;->isOutgoing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1119
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1120
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1128
    :cond_4
    :goto_2
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mRedial_Button:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 1123
    :cond_5
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mElapsedTime:Landroid/widget/TextView;

    iget-wide v1, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mElapsedTime:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/IMSConferenceCallMain;->setElapsedTime(Landroid/widget/TextView;J)V

    .line 1124
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1125
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1131
    :cond_6
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->showConnectionInfo:Z

    if-eqz v0, :cond_7

    .line 1132
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1133
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1136
    :cond_7
    iget-object v0, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDISCONNECTED()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1137
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mRedial_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 1139
    :cond_8
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mRedial_Button:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public updateScreen()V
    .locals 1

    .prologue
    .line 765
    const-string v0, "updateScreen  enter"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 766
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->updateUIForSelectedCallerCount()V

    .line 768
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->notifyDataSetChanged()V

    .line 771
    :cond_0
    return-void
.end method
