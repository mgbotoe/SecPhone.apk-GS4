.class public Lcom/android/phone/IMSConferenceCallDelete;
.super Landroid/app/ListActivity;
.source "IMSConferenceCallDelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;
    }
.end annotation


# static fields
.field private static mDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallerList;",
            ">;"
        }
    .end annotation
.end field

.field private static mItem_delete:Landroid/view/MenuItem;

.field private static mList:Landroid/widget/ListView;

.field private static mSelectAllCheck:Landroid/widget/CheckBox;


# instance fields
.field private icCM:Lcom/android/phone/IMSConferenceCallMgr;

.field private mAdapter:Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRegisteredForPhoneStates:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput-object v0, Lcom/android/phone/IMSConferenceCallDelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    .line 48
    sput-object v0, Lcom/android/phone/IMSConferenceCallDelete;->mDeleteList:Ljava/util/ArrayList;

    .line 49
    sput-object v0, Lcom/android/phone/IMSConferenceCallDelete;->mItem_delete:Landroid/view/MenuItem;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/IMSConferenceCallDelete;->mRegisteredForPhoneStates:Z

    .line 47
    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallDelete;->mAdapter:Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;

    .line 50
    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallDelete;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    .line 54
    new-instance v0, Lcom/android/phone/IMSConferenceCallDelete$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IMSConferenceCallDelete$1;-><init>(Lcom/android/phone/IMSConferenceCallDelete;)V

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallDelete;->mHandler:Landroid/os/Handler;

    .line 312
    return-void
.end method

.method static synthetic access$000()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/phone/IMSConferenceCallDelete;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private deleteConferenceCallerList()V
    .locals 7

    .prologue
    .line 254
    sget-object v5, Lcom/android/phone/IMSConferenceCallDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 255
    .local v1, dataCount:I
    sget-object v5, Lcom/android/phone/IMSConferenceCallDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    .line 256
    .local v2, headerCount:I
    const/4 v0, 0x0

    .line 257
    .local v0, checked:Z
    const/4 v4, 0x0

    .line 259
    .local v4, realPos:I
    move v3, v2

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 260
    sget-object v5, Lcom/android/phone/IMSConferenceCallDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 262
    if-eqz v0, :cond_0

    .line 263
    sub-int v4, v3, v2

    .line 264
    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallDelete;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    if-eqz v5, :cond_0

    .line 265
    iget-object v6, p0, Lcom/android/phone/IMSConferenceCallDelete;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    sget-object v5, Lcom/android/phone/IMSConferenceCallDelete;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/CallerList;

    invoke-virtual {v5}, Lcom/android/phone/CallerList;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/phone/IMSConferenceCallMgr;->removeParticipant(Ljava/lang/String;)V

    .line 259
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallDelete;->finish()V

    .line 270
    return-void
.end method

.method private registerForPhoneStates()V
    .locals 4

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallDelete;->mRegisteredForPhoneStates:Z

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallDelete;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 122
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallDelete;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallDelete;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/IMSConferenceCallDelete;->mRegisteredForPhoneStates:Z

    .line 126
    :cond_0
    return-void
.end method

.method private setAllItemCheckState(Z)V
    .locals 3
    .parameter "bCheckState"

    .prologue
    .line 146
    sget-object v2, Lcom/android/phone/IMSConferenceCallDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 148
    .local v0, dataCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 149
    sget-object v2, Lcom/android/phone/IMSConferenceCallDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 150
    sget-object v2, Lcom/android/phone/IMSConferenceCallDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 148
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallDelete;->mAdapter:Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;

    invoke-virtual {v2, p1}, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->setAllChecked(Z)V

    .line 155
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallDelete;->mAdapter:Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->notifyDataSetChanged()V

    .line 157
    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallDelete;->setDeleteButtonEnabled(Z)V

    .line 158
    return-void
.end method

.method private setDeleteButtonEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 227
    sget-object v0, Lcom/android/phone/IMSConferenceCallDelete;->mItem_delete:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lcom/android/phone/IMSConferenceCallDelete;->mItem_delete:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 230
    :cond_0
    return-void
.end method

