.class public Lcom/android/phone/EcidClient;
.super Ljava/lang/Object;
.source "EcidClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EcidClient$EcidContentObserver;,
        Lcom/android/phone/EcidClient$EcidLookupQueryHandler;
    }
.end annotation


# static fields
.field static ecidObserver:Lcom/android/phone/EcidClient$EcidContentObserver;

.field static m_lookupId:I

.field static m_mapLookupsInProcess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/phone/EcidClient;",
            ">;"
        }
    .end annotation
.end field

.field static m_mapLookupsWithNumber:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/EcidClient;",
            ">;"
        }
    .end annotation
.end field

.field static observerCr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private businessName:Ljava/lang/String;

.field ecidLookupHandler:Lcom/android/phone/EcidClient$EcidLookupQueryHandler;

.field public m_bFriends:Z

.field private m_bIncomingCall:Z

.field public m_bPreferCidImage:Z

.field public m_bSameNetwork:Z

.field public m_bizName:Ljava/lang/String;

.field public m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

.field m_callInfo:Lcom/android/internal/telephony/CallerInfo;

.field public m_callerId:Ljava/lang/String;

.field m_ccOwner:Lcom/android/phone/CallCard;

.field public m_cityName:Ljava/lang/String;

.field public m_cname:Ljava/lang/String;

.field public m_cnapDelivered:Z

.field public m_countryName:Ljava/lang/String;

.field public m_displayName:Ljava/lang/String;

.field public m_firstName:Ljava/lang/String;

.field public m_isCityIdCurrentlyDisplayed:Z

.field public m_isDisplayOneLine:Z

.field public m_lConnectionTime:J

.field public m_lastName:Ljava/lang/String;

.field protected m_nFlags:I

.field m_ownerCtx:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public m_phoneNumber:Ljava/lang/String;

.field public m_picture:Landroid/graphics/Bitmap;

.field public m_stateAbbr:Ljava/lang/String;

.field public m_stateName:Ljava/lang/String;

.field public m_tvOneLineDisplay:Landroid/widget/TextView;

.field public m_urlPicture:Ljava/lang/String;

.field private strDisplay:Ljava/lang/String;

.field private strFname:Ljava/lang/String;

