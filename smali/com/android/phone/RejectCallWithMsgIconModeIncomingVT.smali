.class public Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;
.super Landroid/app/Activity;
.source "RejectCallWithMsgIconModeIncomingVT.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$SendMsgRunnable;,
        Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter;
    }
.end annotation


# static fields
.field private static PROJECTION:[Ljava/lang/String;


# instance fields
.field mAdapter:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter;

.field private mContext:Landroid/content/Context;

.field private mCreateButton:Landroid/widget/LinearLayout;

.field mGridView:Landroid/widget/GridView;

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPhoneNumber:Ljava/lang/String;

.field public mSendMsgListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "reject_message"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "edit_checked"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "remind_time"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "icon_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "position"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mCreateButton:Landroid/widget/LinearLayout;

    .line 46
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mPhoneNumber:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mContext:Landroid/content/Context;

    .line 49
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mGridView:Landroid/widget/GridView;

    .line 50
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mAdapter:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mItems:Ljava/util/List;

    .line 332
    new-instance v0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$2;

    invoke-direct {v0, p0}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$2;-><init>(Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;)V

    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mSendMsgListener:Landroid/view/View$OnClickListener;

    .line 343
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;I)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->findItem(I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private findItem(I)Ljava/util/HashMap;
    .locals 4
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 219
    .local v1, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v1, :cond_1

    .line 220
    const-string v3, "findItem() ignore add icon!"

    invoke-direct {p0, v3}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_1
    const-string v3, "position"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 224
    .local v2, tempPos:I
    if-ne v2, p1, :cond_0

    .line 228
    .end local v1           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2           #tempPos:I
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getRejectMessage()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 100
    const-string v5, "position asc"

    .line 101
    .local v5, sortOrder:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_ICON_MODE_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initContents()V
    .locals 11

    .prologue
    .line 106
    iget-object v9, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 113
    :cond_0
    const/4 v9, 0x6

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 114
    .local v7, position:I
    const/4 v9, 0x5

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 115
    .local v2, iconId:I
    const/4 v9, 0x1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, title:Ljava/lang/String;
    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, message:Ljava/lang/String;
    const/4 v9, 0x3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 118
    .local v4, isEdited:I
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 119
    .local v3, id:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", position: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", iconId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", title: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isEdited: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->log(Ljava/lang/String;)V

    .line 122
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v5, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v9, "_id"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v9, "position"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v9, "iconId"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v9, "edit"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    and-int/lit8 v9, v4, 0x1

    if-eqz v9, :cond_3

    .line 130
    const-string v9, "title"

    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :goto_0
    and-int/lit8 v9, v4, 0x2

    if-eqz v9, :cond_5

    .line 143
    const-string v9, "message"

    invoke-virtual {v5, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :goto_1
    iget-object v9, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mItems:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_0

    .line 159
    .end local v2           #iconId:I
    .end local v3           #id:I
    .end local v4           #isEdited:I
    .end local v5           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v6           #message:Ljava/lang/String;
    .end local v7           #position:I
    .end local v8           #title:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 160
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 161
    const/4 v0, 0x0

    .line 164
    :cond_2
    return-void

    .line 135
    .restart local v2       #iconId:I
    .restart local v3       #id:I
    .restart local v4       #isEdited:I
    .restart local v5       #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v6       #message:Ljava/lang/String;
    .restart local v7       #position:I
    .restart local v8       #title:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v9, "title"

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v9, "title"

    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 159
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #iconId:I
    .end local v3           #id:I
    .end local v4           #isEdited:I
    .end local v5           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v6           #message:Ljava/lang/String;
    .end local v7           #position:I
    .end local v8           #title:Ljava/lang/String;
    :catchall_0
    move-exception v9

    if-eqz v0, :cond_4

    .line 160
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 161
    const/4 v0, 0x0

    :cond_4
    throw v9

    .line 148
    .restart local v2       #iconId:I
    .restart local v3       #id:I
    .restart local v4       #isEdited:I
    .restart local v5       #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v6       #message:Ljava/lang/String;
    .restart local v7       #position:I
    .restart local v8       #title:Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string v9, "message"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 150
    :catch_1
    move-exception v1

    .line 151
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v9, "message"

    invoke-virtual {v5, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 238
    const-string v0, "RejectCallWithMsgIconModeIncomingVT"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 214
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string v2, "reject_call_with_message_icon_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->finish()V

    .line 97
    :goto_0
    return-void

    .line 77
    :cond_0
    const v2, 0x7f0400a0

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mContext:Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->initContents()V

    .line 82
    const v2, 0x7f0a02b8

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mGridView:Landroid/widget/GridView;

    .line 83
    new-instance v2, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter;

    invoke-direct {v2, p0, p0}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter;-><init>(Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mAdapter:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter;

    .line 85
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mAdapter:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    const v2, 0x7f0a02a9

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mCreateButton:Landroid/widget/LinearLayout;

    .line 90
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 91
    .local v1, parentIntent:Landroid/content/Intent;
    const-string v2, "phone_number"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mPhoneNumber:Ljava/lang/String;

    .line 94
    const/high16 v0, 0x8

    .line 95
    .local v0, flags:I
    const/high16 v2, 0x40

    or-int/2addr v0, v2

    .line 96
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 169
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemClick() position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->log(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 174
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 179
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 185
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mPhoneNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->finish()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mCreateButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$1;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$1;-><init>(Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 205
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 210
    return-void
.end method
