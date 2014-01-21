.class Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;
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
    name = "MissedCallSstreamRunnable"
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
    .line 7279
    iput-object p1, p0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7280
    iput-object p2, p0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->c:Lcom/android/internal/telephony/Connection;

    .line 7281
    iput-wide p3, p0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->date:J

    .line 7282
    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 7286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->c:Lcom/android/internal/telephony/Connection;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->date:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v18

    .line 7287
    .local v18, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 7295
    .local v15, ci:Lcom/android/internal/telephony/CallerInfo;
    iget-object v0, v15, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 7296
    .local v19, name:Ljava/lang/String;
    iget-object v7, v15, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 7297
    .local v7, number:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/CallNotifier;->mSstreamRun:Z
    invoke-static {v2, v3}, Lcom/android/phone/CallNotifier;->access$3102(Lcom/android/phone/CallNotifier;Z)Z

    .line 7298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->getNumberMissedCalls()I

    move-result v20

    .line 7300
    .local v20, numberMissedCalls:I
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_2

    .line 7301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09018e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 7307
    .local v6, missedTitle:Ljava/lang/String;
    :goto_0
    if-nez v19, :cond_3

    .line 7308
    move-object/from16 v21, v7

    .line 7312
    .local v21, sAuthorName:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SStream start in callnotifier"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 7314
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4079

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/lit16 v0, v2, 0x190

    move/from16 v22, v0

    .line 7315
    .local v22, width:I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4079

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/lit16 v0, v2, 0x190

    move/from16 v17, v0

    .line 7319
    .local v17, height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2, v7}, Lcom/android/phone/CallNotifier;->getSstreamCallerPhotoInfo(Ljava/lang/String;)V

    .line 7320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " After mPhotoUri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mPhotoUri:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$3200(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 7321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mPhotoUri:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$3200(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 7322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    #calls: Lcom/android/phone/CallNotifier;->getSstreamDefaultCallerPhotoUri(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/CallNotifier;->access$3300(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/phone/CallNotifier;->mPhotoUri:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/phone/CallNotifier;->access$3202(Lcom/android/phone/CallNotifier;Ljava/lang/String;)Ljava/lang/String;

    .line 7323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " After mPhotoUri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mPhotoUri:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$3200(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 7326
    :cond_0
    new-instance v10, Lsstream/lib/objs/Image;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mPhotoUri:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$3200(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v0, v22

    move/from16 v1, v17

    invoke-direct {v10, v2, v0, v1, v3}, Lsstream/lib/objs/Image;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 7327
    .local v10, image:Lsstream/lib/objs/Image;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "story item image success"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 7329
    new-instance v9, Lsstream/lib/objs/Author;

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-direct {v9, v0, v2}, Lsstream/lib/objs/Author;-><init>(Ljava/lang/String;Lsstream/lib/objs/Image;)V

    .line 7330
    .local v9, author:Lsstream/lib/objs/Author;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->storyItem:Lsstream/lib/objs/StoryItem;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$3400(Lcom/android/phone/CallNotifier;)Lsstream/lib/objs/StoryItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    const-string v3, "Remove previous missed call item"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 7332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->deleteStoryItem()V

    .line 7335
    :cond_1
    const-string v2, "dcm_jcontacts_package_name"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v23, v0

    new-instance v2, Lsstream/lib/objs/StoryItem;

    const-string v3, "missed call"

    const-string v4, "samsung.personal"

    const-string v5, "com.android.jcontacts"

    sget-object v8, Lsstream/lib/objs/StoryItem$StoryType;->CALL:Lsstream/lib/objs/StoryItem$StoryType;

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->date:J

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v14}, Lsstream/lib/objs/StoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsstream/lib/objs/StoryItem$StoryType;Lsstream/lib/objs/Author;Lsstream/lib/objs/Image;JILjava/lang/String;)V

    move-object/from16 v0, v23

    #setter for: Lcom/android/phone/CallNotifier;->storyItem:Lsstream/lib/objs/StoryItem;
    invoke-static {v0, v2}, Lcom/android/phone/CallNotifier;->access$3402(Lcom/android/phone/CallNotifier;Lsstream/lib/objs/StoryItem;)Lsstream/lib/objs/StoryItem;

    .line 7341
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "story item make success"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 7345
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->storyItem:Lsstream/lib/objs/StoryItem;
    invoke-static {v3}, Lcom/android/phone/CallNotifier;->access$3400(Lcom/android/phone/CallNotifier;)Lsstream/lib/objs/StoryItem;

    move-result-object v3

    invoke-static {v2, v3}, Lsstream/lib/SStreamContentManager;->sendStoryItem(Landroid/content/Context;Lsstream/lib/objs/StoryItem;)V

    .line 7346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "story item success"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Lsstream/lib/InvalidStoryItemException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7354
    :goto_3
    return-void

    .line 7303
    .end local v6           #missedTitle:Ljava/lang/String;
    .end local v9           #author:Lsstream/lib/objs/Author;
    .end local v10           #image:Lsstream/lib/objs/Image;
    .end local v17           #height:I
    .end local v21           #sAuthorName:Ljava/lang/String;
    .end local v22           #width:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090190

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #missedTitle:Ljava/lang/String;
    goto/16 :goto_0

    .line 7310
    :cond_3
    move-object/from16 v21, v19

    .restart local v21       #sAuthorName:Ljava/lang/String;
    goto/16 :goto_1

    .line 7338
    .restart local v9       #author:Lsstream/lib/objs/Author;
    .restart local v10       #image:Lsstream/lib/objs/Image;
    .restart local v17       #height:I
    .restart local v22       #width:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v23, v0

    new-instance v2, Lsstream/lib/objs/StoryItem;

    const-string v3, "missed call"

    const-string v4, "samsung.personal"

    const-string v5, "com.android.contacts"

    sget-object v8, Lsstream/lib/objs/StoryItem$StoryType;->CALL:Lsstream/lib/objs/StoryItem$StoryType;

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->date:J

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v14}, Lsstream/lib/objs/StoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsstream/lib/objs/StoryItem$StoryType;Lsstream/lib/objs/Author;Lsstream/lib/objs/Image;JILjava/lang/String;)V

    move-object/from16 v0, v23

    #setter for: Lcom/android/phone/CallNotifier;->storyItem:Lsstream/lib/objs/StoryItem;
    invoke-static {v0, v2}, Lcom/android/phone/CallNotifier;->access$3402(Lcom/android/phone/CallNotifier;Lsstream/lib/objs/StoryItem;)Lsstream/lib/objs/StoryItem;

    goto :goto_2

    .line 7347
    :catch_0
    move-exception v16

    .line 7350
    .local v16, e:Lsstream/lib/InvalidStoryItemException;
    invoke-virtual/range {v16 .. v16}, Lsstream/lib/InvalidStoryItemException;->printStackTrace()V

    goto :goto_3

    .line 7351
    .end local v16           #e:Lsstream/lib/InvalidStoryItemException;
    :catch_1
    move-exception v16

    .line 7352
    .local v16, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3
.end method
