.class Lcom/android/phone/callsettings/RejectCallWithMsg$2;
.super Landroid/database/ContentObserver;
.source "RejectCallWithMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$2;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$2;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsForeground:Z
    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$000(Lcom/android/phone/callsettings/RejectCallWithMsg;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$2;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$102(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z

    .line 185
    :cond_0
    return-void
.end method
