.class public Lcom/android/phone/ScrollTextView;
.super Landroid/widget/TextView;
.source "ScrollTextView.java"


# instance fields
.field private final PauseTime:J

.field private final TAG:Ljava/lang/String;

.field private final UPDATE:I

.field private final UpdateTime:J

.field private mCurrentPosition:I

.field private mDisplayLength:I

.field private mScrollLength:I

.field private mScrollText:Ljava/lang/String;

.field private mSmoothLevel:I

.field private mTextLength:I

.field mUpdate:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 31
    const-string v0, "ScrollTextView"

    iput-object v0, p0, Lcom/android/phone/ScrollTextView;->TAG:Ljava/lang/String;

    .line 32
    iput v2, p0, Lcom/android/phone/ScrollTextView;->UPDATE:I

    .line 33
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/android/phone/ScrollTextView;->UpdateTime:J

    .line 34
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/phone/ScrollTextView;->PauseTime:J

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/ScrollTextView;->mSmoothLevel:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/ScrollTextView;->mScrollText:Ljava/lang/String;

    .line 39
    iput v2, p0, Lcom/android/phone/ScrollTextView;->mScrollLength:I

    .line 40
    iput v2, p0, Lcom/android/phone/ScrollTextView;->mDisplayLength:I

    .line 41
    iput v2, p0, Lcom/android/phone/ScrollTextView;->mTextLength:I

    .line 43
    iput v2, p0, Lcom/android/phone/ScrollTextView;->mCurrentPosition:I

    .line 45
    new-instance v0, Lcom/android/phone/ScrollTextView$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ScrollTextView$1;-><init>(Lcom/android/phone/ScrollTextView;)V

    iput-object v0, p0, Lcom/android/phone/ScrollTextView;->mUpdate:Landroid/os/Handler;

    .line 68
    invoke-direct {p0}, Lcom/android/phone/ScrollTextView;->setParameter()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const-string v0, "ScrollTextView"

    iput-object v0, p0, Lcom/android/phone/ScrollTextView;->TAG:Ljava/lang/String;

    .line 32
    iput v2, p0, Lcom/android/phone/ScrollTextView;->UPDATE:I

    .line 33
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/android/phone/ScrollTextView;->UpdateTime:J

    .line 34
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/phone/ScrollTextView;->PauseTime:J

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/ScrollTextView;->mSmoothLevel:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/ScrollTextView;->mScrollText:Ljava/lang/String;

    .line 39
    iput v2, p0, Lcom/android/phone/ScrollTextView;->mScrollLength:I

    .line 40
    iput v2, p0, Lcom/android/phone/ScrollTextView;->mDisplayLength:I

    .line 41
    iput v2, p0, Lcom/android/phone/ScrollTextView;->mTextLength:I

    .line 43
    iput v2, p0, Lcom/android/phone/ScrollTextView;->mCurrentPosition:I

    .line 45
    new-instance v0, Lcom/android/phone/ScrollTextView$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ScrollTextView$1;-><init>(Lcom/android/phone/ScrollTextView;)V

    iput-object v0, p0, Lcom/android/phone/ScrollTextView;->mUpdate:Landroid/os/Handler;

    .line 73
    invoke-direct {p0}, Lcom/android/phone/ScrollTextView;->setParameter()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const-string v0, "ScrollTextView"

    iput-object v0, p0, Lcom/android/phone/ScrollTextView;->TAG:Ljava/lang/String;

    .line 32
    iput v2, p0, Lcom/android/phone/ScrollTextView;->UPDATE:I

    .line 33
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/android/phone/ScrollTextView;->UpdateTime:J

    .line 34
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/phone/ScrollTextView;->PauseTime:J

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/ScrollTextView;->mSmoothLevel:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/ScrollTextView;->mScrollText:Ljava/lang/String;

    .line 39
    iput v2, p0, Lcom/android/phone/ScrollTextView;->mScrollLength:I

    .line 40
    iput v2, p0, Lcom/android/phone/ScrollTextView;->mDisplayLength:I

    .line 41
    iput v2, p0, Lcom/android/phone/ScrollTextView;->mTextLength:I

    .line 43
    iput v2, p0, Lcom/android/phone/ScrollTextView;->mCurrentPosition:I

    .line 45
    new-instance v0, Lcom/android/phone/ScrollTextView$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ScrollTextView$1;-><init>(Lcom/android/phone/ScrollTextView;)V

    iput-object v0, p0, Lcom/android/phone/ScrollTextView;->mUpdate:Landroid/os/Handler;

    .line 78
    invoke-direct {p0}, Lcom/android/phone/ScrollTextView;->setParameter()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ScrollTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/phone/ScrollTextView;->mScrollLength:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/ScrollTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/phone/ScrollTextView;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/ScrollTextView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/phone/ScrollTextView;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$112(Lcom/android/phone/ScrollTextView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/phone/ScrollTextView;->mCurrentPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/phone/ScrollTextView;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/ScrollTextView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/phone/ScrollTextView;->loop(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/ScrollTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/phone/ScrollTextView;->mSmoothLevel:I

    return v0
.end method

.method private loop(J)V
    .locals 2
    .parameter "mils"

    .prologue
    const/4 v1, 0x0

    .line 163
    iget v0, p0, Lcom/android/phone/ScrollTextView;->mScrollLength:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/ScrollTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/phone/ScrollTextView;->mUpdate:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ScrollTextView;->mUpdate:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/phone/ScrollTextView;->mUpdate:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private measureHeight(I)I
    .locals 5
    .parameter "measureSpec"

    .prologue
    .line 141
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 142
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 143
    .local v2, specSize:I
    const/4 v0, 0x0

    .line 144
    .local v0, result:I
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_1

    .line 145
    move v0, v2

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/ScrollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p0}, Lcom/android/phone/ScrollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/phone/ScrollTextView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/phone/ScrollTextView;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 148
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_0

    .line 149
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 5
    .parameter "measureSpec"

    .prologue
    .line 121
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 122
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 123
    .local v2, specSize:I
    const/4 v0, 0x0

    .line 124
    .local v0, result:I
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_1

    .line 126
    move v0, v2

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/ScrollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/ScrollTextView;->mScrollText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/android/phone/ScrollTextView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/phone/ScrollTextView;->getPaddingRight()I

    move-result v4

    add-int v0, v3, v4

    .line 133
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_0

    .line 134
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private setParameter()V
    .locals 1

    .prologue
    .line 156
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/android/phone/ScrollTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/ScrollTextView;->setSingleLine(Z)V

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/ScrollTextView;->setFocusable(Z)V

    .line 159
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/android/phone/ScrollTextView;->setGravity(I)V

    .line 160
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 108
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/phone/ScrollTextView;->measureWidth(I)I

    move-result v1

    .line 113
    .local v1, width:I
    invoke-direct {p0, p2}, Lcom/android/phone/ScrollTextView;->measureHeight(I)I

    move-result v0

    .line 114
    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Lcom/android/phone/ScrollTextView;->setMeasuredDimension(II)V

    .line 115
    invoke-virtual {p0}, Lcom/android/phone/ScrollTextView;->getPaddingLeft()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p0}, Lcom/android/phone/ScrollTextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/phone/ScrollTextView;->mDisplayLength:I

    .line 116
    iget v2, p0, Lcom/android/phone/ScrollTextView;->mTextLength:I

    iget v3, p0, Lcom/android/phone/ScrollTextView;->mDisplayLength:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/phone/ScrollTextView;->mScrollLength:I

    .line 117
    const-wide/16 v2, 0x32

    invoke-direct {p0, v2, v3}, Lcom/android/phone/ScrollTextView;->loop(J)V

    .line 118
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 84
    if-nez p2, :cond_1

    .line 85
    const-wide/16 v0, 0x32

    invoke-direct {p0, v0, v1}, Lcom/android/phone/ScrollTextView;->loop(J)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/phone/ScrollTextView;->mUpdate:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ScrollTextView;->mUpdate:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/phone/ScrollTextView;->mUpdate:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowFocusChanged(Z)V

    .line 96
    if-eqz p1, :cond_1

    .line 97
    const-wide/16 v0, 0x32

    invoke-direct {p0, v0, v1}, Lcom/android/phone/ScrollTextView;->loop(J)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/phone/ScrollTextView;->mUpdate:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ScrollTextView;->mUpdate:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/phone/ScrollTextView;->mUpdate:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public setScrollText(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "text"

    .prologue
    const/4 v3, 0x0

    .line 171
    if-eqz p1, :cond_1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, temp:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/ScrollTextView;->mScrollText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    iput-object v0, p0, Lcom/android/phone/ScrollTextView;->mScrollText:Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lcom/android/phone/ScrollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ScrollTextView;->mScrollText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/phone/ScrollTextView;->mTextLength:I

    .line 176
    iput v3, p0, Lcom/android/phone/ScrollTextView;->mCurrentPosition:I

    .line 177
    invoke-virtual {p0, v3, v3}, Lcom/android/phone/ScrollTextView;->scrollTo(II)V

    .line 184
    .end local v0           #temp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/phone/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    return-void

    .line 180
    :cond_1
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/ScrollTextView;->mScrollText:Ljava/lang/String;

    .line 181
    iput v3, p0, Lcom/android/phone/ScrollTextView;->mCurrentPosition:I

    .line 182
    invoke-virtual {p0, v3, v3}, Lcom/android/phone/ScrollTextView;->scrollTo(II)V

    goto :goto_0
.end method