.field private strLname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/EcidClient;->m_lookupId:I

    .line 158
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/EcidClient;->ecidObserver:Lcom/android/phone/EcidClient$EcidContentObserver;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/EcidClient;->m_mapLookupsWithNumber:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 215
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    .line 183
    iput-boolean v1, p0, Lcom/android/phone/EcidClient;->m_isDisplayOneLine:Z

    .line 184
    iput-boolean v1, p0, Lcom/android/phone/EcidClient;->m_isCityIdCurrentlyDisplayed:Z

    .line 185
    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 186
    iput-boolean v1, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    .line 187
    iput-boolean v1, p0, Lcom/android/phone/EcidClient;->m_cnapDelivered:Z

    .line 189
    iput-object v0, p0, Lcom/android/phone/EcidClient;->strFname:Ljava/lang/String;

    .line 190
    iput-object v0, p0, Lcom/android/phone/EcidClient;->strLname:Ljava/lang/String;

    .line 192
    iput-object v0, p0, Lcom/android/phone/EcidClient;->businessName:Ljava/lang/String;

    .line 195
    iput-object v0, p0, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    .line 216
    iput-object v0, p0, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    .line 217
    iput-object v0, p0, Lcom/android/phone/EcidClient;->strFname:Ljava/lang/String;

    .line 218
    iput-object v0, p0, Lcom/android/phone/EcidClient;->strLname:Ljava/lang/String;

    .line 219
    iput-object v0, p0, Lcom/android/phone/EcidClient;->businessName:Ljava/lang/String;

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EcidClient;ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/android/phone/EcidClient;->executeLookupQuery(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method static callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;
    .locals 2
    .parameter "oInfo"

    .prologue
    .line 1022
    const/4 v0, 0x0

    .line 1023
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    instance-of v1, p0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 1024
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 1027
    .end local p0
    :cond_0
    :goto_0
    return-object v0

    .line 1025
    .restart local p0
    :cond_1
    instance-of v1, p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v1, :cond_0

    .line 1026
    check-cast p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local p0
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method static cancelLookupQueriesInSet(Ljava/util/Set;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 538
    if-nez p0, :cond_0

    .line 556
    :goto_0
    return-void

    .line 542
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 544
    .local v1, key:Ljava/lang/Long;
    const-string v3, "Phone-ECID"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancelling Lookup Queries: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    sget-object v3, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EcidClient;

    .line 548
    .local v2, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v2, :cond_1

    .line 550
    iput-object v6, v2, Lcom/android/phone/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    .line 551
    iput-object v6, v2, Lcom/android/phone/EcidClient;->m_ccOwner:Lcom/android/phone/CallCard;

    goto :goto_1

    .line 555
    .end local v1           #key:Ljava/lang/Long;
    .end local v2           #thisObj:Lcom/android/phone/EcidClient;
    :cond_2
    invoke-static {}, Lcom/android/phone/EcidClient;->unRegisterObserverIfNeeded()V

    goto :goto_0
.end method

.method public static endAllLookupQueries()V
    .locals 5

    .prologue
    .line 500
    const-string v2, "Phone-ECID"

    const-string v3, "Cancelling All Lookup Queries"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    sget-object v3, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    monitor-enter v3

    .line 502
    :try_start_0
    sget-object v2, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EcidClient;

    .line 503
    .local v1, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v1, :cond_0

    .line 505
    if-eqz v1, :cond_0

    .line 507
    const-string v2, "Phone-ECID"

    const-string v4, "try : endAllLookUpQueries()"

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/phone/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    .line 509
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/phone/EcidClient;->m_ccOwner:Lcom/android/phone/CallCard;

    goto :goto_0

    .line 514
    .end local v1           #thisObj:Lcom/android/phone/EcidClient;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 513
    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 514
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    invoke-static {}, Lcom/android/phone/EcidClient;->unRegisterObserverIfNeeded()V

    .line 517
    sget-object v3, Lcom/android/phone/EcidClient;->m_mapLookupsWithNumber:Ljava/util/HashMap;

    monitor-enter v3

    .line 518
    :try_start_2
    sget-object v2, Lcom/android/phone/EcidClient;->m_mapLookupsWithNumber:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EcidClient;

    .line 519
    .restart local v1       #thisObj:Lcom/android/phone/EcidClient;
    if-eqz v1, :cond_2

    .line 522
    if-eqz v1, :cond_2

    .line 524
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/phone/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    .line 525
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/phone/EcidClient;->m_ccOwner:Lcom/android/phone/CallCard;

    goto :goto_1

    .line 531
    .end local v1           #thisObj:Lcom/android/phone/EcidClient;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 529
    :cond_3
    :try_start_3
    sget-object v2, Lcom/android/phone/EcidClient;->m_mapLookupsWithNumber:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 530
    const-string v2, "Phone-ECID"

    const-string v4, "Cleared m_mapLookupsWithNumber "

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 532
    const-string v2, "SVl_VUX"

    const-string v3, "Clear Vector called :  endAllLookupQueries"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-void
.end method

.method public static endLookupQuery(J)V
    .locals 4
    .parameter "lConnectionTime"

    .prologue
    .line 484
    sget-object v2, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    monitor-enter v2

    .line 485
    :try_start_0
    sget-object v1, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EcidClient;

    .line 486
    .local v0, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v0, :cond_0

    .line 488
    const-string v1, "SVl_VUX"

    const-string v3, "Clear Vector called :  endLookupQuery"

    invoke-static {v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    .line 491
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/EcidClient;->m_ccOwner:Lcom/android/phone/CallCard;

    .line 493
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    invoke-static {}, Lcom/android/phone/EcidClient;->unRegisterObserverIfNeeded()V

    .line 496
    return-void

    .line 493
    .end local v0           #thisObj:Lcom/android/phone/EcidClient;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private executeLookupQuery(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 8
    .parameter "id"
    .parameter "phoneNumber"
    .parameter "pCnam"
    .parameter "nFlags"
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 447
    iget-object v0, p0, Lcom/android/phone/EcidClient;->ecidLookupHandler:Lcom/android/phone/EcidClient$EcidLookupQueryHandler;

    if-nez v0, :cond_0

    .line 448
    new-instance v0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;

    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;-><init>(Lcom/android/phone/EcidClient;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/EcidClient;->ecidLookupHandler:Lcom/android/phone/EcidClient$EcidLookupQueryHandler;

    .line 450
    :cond_0
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v6, v0

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 451
    .local v6, args:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/EcidClient;->ecidLookupHandler:Lcom/android/phone/EcidClient$EcidLookupQueryHandler;

    const-string v1, "content://com.cequint.ecid/incalllookup"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move v1, p1

    move-object v4, v2

    move-object v5, p2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method static getClient(J)Lcom/android/phone/EcidClient;
    .locals 2
    .parameter "lConnectionTime"

    .prologue
    .line 229
    sget-object v0, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EcidClient;

    return-object v0
.end method

.method static getClient(Lcom/android/internal/telephony/CallerInfo;J)Lcom/android/phone/EcidClient;
    .locals 3
    .parameter "ci"
    .parameter "lConnectionTime"

    .prologue
    .line 234
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_1

    .line 236
    invoke-static {p1, p2}, Lcom/android/phone/EcidClient;->getClient(J)Lcom/android/phone/EcidClient;

    move-result-object v0

    .line 237
    .local v0, cid:Lcom/android/phone/EcidClient;
    if-eqz v0, :cond_1

    .line 239
    if-eqz p0, :cond_0

    iget-object v1, v0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    if-ne v1, p0, :cond_0

    .line 246
    .end local v0           #cid:Lcom/android/phone/EcidClient;
    :goto_0
    return-object v0

    .line 242
    .restart local v0       #cid:Lcom/android/phone/EcidClient;
    :cond_0
    const-string v1, "Phone-ECID"

    const-string v2, "Old EcidClient object found"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {p1, p2}, Lcom/android/phone/EcidClient;->endLookupQuery(J)V

    .line 246
    .end local v0           #cid:Lcom/android/phone/EcidClient;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static removeKeyFromSet(Ljava/util/Set;Lcom/android/internal/telephony/Call;I)V
    .locals 5
    .parameter
    .parameter "call"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/internal/telephony/Call;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 582
    .local p0, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz p1, :cond_1

    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 587
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 595
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 597
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v1

    .line 599
    .local v1, lConnectionTime:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 600
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 603
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    .end local v1           #lConnectionTime:J
    :cond_1
    return-void

    .line 589
    .restart local v0       #conn:Lcom/android/internal/telephony/Connection;
    :cond_2
    const/4 v3, 0x1

    if-eq p2, v3, :cond_3

    const/4 v3, 0x3

    if-eq p2, v3, :cond_3

    const/4 v3, 0x5

    if-ne p2, v3, :cond_0

    .line 593
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method public static sendLookupQueryToService(Ljava/lang/Object;Landroid/app/Activity;Lcom/android/phone/CallCard;IZZZZJLcom/android/internal/telephony/Connection;)Z
    .locals 11
    .parameter "o"
    .parameter "ownerActivity"
    .parameter "ccOwner"
    .parameter "nResultMessage"
    .parameter "bIncoming"
    .parameter "bSystemProvided"
    .parameter "bIsNANP"
    .parameter "bIsRoaming"
    .parameter "lConnectionTime"
    .parameter "conn"

    .prologue
    .line 310
    const-string v3, "Phone-ECID"

    const-string v7, "ECID AOSP VERSION: 2.3.6"

    invoke-static {v3, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v3, "Phone-ECID"

    const-string v7, "sendLookupQueryToService()"

    invoke-static {v3, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {p0}, Lcom/android/phone/EcidClient;->callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v8

    .line 318
    .local v8, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz p10, :cond_0

    .line 320
    const-string v3, "Phone-ECID"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendLookupQueryToService() : conn is not null, conn.getCnapName() -//"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p10 .. p10}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "//"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    if-eqz v8, :cond_0

    invoke-virtual/range {p10 .. p10}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 325
    :cond_0
    if-eqz v8, :cond_1

    iget-object v3, v8, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 326
    :cond_1
    const/4 v3, 0x0

    .line 443
    :goto_0
    return v3

    .line 328
    :cond_2
    iget-object v3, v8, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, phoneNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 330
    const/4 v3, 0x0

    goto :goto_0

    .line 333
    :cond_3
    const/4 v2, 0x0

    .line 334
    .local v2, thisObj:Lcom/android/phone/EcidClient;
    const/4 v6, 0x0

    .line 336
    .local v6, nFlags:I
    const-string v3, "Phone-ECID"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ci.phoneNumber= "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v8, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v3, "Phone-ECID"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "phoneNumber= "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v3, "Phone-ECID"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bIncoming= "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v3, "Phone-ECID"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bSystemProvided= "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v3, "Phone-ECID"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bIsNANP= "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v3, "Phone-ECID"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bIsRoaming= "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    move-wide/from16 v0, p8

    invoke-static {v8, v0, v1}, Lcom/android/phone/EcidClient;->getClient(Lcom/android/internal/telephony/CallerInfo;J)Lcom/android/phone/EcidClient;

    move-result-object v2

    .line 346
    if-nez v2, :cond_9

    .line 349
    const-string v3, "Phone-ECID"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Start Query: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v2, Lcom/android/phone/EcidClient;

    .end local v2           #thisObj:Lcom/android/phone/EcidClient;
    invoke-direct {v2}, Lcom/android/phone/EcidClient;-><init>()V

    .line 351
    .restart local v2       #thisObj:Lcom/android/phone/EcidClient;
    iput-object v4, v2, Lcom/android/phone/EcidClient;->m_phoneNumber:Ljava/lang/String;

    .line 352
    iput-object p2, v2, Lcom/android/phone/EcidClient;->m_ccOwner:Lcom/android/phone/CallCard;

    .line 353
    iput-object v8, v2, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 354
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/android/phone/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    .line 355
    move/from16 v0, p5

    iput-boolean v0, v2, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    .line 356
    move-wide/from16 v0, p8

    iput-wide v0, v2, Lcom/android/phone/EcidClient;->m_lConnectionTime:J

    .line 357
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/phone/EcidClient;->m_cnapDelivered:Z

    .line 358
    const-string v3, "Phone-ECID"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Start Query: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "bSystemProvided="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v7, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    monitor-enter v7

    .line 361
    :try_start_0
    sget-object v3, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    sget-object v7, Lcom/android/phone/EcidClient;->m_mapLookupsWithNumber:Ljava/util/HashMap;

    monitor-enter v7

    .line 365
    :try_start_1
    sget-object v3, Lcom/android/phone/EcidClient;->m_mapLookupsWithNumber:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 372
    if-eqz p5, :cond_8

    const/4 v3, 0x2

    :goto_1
    or-int/2addr v6, v3

    .line 373
    if-nez p6, :cond_4

    .line 374
    or-int/lit8 v6, v6, 0x4

    .line 376
    :cond_4
    if-eqz p4, :cond_5

    .line 377
    or-int/lit8 v6, v6, 0x20

    .line 405
    :cond_5
    :goto_2
    const/4 v5, 0x0

    .line 406
    .local v5, pCnam:Ljava/lang/String;
    iget-object v3, v8, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 407
    iget-object v5, v8, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 408
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/phone/EcidClient;->m_cnapDelivered:Z

    .line 409
    const-string v3, "Phone-ECID"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendLookupQueryToService - pCNAM: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v8, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :goto_3
    if-eqz p7, :cond_6

    .line 418
    const-string v3, "Phone-ECID"

    const-string v7, "bIsRoaming is set"

    invoke-static {v3, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    or-int/lit8 v6, v6, 0x10

    .line 422
    :cond_6
    iput v6, v2, Lcom/android/phone/EcidClient;->m_nFlags:I

    .line 427
    sget v3, Lcom/android/phone/EcidClient;->m_lookupId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/phone/EcidClient;->m_lookupId:I

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/EcidClient;->executeLookupQuery(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    .line 432
    sget-object v3, Lcom/android/phone/EcidClient;->ecidObserver:Lcom/android/phone/EcidClient$EcidContentObserver;

    if-nez v3, :cond_7

    .line 433
    const-string v3, "Phone-ECID"

    const-string v7, "Registering new content observer"

    invoke-static {v3, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v3, Lcom/android/phone/EcidClient$EcidContentObserver;

    invoke-direct {v3}, Lcom/android/phone/EcidClient$EcidContentObserver;-><init>()V

    sput-object v3, Lcom/android/phone/EcidClient;->ecidObserver:Lcom/android/phone/EcidClient$EcidContentObserver;

    .line 436
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 437
    .local v9, cr:Landroid/content/ContentResolver;
    const-string v3, "content://com.cequint.ecid/incalllookup"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/android/phone/EcidClient;->ecidObserver:Lcom/android/phone/EcidClient$EcidContentObserver;

    invoke-virtual {v9, v3, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 439
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/android/phone/EcidClient;->observerCr:Ljava/lang/ref/WeakReference;

    .line 443
    .end local v9           #cr:Landroid/content/ContentResolver;
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 362
    .end local v5           #pCnam:Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 366
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 372
    :cond_8
    const/4 v3, 0x1

    goto :goto_1

    .line 381
    :cond_9
    const-string v3, "Phone-ECID"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found EcidClient for "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", m_cnapDelivered : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v10, v2, Lcom/android/phone/EcidClient;->m_cnapDelivered:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", ci.cnapName : ///"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v8, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "///"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    move/from16 v0, p5

    iput-boolean v0, v2, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    .line 385
    iget-boolean v3, v2, Lcom/android/phone/EcidClient;->m_cnapDelivered:Z

    if-nez v3, :cond_a

    iget-object v3, v8, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 387
    const-string v3, "Phone-ECID"

    const-string v7, "Finally got a cnapName. Pass the value to ECID client again."

    invoke-static {v3, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    or-int/lit8 v6, v6, 0x20

    goto/16 :goto_2

    .line 389
    :cond_a
    iget-boolean v3, v2, Lcom/android/phone/EcidClient;->m_cnapDelivered:Z

    const/4 v7, 0x1

    if-ne v3, v7, :cond_b

    iget-object v3, v8, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 390
    const-string v3, "Phone-ECID"

    const-string v7, "m_cnapDelivered has a wrong flag, reset it "

    invoke-static {v3, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/phone/EcidClient;->m_cnapDelivered:Z

    .line 392
    invoke-virtual {v2, p1}, Lcom/android/phone/EcidClient;->updateCallerInfo(Landroid/content/Context;)Z

    move-result v3

    goto/16 :goto_0

    .line 394
    :cond_b
    const-string v3, "Phone-ECID"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NOT Quering: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    if-eqz p10, :cond_c

    invoke-virtual/range {p10 .. p10}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v7, :cond_c

    .line 397
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/phone/EcidClient;->m_cnapDelivered:Z

    .line 398
    const-string v3, "Phone-ECID"

    const-string v7, "call disconnected, reset m_cnapDelivered "

    invoke-static {v3, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_c
    invoke-virtual {v2, p1}, Lcom/android/phone/EcidClient;->updateCallerInfo(Landroid/content/Context;)Z

    move-result v3

    goto/16 :goto_0

    .line 412
    .restart local v5       #pCnam:Ljava/lang/String;
    :cond_d
    const-string v3, "Phone-ECID"

    const-string v7, "No CNAM passed by radio layer"

    invoke-static {v3, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public static setEcidDisplay(JLcom/android/internal/telephony/CallerInfo;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V
    .locals 7
    .parameter "lConnectionTime"
    .parameter "info"
    .parameter "tvCityId"
    .parameter "ivConnectionIcon"
    .parameter "isDisconnected"

    .prologue
    const/4 v6, 0x0

    .line 740
    const/4 v1, 0x0

    .line 742
    .local v1, nConnectionIconVisibility:I
    invoke-static {p0, p1}, Lcom/android/phone/EcidClient;->getClient(J)Lcom/android/phone/EcidClient;

    move-result-object v2

    .line 743
    .local v2, thisObj:Lcom/android/phone/EcidClient;
    const-string v3, "Phone-ECID"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEcidDisplay: thisObj = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const-string v3, ""

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    if-eqz v2, :cond_5

    .line 747
    invoke-virtual {v2}, Lcom/android/phone/EcidClient;->dbgLogData()V

    .line 749
    iput-boolean v6, v2, Lcom/android/phone/EcidClient;->m_isDisplayOneLine:Z

    .line 750
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 751
    iput-boolean v6, v2, Lcom/android/phone/EcidClient;->m_isCityIdCurrentlyDisplayed:Z

    .line 753
    invoke-virtual {v2}, Lcom/android/phone/EcidClient;->hasCityId()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 756
    invoke-virtual {v2}, Lcom/android/phone/EcidClient;->getCityStateDisplayName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    .line 758
    iget-object v3, v2, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 759
    const-string v3, "Phone-ECID"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Displaying CityID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v3, v2, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/EcidClient;->truncateCityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, cityId:Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    .end local v0           #cityId:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lcom/android/phone/EcidClient;->hasFirstName()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 768
    invoke-virtual {v2}, Lcom/android/phone/EcidClient;->getFirstName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/EcidClient;->strFname:Ljava/lang/String;

    .line 769
    const-string v3, "Phone-ECID"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Displaying First Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/phone/EcidClient;->strFname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_1
    invoke-virtual {v2}, Lcom/android/phone/EcidClient;->hasLastName()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 778
    invoke-virtual {v2}, Lcom/android/phone/EcidClient;->getLastName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/EcidClient;->strLname:Ljava/lang/String;

    .line 779
    const-string v3, "Phone-ECID"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Displaying Last Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/phone/EcidClient;->strLname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_2
    invoke-virtual {v2}, Lcom/android/phone/EcidClient;->hasBussName()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 788
    invoke-virtual {v2}, Lcom/android/phone/EcidClient;->getBussinessName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/EcidClient;->businessName:Ljava/lang/String;

    .line 789
    const-string v3, "Phone-ECID"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Displaying Bussiness Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/phone/EcidClient;->businessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_3
    iget-boolean v3, v2, Lcom/android/phone/EcidClient;->m_bFriends:Z

    if-eqz v3, :cond_7

    iget-boolean v3, v2, Lcom/android/phone/EcidClient;->m_bSameNetwork:Z

    if-eqz v3, :cond_7

    .line 794
    const/4 v1, 0x3

    .line 802
    :cond_4
    :goto_0
    if-eqz p3, :cond_5

    .line 803
    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 806
    :cond_5
    if-eqz p4, :cond_6

    .line 808
    packed-switch v1, :pswitch_data_0

    .line 823
    const/4 v3, 0x4

    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 827
    :cond_6
    :goto_1
    return-void

    .line 796
    :cond_7
    iget-boolean v3, v2, Lcom/android/phone/EcidClient;->m_bFriends:Z

    if-eqz v3, :cond_8

    .line 797
    const/4 v1, 0x2

    goto :goto_0

    .line 799
    :cond_8
    iget-boolean v3, v2, Lcom/android/phone/EcidClient;->m_bSameNetwork:Z

    if-eqz v3, :cond_4

    .line 800
    const/4 v1, 0x1

    goto :goto_0

    .line 810
    :pswitch_0
    const v3, 0x7f0204ec

    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 811
    invoke-virtual {p4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 814
    :pswitch_1
    const v3, 0x7f0203ce

    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 815
    invoke-virtual {p4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 818
    :pswitch_2
    const v3, 0x7f0204ed

    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 819
    invoke-virtual {p4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 808
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static truncateCityId(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "city_id"

    .prologue
    const/16 v7, 0x2c

    const/4 v8, 0x0

    .line 1063
    const/4 v4, 0x1

    .line 1064
    .local v4, orientation:I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1065
    .local v2, configuration:Landroid/content/res/Configuration;
    if-eqz v2, :cond_0

    .line 1066
    iget v4, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1068
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1069
    .local v3, len_city:I
    const/16 v0, 0xf

    .line 1070
    .local v0, MAX_LEN:I
    if-lt v3, v0, :cond_1

    .line 1071
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ltz v6, :cond_1

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v7, v3, -0x4

    if-ne v6, v7, :cond_1

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v6, v3, -0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1072
    add-int/lit8 v6, v3, -0x4

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1073
    .local v1, city_name:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1074
    .local v5, state_abbr:Ljava/lang/String;
    const-string v6, "hardkeyboardhidden_no"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    iget v6, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 1078
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x8

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".., "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1084
    .end local v1           #city_name:Ljava/lang/String;
    .end local v5           #state_abbr:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 1081
    .restart local v1       #city_name:Ljava/lang/String;
    .restart local v5       #state_abbr:Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0xb

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".., "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static unRegisterObserverIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 455
    sget-object v1, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/phone/EcidClient;->ecidObserver:Lcom/android/phone/EcidClient$EcidContentObserver;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/phone/EcidClient;->observerCr:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 456
    const-string v1, "Phone-ECID"

    const-string v2, "Unregistering content observer"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    sget-object v1, Lcom/android/phone/EcidClient;->observerCr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 459
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/phone/EcidClient;->ecidObserver:Lcom/android/phone/EcidClient$EcidContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 460
    :cond_0
    sput-object v3, Lcom/android/phone/EcidClient;->observerCr:Ljava/lang/ref/WeakReference;

    .line 461
    sput-object v3, Lcom/android/phone/EcidClient;->ecidObserver:Lcom/android/phone/EcidClient$EcidContentObserver;

    .line 463
    :cond_1
    return-void
.end method

.method static updateCallerInfoMapping(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .parameter "oOld"
    .parameter "oNew"

    .prologue
    .line 261
    invoke-static {p0}, Lcom/android/phone/EcidClient;->callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 262
    .local v1, ciOld:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {p1}, Lcom/android/phone/EcidClient;->callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 264
    .local v0, ciNew:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 266
    iget-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, phoneNumberOld:Ljava/lang/String;
    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, phoneNumberNew:Ljava/lang/String;
    if-eqz v4, :cond_0

    if-nez v3, :cond_2

    .line 271
    :cond_0
    const-string v6, "Phone-ECID"

    const-string v7, "updateCallerInfoMapping: Cannot Map due to the empty phone number."

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v3           #phoneNumberNew:Ljava/lang/String;
    .end local v4           #phoneNumberOld:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 275
    .restart local v3       #phoneNumberNew:Ljava/lang/String;
    .restart local v4       #phoneNumberOld:Ljava/lang/String;
    :cond_2
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 277
    sget-object v6, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/EcidClient;

    .line 278
    .local v5, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v5, :cond_4

    .line 280
    iget-object v6, v5, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    if-ne v6, v1, :cond_3

    .line 282
    const-string v6, "Phone-ECID"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCallerInfoMapping: Found mapping: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iput-object v0, v5, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0

    .line 289
    :cond_4
    const-string v6, "Phone-ECID"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCallerInfoMapping: No current mapping for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Cannot Map."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateLookupQueries(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    .line 563
    const-string v2, "Phone-ECID"

    const-string v3, "updateLookupQueries"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    if-nez p0, :cond_0

    .line 577
    :goto_0
    return-void

    .line 567
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 569
    .local v1, phoneType:I
    sget-object v3, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    monitor-enter v3

    .line 570
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    sget-object v2, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 571
    .local v0, keys:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/phone/EcidClient;->removeKeyFromSet(Ljava/util/Set;Lcom/android/internal/telephony/Call;I)V

    .line 572
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/phone/EcidClient;->removeKeyFromSet(Ljava/util/Set;Lcom/android/internal/telephony/Call;I)V

    .line 573
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/phone/EcidClient;->removeKeyFromSet(Ljava/util/Set;Lcom/android/internal/telephony/Call;I)V

    .line 575
    invoke-static {v0}, Lcom/android/phone/EcidClient;->cancelLookupQueriesInSet(Ljava/util/Set;)V

    .line 576
    monitor-exit v3

    goto :goto_0

    .end local v0           #keys:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public canUpdateContactPhoto()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 624
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 625
    const-string v1, "Phone-ECID"

    const-string v2, "canUpdateContactPhoto: no picture"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :goto_0
    return v0

    .line 628
    :cond_0
    iget-boolean v1, p0, Lcom/android/phone/EcidClient;->m_bPreferCidImage:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v1, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v1, :cond_1

    .line 629
    const-string v1, "Phone-ECID"

    const-string v2, "canUpdateContactPhoto: use contact photo && photo exist && isCachedPhotoCurrent"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 632
    :cond_1
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-ne v1, v2, :cond_2

    .line 633
    const-string v1, "Phone-ECID"

    const-string v2, "canUpdateContactPhoto: contact photo exist"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 636
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method dbgLogData()V
    .locals 3

    .prologue
    .line 1034
    const-string v0, "Phone-ECID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_phoneNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    const-string v0, "Phone-ECID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_cname:       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_cname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const-string v0, "Phone-ECID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_bizName:     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_bizName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const-string v0, "Phone-ECID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_firstName:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_firstName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const-string v0, "Phone-ECID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_lastName:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_lastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const-string v0, "Phone-ECID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_cityName:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_cityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const-string v0, "Phone-ECID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_stateName:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_stateName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const-string v0, "Phone-ECID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_stateAbbr:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_stateAbbr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const-string v0, "Phone-ECID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_countryName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_countryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const-string v0, "Phone-ECID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_urlPicture:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_urlPicture:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const-string v0, "Phone-ECID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_bSameNetwork:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/EcidClient;->m_bSameNetwork:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const-string v0, "Phone-ECID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_bFriends:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/EcidClient;->m_bFriends:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const-string v0, "Phone-ECID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_bPreferCidImage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/EcidClient;->m_bPreferCidImage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const-string v0, "Phone-ECID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_displayName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    return-void
.end method

.method public getBussinessName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_bizName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 732
    const-string v0, "Phone-ECID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_bizName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_bizName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_bizName:Ljava/lang/String;

    .line 735
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getCityStateDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_cityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateAbbr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_cityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_stateAbbr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 702
    :goto_0
    return-object v0

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateName:Ljava/lang/String;

    goto :goto_0

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_countryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 698
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_countryName:Ljava/lang/String;

    goto :goto_0

    .line 702
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_firstName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    const-string v0, "Phone-ECID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_firstName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_firstName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_firstName:Ljava/lang/String;

    .line 713
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "ctx"
    .parameter "strImageUrl"

    .prologue
    .line 607
    const/4 v3, 0x0

    .line 609
    .local v3, pic:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 611
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 612
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 613
    .local v2, is:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 619
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v3

    .line 615
    :catch_0
    move-exception v1

    .line 616
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v4, "Phone-ECID"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error getting image from URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_lastName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    const-string v0, "Phone-ECID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_lastName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_lastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_lastName:Ljava/lang/String;

    .line 724
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method hasBussName()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 854
    const-string v3, "Phone-ECID"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!TextUtils.isEmpty(m_bizName) = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_bizName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_bizName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 854
    goto :goto_0

    :cond_1
    move v1, v2

    .line 855
    goto :goto_1
.end method

.method hasCityId()Z
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_cityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateAbbr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_countryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasFirstName()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 839
    const-string v3, "Phone-ECID"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!TextUtils.isEmpty(m_firstName) = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_firstName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_firstName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 839
    goto :goto_0

    :cond_1
    move v1, v2

    .line 840
    goto :goto_1
.end method

.method hasLastName()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 846
    const-string v3, "Phone-ECID"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!TextUtils.isEmpty(m_lastName) = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_lastName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_lastName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 846
    goto :goto_0

    :cond_1
    move v1, v2

    .line 847
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public updateCallerInfo(Landroid/content/Context;)Z
    .locals 5
    .parameter "ctx"

    .prologue
    .line 641
    const/4 v0, 0x0

    .line 643
    .local v0, bModified:Z
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    if-eqz v1, :cond_1

    .line 645
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 647
    :cond_0
    const-string v1, "Phone-ECID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_callInfo.name updated with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 649
    const/4 v0, 0x1

    .line 666
    :cond_1
    :goto_0
    const-string v1, "Phone-ECID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_bIncomingCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " m_callInfo.name= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual {p0}, Lcom/android/phone/EcidClient;->canUpdateContactPhoto()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    if-eqz v1, :cond_2

    .line 671
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 672
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    .line 673
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 674
    const-string v1, "Phone-ECID"

    const-string v2, "Set ECID pictures done"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const/4 v0, 0x1

    .line 677
    :cond_2
    return v0

    .line 652
    :cond_3
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/EcidClient;->m_cnapDelivered:Z

    if-eqz v1, :cond_1

    .line 655
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    const-string v2, "Unknown Name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    const-string v2, "Wireless Caller"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 657
    :cond_4
    const-string v1, "Phone-ECID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "both m_callInfo.name updated for Unknown Name || Wireless Caller"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 659
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
