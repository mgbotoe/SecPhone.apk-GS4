.class Lcom/android/phone/EcidClient$EcidContentObserver;
.super Landroid/database/ContentObserver;
.source "EcidClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EcidClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EcidContentObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/EcidClient$EcidContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 8
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 147
    sget-object v7, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    monitor-enter v7

    .line 148
    :try_start_0
    sget-object v1, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EcidClient;

    .line 149
    .local v0, ecidQuery:Lcom/android/phone/EcidClient;
    iget-object v1, v0, Lcom/android/phone/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/phone/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    move-object v5, v1

    .line 150
    .local v5, ctx:Landroid/content/Context;
    :goto_1
    if-eqz v5, :cond_0

    .line 151
    sget v1, Lcom/android/phone/EcidClient;->m_lookupId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/phone/EcidClient;->m_lookupId:I

    iget-object v2, v0, Lcom/android/phone/EcidClient;->m_phoneNumber:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/phone/EcidClient;->m_cname:Ljava/lang/String;

    iget v4, v0, Lcom/android/phone/EcidClient;->m_nFlags:I

    #calls: Lcom/android/phone/EcidClient;->executeLookupQuery(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    invoke-static/range {v0 .. v5}, Lcom/android/phone/EcidClient;->access$000(Lcom/android/phone/EcidClient;ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_0

    .line 153
    .end local v0           #ecidQuery:Lcom/android/phone/EcidClient;
    .end local v5           #ctx:Landroid/content/Context;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 149
    .restart local v0       #ecidQuery:Lcom/android/phone/EcidClient;
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 153
    .end local v0           #ecidQuery:Lcom/android/phone/EcidClient;
    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    return-void
.end method