.method private updateAllCheckState()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 162
    sget-object v6, Lcom/android/phone/IMSConferenceCallDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 163
    .local v2, dataCount:I
    sget-object v6, Lcom/android/phone/IMSConferenceCallDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    .line 164
    .local v3, headerCount:I
    const/4 v1, 0x0

    .local v1, checkedCount:I
    const/4 v5, 0x0

    .line 165
    .local v5, realCount:I
    const/4 v0, 0x0

    .line 167
    .local v0, checked:Z
    move v4, v3

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 168
    sget-object v6, Lcom/android/phone/IMSConferenceCallDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 170
    if-eqz v0, :cond_0

    .line 171
    add-int/lit8 v1, v1, 0x1

    .line 167
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 175
    :cond_1
    sub-int v5, v2, v3

    .line 176
    if-ne v1, v5, :cond_2

    .line 177
    sget-object v6, Lcom/android/phone/IMSConferenceCallDelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 182
    :goto_1
    if-lez v1, :cond_3

    .line 183
    invoke-direct {p0, v8}, Lcom/android/phone/IMSConferenceCallDelete;->setDeleteButtonEnabled(Z)V

    .line 187
    :goto_2
    return-void

    .line 179
    :cond_2
    sget-object v6, Lcom/android/phone/IMSConferenceCallDelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 185
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/phone/IMSConferenceCallDelete;->setDeleteButtonEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 211
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    .line 75
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const-string v5, "IMSConferenceCallDelete"

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 79
    invoke-virtual {p0, v9}, Lcom/android/phone/IMSConferenceCallDelete;->setRequestedOrientation(I)V

    .line 82
    :cond_0
    const v5, 0x7f040050

    invoke-virtual {p0, v5}, Lcom/android/phone/IMSConferenceCallDelete;->setContentView(I)V

    .line 83
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallDelete;->registerForPhoneStates()V

    .line 84
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/IMSConferenceCallDelete;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    .line 86
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallDelete;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 87
    .local v4, mActionBar:Landroid/app/ActionBar;
    if-eqz v4, :cond_1

    .line 88
    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 92
    :cond_1
    const v5, 0x102000a

    invoke-virtual {p0, v5}, Lcom/android/phone/IMSConferenceCallDelete;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    sput-object v5, Lcom/android/phone/IMSConferenceCallDelete;->mList:Landroid/widget/ListView;

    .line 93
    sget-object v5, Lcom/android/phone/IMSConferenceCallDelete;->mList:Landroid/widget/ListView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 96
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/phone/IMSConferenceCallDelete;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v6, 0x7f040051

    sget-object v7, Lcom/android/phone/IMSConferenceCallDelete;->mList:Landroid/widget/ListView;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, headerView:Landroid/view/View;
    const v5, 0x7f0a019c

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    sput-object v5, Lcom/android/phone/IMSConferenceCallDelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    .line 98
    sget-object v5, Lcom/android/phone/IMSConferenceCallDelete;->mList:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 99
    sget-object v5, Lcom/android/phone/IMSConferenceCallDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 102
    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallDelete;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallDelete;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v5}, Lcom/android/phone/IMSConferenceCallMgr;->getIDLECount()I

    move-result v5

    if-lez v5, :cond_2

    .line 103
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/android/phone/IMSConferenceCallDelete;->mDeleteList:Ljava/util/ArrayList;

    .line 104
    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallDelete;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v5}, Lcom/android/phone/IMSConferenceCallMgr;->getIDLEParticipantNumberList()Ljava/util/ArrayList;

    move-result-object v3

    .line 105
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 106
    new-instance v0, Lcom/android/phone/CallerList;

    invoke-direct {v0}, Lcom/android/phone/CallerList;-><init>()V

    .line 107
    .local v0, caller:Lcom/android/phone/CallerList;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v0, Lcom/android/phone/CallerList;->NUMBER:Ljava/lang/String;

    .line 108
    iget-object v5, v0, Lcom/android/phone/CallerList;->NUMBER:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsIms;->getCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/CallerList;->NAME:Ljava/lang/String;

    .line 109
    sget-object v5, Lcom/android/phone/IMSConferenceCallDelete;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v0           #caller:Lcom/android/phone/CallerList;
    .end local v2           #index:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    new-instance v5, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;

    const v6, 0x7f040052

    sget-object v7, Lcom/android/phone/IMSConferenceCallDelete;->mDeleteList:Ljava/util/ArrayList;

    invoke-direct {v5, p0, p0, v6, v7}, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;-><init>(Lcom/android/phone/IMSConferenceCallDelete;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v5, p0, Lcom/android/phone/IMSConferenceCallDelete;->mAdapter:Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;

    .line 114
    sget-object v5, Lcom/android/phone/IMSConferenceCallDelete;->mList:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/phone/IMSConferenceCallDelete;->mAdapter:Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 216
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 218
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallDelete;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f11

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 219
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/phone/IMSConferenceCallDelete;->mItem_delete:Landroid/view/MenuItem;

    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallDelete;->setDeleteButtonEnabled(Z)V

    .line 222
    return v2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 194
    sput-object v1, Lcom/android/phone/IMSConferenceCallDelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    .line 195
    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallDelete;->mAdapter:Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;

    .line 197
    sget-object v0, Lcom/android/phone/IMSConferenceCallDelete;->mDeleteList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/android/phone/IMSConferenceCallDelete;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 199
    sput-object v1, Lcom/android/phone/IMSConferenceCallDelete;->mDeleteList:Ljava/util/ArrayList;

    .line 202
    :cond_0
    sput-object v1, Lcom/android/phone/IMSConferenceCallDelete;->mItem_delete:Landroid/view/MenuItem;

    .line 204
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 131
    const/4 v0, 0x0

    .line 133
    .local v0, checked:Z
    if-nez p3, :cond_2

    .line 134
    sget-object v1, Lcom/android/phone/IMSConferenceCallDelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 135
    sget-object v4, Lcom/android/phone/IMSConferenceCallDelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 136
    if-nez v0, :cond_1

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallDelete;->setAllItemCheckState(Z)V

    .line 142
    :goto_2
    return-void

    :cond_0
    move v1, v3

    .line 135
    goto :goto_0

    :cond_1
    move v2, v3

    .line 136
    goto :goto_1

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallDelete;->mAdapter:Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;

    invoke-virtual {v1, p3}, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->setChecked(I)V

    .line 139
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallDelete;->mAdapter:Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->notifyDataSetChanged()V

    .line 140
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallDelete;->updateAllCheckState()V

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 235
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 249
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 238
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallDelete;->finish()V

    goto :goto_0

    .line 242
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallDelete;->deleteConferenceCallerList()V

    goto :goto_0

    .line 235
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0a03b2 -> :sswitch_0
        0x7f0a03b3 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 274
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 275
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 280
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 281
    return-void
.end method
