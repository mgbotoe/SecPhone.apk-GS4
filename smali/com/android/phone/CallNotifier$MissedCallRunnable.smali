.class Lcom/android/phone/CallNotifier$MissedCallRunnable;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MissedCallRunnable"
.end annotation


# instance fields
.field c:Lcom/android/internal/telephony/Connection;

.field final date:J

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;Lcom/android/internal/telephony/Connection;J)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "date"

    .prologue
    .line 5895
    iput-object p1, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5896
    iput-object p2, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->c:Lcom/android/internal/telephony/Connection;

    .line 5897
    iput-wide p3, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->date:J

    .line 5898
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 5901
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    const-string v3, "MissedCallRunnable: run..."

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v3, v8}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 5902
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->c:Lcom/android/internal/telephony/Connection;

    iget-object v4, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    iget-wide v5, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->date:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v12

    .line 5904
    .local v12, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    if-eqz v12, :cond_b

    .line 5907
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    const-string v3, "showMissedCallNotification: Querying for CallerInfo on missed call..."

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v3, v8}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 5908
    iget-boolean v0, v12, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v0, :cond_2

    .line 5911
    iget-object v10, v12, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 5916
    .local v10, ci:Lcom/android/internal/telephony/CallerInfo;
    iget-object v1, v10, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 5919
    .local v1, name:Ljava/lang/String;
    const/4 v9, 0x0

    .line 5920
    .local v9, mSimId:I
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5921
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->c:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v9

    .line 5922
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 5925
    :cond_0
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v10, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5926
    :cond_1
    iget-object v2, v10, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 5938
    .local v2, number:Ljava/lang/String;
    :goto_0
    iget v0, v10, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne v0, v3, :cond_6

    .line 5939
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const v3, 0x7f090008

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5947
    :goto_1
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5948
    const-string v0, "enable_dormant_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$2500(Lcom/android/phone/CallNotifier;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5949
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #setter for: Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z
    invoke-static {v0, v7}, Lcom/android/phone/CallNotifier;->access$2502(Lcom/android/phone/CallNotifier;Z)Z

    .line 5950
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v3, v10, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v4, v10, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v5, v10, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    iget-wide v6, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->date:J

    invoke-virtual/range {v0 .. v9}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;JZI)V

    .line 5972
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    .end local v9           #mSimId:I
    .end local v10           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_2
    :goto_2
    return-void

    .line 5928
    .restart local v1       #name:Ljava/lang/String;
    .restart local v9       #mSimId:I
    .restart local v10       #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_3
    const-string v0, "number_format_with_country_iso"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5929
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "country_detector"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    move-object v11, v0

    check-cast v11, Landroid/location/CountryDetector;

    .line 5930
    .local v11, detector:Landroid/location/CountryDetector;
    iget-object v0, v10, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5931
    .restart local v2       #number:Ljava/lang/String;
    goto :goto_0

    .end local v2           #number:Ljava/lang/String;
    .end local v11           #detector:Landroid/location/CountryDetector;
    :cond_4
    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5932
    iget-object v2, v10, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .restart local v2       #number:Ljava/lang/String;
    goto :goto_0

    .line 5934
    .end local v2           #number:Ljava/lang/String;
    :cond_5
    iget-object v0, v10, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #number:Ljava/lang/String;
    goto/16 :goto_0

    .line 5940
    :cond_6
    iget v0, v10, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v0, v3, :cond_7

    .line 5941
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const v3, 0x7f090006

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 5943
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget v3, v10, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v10, v2, v3}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 5953
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v3, v10, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v4, v10, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v5, v10, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    iget-wide v6, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->date:J

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;JI)V

    goto :goto_2

    .line 5957
    :cond_9
    const-string v0, "enable_dormant_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$2500(Lcom/android/phone/CallNotifier;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5958
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #setter for: Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z
    invoke-static {v0, v7}, Lcom/android/phone/CallNotifier;->access$2502(Lcom/android/phone/CallNotifier;Z)Z

    .line 5959
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v3, v10, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v4, v10, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v5, v10, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    iget-wide v6, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->date:J

    invoke-virtual/range {v0 .. v8}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;JZ)V

    goto/16 :goto_2

    .line 5962
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v3, v10, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v4, v10, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v5, v10, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    iget-wide v6, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->date:J

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    goto/16 :goto_2

    .line 5970
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    .end local v9           #mSimId:I
    .end local v10           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_b
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showMissedCallNotification: got null CallerInfo for Connection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallNotifier$MissedCallRunnable;->c:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v8}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_2
.end method
