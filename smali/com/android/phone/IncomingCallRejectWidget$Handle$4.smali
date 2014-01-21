.class Lcom/android/phone/IncomingCallRejectWidget$Handle$4;
.super Ljava/lang/Object;
.source "IncomingCallRejectWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IncomingCallRejectWidget$Handle;->processMoveEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IncomingCallRejectWidget$Handle;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingCallRejectWidget$Handle;)V
    .locals 0
    .parameter

    .prologue
    .line 889
    iput-object p1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$4;->this$1:Lcom/android/phone/IncomingCallRejectWidget$Handle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$4;->this$1:Lcom/android/phone/IncomingCallRejectWidget$Handle;

    iget-object v0, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle;->this$0:Lcom/android/phone/IncomingCallRejectWidget;

    iget-object v0, v0, Lcom/android/phone/IncomingCallRejectWidget;->mRejectHandle:Lcom/android/phone/IncomingCallRejectWidget$Handle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->setState(I)V

    .line 892
    return-void
.end method
