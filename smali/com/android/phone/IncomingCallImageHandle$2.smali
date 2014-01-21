.class Lcom/android/phone/IncomingCallImageHandle$2;
.super Ljava/lang/Object;
.source "IncomingCallImageHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IncomingCallImageHandle;->processMoveEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IncomingCallImageHandle;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingCallImageHandle;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/phone/IncomingCallImageHandle$2;->this$0:Lcom/android/phone/IncomingCallImageHandle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle$2;->this$0:Lcom/android/phone/IncomingCallImageHandle;

    #getter for: Lcom/android/phone/IncomingCallImageHandle;->mParent:Lcom/android/phone/IncomingCallImageWidget;
    invoke-static {v0}, Lcom/android/phone/IncomingCallImageHandle;->access$000(Lcom/android/phone/IncomingCallImageHandle;)Lcom/android/phone/IncomingCallImageWidget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallImageWidget;->setGrabbedState(I)V

    .line 392
    return-void
.end method
