.class Lcom/android/phone/NotificationMgr$3;
.super Ljava/lang/Thread;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NotificationMgr;->updateContactInMemo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/NotificationMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 3573
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$3;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 3575
    const/4 v8, 0x0

    .line 3577
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$3;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/AnswerMemo$Memos;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3580
    :goto_0
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3581
    const-string v0, "memo_contact_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3582
    .local v7, cName:Ljava/lang/String;
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3583
    .local v9, id:J
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$3;->this$0:Lcom/android/phone/NotificationMgr;

    #calls: Lcom/android/phone/NotificationMgr;->getContactName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v7}, Lcom/android/phone/NotificationMgr;->access$2100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3584
    .local v11, updatedName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3586
    .local v12, where:Ljava/lang/String;
    const-string v0, "NotificationMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatedName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3588
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 3589
    .local v6, answermemoContent:Landroid/content/ContentValues;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3590
    move-object v11, v7

    .line 3592
    :cond_0
    const-string v0, "memo_display_name"

    invoke-virtual {v6, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3593
    const-string v0, "_id"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3595
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$3;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/AnswerMemo$Memos;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v6, v12, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3597
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$3;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v1, "updated successsfully"

    const/4 v2, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3600
    .end local v6           #answermemoContent:Landroid/content/ContentValues;
    .end local v7           #cName:Ljava/lang/String;
    .end local v9           #id:J
    .end local v11           #updatedName:Ljava/lang/String;
    .end local v12           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_1

    .line 3601
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 3600
    :cond_2
    if-eqz v8, :cond_3

    .line 3601
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3604
    :cond_3
    return-void
.end method
