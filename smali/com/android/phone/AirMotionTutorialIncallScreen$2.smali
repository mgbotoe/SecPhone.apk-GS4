.class Lcom/android/phone/AirMotionTutorialIncallScreen$2;
.super Ljava/lang/Object;
.source "AirMotionTutorialIncallScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AirMotionTutorialIncallScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AirMotionTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/AirMotionTutorialIncallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/phone/AirMotionTutorialIncallScreen$2;->this$0:Lcom/android/phone/AirMotionTutorialIncallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen$2;->this$0:Lcom/android/phone/AirMotionTutorialIncallScreen;

    iget-boolean v0, v0, Lcom/android/phone/AirMotionTutorialIncallScreen;->beforeMotion:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen$2;->this$0:Lcom/android/phone/AirMotionTutorialIncallScreen;

    const v1, 0x7f090346

    #calls: Lcom/android/phone/AirMotionTutorialIncallScreen;->displayToast(I)V
    invoke-static {v0, v1}, Lcom/android/phone/AirMotionTutorialIncallScreen;->access$000(Lcom/android/phone/AirMotionTutorialIncallScreen;I)V

    .line 130
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
