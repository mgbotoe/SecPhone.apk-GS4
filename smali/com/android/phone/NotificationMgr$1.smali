.class Lcom/android/phone/NotificationMgr$1;
.super Landroid/database/ContentObserver;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/NotificationMgr;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contactObserver onChange() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    .line 282
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contactObserver onChange() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    .line 287
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    #calls: Lcom/android/phone/NotificationMgr;->updateContactInMemo()V
    invoke-static {v0}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;)V

    .line 288
    return-void
.end method
