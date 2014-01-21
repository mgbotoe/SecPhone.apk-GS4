.class public Lcom/android/phone/CircleTimeProgressView;
.super Landroid/view/View;
.source "CircleTimeProgressView.java"


# instance fields
.field private mBgPaint:Landroid/graphics/Paint;

.field private mOval:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:F

.field private mStart:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/high16 v0, 0x4387

    iput v0, p0, Lcom/android/phone/CircleTimeProgressView;->mStart:F

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CircleTimeProgressView;->mPaint:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/android/phone/CircleTimeProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object v0, p0, Lcom/android/phone/CircleTimeProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object v0, p0, Lcom/android/phone/CircleTimeProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/phone/CircleTimeProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/phone/CircleTimeProgressView;->mBgPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/android/phone/CircleTimeProgressView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 89
    const-string v0, "CircleTimeProgressView"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v4, 0x1

    .line 60
    iget-object v1, p0, Lcom/android/phone/CircleTimeProgressView;->mOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/phone/CircleTimeProgressView;->mStart:F

    const/high16 v3, 0x43b4

    iget-object v5, p0, Lcom/android/phone/CircleTimeProgressView;->mBgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 61
    iget-object v1, p0, Lcom/android/phone/CircleTimeProgressView;->mOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/phone/CircleTimeProgressView;->mStart:F

    iget v3, p0, Lcom/android/phone/CircleTimeProgressView;->mProgress:F

    iget-object v5, p0, Lcom/android/phone/CircleTimeProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 62
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/high16 v3, 0x4312

    const/4 v2, 0x0

    .line 53
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CircleTimeProgressView onFinishInflate(this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CircleTimeProgressView;->log(Ljava/lang/String;)V

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/phone/CircleTimeProgressView;->mOval:Landroid/graphics/RectF;

    .line 56
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 69
    if-eq p1, p0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 73
    :cond_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 77
    :sswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CircleTimeProgressView;->mProgress:F

    goto :goto_0

    .line 73
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setProgress(II)V
    .locals 1
    .parameter "progress"
    .parameter "maxValue"

    .prologue
    .line 83
    mul-int/lit16 v0, p1, 0x168

    div-int/2addr v0, p2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/phone/CircleTimeProgressView;->mProgress:F

    .line 84
    invoke-virtual {p0}, Lcom/android/phone/CircleTimeProgressView;->invalidate()V

    .line 85
    return-void
.end method
