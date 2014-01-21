.class Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;
.super Ljava/lang/Object;
.source "RejectCallWithMsgIconMode.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;
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
    .line 150
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastAnimationId:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$000(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    const-string v3, "Animation is done!"

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$100(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$300(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)I

    move-result v3

    #setter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMidWayStartPosition:I
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$202(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;I)I

    .line 167
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v2, v2, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v2, v2, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 169
    .local v1, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 171
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I
    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$400(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I
    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$300(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 173
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 167
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 180
    .end local v1           #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    const-string v3, "animation done, notifyDataSetChanged()"

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$100(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v2, v2, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->notifyDataSetChanged()V

    .line 183
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 158
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 154
    return-void
.end method
