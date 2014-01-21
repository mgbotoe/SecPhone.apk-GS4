.class Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9$4;
.super Ljava/lang/Object;
.source "RejectwithMessageTutorialIncallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9$4;->this$1:Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9$4;->this$1:Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;

    iget-object v0, v0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$9;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$1300(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)[Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 341
    return-void
.end method
