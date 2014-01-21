.class public Lcom/android/phone/callsettings/RejectCallWithMsg;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "RejectCallWithMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;
    }
.end annotation


# static fields
.field private static FROM:[Ljava/lang/String;


# instance fields
.field private createLayout:Landroid/widget/LinearLayout;

.field emptyText:Landroid/widget/FrameLayout;

.field private handler:Landroid/os/Handler;

.field istoastshowing:Z

.field listView:Landroid/widget/ListView;

.field private mCheckedCount:I

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDeleteDlg:Landroid/app/AlertDialog;

.field private mEdited:I

.field private mIsForeground:Z

.field private mListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

.field private mSelectAllClicked:Landroid/view/View$OnClickListener;

.field private mSelectedItem:I

.field private mSelectedItemForEdit:I

.field private mState:I

.field private mTempEditString:Ljava/lang/String;

.field private mUpdateScreen:Z

.field private mUpdated:Z

.field private rejectMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rejectMsgListID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private remindList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field selectAll:Landroid/widget/LinearLayout;

.field selectAllCheck:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "reject_message"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "edit_checked"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "remind_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsg;->FROM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    .line 146
    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdated:Z

    .line 148
    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    .line 150
    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsForeground:Z

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->istoastshowing:Z

    .line 166
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    .line 168
    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsg$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$1;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    .line 178
    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsg$2;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg$2;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mContentObserver:Landroid/database/ContentObserver;

    .line 1072
    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsg$13;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$13;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAllClicked:Landroid/view/View$OnClickListener;

    .line 1153
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/RejectCallWithMsg;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsForeground:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateDeleteItems()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/callsettings/RejectCallWithMsg;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->deleteRejectMessage(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateItem(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/RejectCallWithMsg;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/RejectCallWithMsg;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItemForEdit:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addRejectMessage(Ljava/lang/String;I)J
    .locals 7
    .parameter "string"
    .parameter "remindtime"

    .prologue
    const/4 v6, 0x1

    .line 800
    iput v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    .line 801
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 802
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "reject_message"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string v4, "edit_checked"

    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 804
    const-string v4, "remind_time"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 805
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 806
    .local v2, new_uri:Landroid/net/Uri;
    const-wide/16 v0, 0x0

    .line 807
    .local v0, id:J
    if-eqz v2, :cond_0

    .line 808
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 810
    :cond_0
    return-wide v0
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 4
    .parameter "string"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 777
    iget-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdated:Z

    if-eqz v1, :cond_2

    .line 778
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 782
    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItemForEdit:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 793
    :goto_1
    return v1

    .line 784
    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 785
    goto :goto_1

    .line 778
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 788
    .end local v0           #i:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 789
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 790
    goto :goto_1

    .line 788
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    .line 793
    goto :goto_1
.end method

.method private deleteRejectMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 819
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 820
    return-void
.end method

.method private deleteRejectMessage(I)V
    .locals 5
    .parameter "rowId"

    .prologue
    const/4 v4, 0x0

    .line 825
    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 826
    .local v0, rejectmsgUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 827
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 915
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 916
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 917
    return-void
.end method

.method private getRejectMessage()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 842
    const-string v5, "_id desc"

    .line 843
    .local v5, sortOrder:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/RejectCallWithMsg;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 5
    .parameter "layout"

    .prologue
    const/16 v3, 0x8

    .line 334
    const v1, 0x7f0a02e7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    .line 335
    const v1, 0x7f0a02e6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    .line 337
    const v1, 0x7f0a0233

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    .line 338
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    const v1, 0x7f0a0235

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAllCheck:Landroid/view/View;

    .line 343
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAllCheck:Landroid/view/View;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAllClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    .line 346
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->showRejectMessage(Landroid/database/Cursor;)V

    .line 347
    if-eqz v0, :cond_0

    .line 348
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 350
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 352
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 353
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 354
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 358
    :cond_1
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0400bd

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    .line 361
    const-string v1, "feature_remind_me_later_support "

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 362
    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    .line 363
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 370
    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAllClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    const-string v1, "add_panel"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    const v1, 0x7f0a0236

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    .line 386
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/callsettings/RejectCallWithMsg$3;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$3;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 394
    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/phone/callsettings/RejectCallWithMsg$4;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$4;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 425
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/phone/callsettings/RejectCallWithMsg$5;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$5;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 439
    return-void

    .line 365
    :cond_3
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0400bc

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    .line 366
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 1104
    const-string v0, "RejectCallWithMsg"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "always"

    .prologue
    .line 1108
    const-string v0, "RejectCallWithMsg"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1109
    return-void
.end method

.method private optionMenuConfigurationChanged(Landroid/view/Menu;)V
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 557
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 560
    .local v0, isLand:Z
    :goto_0
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 561
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-ne v3, v5, :cond_2

    move v3, v1

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 562
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    if-lez v3, :cond_3

    move v3, v1

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 563
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-ne v4, v5, :cond_4

    :goto_3
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 565
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 566
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 586
    :goto_4
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_d

    .line 587
    :cond_0
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 591
    :goto_5
    return-void

    .end local v0           #isLand:Z
    :cond_1
    move v0, v2

    .line 557
    goto :goto_0

    .restart local v0       #isLand:Z
    :cond_2
    move v3, v2

    .line 561
    goto :goto_1

    :cond_3
    move v3, v2

    .line 562
    goto :goto_2

    :cond_4
    move v1, v2

    .line 563
    goto :goto_3

    .line 568
    :cond_5
    if-eqz v0, :cond_9

    .line 569
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-ne v3, v5, :cond_6

    move v3, v1

    :goto_6
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 570
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    if-lez v3, :cond_7

    move v3, v1

    :goto_7
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 571
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-ne v4, v5, :cond_8

    :goto_8
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 573
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 574
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_6
    move v3, v2

    .line 569
    goto :goto_6

    :cond_7
    move v3, v2

    .line 570
    goto :goto_7

    :cond_8
    move v1, v2

    .line 571
    goto :goto_8

    .line 577
    :cond_9
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-ne v3, v5, :cond_a

    move v3, v1

    :goto_9
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 578
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    if-lez v3, :cond_b

    move v3, v1

    :goto_a
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 579
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-ne v4, v5, :cond_c

    :goto_b
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 581
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 582
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_a
    move v3, v2

    .line 577
    goto :goto_9

    :cond_b
    move v3, v2

    .line 578
    goto :goto_a

    :cond_c
    move v1, v2

    .line 579
    goto :goto_b

    .line 589
    :cond_d
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5
.end method

.method private refreshRejectList()V
    .locals 5

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 310
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    .line 311
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->showRejectMessage(Landroid/database/Cursor;)V

    .line 312
    if-eqz v0, :cond_0

    .line 313
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 316
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 317
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 323
    :goto_0
    const-string v1, "feature_remind_me_later_support "

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 324
    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    .line 325
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 331
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-void

    .line 320
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 321
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    goto :goto_0

    .line 327
    :cond_3
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0400bc

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    .line 328
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method private showRejectMessage(Landroid/database/Cursor;)V
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 850
    .line 851
    iput v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    .line 852
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 853
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 854
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 856
    if-eqz p1, :cond_0

    .line 857
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 859
    :goto_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 860
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    .line 861
    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    if-ne v2, v4, :cond_2

    move v3, v4

    .line 865
    :goto_1
    if-eqz v3, :cond_3

    .line 866
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 867
    const-string v7, "Edited"

    invoke-direct {p0, v7, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    .line 881
    :goto_2
    const-string v7, "RejectCallWithMsg"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RejectMsg idx"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Reject Message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "isChanged "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 883
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 884
    iget-object v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 885
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 886
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 887
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    move v1, v2

    .line 891
    :cond_0
    const/4 v0, 0x6

    if-le v1, v0, :cond_1

    .line 893
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->deleteRejectMessage()V

    .line 895
    :cond_1
    return-void

    :cond_2
    move v3, v1

    .line 861
    goto :goto_1

    .line 869
    :cond_3
    const-wide/16 v7, 0x1

    sub-long v7, v5, v7

    .line 871
    const-string v2, "modify_reject_message"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 872
    sget-object v2, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListKor:[Ljava/lang/String;

    long-to-int v7, v7

    aget-object v2, v2, v7

    .line 877
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "string"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v2, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 879
    const-string v7, "RejectCallWithMsg"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not Edited, Use Default valuerejectMessage = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_2

    .line 874
    :cond_4
    sget-object v2, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[Ljava/lang/String;

    long-to-int v7, v7

    aget-object v2, v2, v7

    goto :goto_3

    :cond_5
    move v0, v2

    goto/16 :goto_0
.end method

.method private updateCount()V
    .locals 1

    .prologue
    .line 1123
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateTitleBar()V

    .line 1124
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 1125
    return-void
.end method

.method private updateDeleteItems()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1112
    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    .line 1113
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1114
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1115
    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    .line 1113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1118
    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAllCheck:Landroid/view/View;

    check-cast v1, Landroid/widget/Checkable;

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    :goto_1
    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1119
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 1120
    return-void

    .line 1118
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private updateItem(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 189
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    .line 195
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 196
    if-eqz p1, :cond_1

    .line 197
    const-string v0, "SELECTED_MESSAGE"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "UPDATE_MODE"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 199
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    const-string v1, "REMIND_MODE"

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    const-string v0, "RejectCallWithMsg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " remindList.get(mSelectedItem): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1
    const v5, 0x7f0902dd

    .line 206
    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    const v5, 0x7f09071d

    .line 210
    :cond_2
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    const-class v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 213
    :cond_3
    const-class v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0
.end method

.method private updateRejectMessage()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1067
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState = :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    .line 1069
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateCount()V

    .line 1070
    return-void

    :cond_0
    move v0, v1

    .line 1067
    goto :goto_0
.end method

.method private updateRejectMessage(Ljava/lang/String;II)V
    .locals 6
    .parameter "string"
    .parameter "rowId"
    .parameter "remindtime"

    .prologue
    const/4 v5, 0x0

    .line 830
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    .line 831
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 832
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "reject_message"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v2, "edit_checked"

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 834
    const-string v2, "remind_time"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 835
    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p2

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 836
    .local v0, rejectmsgUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 837
    return-void
.end method

.method private updateTitleBar()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 1128
    const/4 v0, 0x0

    .line 1130
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1134
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0902dd

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1138
    const-string v2, "reject_call_with_message_icon_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090845

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1144
    :goto_0
    const-string v1, "action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1147
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09071d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 1151
    :goto_1
    return-void

    .line 1149
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public deleteDialog()V
    .locals 4

    .prologue
    .line 1020
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1022
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0902ce

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0902b7

    new-instance v3, Lcom/android/phone/callsettings/RejectCallWithMsg$11;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$11;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0902b8

    new-instance v3, Lcom/android/phone/callsettings/RejectCallWithMsg$10;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$10;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1051
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mDeleteDlg:Landroid/app/AlertDialog;

    .line 1052
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mDeleteDlg:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$12;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$12;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1063
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mDeleteDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1064
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 920
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 923
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 948
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 942
    const-string v0, "REJECT_MESSAGE_RESULT_Intent"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 943
    const-string v0, "EDITED_MESSAGE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 944
    const-string v1, "EDITED_REMINDTIME"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 945
    const-string v2, "UPDATED"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdated:Z

    .line 946
    invoke-virtual {p0, v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->saveRejectMessage(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 594
    const-string v0, "Configuration"

    const-string v1, "changed "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 595
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateCount()V

    .line 597
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 598
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 226
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 229
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 233
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->setHasOptionsMenu(Z)V

    .line 234
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 235
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 951
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 1015
    :goto_0
    return-object v0

    .line 953
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 954
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const v4, 0x7f0902b9

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    const v0, 0x7f0902bb

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v5

    .line 960
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsg$8;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$8;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1000
    const v0, 0x7f090024

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1002
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1003
    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$9;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$9;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 961
    :catch_0
    move-exception v0

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayIndexOutOfBoundsException mSelectedItem :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    move-object v0, v1

    .line 963
    goto :goto_0

    .line 951
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v8, 0x7f020003

    const v7, 0x7f0902bb

    const/4 v6, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 498
    const-string v4, "order_neg_pos_buttons"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 499
    .local v0, cancelOrder:I
    :goto_0
    const-string v4, "order_neg_pos_buttons"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 502
    .local v1, saveOrder:I
    :goto_1
    const v4, 0x7f0902b6

    invoke-interface {p1, v2, v3, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020002

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 504
    const/4 v4, 0x2

    invoke-interface {p1, v2, v4, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 508
    const/4 v4, 0x7

    invoke-interface {p1, v2, v4, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 512
    const v4, 0x7f0902b8

    invoke-interface {p1, v2, v6, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 514
    const/4 v4, 0x5

    const v5, 0x7f0902b8

    invoke-interface {p1, v2, v4, v0, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const/high16 v5, 0x7f02

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 517
    const/4 v4, 0x4

    invoke-interface {p1, v2, v4, v1, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 519
    const/4 v3, 0x3

    invoke-interface {p1, v2, v3, v1, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020001

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 523
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 524
    return-void

    .end local v0           #cancelOrder:I
    .end local v1           #saveOrder:I
    :cond_0
    move v0, v3

    .line 498
    goto/16 :goto_0

    .restart local v0       #cancelOrder:I
    :cond_1
    move v1, v2

    .line 499
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 240
    const v1, 0x7f0400ac

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 242
    .local v0, v:Landroid/view/View;
    if-eqz p3, :cond_0

    .line 243
    const-string v1, "editString"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    .line 244
    const-string v1, "selectedItem"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    .line 247
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->initLayout(Landroid/view/View;)V

    .line 249
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 304
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    .line 305
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 306
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 666
    sparse-switch p1, :sswitch_data_0

    .line 706
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v6

    :goto_1
    return v6

    .line 668
    :sswitch_0
    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 670
    const-string v6, "feature_remind_me_later_support "

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 671
    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 675
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage()V

    .line 676
    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 677
    const/4 v6, 0x1

    goto :goto_1

    .line 673
    :cond_1
    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    .line 680
    :sswitch_1
    const/4 v2, 0x0

    .line 681
    .local v2, currentView:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    .line 682
    .local v4, obj:Landroid/view/View;
    instance-of v6, v4, Landroid/widget/ListView;

    if-eqz v6, :cond_2

    move-object v2, v4

    .line 683
    check-cast v2, Landroid/widget/ListView;

    .line 685
    :cond_2
    if-eqz v2, :cond_0

    .line 686
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 687
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 688
    .local v1, childView:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 689
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 690
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v0, :cond_0

    .line 691
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 692
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->isClickable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 693
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "childView view : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v5}, Landroid/view/View;->performClick()Z

    goto/16 :goto_0

    .line 690
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 666
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 613
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 616
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 660
    :goto_0
    return v0

    .line 620
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 660
    goto :goto_0

    .line 630
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateItem(Ljava/lang/String;)V

    move v0, v1

    .line 631
    goto :goto_0

    .line 636
    :pswitch_1
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-ne v0, v5, :cond_1

    .line 637
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAllCheck:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 641
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 642
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 645
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 646
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateDeleteItems()V

    :cond_1
    move v0, v1

    .line 648
    goto :goto_0

    .line 652
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->softkeyLeftRun(Landroid/view/View;)V

    move v0, v1

    .line 653
    goto :goto_0

    .line 657
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->softkeyRightRun(Landroid/view/View;)V

    move v0, v1

    .line 658
    goto :goto_0

    .line 620
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 297
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsForeground:Z

    .line 299
    const-string v0, "RejectCallWithMsg"

    const-string v1, "onPause "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 300
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 528
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 530
    const/4 v0, 0x0

    .line 531
    .local v0, currentCnt:I
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 535
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-ge v0, v7, :cond_2

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 536
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-eq v1, v5, :cond_3

    move v1, v2

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 537
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-lez v0, :cond_4

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 538
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-eq v1, v5, :cond_5

    move v1, v2

    :goto_3
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 539
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-lez v0, :cond_6

    move v1, v2

    :goto_4
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 540
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-eq v1, v5, :cond_7

    move v1, v2

    :goto_5
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 542
    const-string v1, "add_panel"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 543
    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    if-ge v0, v7, :cond_8

    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 544
    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-eq v1, v5, :cond_9

    .line 545
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 549
    :goto_7
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 552
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->optionMenuConfigurationChanged(Landroid/view/Menu;)V

    .line 553
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateTitleBar()V

    .line 554
    return-void

    :cond_2
    move v1, v3

    .line 535
    goto :goto_0

    :cond_3
    move v1, v3

    .line 536
    goto :goto_1

    :cond_4
    move v1, v3

    .line 537
    goto :goto_2

    :cond_5
    move v1, v3

    .line 538
    goto :goto_3

    :cond_6
    move v1, v3

    .line 539
    goto :goto_4

    :cond_7
    move v1, v3

    .line 540
    goto :goto_5

    :cond_8
    move v1, v3

    .line 543
    goto :goto_6

    .line 547
    :cond_9
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 255
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 256
    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsForeground:Z

    .line 257
    iget-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    if-eqz v2, :cond_1

    .line 258
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mDeleteDlg:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mDeleteDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mDeleteDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 261
    :cond_0
    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 262
    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->removeDialog(I)V

    .line 263
    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 266
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current mState in onResume = :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    .line 268
    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 288
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v1, :cond_5

    :goto_0
    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 292
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateCount()V

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    .line 294
    return-void

    .line 270
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    if-eqz v0, :cond_3

    .line 271
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->refreshRejectList()V

    .line 272
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 276
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    goto :goto_1

    .line 279
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateDeleteItems()V

    goto :goto_1

    .line 284
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    if-eqz v0, :cond_2

    .line 285
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->refreshRejectList()V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 288
    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 218
    const-string v0, "editString"

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v0, "selectedItem"

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    return-void
.end method

.method public saveRejectMessage(Ljava/lang/String;I)V
    .locals 13
    .parameter "resultString"
    .parameter "resultRemind"

    .prologue
    const v12, 0x7f09035f

    const/16 v11, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 711
    move-object v3, p1

    .line 712
    .local v3, tempString:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 714
    .local v1, id:J
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    iput v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 718
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 719
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f09035b

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    .line 774
    :goto_1
    return-void

    :cond_0
    move v5, v7

    .line 714
    goto :goto_0

    .line 724
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 725
    invoke-virtual {p0, v12}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    goto :goto_1

    .line 731
    :cond_2
    const-string v5, " "

    const-string v8, ""

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 732
    invoke-virtual {p0, v12}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    goto :goto_1

    .line 736
    :cond_3
    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    const/4 v8, -0x1

    if-le v5, v8, :cond_6

    iget-boolean v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdated:Z

    if-eqz v5, :cond_6

    .line 737
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 738
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 739
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 740
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 742
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 743
    .local v4, update_id:I
    invoke-direct {p0, v3, v4, p2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage(Ljava/lang/String;II)V

    .line 744
    iput v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    .line 763
    .end local v4           #update_id:I
    :cond_4
    :goto_2
    const-string v5, "feature_remind_me_later_support "

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 764
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;->notifyDataSetInvalidated()V

    .line 768
    :goto_3
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eq v5, v11, :cond_5

    .line 769
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 770
    :cond_5
    iput v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    .line 773
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateCount()V

    goto/16 :goto_1

    .line 747
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    .line 748
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_4

    .line 749
    const/4 v5, 0x6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-le v5, v8, :cond_7

    .line 750
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5, v10, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 751
    invoke-direct {p0, v3, p2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->addRejectMessage(Ljava/lang/String;I)J

    move-result-wide v1

    .line 752
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 753
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 754
    const-string v5, "RejectCallWithMsg"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Added ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 758
    :goto_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 756
    :cond_7
    const-string v5, "RejectCallWithMsg"

    const-string v8, "max in saveRejectMessage - no add"

    invoke-static {v5, v8, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_4

    .line 766
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_8
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    goto :goto_3
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$6;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$6;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 481
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$7;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$7;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 495
    return-void
.end method
