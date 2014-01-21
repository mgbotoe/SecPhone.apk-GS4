.class Lcom/android/phone/FDNContactsCache$FDNCacheLoader;
.super Landroid/os/AsyncTask;
.source "FDNContactsCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FDNContactsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FDNCacheLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final FDN_URI:Ljava/lang/String;

.field final NAME_COLUMN:I

.field final NUMBER_COLUMN:I

.field final synthetic this$0:Lcom/android/phone/FDNContactsCache;


# direct methods
.method constructor <init>(Lcom/android/phone/FDNContactsCache;)V
    .locals 1
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/phone/FDNContactsCache$FDNCacheLoader;->this$0:Lcom/android/phone/FDNContactsCache;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 193
    const-string v0, "content://icc/fdn"

    iput-object v0, p0, Lcom/android/phone/FDNContactsCache$FDNCacheLoader;->FDN_URI:Ljava/lang/String;

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/FDNContactsCache$FDNCacheLoader;->NAME_COLUMN:I

    .line 196
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/FDNContactsCache$FDNCacheLoader;->NUMBER_COLUMN:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Integer;
    .locals 12
    .parameter "arg0"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 200
    const-string v0, "FDNCacheLoader - doInBackground"

    #calls: Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->access$000(Ljava/lang/String;)V

    .line 201
    if-eqz p1, :cond_2

    .line 202
    aget-object v6, p1, v10

    .line 203
    .local v6, ctx:Landroid/content/Context;
    if-eqz v6, :cond_2

    .line 204
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 205
    .local v1, contactUri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 207
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor != null size - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->access$000(Ljava/lang/String;)V

    .line 210
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    const-string v0, "cursor.moveToFirst()"

    #calls: Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->access$000(Ljava/lang/String;)V

    .line 213
    :cond_0
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 214
    .local v9, num:Ljava/lang/String;
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/FDNContactsCache$FDNCacheLoader;->this$0:Lcom/android/phone/FDNContactsCache;

    #getter for: Lcom/android/phone/FDNContactsCache;->mCacheLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->access$100(Lcom/android/phone/FDNContactsCache;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/FDNContactsCache$FDNCacheLoader;->this$0:Lcom/android/phone/FDNContactsCache;

    iget-object v0, v0, Lcom/android/phone/FDNContactsCache;->mFDNRecordsCache:Ljava/util/HashMap;

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFDNRecordsCache - add - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->access$000(Ljava/lang/String;)V

    .line 220
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #num:Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 224
    const/4 v7, 0x0

    .line 225
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 230
    .end local v1           #contactUri:Landroid/net/Uri;
    .end local v6           #ctx:Landroid/content/Context;
    .end local v7           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 218
    .restart local v1       #contactUri:Landroid/net/Uri;
    .restart local v6       #ctx:Landroid/content/Context;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v8       #name:Ljava/lang/String;
    .restart local v9       #num:Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 230
    .end local v1           #contactUri:Landroid/net/Uri;
    .end local v6           #ctx:Landroid/content/Context;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #num:Ljava/lang/String;
    :cond_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    check-cast p1, [Landroid/content/Context;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/FDNContactsCache$FDNCacheLoader;->doInBackground([Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute - result"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->access$000(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/phone/FDNContactsCache$FDNCacheLoader;->this$0:Lcom/android/phone/FDNContactsCache;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/FDNContactsCache;->mbDone:Z

    .line 238
    iget-object v0, p0, Lcom/android/phone/FDNContactsCache$FDNCacheLoader;->this$0:Lcom/android/phone/FDNContactsCache;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/phone/FDNContactsCache;->mbLoading:Z

    .line 240
    iget-object v0, p0, Lcom/android/phone/FDNContactsCache$FDNCacheLoader;->this$0:Lcom/android/phone/FDNContactsCache;

    #calls: Lcom/android/phone/FDNContactsCache;->sendResultForFDNContactQueryToAllMsgInQueue()V
    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->access$200(Lcom/android/phone/FDNContactsCache;)V

    .line 242
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 191
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/FDNContactsCache$FDNCacheLoader;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
