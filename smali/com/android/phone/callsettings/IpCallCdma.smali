.class public Lcom/android/phone/callsettings/IpCallCdma;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "IpCallCdma.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;
    }
.end annotation


# static fields
.field private static FROM:[Ljava/lang/String;


# instance fields
.field private createLayout:Landroid/widget/LinearLayout;

.field emptyText:Landroid/widget/FrameLayout;

.field private handler:Landroid/os/Handler;

.field private ipCallList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ipCallListID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field istoastshowing:Z

.field listView:Landroid/widget/ListView;

.field private mCheckedCount:I

.field private mDefaultIpNumber:Ljava/lang/String;

.field private mEdited:I

.field private mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

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

.field private mSelectedItem:I

.field private mSelectedItemForEdit:I

.field private mState:I

.field private mTempEditString:Ljava/lang/String;

.field private mUpdated:Z

.field selectAll:Landroid/widget/LinearLayout;

.field selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ipcall_number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "edit_checked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/IpCallCdma;->FROM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallListID:Ljava/util/ArrayList;

    .line 137
    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mUpdated:Z

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->istoastshowing:Z

    .line 153
    iput v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mCheckedCount:I

    .line 463
    new-instance v0, Lcom/android/phone/callsettings/IpCallCdma$6;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/IpCallCdma$6;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->handler:Landroid/os/Handler;

    .line 948
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/IpCallCdma;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->updateDeleteItems()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCallCdma;->updateItem(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/IpCallCdma;Z)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCallCdma;->getIpNumberList(Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/IpCallCdma;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCallCdma;->showIpNumberList(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/callsettings/IpCallCdma;)Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/phone/callsettings/IpCallCdma;Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;)Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/IpCallCdma;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->createLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCallCdma;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/phone/callsettings/IpCallCdma;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItemForEdit:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/phone/callsettings/IpCallCdma;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/phone/callsettings/IpCallCdma;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->mTempEditString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mTempEditString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/IpCallCdma;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/callsettings/IpCallCdma;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallListID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/IpCallCdma;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCallCdma;->deleteIpNumber(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getDefaultIpNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCallCdma;->setDefaultIpNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/IpCallCdma;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->updateIpNumberList()V

    return-void
.end method

.method private addIpNumber(Ljava/lang/String;)J
    .locals 7
    .parameter "string"

    .prologue
    const/4 v6, 0x1

    .line 675
    iput v6, p0, Lcom/android/phone/callsettings/IpCallCdma;->mEdited:I

    .line 676
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 677
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "ipcall_number"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v4, "edit_checked"

    iget v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->mEdited:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 679
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->IPCALLCDMA_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 680
    .local v2, new_uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 681
    .local v0, id:J
    return-wide v0
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 4
    .parameter "string"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 652
    iget-boolean v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mUpdated:Z

    if-eqz v1, :cond_2

    .line 653
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 657
    iget v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItemForEdit:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mTempEditString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 668
    :goto_1
    return v1

    .line 659
    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 660
    goto :goto_1

    .line 653
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    .end local v0           #i:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 664
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 665
    goto :goto_1

    .line 663
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    .line 668
    goto :goto_1
.end method

.method private deleteIpNumber()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 690
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->IPCALLCDMA_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 691
    return-void
.end method

.method private deleteIpNumber(I)V
    .locals 5
    .parameter "rowId"

    .prologue
    const/4 v4, 0x0

    .line 696
    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->IPCALLCDMA_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 697
    .local v0, ipCallUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 698
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 792
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 793
    return-void
.end method

.method private getDefaultIpNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1062
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IP_CALL_NUMBER_CDMA"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1063
    if-eqz v0, :cond_0

    .line 1066
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "17901"

    goto :goto_0
.end method

.method private getIpNumberList(Z)Landroid/database/Cursor;
    .locals 12
    .parameter "isDeleteScreen"

    .prologue
    const/4 v4, 0x0

    .line 712
    const-string v5, "_id desc"

    .line 713
    .local v5, sortOrder:Ljava/lang/String;
    const-string v3, "ipcall_number != \'default_number\'"

    .line 714
    .local v3, selection:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 715
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->IPCALLCDMA_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/IpCallCdma;->FROM:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 717
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/phone/callsettings/ProviderConstants;->IPCALLCDMA_CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/phone/callsettings/IpCallCdma;->FROM:[Ljava/lang/String;

    move-object v9, v4

    move-object v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 6
    .parameter "layout"

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 224
    const v1, 0x7f0a0038

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    .line 225
    const v1, 0x7f0a0217

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->emptyText:Landroid/widget/FrameLayout;

    .line 227
    const v1, 0x7f0a0233

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->selectAll:Landroid/widget/LinearLayout;

    .line 228
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    const v1, 0x7f0a0235

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 231
    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCallCdma;->getIpNumberList(Z)Landroid/database/Cursor;

    move-result-object v0

    .line 232
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCallCdma;->showIpNumberList(Landroid/database/Cursor;)V

    .line 233
    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    .line 238
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 240
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    .line 244
    :cond_1
    new-instance v1, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04006f

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpCallCdma;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    .line 245
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0400bd

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    .line 248
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->selectAll:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/callsettings/IpCallCdma$1;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCallCdma$1;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    const-string v1, "add_panel"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    const v1, 0x7f0a0236

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->createLayout:Landroid/widget/LinearLayout;

    .line 263
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->createLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/callsettings/IpCallCdma$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCallCdma$2;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->createLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/phone/callsettings/IpCallCdma$3;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCallCdma$3;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 297
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 923
    const-string v0, "IpCallCdma"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
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

    .line 425
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 428
    .local v0, isLand:Z
    :goto_0
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 429
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    if-ne v3, v5, :cond_1

    move v3, v1

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 430
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCallCdma;->mCheckedCount:I

    if-lez v3, :cond_2

    move v3, v1

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 431
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    if-ne v4, v5, :cond_3

    :goto_3
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 433
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 434
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 453
    :goto_4
    return-void

    .end local v0           #isLand:Z
    :cond_0
    move v0, v2

    .line 425
    goto :goto_0

    .restart local v0       #isLand:Z
    :cond_1
    move v3, v2

    .line 429
    goto :goto_1

    :cond_2
    move v3, v2

    .line 430
    goto :goto_2

    :cond_3
    move v1, v2

    .line 431
    goto :goto_3

    .line 436
    :cond_4
    if-eqz v0, :cond_8

    .line 437
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    if-ne v3, v5, :cond_5

    move v3, v1

    :goto_5
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 438
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCallCdma;->mCheckedCount:I

    if-lez v3, :cond_6

    move v3, v1

    :goto_6
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 439
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    if-ne v4, v5, :cond_7

    :goto_7
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 441
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 442
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_5
    move v3, v2

    .line 437
    goto :goto_5

    :cond_6
    move v3, v2

    .line 438
    goto :goto_6

    :cond_7
    move v1, v2

    .line 439
    goto :goto_7

    .line 445
    :cond_8
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    if-ne v3, v5, :cond_9

    move v3, v1

    :goto_8
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 446
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCallCdma;->mCheckedCount:I

    if-lez v3, :cond_a

    move v3, v1

    :goto_9
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 447
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    if-ne v4, v5, :cond_b

    :goto_a
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 449
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 450
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_9
    move v3, v2

    .line 445
    goto :goto_8

    :cond_a
    move v3, v2

    .line 446
    goto :goto_9

    :cond_b
    move v1, v2

    .line 447
    goto :goto_a
.end method

.method private saveIpNumber(Ljava/lang/String;)V
    .locals 12
    .parameter "resultString"

    .prologue
    const v11, 0x7f090461

    const/16 v10, 0x8

    const/4 v6, 0x2

    const/4 v9, 0x0

    .line 591
    move-object v3, p1

    .line 592
    .local v3, tempString:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 594
    .local v1, id:J
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    .line 598
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/IpCallCdma;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 599
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

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/IpCallCdma;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCallCdma;->displayToast(Ljava/lang/String;)V

    .line 649
    :goto_1
    return-void

    :cond_0
    move v5, v6

    .line 594
    goto :goto_0

    .line 604
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 605
    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/IpCallCdma;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCallCdma;->displayToast(Ljava/lang/String;)V

    goto :goto_1

    .line 611
    :cond_2
    const-string v5, " "

    const-string v7, ""

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 612
    invoke-virtual {p0, v11}, Lcom/android/phone/callsettings/IpCallCdma;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCallCdma;->displayToast(Ljava/lang/String;)V

    goto :goto_1

    .line 616
    :cond_3
    iget v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I

    const/4 v7, -0x1

    if-le v5, v7, :cond_6

    iget-boolean v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->mUpdated:Z

    if-eqz v5, :cond_6

    .line 617
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 618
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I

    invoke-virtual {v5, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 620
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallListID:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 621
    .local v4, update_id:I
    invoke-direct {p0, v3, v4}, Lcom/android/phone/callsettings/IpCallCdma;->updateIpNumberList(Ljava/lang/String;I)V

    .line 622
    iput v9, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I

    .line 641
    .end local v4           #update_id:I
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->notifyDataSetInvalidated()V

    .line 643
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_5

    .line 644
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 645
    :cond_5
    iput v6, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    .line 648
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->updateCount()V

    goto :goto_1

    .line 625
    :cond_6
    invoke-direct {p0, v9}, Lcom/android/phone/callsettings/IpCallCdma;->getIpNumberList(Z)Landroid/database/Cursor;

    move-result-object v0

    .line 626
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_4

    .line 627
    const/4 v5, 0x6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-le v5, v7, :cond_7

    .line 628
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v5, v9, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 629
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/IpCallCdma;->addIpNumber(Ljava/lang/String;)J

    move-result-wide v1

    .line 630
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallListID:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v9, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 631
    const-string v5, "IpCall"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Added ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " number = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 634
    :cond_7
    const-string v5, "IpCall"

    const-string v7, "max in saveIpNumber - no add"

    invoke-static {v5, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private setDefaultIpNumber(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1057
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IP_CALL_NUMBER_CDMA"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1058
    return-void
.end method

.method private showIpNumberList(Landroid/database/Cursor;)V
    .locals 14
    .parameter "cursor"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 725
    const/4 v3, 0x0

    .line 726
    .local v3, idx:I
    iput v9, p0, Lcom/android/phone/callsettings/IpCallCdma;->mEdited:I

    .line 727
    iget-object v11, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 728
    iget-object v11, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallListID:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 730
    if-eqz p1, :cond_1

    .line 731
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 733
    :goto_0
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 734
    .local v1, id:J
    const/4 v11, 0x2

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, p0, Lcom/android/phone/callsettings/IpCallCdma;->mEdited:I

    .line 735
    iget v11, p0, Lcom/android/phone/callsettings/IpCallCdma;->mEdited:I

    if-ne v11, v9, :cond_3

    move v5, v9

    .line 736
    .local v5, isChanged:Z
    :goto_1
    const/4 v6, 0x0

    .line 738
    .local v6, message:Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 739
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 740
    const-string v11, "Edited"

    invoke-direct {p0, v11}, Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V

    .line 751
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getDefaultIpNumber()Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, defaultNum:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 753
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "default ip num = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V

    .line 754
    iput-object v6, p0, Lcom/android/phone/callsettings/IpCallCdma;->mDefaultIpNumber:Ljava/lang/String;

    .line 755
    iget-object v11, p0, Lcom/android/phone/callsettings/IpCallCdma;->mDefaultIpNumber:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/phone/callsettings/IpCallCdma;->setDefaultIpNumber(Ljava/lang/String;)V

    .line 758
    :cond_0
    const-string v11, "IpCallCdma"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IpCall idx"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " IP number "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "isChanged "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v11, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 762
    iget-object v11, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallListID:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #idx:I
    .local v4, idx:I
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 763
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_5

    move v3, v4

    .line 767
    .end local v0           #defaultNum:Ljava/lang/String;
    .end local v1           #id:J
    .end local v4           #idx:I
    .end local v5           #isChanged:Z
    .end local v6           #message:Ljava/lang/String;
    .restart local v3       #idx:I
    :cond_1
    const/4 v9, 0x6

    if-le v3, v9, :cond_2

    .line 769
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->deleteIpNumber()V

    .line 771
    :cond_2
    return-void

    .restart local v1       #id:J
    :cond_3
    move v5, v10

    .line 735
    goto/16 :goto_1

    .line 742
    .restart local v5       #isChanged:Z
    .restart local v6       #message:Ljava/lang/String;
    :cond_4
    const-wide/16 v11, 0x1

    sub-long v7, v1, v11

    .line 743
    .local v7, stringIdx:J
    sget-object v11, Lcom/android/phone/callsettings/IpCallCdmaDB;->defaultIpNumberList:[Ljava/lang/String;

    long-to-int v12, v7

    aget-object v6, v11, v12

    .line 748
    const-string v11, "IpCallCdma"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not Edited, Use Default valueIP number = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v3           #idx:I
    .end local v7           #stringIdx:J
    .restart local v0       #defaultNum:Ljava/lang/String;
    .restart local v4       #idx:I
    :cond_5
    move v3, v4

    .end local v4           #idx:I
    .restart local v3       #idx:I
    goto/16 :goto_0
.end method

.method private updateCount()V
    .locals 1

    .prologue
    .line 937
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->updateTitleBar()V

    .line 938
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 939
    return-void
.end method

.method private updateDeleteItems()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 927
    iput v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mCheckedCount:I

    .line 928
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 929
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 930
    iget v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mCheckedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mCheckedCount:I

    .line 928
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 932
    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget v3, p0, Lcom/android/phone/callsettings/IpCallCdma;->mCheckedCount:I

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 933
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 934
    return-void

    .line 932
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private updateIpNumberList()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 917
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    iput v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current mState = :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V

    .line 919
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->updateCount()V

    .line 920
    return-void
.end method

.method private updateIpNumberList(Ljava/lang/String;I)V
    .locals 6
    .parameter "string"
    .parameter "rowId"

    .prologue
    const/4 v5, 0x0

    .line 701
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mEdited:I

    .line 702
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 703
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "ipcall_number"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v2, "edit_checked"

    iget v3, p0, Lcom/android/phone/callsettings/IpCallCdma;->mEdited:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 705
    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->IPCALLCDMA_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p2

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 706
    .local v0, ipCallUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 707
    return-void
.end method

.method private updateItem(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I

    .line 160
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 161
    if-eqz p1, :cond_0

    .line 162
    const-string v0, "SELECTED_ITEM"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "UPDATE_MODE"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getDefaultIpNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "IS_DEFAULT"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    :cond_0
    const-class v0, Lcom/android/phone/callsettings/EditIpCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const v5, 0x7f09045e

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/IpCallCdma;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 169
    return-void
.end method

.method private updateTitleBar()V
    .locals 3

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09045e

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/IpCallCdma;->getString(I)Ljava/lang/String;

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

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 945
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 946
    return-void
.end method


# virtual methods
.method public deleteDialog()V
    .locals 3

    .prologue
    .line 876
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 878
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902cd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902b7

    new-instance v2, Lcom/android/phone/callsettings/IpCallCdma$11;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCallCdma$11;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902b8

    new-instance v2, Lcom/android/phone/callsettings/IpCallCdma$10;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCallCdma$10;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/IpCallCdma$9;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCallCdma$9;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 914
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 796
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 797
    packed-switch p1, :pswitch_data_0

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 799
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 800
    const-string v1, "IP_NUMBER_RESULT_Intent"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V

    .line 802
    const-string v1, "EDITED_ITEM"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, resultString:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V

    .line 804
    const-string v1, "UPDATED"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mUpdated:Z

    .line 805
    const-string v1, "IS_DEFAULT"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 806
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCallCdma;->setDefaultIpNumber(Ljava/lang/String;)V

    .line 807
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCallCdma;->saveIpNumber(Ljava/lang/String;)V

    .line 809
    new-instance v1, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04006f

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpCallCdma;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    .line 810
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 797
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 456
    const-string v0, "Configuration"

    const-string v1, "changed "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 460
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 461
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 174
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 177
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 181
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IpCallCdma;->setHasOptionsMenu(Z)V

    .line 182
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 818
    packed-switch p1, :pswitch_data_0

    .line 871
    :goto_0
    return-object v2

    .line 820
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 821
    .local v0, EditDeleteDialog:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const v5, 0x7f0902b9

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/IpCallCdma;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x7f0902bb

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/IpCallCdma;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    .line 827
    .local v3, items:[Ljava/lang/CharSequence;
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    new-instance v4, Lcom/android/phone/callsettings/IpCallCdma$7;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/IpCallCdma$7;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 858
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 859
    .local v2, edad:Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/phone/callsettings/IpCallCdma$8;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/IpCallCdma$8;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/IpCallCdma;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 828
    .end local v2           #edad:Landroid/app/AlertDialog;
    :catch_0
    move-exception v1

    .line 829
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ArrayIndexOutOfBoundsException mSelectedItem :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 818
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v6, 0x7f0902b8

    const v5, 0x7f0902bb

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 371
    const v0, 0x7f0902b6

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020002

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 373
    const/4 v0, 0x2

    invoke-interface {p1, v2, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020003

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 376
    invoke-interface {p1, v2, v4, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 378
    const/4 v0, 0x5

    invoke-interface {p1, v2, v0, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 381
    const/4 v0, 0x4

    invoke-interface {p1, v2, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 383
    const/4 v0, 0x3

    invoke-interface {p1, v2, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020001

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 387
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 388
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 187
    const v1, 0x7f040069

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, v:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCallCdma;->initLayout(Landroid/view/View;)V

    .line 191
    return-object v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 544
    sparse-switch p1, :sswitch_data_0

    .line 586
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v7

    :goto_1
    return v7

    .line 546
    :sswitch_0
    iget v7, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 548
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/phone/callsettings/IpCallCdma;->getIpNumberList(Z)Landroid/database/Cursor;

    move-result-object v3

    .line 549
    .local v3, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/IpCallCdma;->showIpNumberList(Landroid/database/Cursor;)V

    .line 550
    if-eqz v3, :cond_1

    .line 551
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 554
    :cond_1
    new-instance v7, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f04006f

    iget-object v10, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpCallCdma;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v7, p0, Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    .line 555
    iget-object v7, p0, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 556
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->updateIpNumberList()V

    .line 557
    iget-object v7, p0, Lcom/android/phone/callsettings/IpCallCdma;->selectAll:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 558
    const/4 v7, 0x1

    goto :goto_1

    .line 561
    .end local v3           #cursor:Landroid/database/Cursor;
    :sswitch_1
    const/4 v2, 0x0

    .line 562
    .local v2, currentView:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    .line 563
    .local v5, obj:Landroid/view/View;
    instance-of v7, v5, Landroid/widget/ListView;

    if-eqz v7, :cond_2

    move-object v2, v5

    .line 564
    check-cast v2, Landroid/widget/ListView;

    .line 566
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentView : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V

    .line 567
    if-eqz v2, :cond_0

    .line 568
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 569
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 570
    .local v1, childView:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 571
    .local v0, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v0, :cond_0

    .line 572
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 573
    .local v6, view:Landroid/view/View;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->isClickable()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 574
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "childView view : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v6}, Landroid/view/View;->performClick()Z

    goto/16 :goto_0

    .line 571
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 544
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 486
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 489
    iget v3, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 538
    :cond_0
    :goto_0
    return v1

    .line 493
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 538
    goto :goto_0

    .line 503
    :pswitch_0
    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCallCdma;->updateItem(Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :pswitch_1
    iget v3, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    if-ne v3, v6, :cond_0

    .line 508
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCallCdma;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 510
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCallCdma;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 511
    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/IpCallCdma;->getIpNumberList(Z)Landroid/database/Cursor;

    move-result-object v0

    .line 512
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCallCdma;->showIpNumberList(Landroid/database/Cursor;)V

    .line 513
    if-eqz v0, :cond_2

    .line 514
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 516
    :cond_2
    new-instance v2, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f04006f

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpCallCdma;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    .line 517
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0400bd

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    .line 519
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 520
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCallCdma;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 523
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    .line 524
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->updateDeleteItems()V

    goto :goto_0

    .line 530
    .end local v0           #cursor:Landroid/database/Cursor;
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/IpCallCdma;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_0

    .line 535
    :pswitch_3
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/IpCallCdma;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_0

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    .line 220
    const-string v0, "IpCallCdma"

    const-string v1, "onPause "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 392
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, currentCnt:I
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 399
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-ge v0, v8, :cond_4

    move v2, v3

    :goto_0
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 400
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-lez v0, :cond_5

    move v2, v3

    :goto_1
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 402
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    if-eq v2, v6, :cond_6

    move v2, v3

    :goto_2
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 403
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    if-eq v2, v6, :cond_7

    move v2, v3

    :goto_3
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 404
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/IpCallCdma;->getIpNumberList(Z)Landroid/database/Cursor;

    move-result-object v1

    .line 405
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 406
    iget v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    if-eq v2, v6, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 407
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 408
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_2
    const-string v2, "add_panel"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 412
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma;->createLayout:Landroid/widget/LinearLayout;

    if-ge v0, v8, :cond_8

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 413
    iget v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    if-eq v2, v6, :cond_9

    .line 414
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->createLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 418
    :goto_5
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 421
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCallCdma;->optionMenuConfigurationChanged(Landroid/view/Menu;)V

    .line 422
    return-void

    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_4
    move v2, v4

    .line 399
    goto :goto_0

    :cond_5
    move v2, v4

    .line 400
    goto :goto_1

    :cond_6
    move v2, v4

    .line 402
    goto :goto_2

    :cond_7
    move v2, v4

    .line 403
    goto :goto_3

    .restart local v1       #cursor:Landroid/database/Cursor;
    :cond_8
    move v2, v4

    .line 412
    goto :goto_4

    .line 416
    :cond_9
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->createLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 197
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState in onResume = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V

    .line 200
    iget v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 211
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    iput v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    .line 215
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->updateCount()V

    .line 216
    return-void

    .line 203
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma;->selectAll:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    iput v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->mState:I

    goto :goto_0

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCallCdma;->updateDeleteItems()V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/IpCallCdma$4;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCallCdma$4;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/IpCallCdma$5;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCallCdma$5;-><init>(Lcom/android/phone/callsettings/IpCallCdma;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 366
    return-void
.end method
