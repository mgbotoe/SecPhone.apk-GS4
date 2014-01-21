.class Lcom/android/phone/RejectwithMessageTutorialIncallScreen$1;
.super Ljava/lang/Object;
.source "RejectwithMessageTutorialIncallScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$1;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/phone/RejectwithMessageTutorialIncallScreen$1;->this$0:Lcom/android/phone/RejectwithMessageTutorialIncallScreen;

    #calls: Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->showToast()V
    invoke-static {v0}, Lcom/android/phone/RejectwithMessageTutorialIncallScreen;->access$000(Lcom/android/phone/RejectwithMessageTutorialIncallScreen;)V

    .line 154
    const/4 v0, 0x0

    return v0
.end method
