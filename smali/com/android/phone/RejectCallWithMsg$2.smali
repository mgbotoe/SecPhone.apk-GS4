.class Lcom/android/phone/RejectCallWithMsg$2;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RejectCallWithMsg;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsg;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsg$2;->this$0:Lcom/android/phone/RejectCallWithMsg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "v"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, av:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsg$2;->this$0:Lcom/android/phone/RejectCallWithMsg;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    #setter for: Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/phone/RejectCallWithMsg;->access$102(Lcom/android/phone/RejectCallWithMsg;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsg$2;->this$0:Lcom/android/phone/RejectCallWithMsg;

    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsg$2;->this$0:Lcom/android/phone/RejectCallWithMsg;

    #getter for: Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/RejectCallWithMsg;->access$200(Lcom/android/phone/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/phone/RejectCallWithMsg;->access$102(Lcom/android/phone/RejectCallWithMsg;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    const-string v1, "feature_remind_me_later_support "

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    const-string v3, "reject_message =? "

    .line 172
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    .line 173
    .local v4, selectionArg:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsg$2;->this$0:Lcom/android/phone/RejectCallWithMsg;

    #getter for: Lcom/android/phone/RejectCallWithMsg;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/RejectCallWithMsg;->access$300(Lcom/android/phone/RejectCallWithMsg;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 174
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsg$2;->this$0:Lcom/android/phone/RejectCallWithMsg;

    #getter for: Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/RejectCallWithMsg;->access$100(Lcom/android/phone/RejectCallWithMsg;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 176
    invoke-static {}, Lcom/android/phone/RejectCallWithMsg;->access$400()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/RejectCallWithMsg;->access$500()[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 177
    .local v6, cur:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 178
    .local v8, remind_time:I
    if-eqz v6, :cond_2

    .line 179
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 182
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 186
    :goto_0
    const-string v1, "RejectCallWithMsg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send msg!! remind_time : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v1, v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 187
    if-eqz v8, :cond_1

    .line 188
    sput v8, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    .line 192
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArg:[Ljava/lang/String;
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v8           #remind_time:I
    :cond_1
    const-string v1, "smsto"

    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsg$2;->this$0:Lcom/android/phone/RejectCallWithMsg;

    #getter for: Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/RejectCallWithMsg;->access$000(Lcom/android/phone/RejectCallWithMsg;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 193
    .local v9, uri:Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-direct {v7, v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsg$2;->this$0:Lcom/android/phone/RejectCallWithMsg;

    #getter for: Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/RejectCallWithMsg;->access$100(Lcom/android/phone/RejectCallWithMsg;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsg$2;->this$0:Lcom/android/phone/RejectCallWithMsg;

    #getter for: Lcom/android/phone/RejectCallWithMsg;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/RejectCallWithMsg;->access$300(Lcom/android/phone/RejectCallWithMsg;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 197
    const-string v1, "RejectCallWithMsg"

    const-string v2, "Message Sent."

    const/4 v5, 0x1

    invoke-static {v1, v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 199
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsg$2;->this$0:Lcom/android/phone/RejectCallWithMsg;

    invoke-virtual {v1}, Lcom/android/phone/RejectCallWithMsg;->finish()V

    .line 200
    return-void

    .line 184
    .end local v7           #intent:Landroid/content/Intent;
    .end local v9           #uri:Landroid/net/Uri;
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #selectionArg:[Ljava/lang/String;
    .restart local v6       #cur:Landroid/database/Cursor;
    .restart local v8       #remind_time:I
    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method
