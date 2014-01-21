.class Lcom/android/phone/IncomingCallTutorialIncallScreen$5;
.super Ljava/lang/Object;
.source "IncomingCallTutorialIncallScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IncomingCallTutorialIncallScreen;->initIncomingTutorial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IncomingCallTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingCallTutorialIncallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen$5;->this$0:Lcom/android/phone/IncomingCallTutorialIncallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01b4

    if-eq v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen$5;->this$0:Lcom/android/phone/IncomingCallTutorialIncallScreen;

    #calls: Lcom/android/phone/IncomingCallTutorialIncallScreen;->showToast()V
    invoke-static {v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->access$400(Lcom/android/phone/IncomingCallTutorialIncallScreen;)V

    .line 282
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
