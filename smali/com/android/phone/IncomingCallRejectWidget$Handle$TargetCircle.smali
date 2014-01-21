.class public Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;
.super Landroid/view/View;
.source "IncomingCallRejectWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallRejectWidget$Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TargetCircle"
.end annotation


# instance fields
.field private mLinePaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private tempPosition:I

.field final synthetic this$1:Lcom/android/phone/IncomingCallRejectWidget$Handle;


# direct methods
.method public constructor <init>(Lcom/android/phone/IncomingCallRejectWidget$Handle;Landroid/content/Context;F)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "radius"

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->this$1:Lcom/android/phone/IncomingCallRejectWidget$Handle;

    .line 1019
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1020
    invoke-direct {p0, p3}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->init(F)V

    .line 1021
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->tempPosition:I

    .line 1022
    return-void
.end method

.method private init(F)V
    .locals 2
    .parameter "radius"

    .prologue
    .line 1025
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->mLinePaint:Landroid/graphics/Paint;

    .line 1026
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1027
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->mLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->this$1:Lcom/android/phone/IncomingCallRejectWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallRejectWidget$Handle;->mCircleColor:I
    invoke-static {v1}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->access$1400(Lcom/android/phone/IncomingCallRejectWidget$Handle;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1028
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1033
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1037
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    sub-float v0, p1, v0

    iput v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->mRadius:F

    .line 1038
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 1088
    const-string v1, "IncomingCallRejectWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchGenericMotionEvent : event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1089
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1090
    .local v0, action:I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1093
    :cond_0
    const/4 v1, 0x0

    .line 1095
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public getTargetProximityRatio(FF)D
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1066
    const/4 v9, 0x2

    new-array v8, v9, [I

    .line 1067
    .local v8, tmpPos:[I
    invoke-virtual {p0, v8}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->getLocationOnScreen([I)V

    .line 1069
    const/4 v9, 0x0

    aget v9, v8, v9

    invoke-virtual {p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->tempPosition:I

    add-int/2addr v9, v10

    int-to-float v4, v9

    .line 1070
    .local v4, pivotX:F
    const/4 v9, 0x1

    aget v9, v8, v9

    invoke-virtual {p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->this$1:Lcom/android/phone/IncomingCallRejectWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTopOffset:I
    invoke-static {v10}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->access$1500(Lcom/android/phone/IncomingCallRejectWidget$Handle;)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v5, v9

    .line 1072
    .local v5, pivotY:F
    sub-float v9, p1, v4

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 1073
    .local v0, dx:D
    sub-float v9, p2, v5

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 1075
    .local v2, dy:D
    mul-double v9, v0, v0

    mul-double v11, v2, v2

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 1077
    .local v6, posLength:D
    iget v9, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->mRadius:F

    float-to-double v9, v9

    div-double v9, v6, v9

    return-wide v9
.end method

.method public isThresholdReached(FF)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1053
    const-wide v0, 0x3fee666666666666L

    .line 1055
    .local v0, REACHED_RATIO:D
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->getTargetProximityRatio(FF)D

    move-result-wide v2

    .line 1056
    .local v2, ratio:D
    const-wide v4, 0x3fee666666666666L

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 1082
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->tempPosition:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->mRadius:F

    iget-object v3, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1083
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->mLinePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TargetCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1043
    :cond_0
    return-void
.end method
