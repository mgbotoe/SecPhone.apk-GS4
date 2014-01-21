.class public Lcom/android/phone/FDNContactsCache;
.super Ljava/lang/Object;
.source "FDNContactsCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/FDNContactsCache$FDNCacheLoader;
    }
.end annotation


# static fields
.field protected static sInstance:Lcom/android/phone/FDNContactsCache;


# instance fields
.field private mCacheLock:Ljava/lang/Object;

.field protected mFDNRecordsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMessageQueue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueLock:Ljava/lang/Object;

.field protected mbDone:Z

.field protected mbLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/FDNContactsCache;->sInstance:Lcom/android/phone/FDNContactsCache;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/FDNContactsCache;->mCacheLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/FDNContactsCache;->mFDNRecordsCache:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/FDNContactsCache;->mQueueLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/FDNContactsCache;->mMessageQueue:Ljava/util/HashMap;

    .line 60
    iput-boolean v1, p0, Lcom/android/phone/FDNContactsCache;->mbDone:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/phone/FDNContactsCache;->mbLoading:Z

    .line 44
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-static {p0}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/FDNContactsCache;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/FDNContactsCache;->mCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/FDNContactsCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/phone/FDNContactsCache;->sendResultForFDNContactQueryToAllMsgInQueue()V

    return-void
.end method

.method public static getInstance()Lcom/android/phone/FDNContactsCache;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/phone/FDNContactsCache;->sInstance:Lcom/android/phone/FDNContactsCache;

    if-nez v0, :cond_0

    .line 48
    const-string v0, "get new instance"

    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/android/phone/FDNContactsCache;

    invoke-direct {v0}, Lcom/android/phone/FDNContactsCache;-><init>()V

    sput-object v0, Lcom/android/phone/FDNContactsCache;->sInstance:Lcom/android/phone/FDNContactsCache;

    .line 51
    :cond_0
    sget-object v0, Lcom/android/phone/FDNContactsCache;->sInstance:Lcom/android/phone/FDNContactsCache;

    return-object v0
.end method

.method public static getNameFromMsg(Landroid/os/Message;)Ljava/lang/String;
    .locals 3
    .parameter "returnMsg"

    .prologue
    .line 261
    const-string v1, ""

    .line 262
    .local v1, retVal:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 263
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 264
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 265
    const-string v2, "NAME_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .end local v0           #data:Landroid/os/Bundle;
    :cond_0
    return-object v1
.end method

.method public static getNameIfNumberIsInFDNCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "given_number"

    .prologue
    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmNumberIfFDN - given_number - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    .line 274
    move-object v0, p0

    .line 276
    .local v0, name:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/FDNContactsCache;->getInstance()Lcom/android/phone/FDNContactsCache;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/phone/FDNContactsCache;->queryFDNContactByNumberOnlyIfLoaded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, nameIfFDNRecord:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 279
    move-object v0, v1

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmNumberIfFDN - found - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    .line 286
    :goto_0
    return-object v0

    .line 283
    :cond_0
    const-string v2, "confirmNumberIfFDN - not found"

    invoke-static {v2}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getNumberFromMsg(Landroid/os/Message;)Ljava/lang/String;
    .locals 3
    .parameter "returnMsg"

    .prologue
    .line 250
    const-string v1, ""

    .line 251
    .local v1, retVal:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 252
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 253
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 254
    const-string v2, "NUMBER_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .end local v0           #data:Landroid/os/Bundle;
    :cond_0
    return-object v1
.end method

