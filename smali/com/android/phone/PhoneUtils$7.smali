.class final Lcom/android/phone/PhoneUtils$7;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3534
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 11
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 3541
    const-string v8, "onQueryComplete : query complete, updating connection.userdata"

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->access$300(Ljava/lang/String;)V

    move-object v3, p2

    .line 3542
    check-cast v3, Lcom/android/internal/telephony/Connection;

    .local v3, conn:Lcom/android/internal/telephony/Connection;
    move-object v1, p2

    .line 3549
    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 3550
    .local v1, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v5

    .line 3551
    .local v5, o:Ljava/lang/Object;
    const-string v8, "feature_att"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3552
    const/4 v7, 0x0

    .line 3553
    .local v7, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    instance-of v8, v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v8, :cond_a

    move-object v8, v5

    .line 3555
    check-cast v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v8, v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v7, v8, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    .line 3562
    :cond_0
    :goto_0
    iput-object v7, p3, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    .line 3564
    .end local v7           #userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const/4 v2, 0x0

    .line 3565
    .local v2, ciOld:Lcom/android/internal/telephony/CallerInfo;
    instance-of v8, v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v8, :cond_b

    .line 3566
    check-cast v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v5           #o:Ljava/lang/Object;
    iget-object v2, v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 3573
    :cond_2
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onQueryComplete: CallerInfo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->access$300(Ljava/lang/String;)V

    .line 3576
    const-string v8, "roaming_auto_dial"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3577
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3578
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onQueryComplete : ci.phoneNumber = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", conn.getAddress() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->access$300(Ljava/lang/String;)V

    .line 3579
    iget-object v8, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3580
    .local v6, result:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    iput-object v6, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3584
    .end local v6           #result:Ljava/lang/String;
    :cond_3
    const-string v8, "cdnip_supplementary_service"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3585
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 3586
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p3, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    .line 3587
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onQueryComplete : ci.cdnipNumber = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p3, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->access$300(Ljava/lang/String;)V

    .line 3591
    :cond_4
    const-string v8, "visual_expression"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3592
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getSKTVEUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3593
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getSKTVEUrl()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p3, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    .line 3594
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onQueryComplete : ci.sktVEUrl = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p3, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->access$300(Ljava/lang/String;)V

    .line 3595
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 3596
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getInstance()Lcom/android/phone/VE_ContentManager;

    move-result-object v8

    iget-object v9, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    iget-object v10, p3, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/phone/VE_ContentManager;->init(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 3597
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3598
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x11ef

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3603
    .end local v0           #app:Lcom/android/phone/PhoneGlobals;
    :cond_5
    iget-boolean v8, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v8, :cond_6

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 3620
    :cond_6
    iget v8, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-nez v8, :cond_7

    .line 3621
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v8

    iput v8, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 3639
    :cond_7
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==> Stashing CallerInfo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " into the connection..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->access$300(Ljava/lang/String;)V

    .line 3640
    invoke-virtual {v3, p3}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 3641
    const-string v8, "ecid_enable"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "cityid_enable"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3643
    :cond_8
    invoke-static {v2, p3}, Lcom/android/phone/EcidClient;->updateCallerInfoMapping(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3646
    :cond_9
    return-void

    .line 3557
    .end local v2           #ciOld:Lcom/android/internal/telephony/CallerInfo;
    .restart local v5       #o:Ljava/lang/Object;
    .restart local v7       #userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_a
    instance-of v8, v5, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v8, :cond_0

    move-object v8, v5

    .line 3558
    check-cast v8, Lcom/android/internal/telephony/CallerInfo;

    iget-object v7, v8, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 3567
    .end local v7           #userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2       #ciOld:Lcom/android/internal/telephony/CallerInfo;
    :cond_b
    instance-of v8, v5, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v8, :cond_2

    move-object v2, v5

    .line 3568
    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_1

    .line 3628
    .end local v5           #o:Ljava/lang/Object;
    :cond_c
    const/4 v8, 0x0

    invoke-static {v8, v3}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .line 3632
    .local v4, newCi:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v4, :cond_7

    .line 3633
    iget-object v8, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3634
    iget-object v8, p3, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 3635
    move-object p3, v4

    goto :goto_2
.end method
