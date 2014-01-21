.class Lcom/android/phone/VE_ContentManager$4;
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
    .line 873
    iput-object p1, p0, Lcom/android/phone/VE_ContentManager$4;->this$0:Lcom/android/phone/VE_ContentManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$4;->this$0:Lcom/android/phone/VE_ContentManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/VE_ContentManager;->isEndBufferingThread_Run:Z
    invoke-static {v0, v1}, Lcom/android/phone/VE_ContentManager;->access$3502(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 876
    :goto_0
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$4;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->isBufferingThread_Run:Z
    invoke-static {v0}, Lcom/android/phone/VE_ContentManager;->access$2300(Lcom/android/phone/VE_ContentManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 877
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$4;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->isOnPause:Z
    invoke-static {v0}, Lcom/android/phone/VE_ContentManager;->access$2900(Lcom/android/phone/VE_ContentManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$4;->this$0:Lcom/android/phone/VE_ContentManager;

    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$4;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$3700(Lcom/android/phone/VE_ContentManager;)Lcom/android/phone/AMF_Player;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager$4;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mBuffering_lop_i:I
    invoke-static {v2}, Lcom/android/phone/VE_ContentManager;->access$3600(Lcom/android/phone/VE_ContentManager;)I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/AMF_Player;->Put_FrameToBuffer(II)I

    move-result v1

    #setter for: Lcom/android/phone/VE_ContentManager;->mBuffering_lop_i:I
    invoke-static {v0, v1}, Lcom/android/phone/VE_ContentManager;->access$3602(Lcom/android/phone/VE_ContentManager;I)I

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$4;->this$0:Lcom/android/phone/VE_ContentManager;

    const/16 v1, 0x64

    #calls: Lcom/android/phone/VE_ContentManager;->sleep(I)V
    invoke-static {v0, v1}, Lcom/android/phone/VE_ContentManager;->access$3800(Lcom/android/phone/VE_ContentManager;I)V

    goto :goto_0

    .line 882
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$4;->this$0:Lcom/android/phone/VE_ContentManager;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/VE_ContentManager;->isEndBufferingThread_Run:Z
    invoke-static {v0, v1}, Lcom/android/phone/VE_ContentManager;->access$3502(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 883
    return-void
.end method