.method private getRecord(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "number"

    .prologue
    .line 91
    const/4 v3, 0x0

    .line 92
    .local v3, name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 93
    .local v1, hasRecord:Z
    iget-object v6, p0, Lcom/android/phone/FDNContactsCache;->mCacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 94
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/FDNContactsCache;->mFDNRecordsCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 95
    if-eqz v1, :cond_2

    .line 96
    iget-object v5, p0, Lcom/android/phone/FDNContactsCache;->mFDNRecordsCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 108
    :cond_0
    :goto_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    if-nez v1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "record not found for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    .line 111
    :cond_1
    return-object v3

    .line 99
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/FDNContactsCache;->mFDNRecordsCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 100
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 102
    .local v4, number_key:Ljava/lang/String;
    invoke-static {v4, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 103
    iget-object v5, p0, Lcom/android/phone/FDNContactsCache;->mFDNRecordsCache:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 104
    goto :goto_0

    .line 108
    .end local v2           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4           #number_key:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 38
    const-string v0, "FDNContactsCache"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method private sendResultForFDNContactQueryToAllMsgInQueue()V
    .locals 6

    .prologue
    .line 152
    const-string v3, "sendResultForFDNContactQueryToAllMsgInQueue"

    invoke-static {v3}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    .line 153
    iget-boolean v3, p0, Lcom/android/phone/FDNContactsCache;->mbDone:Z

    if-nez v3, :cond_0

    .line 175
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v4, p0, Lcom/android/phone/FDNContactsCache;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 155
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/FDNContactsCache;->mMessageQueue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message queue. size - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/FDNContactsCache;->mMessageQueue:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    .line 157
    iget-object v3, p0, Lcom/android/phone/FDNContactsCache;->mMessageQueue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 159
    .local v0, e:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    .local v1, keyNumber:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/FDNContactsCache;->mMessageQueue:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 164
    .local v2, msg:Landroid/os/Message;
    invoke-direct {p0, v1, v2}, Lcom/android/phone/FDNContactsCache;->sendResultForFDNContactQueryToMessage(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 174
    .end local v0           #e:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #keyNumber:Ljava/lang/String;
    .end local v2           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 171
    :cond_1
    :try_start_1
    const-string v3, "Message queue is empty"

    invoke-static {v3}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    .line 173
    :cond_2
    iget-object v3, p0, Lcom/android/phone/FDNContactsCache;->mMessageQueue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 174
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private sendResultForFDNContactQueryToMessage(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "number"
    .parameter "returnMsg"

    .prologue
    .line 135
    const-string v2, "sendResultForFDNContactQueryToMessage"

    invoke-static {v2}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/android/phone/FDNContactsCache;->getRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, name:Ljava/lang/String;
    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    .line 139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "NUMBER_KEY"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v2, "NAME_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendResultForFDNContactQueryToMessage - sendToTarget name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 149
    .end local v0           #data:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private startLoading(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    const-string v0, "startLoading"

    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    .line 179
    iget-boolean v0, p0, Lcom/android/phone/FDNContactsCache;->mbLoading:Z

    if-nez v0, :cond_0

    .line 180
    iput-boolean v2, p0, Lcom/android/phone/FDNContactsCache;->mbDone:Z

    .line 181
    iput-boolean v1, p0, Lcom/android/phone/FDNContactsCache;->mbLoading:Z

    .line 182
    new-instance v0, Lcom/android/phone/FDNContactsCache$FDNCacheLoader;

    invoke-direct {v0, p0}, Lcom/android/phone/FDNContactsCache$FDNCacheLoader;-><init>(Lcom/android/phone/FDNContactsCache;)V

    new-array v1, v1, [Landroid/content/Context;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/phone/FDNContactsCache$FDNCacheLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    const-string v0, "startLoading - already loading"

    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public queryFDNContactByNumber(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "ctx"
    .parameter "number"
    .parameter "returnMsg"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/phone/FDNContactsCache;->mbDone:Z

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "queryFDNContactByNumber - mloaded"

    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, p2, p3}, Lcom/android/phone/FDNContactsCache;->sendResultForFDNContactQueryToMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 131
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string v0, "queryFDNContactByNumber - !mloaded"

    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/android/phone/FDNContactsCache;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/FDNContactsCache;->mMessageQueue:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-direct {p0, p1}, Lcom/android/phone/FDNContactsCache;->startLoading(Landroid/content/Context;)V

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public queryFDNContactByNumberOnlyIfLoaded(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 79
    const-string v1, "queryFDNContactByNumberOnlyIfLoaded"

    invoke-static {v1}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, name:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/phone/FDNContactsCache;->mbDone:Z

    if-eqz v1, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/FDNContactsCache;->getRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 85
    :cond_0
    const-string v1, "not yet loaded..."

    invoke-static {v1}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
