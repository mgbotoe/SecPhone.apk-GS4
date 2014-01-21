.class Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;
.super Ljava/lang/Thread;
.source "RejectCallWithMsgContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RejectCallWithMsgContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "updateContentsThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgContent;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsgContent;)V
    .locals 0
    .parameter

    .prologue
    .line 750
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 753
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 754
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 757
    .local v10, cur:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->isIconModeEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-boolean v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->mIsHelpScreen:Z

    if-nez v3, :cond_1

    .line 758
    const-string v7, "position asc"

    .line 759
    .local v7, sortOrder:Ljava/lang/String;
    sget-object v3, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_ICON_MODE_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 765
    :goto_0
    const/16 v24, 0x0

    .line 766
    .local v24, rejectMessage:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 767
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->remindtimeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 768
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 769
    .local v8, call:Lcom/android/internal/telephony/Call;
    if-eqz v8, :cond_0

    .line 770
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    .line 771
    .local v9, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v9, :cond_0

    .line 772
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/phone/RejectCallWithMsgContent;->access$502(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;)Ljava/lang/String;

    .line 775
    .end local v9           #conn:Lcom/android/internal/telephony/Connection;
    :cond_0
    if-nez v10, :cond_2

    .line 776
    const-string v3, "RejectCallWithMsgContent"

    const-string v4, "rejectmsg cursor is null"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :goto_1
    return-void

    .line 762
    .end local v7           #sortOrder:Ljava/lang/String;
    .end local v8           #call:Lcom/android/internal/telephony/Call;
    .end local v24           #rejectMessage:Ljava/lang/String;
    :cond_1
    const-string v7, "_id desc"

    .line 763
    .restart local v7       #sortOrder:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/RejectCallWithMsgContent;->access$700()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_0

    .line 781
    .restart local v8       #call:Lcom/android/internal/telephony/Call;
    .restart local v24       #rejectMessage:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->isIconModeEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-boolean v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->mIsHelpScreen:Z

    if-nez v3, :cond_8

    .line 782
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$800(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$800(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 794
    :cond_3
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->isIconModeEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-boolean v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->mIsHelpScreen:Z

    if-nez v3, :cond_b

    .line 796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->mIconModeItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 797
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 800
    :cond_4
    const/4 v3, 0x6

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 801
    .local v23, pos:I
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 802
    .local v29, title:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 803
    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 804
    .local v12, edited:I
    const/4 v3, 0x5

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 805
    .local v25, remindTime:I
    const/4 v3, 0x4

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 806
    .local v15, iconId:I
    const-string v3, "RejectCallWithMsgContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", title: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", edited: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", remind: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", icon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const-string v3, "feature_remind_me_later_support "

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 813
    :cond_5
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 814
    .local v21, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v3, "position"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    const-string v3, "icon_state"

    sget-object v4, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->TILES_ICONS:[I

    aget v4, v4, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    const-string v3, "popup_icon"

    sget-object v4, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->POPUP_ICONS:[I

    aget v4, v4, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    and-int/lit8 v3, v12, 0x1

    if-eqz v3, :cond_9

    .line 821
    const-string v3, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    :goto_3
    and-int/lit8 v3, v12, 0x2

    if-eqz v3, :cond_a

    .line 835
    const-string v3, "message"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->mIconModeItems:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 889
    .end local v12           #edited:I
    .end local v15           #iconId:I
    .end local v21           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v23           #pos:I
    .end local v25           #remindTime:I
    .end local v29           #title:Ljava/lang/String;
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    if-eqz v3, :cond_13

    .line 892
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 894
    sget-object v3, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v18, v3, -0x1

    .local v18, idx:I
    :goto_6
    if-ltz v18, :cond_13

    .line 897
    const-string v3, "modify_reject_message"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 898
    sget-object v3, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListKor:[Ljava/lang/String;

    aget-object v13, v3, v18

    .line 902
    .local v13, entryName:Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-virtual {v4}, Lcom/android/phone/RejectCallWithMsgContent;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "string"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v13, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 904
    if-eqz v24, :cond_7

    .line 905
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 894
    :cond_7
    add-int/lit8 v18, v18, -0x1

    goto :goto_6

    .line 787
    .end local v13           #entryName:Ljava/lang/String;
    .end local v18           #idx:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$800(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$800(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_2

    .line 826
    .restart local v12       #edited:I
    .restart local v15       #iconId:I
    .restart local v21       #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v23       #pos:I
    .restart local v25       #remindTime:I
    .restart local v29       #title:Ljava/lang/String;
    :cond_9
    :try_start_1
    const-string v3, "title"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-virtual {v4}, Lcom/android/phone/RejectCallWithMsgContent;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 829
    :catch_0
    move-exception v11

    .line 830
    .local v11, e:Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v3, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 937
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .end local v12           #edited:I
    .end local v15           #iconId:I
    .end local v21           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v23           #pos:I
    .end local v25           #remindTime:I
    .end local v29           #title:Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 938
    .local v11, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "RejectCallWithMsgContent"

    const-string v4, "rejectmsg exception"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 940
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 840
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v12       #edited:I
    .restart local v15       #iconId:I
    .restart local v21       #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v23       #pos:I
    .restart local v25       #remindTime:I
    .restart local v29       #title:Ljava/lang/String;
    :cond_a
    :try_start_4
    const-string v3, "message"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-virtual {v4}, Lcom/android/phone/RejectCallWithMsgContent;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    .line 843
    :catch_2
    move-exception v11

    .line 844
    .local v11, e:Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v3, "message"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    .line 940
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .end local v12           #edited:I
    .end local v15           #iconId:I
    .end local v21           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v23           #pos:I
    .end local v25           #remindTime:I
    .end local v29           #title:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    .line 856
    :cond_b
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 858
    :cond_c
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 859
    .local v16, id:J
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 860
    .restart local v12       #edited:I
    const-string v3, "feature_remind_me_later_support "

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 861
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->remindtimeList:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    :cond_d
    const/4 v3, 0x1

    if-ne v12, v3, :cond_f

    const/16 v19, 0x1

    .line 864
    .local v19, isChanged:Z
    :goto_8
    if-eqz v19, :cond_10

    .line 865
    const-string v3, "RejectCallWithMsgContent"

    const-string v4, "Edited"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 866
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 881
    :goto_9
    if-eqz v24, :cond_e

    .line 882
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    :cond_e
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_5

    .line 863
    .end local v19           #isChanged:Z
    :cond_f
    const/16 v19, 0x0

    goto :goto_8

    .line 868
    .restart local v19       #isChanged:Z
    :cond_10
    const-wide/16 v3, 0x1

    sub-long v27, v16, v3

    .line 870
    .local v27, stringIdx:J
    const-string v3, "modify_reject_message"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 871
    sget-object v3, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListKor:[Ljava/lang/String;

    move-wide/from16 v0, v27

    long-to-int v4, v0

    aget-object v13, v3, v4

    .line 875
    .restart local v13       #entryName:Ljava/lang/String;
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-virtual {v4}, Lcom/android/phone/RejectCallWithMsgContent;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "string"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v13, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 877
    const-string v3, "RejectCallWithMsgContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not Edited, Use Default valuerejectMessage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_9

    .line 873
    .end local v13           #entryName:Ljava/lang/String;
    :cond_11
    sget-object v3, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[Ljava/lang/String;

    move-wide/from16 v0, v27

    long-to-int v4, v0

    aget-object v13, v3, v4

    .restart local v13       #entryName:Ljava/lang/String;
    goto :goto_a

    .line 900
    .end local v12           #edited:I
    .end local v13           #entryName:Ljava/lang/String;
    .end local v16           #id:J
    .end local v19           #isChanged:Z
    .end local v27           #stringIdx:J
    .restart local v18       #idx:I
    :cond_12
    sget-object v3, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[Ljava/lang/String;

    aget-object v13, v3, v18

    .restart local v13       #entryName:Ljava/lang/String;
    goto/16 :goto_7

    .line 910
    .end local v13           #entryName:Ljava/lang/String;
    .end local v18           #idx:I
    :cond_13
    const/16 v22, 0x0

    .line 912
    .local v22, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->isIconModeEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-boolean v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->mIsHelpScreen:Z

    if-nez v3, :cond_14

    .line 913
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->mIconModeItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v26

    .line 914
    .local v26, size:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_b
    move/from16 v0, v26

    if-ge v14, v0, :cond_16

    .line 915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$800(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x65

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v6, v6, Lcom/android/phone/RejectCallWithMsgContent;->mIconModeItems:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v14, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    .line 916
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$800(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 914
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 920
    .end local v14           #i:I
    .end local v26           #size:I
    :cond_14
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_16

    .line 921
    const-string v3, "feature_remind_me_later_support "

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 922
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$800(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->remindtimeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v6, v6, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v14, v3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    .line 926
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$800(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 920
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 924
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$800(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x64

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v6, v6, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v14, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    goto :goto_d

    .line 929
    :cond_16
    const-string v3, "feature_remind_me_later_support "

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 930
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_17

    .line 931
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    :goto_e
    const/4 v3, 0x5

    if-gt v14, v3, :cond_17

    .line 932
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$000(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 933
    .local v20, item:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 931
    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    .line 940
    .end local v20           #item:Landroid/widget/LinearLayout;
    :cond_17
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method
