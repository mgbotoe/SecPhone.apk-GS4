.class public Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;
.super Landroid/view/View;
.source "IncomingCallRejectWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallRejectWidget$Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabCircle"
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
    .line 933
    iput-object p1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallRejectWidget$Handle;

    .line 934
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 935
    invoke-direct {p0, p3}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->init(F)V

    .line 936
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->tempPosition:I

    .line 937
    return-void
.end method

.method private init(F)V
    .locals 2
    .parameter "radius"

    .prologue
    .line 945
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    .line 946
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 947
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallRejectWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallRejectWidget$Handle;->mCircleColor:I
    invoke-static {v1}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->access$1400(Lcom/android/phone/IncomingCallRejectWidget$Handle;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 948
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 953
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 956
    iput p1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->mRadius:F

    .line 957
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 995
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

    .line 996
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 997
    .local v0, action:I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1000
    :cond_0
    const/4 v1, 0x0

    .line 1002
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public isInCircle(FF)Z
    .locals 18
    .parameter "x"
    .parameter "y"

    .prologue
    .line 963
    const-wide v1, 0x3ff4cccccccccccdL

    .line 965
    .local v1, ACTIVE_RATIO:D
    const/4 v14, 0x2

    new-array v13, v14, [I

    .line 966
    .local v13, tmpPos:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->getLocationOnScreen([I)V

    .line 968
    const/4 v14, 0x0

    aget v14, v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->tempPosition:I

    add-int/2addr v14, v15

    int-to-float v7, v14

    .line 969
    .local v7, pivotX:F
    const/4 v14, 0x1

    aget v14, v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallRejectWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallRejectWidget$Handle;->mTopOffset:I
    invoke-static {v15}, Lcom/android/phone/IncomingCallRejectWidget$Handle;->access$1500(Lcom/android/phone/IncomingCallRejectWidget$Handle;)I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v8, v14

    .line 971
    .local v8, pivotY:F
    sub-float v14, p1, v7

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    .line 972
    .local v3, dx:D
    sub-float v14, p2, v8

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    .line 974
    .local v5, dy:D
    mul-double v14, v3, v3

    mul-double v16, v5, v5

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 976
    .local v9, posLength:D
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->mRadius:F

    float-to-double v14, v14

    div-double v11, v9, v14

    .line 978
    .local v11, ratio:D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallRejectWidget$Handle;

    iget-object v14, v14, Lcom/android/phone/IncomingCallRejectWidget$Handle;->this$0:Lcom/android/phone/IncomingCallRejectWidget;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isInCircle - x : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " y : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ratio : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/phone/IncomingCallRejectWidget;->log(Ljava/lang/String;)V

    .line 980
    const-wide v14, 0x3ff4cccccccccccdL

    cmpg-double v14, v11, v14

    if-gez v14, :cond_0

    .line 981
    const/4 v14, 0x1

    .line 983
    :goto_0
    return v14

    :cond_0
    const/4 v14, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 989
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->tempPosition:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->mRadius:F

    iget-object v3, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 990
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/phone/IncomingCallRejectWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 942
    :cond_0
    return-void
.end method
