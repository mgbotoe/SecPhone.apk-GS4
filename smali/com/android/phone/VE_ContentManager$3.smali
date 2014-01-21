.class Lcom/android/phone/VE_ContentManager$3;
.super Ljava/lang/Object;
.source "VE_ContentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VE_ContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VE_ContentManager;


# direct methods
.method constructor <init>(Lcom/android/phone/VE_ContentManager;)V
    .locals 0
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/phone/VE_ContentManager$3;->this$0:Lcom/android/phone/VE_ContentManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 688
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$3;->this$0:Lcom/android/phone/VE_ContentManager;

    const/4 v2, 0x1

    #setter for: Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$2602(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 691
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$3;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->download_Content()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$3400(Lcom/android/phone/VE_ContentManager;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :goto_0
    return-void

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 694
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$3;->this$0:Lcom/android/phone/VE_ContentManager;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/VE_ContentManager;->isStopPlayContent:Z
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$2502(Lcom/android/phone/VE_ContentManager;Z)Z

    goto :goto_0
.end method
