.class public Lcom/android/phone/IncomingCallImageWidget;
.super Landroid/widget/FrameLayout;
.source "IncomingCallImageWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final END_CALL_IMAGE_WIDGET:Ljava/lang/String;

.field private final INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

.field private final IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field public final VIBRATE_LONG:J

.field public final VIBRATE_SHORT:J

.field protected mContext:Landroid/content/Context;

.field protected mGrabbedState:I

.field protected mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

.field protected mOnTriggerListener:Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;

.field protected mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

.field public mUseHoverToAction:Z

.field public mUseVibate:Z

.field protected mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-boolean v3, p0, Lcom/android/phone/IncomingCallImageWidget;->DBG:Z

    .line 33
    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->LOG_TAG:Ljava/lang/String;

    .line 35
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/IncomingCallImageWidget;->VIBRATE_SHORT:J

    .line 37
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/IncomingCallImageWidget;->VIBRATE_LONG:J

    .line 47
    iput v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mGrabbedState:I

    .line 55
    iput-boolean v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mUseHoverToAction:Z

    .line 57
    iput-boolean v3, p0, Lcom/android/phone/IncomingCallImageWidget;->mUseVibate:Z

    .line 59
    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

    .line 60
    const-string v0, "InCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

    .line 61
    const-string v0, "EndCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->END_CALL_IMAGE_WIDGET:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallImageWidget;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v3, p0, Lcom/android/phone/IncomingCallImageWidget;->DBG:Z

    .line 33
    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->LOG_TAG:Ljava/lang/String;

    .line 35
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/IncomingCallImageWidget;->VIBRATE_SHORT:J

    .line 37
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/IncomingCallImageWidget;->VIBRATE_LONG:J

    .line 47
    iput v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mGrabbedState:I

    .line 55
    iput-boolean v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mUseHoverToAction:Z

    .line 57
    iput-boolean v3, p0, Lcom/android/phone/IncomingCallImageWidget;->mUseVibate:Z

    .line 59
    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

    .line 60
    const-string v0, "InCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

    .line 61
    const-string v0, "EndCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->END_CALL_IMAGE_WIDGET:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallImageWidget;->init()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-boolean v3, p0, Lcom/android/phone/IncomingCallImageWidget;->DBG:Z

    .line 33
    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->LOG_TAG:Ljava/lang/String;

    .line 35
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/IncomingCallImageWidget;->VIBRATE_SHORT:J

    .line 37
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/IncomingCallImageWidget;->VIBRATE_LONG:J

    .line 47
    iput v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mGrabbedState:I

    .line 55
    iput-boolean v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mUseHoverToAction:Z

    .line 57
    iput-boolean v3, p0, Lcom/android/phone/IncomingCallImageWidget;->mUseVibate:Z

    .line 59
    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

    .line 60
    const-string v0, "InCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

    .line 61
    const-string v0, "EndCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->END_CALL_IMAGE_WIDGET:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallImageWidget;->init()V

    .line 79
    return-void
.end method

.method private getSViewCoverForH()Z
    .locals 2

    .prologue
    .line 380
    const-string v1, "IncomingCallImageWidget"

    invoke-virtual {p0}, Lcom/android/phone/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "InCallImageWidget"

    invoke-virtual {p0}, Lcom/android/phone/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "EndCallImageWidget"

    invoke-virtual {p0}, Lcom/android/phone/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addTouchArea(IIIII)V
    .locals 1
    .parameter "handle"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 365
    packed-switch p1, :pswitch_data_0

    .line 377
    :goto_0
    :pswitch_0
    return-void

    .line 367
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/phone/IncomingCallImageHandle;->addTouchArea(IIII)V

    goto :goto_0

    .line 370
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/phone/IncomingCallImageHandle;->addTouchArea(IIII)V

    goto :goto_0

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dispatchTriggerEvent(I)V
    .locals 2
    .parameter "whichHandle"

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTriggerEvent : whichHandle - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallImageWidget;->log(Ljava/lang/String;)V

    .line 249
    const-wide/16 v0, 0x28

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/IncomingCallImageWidget;->vibrate(J)V

    .line 250
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 253
    :cond_0
    return-void
.end method

