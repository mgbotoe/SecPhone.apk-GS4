.class public Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;
.super Landroid/content/AsyncQueryHandler;
.source "EmergencyContactItemContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyContactItemContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmergencyContactAsyncQuery"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyContactItemContainer;


# direct methods
.method public constructor <init>(Lcom/android/phone/EmergencyContactItemContainer;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    .line 199
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 201
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x0

    .line 234
    const/4 v3, 0x0

    .line 235
    .local v3, number:Ljava/lang/String;
    const/4 v7, 0x0

    .line 236
    .local v7, name:Ljava/lang/String;
    const/4 v2, -0x1

    .line 237
    .local v2, id:I
    const/4 v9, -0x1

    .line 238
    .local v9, photoId:I
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyContactItemContainer;->setContactsId()V

    .line 240
    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$1;->$SwitchMap$com$android$phone$EmergencyContactItemContainer$ItemType:[I

    invoke-static {}, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->values()[Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 292
    :goto_0
    return-void

    .line 242
    :pswitch_0
    if-eqz p3, :cond_1

    .line 244
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "data1"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 246
    const-string v0, "_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 249
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v0, v0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v0, v0, v5

    sget-object v1, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_SERVICE:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/EmergencyContactItem;->setItem(Lcom/android/phone/EmergencyContactItemContainer$ItemType;ILjava/lang/String;Ljava/lang/String;I)V

    .line 254
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyContactItemContainer;->restoreContainerState()V

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v0

    .line 258
    :pswitch_1
    if-eqz p3, :cond_7

    .line 260
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 261
    const/4 v10, 0x1

    .local v10, i:I
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gt v10, v0, :cond_6

    .line 262
    const-string v0, "display_name"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 263
    const-string v0, "data1"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 264
    const-string v0, "_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 265
    const-string v0, "photo_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 266
    const-string v0, "EmergencyContactItemContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete cursor["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] : id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", number="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", name="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", photoId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    int-to-long v0, v2

    iget-object v4, p0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v4, v4, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v0, v0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    const/4 v1, 0x0

    aget-object v4, v0, v1

    sget-object v5, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    move v6, v2

    move-object v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/phone/EmergencyContactItem;->setItem(Lcom/android/phone/EmergencyContactItemContainer$ItemType;ILjava/lang/String;Ljava/lang/String;I)V

    .line 278
    :cond_2
    :goto_2
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 261
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 271
    :cond_3
    int-to-long v0, v2

    iget-object v4, p0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v4, v4, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 272
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v0, v0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    const/4 v1, 0x1

    aget-object v4, v0, v1

    sget-object v5, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    move v6, v2

    move-object v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/phone/EmergencyContactItem;->setItem(Lcom/android/phone/EmergencyContactItemContainer$ItemType;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 282
    .end local v10           #i:I
    :catchall_1
    move-exception v0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v0

    .line 273
    .restart local v10       #i:I
    :cond_4
    int-to-long v0, v2

    :try_start_2
    iget-object v4, p0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v4, v4, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    cmp-long v0, v0, v4

    if-nez v0, :cond_5

    .line 274
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v0, v0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    const/4 v1, 0x2

    aget-object v4, v0, v1

    sget-object v5, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    move v6, v2

    move-object v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/phone/EmergencyContactItem;->setItem(Lcom/android/phone/EmergencyContactItemContainer$ItemType;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 275
    :cond_5
    int-to-long v0, v2

    iget-object v4, p0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v4, v4, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v0, v0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    const/4 v1, 0x3

    aget-object v4, v0, v1

    sget-object v5, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    move v6, v2

    move-object v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/phone/EmergencyContactItem;->setItem(Lcom/android/phone/EmergencyContactItemContainer$ItemType;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 282
    .end local v10           #i:I
    :cond_6
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_7
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyContactItemContainer;->restoreContainerState()V

    goto/16 :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startQuery(Lcom/android/phone/EmergencyContactItemContainer$ItemType;)V
    .locals 8
    .parameter "token"

    .prologue
    const/4 v2, 0x0

    .line 204
    const-string v0, "EmergencyContactItemContainer"

    const-string v1, "startQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v3, 0x0

    .line 207
    .local v3, uri:Landroid/net/Uri;
    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$1;->$SwitchMap$com$android$phone$EmergencyContactItemContainer$ItemType:[I

    invoke-virtual {p1}, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 225
    :goto_0
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "data1"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "photo_id"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "display_name"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "default_emergency"

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "_id"

    aput-object v1, v4, v0

    .line 229
    .local v4, PROJECTION:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->getValue()I

    move-result v1

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void

    .line 209
    .end local v4           #PROJECTION:[Ljava/lang/String;
    :pswitch_0
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ICE"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "emergency"

    const-string v5, "1"

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "defaultId"

    const-string v5, "2"

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 213
    goto :goto_0

    .line 215
    :pswitch_1
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ICE"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "emergency"

    const-string v5, "1"

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "defaultId"

    const-string v5, "1"

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 219
    goto/16 :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
