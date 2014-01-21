.class Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$2;
.super Ljava/lang/Object;
.source "RejectCallWithMsgIconMode.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->createDragView(Landroid/graphics/Bitmap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)V
    .locals 0
    .parameter

    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$2;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "keyEvent"

    .prologue
    .line 870
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 871
    .local v0, action:I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 872
    .local v1, keyCode:I
    if-nez v0, :cond_0

    .line 873
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 875
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$2;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->onDrop()V
    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$700(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)V

    .line 876
    const/4 v2, 0x1

    .line 879
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