.method public enableArrowAnimation(IZ)V
    .locals 1
    .parameter "handle"
    .parameter "enable"

    .prologue
    .line 332
    packed-switch p1, :pswitch_data_0

    .line 342
    :goto_0
    return-void

    .line 334
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/phone/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    goto :goto_0

    .line 337
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/phone/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected init()V
    .locals 7

    .prologue
    const/16 v6, 0x19

    const/4 v5, -0x2

    .line 82
    const-string v2, "init"

    invoke-virtual {p0, v2}, Lcom/android/phone/IncomingCallImageWidget;->log(Ljava/lang/String;)V

    .line 84
    const-string v3, "useHoverToAction"

    invoke-virtual {p0}, Lcom/android/phone/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mUseHoverToAction:Z

    .line 86
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x53

    invoke-direct {v0, v5, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 89
    .local v0, leftLP:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Lcom/android/phone/IncomingCallImageHandle;

    iget-object v3, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/phone/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    .line 90
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    iget-object v3, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const v4, 0x7f0901e8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v2, p0}, Lcom/android/phone/IncomingCallImageHandle;->setParent(Lcom/android/phone/IncomingCallImageWidget;)V

    .line 93
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x55

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 96
    .local v1, rightLP:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Lcom/android/phone/IncomingCallImageHandle;

    iget-object v3, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/phone/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    .line 97
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    iget-object v3, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const v4, 0x7f0901e9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v2, p0}, Lcom/android/phone/IncomingCallImageHandle;->setParent(Lcom/android/phone/IncomingCallImageWidget;)V

    .line 100
    const-string v2, "clear_cover_enhanced"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    const-string v3, "InCallImageWidget"

    invoke-virtual {p0}, Lcom/android/phone/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v3, "EndCallImageWidget"

    invoke-virtual {p0}, Lcom/android/phone/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageHandle;->setEasyTouchModeEnabled(Z)V

    .line 104
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/IncomingCallImageWidget;->getSViewCoverForH()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    const v3, 0x7f0202fe

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageHandle;->setTabImageResource(I)V

    .line 106
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    const v3, 0x7f0202fb

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageHandle;->setTargetImageResource(I)V

    .line 107
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    const v3, 0x7f020300

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageHandle;->setHandleImageResource(I)V

    .line 108
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v2, v6}, Lcom/android/phone/IncomingCallImageHandle;->setArrowRightMargin(I)V

    .line 110
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    const v3, 0x7f020313

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageHandle;->setTabImageResource(I)V

    .line 111
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    const v3, 0x7f020310

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageHandle;->setTargetImageResource(I)V

    .line 112
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    const v3, 0x7f020304

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageHandle;->setHandleImageResource(I)V

    .line 113
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v2, v6}, Lcom/android/phone/IncomingCallImageHandle;->setArrowLeftMargin(I)V

    .line 118
    :cond_2
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 387
    const-string v0, "IncomingCallImageWidget"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 127
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 128
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallImageWidget;->updateLayout()V

    .line 129
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/IncomingCallImageHandle$HandleState;)V

    .line 166
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/IncomingCallImageHandle$HandleState;)V

    .line 167
    return-void
.end method

.method protected setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 260
    iget v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    .line 261
    iput p1, p0, Lcom/android/phone/IncomingCallImageWidget;->mGrabbedState:I

    .line 263
    iget v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mGrabbedState:I

    packed-switch v0, :pswitch_data_0

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;

    iget v1, p0, Lcom/android/phone/IncomingCallImageWidget;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 282
    :cond_0
    return-void

    .line 265
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    .line 268
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    .line 271
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/IncomingCallImageHandle$HandleState;)V

    .line 272
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setHandleImageResource(II)V
    .locals 1
    .parameter "handle"
    .parameter "resource"

    .prologue
    .line 302
    packed-switch p1, :pswitch_data_0

    .line 314
    :goto_0
    :pswitch_0
    return-void

    .line 304
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/phone/IncomingCallImageHandle;->setHandleImageResource(I)V

    goto :goto_0

    .line 307
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/phone/IncomingCallImageHandle;->setHandleImageResource(I)V

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnTriggerListener(Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/phone/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;

    .line 237
    return-void
.end method

.method public setReachedRatio(D)V
    .locals 1
    .parameter "ratio"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/IncomingCallImageHandle;->setReachedRatio(D)V

    .line 361
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/IncomingCallImageHandle;->setReachedRatio(D)V

    .line 362
    return-void
.end method

.method public setTouchVibationMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/android/phone/IncomingCallImageWidget;->mUseVibate:Z

    .line 241
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallImageWidget;->reset()V

    .line 161
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 162
    return-void
.end method

.method public setVisibility(II)V
    .locals 1
    .parameter "handle"
    .parameter "visibility"

    .prologue
    .line 317
    packed-switch p1, :pswitch_data_0

    .line 329
    :goto_0
    :pswitch_0
    return-void

    .line 319
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/phone/IncomingCallImageHandle;->setVisibility(I)V

    goto :goto_0

    .line 322
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/phone/IncomingCallImageHandle;->setVisibility(I)V

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected updateLayout()V
    .locals 8

    .prologue
    .line 137
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v5}, Lcom/android/phone/IncomingCallImageHandle;->getWidth()I

    move-result v5

    div-int/lit8 v2, v5, 0x3

    .line 138
    .local v2, margin:I
    const-string v5, "clear_cover_enhanced"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/android/phone/IncomingCallImageWidget;->getSViewCoverForH()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 140
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v5}, Lcom/android/phone/IncomingCallImageHandle;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x5

    add-int/lit8 v2, v5, 0x5

    .line 142
    :cond_0
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v5}, Lcom/android/phone/IncomingCallImageHandle;->getLeft()I

    move-result v5

    sub-int v0, v5, v2

    .line 143
    .local v0, leftHandleLeft:I
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v5}, Lcom/android/phone/IncomingCallImageHandle;->getTop()I

    move-result v1

    .line 145
    .local v1, leftHandleTop:I
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    iget-object v6, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v6}, Lcom/android/phone/IncomingCallImageHandle;->getWidth()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v7}, Lcom/android/phone/IncomingCallImageHandle;->getHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v5, v0, v1, v6, v7}, Lcom/android/phone/IncomingCallImageHandle;->layout(IIII)V

    .line 148
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v5}, Lcom/android/phone/IncomingCallImageHandle;->getLeft()I

    move-result v5

    add-int v3, v5, v2

    .line 149
    .local v3, rightHandleLeft:I
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v5}, Lcom/android/phone/IncomingCallImageHandle;->getTop()I

    move-result v4

    .line 151
    .local v4, rightHandleTop:I
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    iget-object v6, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v6}, Lcom/android/phone/IncomingCallImageHandle;->getWidth()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v7}, Lcom/android/phone/IncomingCallImageHandle;->getHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Lcom/android/phone/IncomingCallImageHandle;->layout(IIII)V

    .line 153
    return-void
.end method

.method public declared-synchronized vibrate(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallImageWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mVibrator:Landroid/os/Vibrator;

    .line 294
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mUseVibate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x1e

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 299
    :goto_0
    monitor-exit p0

    return-void

    .line 297
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
