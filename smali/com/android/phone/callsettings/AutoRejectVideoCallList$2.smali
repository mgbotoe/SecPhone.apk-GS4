.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$2;
.super Landroid/database/ContentObserver;
.source "AutoRejectVideoCallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$2;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$2;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsForeground:Z
    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$200(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$2;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mUpdateScreen:Z
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$302(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Z)Z

    .line 187
    :cond_0
    return-void
.end method
