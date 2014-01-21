.class final Lcom/android/phone/RcsShare$2;
.super Ljava/lang/Object;
.source "RcsShare.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RcsShare;->setupInviteCallCardButtons(Lcom/android/phone/RcsInvitation;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$displayName:Ljava/lang/String;

.field final synthetic val$invitation:Lcom/android/phone/RcsInvitation;

.field final synthetic val$tel:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/phone/RcsInvitation;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/phone/RcsShare$2;->val$displayName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/RcsShare$2;->val$tel:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/RcsShare$2;->val$invitation:Lcom/android/phone/RcsInvitation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 659
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick reject share "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/RcsShare$2;->val$displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/RcsShare$2;->val$tel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 v1, 0x0

    .line 661
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/phone/RcsShare$2;->val$invitation:Lcom/android/phone/RcsInvitation;

    invoke-virtual {v2}, Lcom/android/phone/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/RcsShare;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/phone/RcsShare$SessionState;

    move-result-object v2

    iget v2, v2, Lcom/android/phone/RcsShare$SessionState;->mType:I

    sget-object v3, Lcom/android/phone/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/phone/RcsTransferConstants$SessionType;

    invoke-virtual {v3}, Lcom/android/phone/RcsTransferConstants$SessionType;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 662
    new-instance v1, Landroid/content/Intent;

    .end local v1           #i:Landroid/content/Intent;
    const-string v2, "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 663
    .restart local v1       #i:Landroid/content/Intent;
    const-string v2, "com.sec.rcs.mediatransfer.ish.category.ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 669
    const-string v2, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    iget-object v3, p0, Lcom/android/phone/RcsShare$2;->val$invitation:Lcom/android/phone/RcsInvitation;

    invoke-virtual {v3}, Lcom/android/phone/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/RcsShare;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/phone/RcsShare$SessionState;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/phone/RcsShare$SessionState;->mId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 673
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :cond_1
    :goto_1
    return-void

    .line 664
    :cond_2
    iget-object v2, p0, Lcom/android/phone/RcsShare$2;->val$invitation:Lcom/android/phone/RcsInvitation;

    invoke-virtual {v2}, Lcom/android/phone/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/RcsShare;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/phone/RcsShare$SessionState;

    move-result-object v2

    iget v2, v2, Lcom/android/phone/RcsShare$SessionState;->mType:I

    sget-object v3, Lcom/android/phone/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/phone/RcsTransferConstants$SessionType;

    invoke-virtual {v3}, Lcom/android/phone/RcsTransferConstants$SessionType;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 665
    new-instance v1, Landroid/content/Intent;

    .end local v1           #i:Landroid/content/Intent;
    const-string v2, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 666
    .restart local v1       #i:Landroid/content/Intent;
    const-string v2, "com.sec.rcs.mediatransfer.vsh.category.ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Did not find RCS service..."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
