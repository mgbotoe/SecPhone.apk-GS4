.class Lcom/android/phone/VE_ContentManager$5;
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
    .line 886
    iput-object p1, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Draw_Frame()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 901
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$3700(Lcom/android/phone/VE_ContentManager;)Lcom/android/phone/AMF_Player;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mPlay_lop_i:I
    invoke-static {v2}, Lcom/android/phone/VE_ContentManager;->access$4000(Lcom/android/phone/VE_ContentManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/AMF_Player;->get_frame(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/VE_ContentManager;->mBitmapData:Landroid/graphics/Bitmap;

    .line 903
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    iget-object v0, v0, Lcom/android/phone/VE_ContentManager;->mBitmapData:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/VE_ContentManager;->access$3300(Lcom/android/phone/VE_ContentManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 906
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;
    invoke-static {v0}, Lcom/android/phone/VE_ContentManager;->access$3700(Lcom/android/phone/VE_ContentManager;)Lcom/android/phone/AMF_Player;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mPlay_lop_i:I
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$4000(Lcom/android/phone/VE_ContentManager;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/phone/AMF_Player;->set_framestate(IZ)V

    .line 907
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    invoke-static {v0}, Lcom/android/phone/VE_ContentManager;->access$4008(Lcom/android/phone/VE_ContentManager;)I

    .line 909
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mPlay_lop_i:I
    invoke-static {v0}, Lcom/android/phone/VE_ContentManager;->access$4000(Lcom/android/phone/VE_ContentManager;)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 910
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #setter for: Lcom/android/phone/VE_ContentManager;->mPlay_lop_i:I
    invoke-static {v0, v3}, Lcom/android/phone/VE_ContentManager;->access$4002(Lcom/android/phone/VE_ContentManager;I)I

    .line 914
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 888
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/VE_ContentManager;->isEndPlayThread_Run:Z
    invoke-static {v0, v1}, Lcom/android/phone/VE_ContentManager;->access$3902(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 889
    :goto_0
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->isPlayThread_Run:Z
    invoke-static {v0}, Lcom/android/phone/VE_ContentManager;->access$2200(Lcom/android/phone/VE_ContentManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->isOnPause:Z
    invoke-static {v0}, Lcom/android/phone/VE_ContentManager;->access$2900(Lcom/android/phone/VE_ContentManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;
    invoke-static {v0}, Lcom/android/phone/VE_ContentManager;->access$3700(Lcom/android/phone/VE_ContentManager;)Lcom/android/phone/AMF_Player;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mPlay_lop_i:I
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$4000(Lcom/android/phone/VE_ContentManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/AMF_Player;->get_framestate(I)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 892
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager$5;->Draw_Frame()V

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    const/16 v1, 0x64

    #calls: Lcom/android/phone/VE_ContentManager;->sleep(I)V
    invoke-static {v0, v1}, Lcom/android/phone/VE_ContentManager;->access$3800(Lcom/android/phone/VE_ContentManager;I)V

    goto :goto_0

    .line 897
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #setter for: Lcom/android/phone/VE_ContentManager;->isEndPlayThread_Run:Z
    invoke-static {v0, v2}, Lcom/android/phone/VE_ContentManager;->access$3902(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 898
    return-void
.end method
