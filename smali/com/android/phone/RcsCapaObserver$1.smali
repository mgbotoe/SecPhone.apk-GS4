.class Lcom/android/phone/RcsCapaObserver$1;
.super Landroid/database/ContentObserver;
.source "RcsCapaObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RcsCapaObserver;-><init>(Landroid/os/Handler;Lcom/android/phone/InCallTouchUi;Landroid/view/Menu;Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RcsCapaObserver;


# direct methods
.method constructor <init>(Lcom/android/phone/RcsCapaObserver;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/phone/RcsCapaObserver$1;->this$0:Lcom/android/phone/RcsCapaObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 55
    sget-object v0, Lcom/android/phone/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mRcsServiceOwnObserver, onChange"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/android/phone/RcsCapaObserver$1;->this$0:Lcom/android/phone/RcsCapaObserver;

    invoke-virtual {v0}, Lcom/android/phone/RcsCapaObserver;->updateUI()V

    .line 57
    return-void
.end method
