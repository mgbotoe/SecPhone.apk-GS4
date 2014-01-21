.class public Lcom/android/phone/RejectCallWithMsg;
.super Landroid/app/Activity;
.source "RejectCallWithMsg.java"


# static fields
.field private static final DBG:Z

.field private static FROM:[Ljava/lang/String;

.field private static final REJECTMSG_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCreateButton:Landroid/widget/LinearLayout;

.field private message:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private rejectMsgList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 57
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/RejectCallWithMsg;->DBG:Z

    .line 68
    const-string v0, "content://com.android.phone.callsettings/reject_msg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/RejectCallWithMsg;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "reject_message"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "edit_checked"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "remind_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/RejectCallWithMsg;->FROM:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 57
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->mCreateButton:Landroid/widget/LinearLayout;

    .line 61
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->rejectMsgList:Landroid/widget/ListView;

    .line 62
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;

    .line 63
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/RejectCallWithMsg;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/RejectCallWithMsg;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/RejectCallWithMsg;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/RejectCallWithMsg;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/RejectCallWithMsg;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/phone/RejectCallWithMsg;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/phone/RejectCallWithMsg;->FROM:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v2, 0x7f04009f

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectCallWithMsg;->setContentView(I)V

    .line 82
    const v2, 0x7f0a02a9

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectCallWithMsg;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/RejectCallWithMsg;->mCreateButton:Landroid/widget/LinearLayout;

    .line 85
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsg;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 86
    .local v1, parentIntent:Landroid/content/Intent;
    const-string v2, "phone_number"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 87
    const-string v2, "phone_number"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsg;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/RejectCallWithMsg;->mContext:Landroid/content/Context;

    .line 95
    const/high16 v0, 0x8

    .line 96
    .local v0, flags:I
    const/high16 v2, 0x40

    or-int/2addr v0, v2

    .line 97
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsg;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 98
    .end local v0           #flags:I
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsg;->finish()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 211
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 102
    return-void
.end method

.method public onResume()V
    .locals 17

    .prologue
    .line 104
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/RejectCallWithMsg;->finish()V

    .line 110
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RejectCallWithMsg;->mCreateButton:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/phone/RejectCallWithMsg$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/phone/RejectCallWithMsg$1;-><init>(Lcom/android/phone/RejectCallWithMsg;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RejectCallWithMsg;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 126
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v6, "_id desc"

    .line 127
    .local v6, sortOrder:Ljava/lang/String;
    sget-object v2, Lcom/android/phone/RejectCallWithMsg;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 128
    .local v7, cur:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 131
    .local v14, rejectMessage:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 132
    const-string v2, "RejectCallWithMsg"

    const-string v3, "rejectmsg cursor is null"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return-void

    .line 137
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 139
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 140
    .local v11, id:J
    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 141
    .local v9, edited:I
    const/4 v2, 0x1

    if-ne v9, v2, :cond_7

    const/4 v13, 0x1

    .line 142
    .local v13, isChanged:Z
    :goto_1
    if-eqz v13, :cond_8

    .line 143
    sget-boolean v2, Lcom/android/phone/RejectCallWithMsg;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "RejectCallWithMsg"

    const-string v3, "Edited"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_3
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 159
    :cond_4
    :goto_2
    if-eqz v14, :cond_5

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 164
    .end local v9           #edited:I
    .end local v11           #id:J
    .end local v13           #isChanged:Z
    :cond_6
    const v2, 0x7f0a02c2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/RejectCallWithMsg;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/RejectCallWithMsg;->rejectMsgList:Landroid/widget/ListView;

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RejectCallWithMsg;->rejectMsgList:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090003

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RejectCallWithMsg;->rejectMsgList:Landroid/widget/ListView;

    new-instance v3, Lcom/android/phone/RejectCallWithMsg$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/phone/RejectCallWithMsg$2;-><init>(Lcom/android/phone/RejectCallWithMsg;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 141
    .restart local v9       #edited:I
    .restart local v11       #id:J
    :cond_7
    const/4 v13, 0x0

    goto :goto_1

    .line 146
    .restart local v13       #isChanged:Z
    :cond_8
    const-wide/16 v2, 0x1

    sub-long v15, v11, v2

    .line 148
    .local v15, stringIdx:J
    :try_start_1
    const-string v2, "modify_reject_message"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 149
    sget-object v2, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListKor:[Ljava/lang/String;

    long-to-int v3, v15

    aget-object v10, v2, v3

    .line 153
    .local v10, entryName:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RejectCallWithMsg;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/RejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "string"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/RejectCallWithMsg;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v10, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 155
    sget-boolean v2, Lcom/android/phone/RejectCallWithMsg;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "RejectCallWithMsg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not Edited, Use Default valuerejectMessage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 202
    .end local v9           #edited:I
    .end local v10           #entryName:Ljava/lang/String;
    .end local v11           #id:J
    .end local v13           #isChanged:Z
    .end local v15           #stringIdx:J
    :catch_0
    move-exception v8

    .line 203
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "RejectCallWithMsg"

    const-string v3, "rejectmsg exception"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 151
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #edited:I
    .restart local v11       #id:J
    .restart local v13       #isChanged:Z
    .restart local v15       #stringIdx:J
    :cond_9
    :try_start_3
    sget-object v2, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[Ljava/lang/String;

    long-to-int v3, v15

    aget-object v10, v2, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .restart local v10       #entryName:Ljava/lang/String;
    goto :goto_3

    .line 205
    .end local v9           #edited:I
    .end local v10           #entryName:Ljava/lang/String;
    .end local v11           #id:J
    .end local v13           #isChanged:Z
    .end local v15           #stringIdx:J
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2
.end method
