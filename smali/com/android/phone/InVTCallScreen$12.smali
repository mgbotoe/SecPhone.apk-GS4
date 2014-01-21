.class Lcom/android/phone/InVTCallScreen$12;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 3676
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$12;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 8
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 3681
    const/16 v0, 0x166

    .line 3682
    .local v0, MAX_HEIGHT_SIZE_:I
    const/16 v1, 0x1cc

    .line 3684
    .local v1, MAX_WIDTH_SIZE_:I
    sub-int v3, p5, p3

    .line 3685
    .local v3, newHeight:I
    sub-int v4, p4, p2

    .line 3686
    .local v4, newWidth:I
    const/4 v2, 0x0

    .line 3689
    .local v2, isScreenSizeSmall:Z
    const-string v5, "support_multi_window"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$12;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMW:Landroid/sec/multiwindow/MultiWindow;
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$8100(Lcom/android/phone/InVTCallScreen;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$12;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMW:Landroid/sec/multiwindow/MultiWindow;
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$8100(Lcom/android/phone/InVTCallScreen;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$12;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InVTCallScreen;->isPenMultiWindow()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3690
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$12;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!!Multiwindow size check2!! H"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "W"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InVTCallScreen;->access$200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 3693
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$12;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    if-ge v4, v1, :cond_0

    .line 3695
    const/4 v2, 0x1

    .line 3700
    :cond_0
    if-eqz v2, :cond_2

    .line 3702
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$12;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v5, v5, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/TextureView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/TextureView;->setVisibility(I)V

    .line 3703
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$12;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v5, v5, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/TextureView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/TextureView;->setVisibility(I)V

    .line 3710
    :cond_1
    :goto_0
    return-void

    .line 3706
    :cond_2
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$12;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v5, v5, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/TextureView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/TextureView;->setVisibility(I)V

    .line 3707
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$12;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v5, v5, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/TextureView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/TextureView;->setVisibility(I)V

    goto :goto_0
.end method
