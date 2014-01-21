.class public Lcom/android/phone/IncomingCallEasyImageWidget;
.super Lcom/android/phone/IncomingCallImageWidget;
.source "IncomingCallEasyImageWidget.java"


# instance fields
.field private final ARROW_ANI_DURATION:I

.field final ARROW_COUNT:I

.field private final FIRST_WAVE_DELAY:I

.field private final LOG_TAG:Ljava/lang/String;

.field private final SECOND_WAVE_DELAY:I

.field private final START_WAVE:I

.field private mHandler:Landroid/os/Handler;

.field private mLeftArrowContainer:Landroid/widget/LinearLayout;

.field private mLeftArrowImageViews:[Landroid/widget/ImageView;

.field private mLeftHintTextView:Landroid/widget/TextView;

.field private mRightArrowContainer:Landroid/widget/LinearLayout;

.field private mRightArrowImageViews:[Landroid/widget/ImageView;

.field private mRightHintTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/16 v1, 0x384

    .line 62
    invoke-direct {p0, p1}, Lcom/android/phone/IncomingCallImageWidget;-><init>(Landroid/content/Context;)V

    .line 42
    const-string v0, "IncomingCallEasyImageWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->LOG_TAG:Ljava/lang/String;

    .line 43
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->START_WAVE:I

    .line 45
    iput v1, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->ARROW_ANI_DURATION:I

    .line 47
    iput v1, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->FIRST_WAVE_DELAY:I

    .line 49
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->SECOND_WAVE_DELAY:I

    .line 53
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->ARROW_COUNT:I

    .line 272
    new-instance v0, Lcom/android/phone/IncomingCallEasyImageWidget$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IncomingCallEasyImageWidget$1;-><init>(Lcom/android/phone/IncomingCallEasyImageWidget;)V

    iput-object v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v1, 0x384

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/phone/IncomingCallImageWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const-string v0, "IncomingCallEasyImageWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->LOG_TAG:Ljava/lang/String;

    .line 43
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->START_WAVE:I

    .line 45
    iput v1, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->ARROW_ANI_DURATION:I

    .line 47
    iput v1, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->FIRST_WAVE_DELAY:I

    .line 49
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->SECOND_WAVE_DELAY:I

    .line 53
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->ARROW_COUNT:I

    .line 272
    new-instance v0, Lcom/android/phone/IncomingCallEasyImageWidget$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IncomingCallEasyImageWidget$1;-><init>(Lcom/android/phone/IncomingCallEasyImageWidget;)V

    iput-object v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v1, 0x384

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/IncomingCallImageWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const-string v0, "IncomingCallEasyImageWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->LOG_TAG:Ljava/lang/String;

    .line 43
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->START_WAVE:I

    .line 45
    iput v1, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->ARROW_ANI_DURATION:I

    .line 47
    iput v1, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->FIRST_WAVE_DELAY:I

    .line 49
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->SECOND_WAVE_DELAY:I

    .line 53
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->ARROW_COUNT:I

    .line 272
    new-instance v0, Lcom/android/phone/IncomingCallEasyImageWidget$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IncomingCallEasyImageWidget$1;-><init>(Lcom/android/phone/IncomingCallEasyImageWidget;)V

    iput-object v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IncomingCallEasyImageWidget;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/IncomingCallEasyImageWidget;)[Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/IncomingCallEasyImageWidget;)[Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightArrowImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/IncomingCallEasyImageWidget;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/phone/IncomingCallEasyImageWidget;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method private hideLeftArrow()V
    .locals 6

    .prologue
    .line 253
    iget-object v4, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    .local v0, arr$:[Landroid/widget/ImageView;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 255
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private hideLeftHint()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    return-void
.end method

.method private hideRightArrow()V
    .locals 6

    .prologue
    .line 260
    iget-object v4, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightArrowContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightArrowImageViews:[Landroid/widget/ImageView;

    .local v0, arr$:[Landroid/widget/ImageView;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 262
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private hideRightHint()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    return-void
.end method

.method private makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    .locals 3

    .prologue
    .line 319
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f19999a

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 320
    .local v0, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x384

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 322
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 325
    return-object v0
.end method

.method private makeArrowViews(I)V
    .locals 11
    .parameter "diameter"

    .prologue
    .line 195
    const/high16 v0, 0x41a0

    .line 197
    .local v0, ALPHA_GAP:F
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    .line 198
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightArrowContainer:Landroid/widget/LinearLayout;

    .line 200
    const/4 v7, 0x5

    new-array v7, v7, [Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    .line 201
    const/4 v7, 0x5

    new-array v7, v7, [Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightArrowImageViews:[Landroid/widget/ImageView;

    .line 203
    const/4 v2, 0x0

    .line 207
    .local v2, layoutGravity:I
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    invoke-direct {v5, p1, p1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 210
    .local v5, paddingLp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v7, 0x5

    if-ge v1, v7, :cond_2

    .line 211
    const/high16 v7, 0x437f

    const/high16 v8, 0x3f80

    const/high16 v9, 0x41a0

    int-to-float v10, v1

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c8

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-int v4, v7

    .line 212
    .local v4, leftAlpha:I
    const/high16 v7, 0x437f

    const/high16 v8, 0x3f80

    const/high16 v9, 0x41a0

    rsub-int/lit8 v10, v1, 0x5

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c8

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-int v6, v7

    .line 214
    .local v6, rightAlpha:I
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    new-instance v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v8, v7, v1

    .line 215
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightArrowImageViews:[Landroid/widget/ImageView;

    new-instance v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v8, v7, v1

    .line 217
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    aget-object v7, v7, v1

    const v8, 0x7f020358

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    aget-object v7, v7, v1

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 220
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightArrowImageViews:[Landroid/widget/ImageView;

    aget-object v7, v7, v1

    const v8, 0x7f020359

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightArrowImageViews:[Landroid/widget/ImageView;

    aget-object v7, v7, v1

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 224
    if-eqz v1, :cond_0

    .line 225
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/view/View;

    iget-object v9, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    :cond_0
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightArrowContainer:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightArrowImageViews:[Landroid/widget/ImageView;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    const/4 v7, 0x4

    if-eq v1, v7, :cond_1

    .line 232
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightArrowContainer:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/view/View;

    iget-object v9, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 236
    .end local v4           #leftAlpha:I
    .end local v6           #rightAlpha:I
    :cond_2
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v3, v7, v8, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 239
    .local v3, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7, v3}, Lcom/android/phone/IncomingCallEasyImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v7, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7, v3}, Lcom/android/phone/IncomingCallEasyImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    return-void
.end method

.method private makeHintView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v4, 0x7f040064

    const/4 v5, -0x2

    .line 329
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 331
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    .line 332
    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    .line 334
    iget-object v2, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    const v3, 0x7f09085a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 335
    iget-object v2, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    const v3, 0x7f09085b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 337
    iget-object v2, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 339
    iget-object v2, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 345
    .local v1, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/IncomingCallEasyImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    iget-object v2, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/IncomingCallEasyImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    return-void
.end method

.method private showArrow()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 244
    iget-object v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 250
    :cond_0
    return-void
.end method

.method private showHint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-object v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 92
    const-string v5, "init"

    invoke-virtual {p0, v5}, Lcom/android/phone/IncomingCallEasyImageWidget;->log(Ljava/lang/String;)V

    .line 94
    const-string v6, "useHoverToAction"

    invoke-virtual {p0}, Lcom/android/phone/IncomingCallEasyImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mUseHoverToAction:Z

    .line 96
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x53

    invoke-direct {v1, v9, v9, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 99
    .local v1, leftLP:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v5, Lcom/android/phone/IncomingCallImageHandle;

    iget-object v6, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v10}, Lcom/android/phone/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    .line 100
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v5, p0}, Lcom/android/phone/IncomingCallImageHandle;->setParent(Lcom/android/phone/IncomingCallImageWidget;)V

    .line 101
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    const v6, 0x7f02040e

    invoke-virtual {v5, v6}, Lcom/android/phone/IncomingCallImageHandle;->setHandleImageResource(I)V

    .line 102
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    const v6, 0x7f02036d

    invoke-virtual {v5, v6}, Lcom/android/phone/IncomingCallImageHandle;->setTabImageResource(I)V

    .line 103
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v5, v10}, Lcom/android/phone/IncomingCallImageHandle;->setUseExternalArrowImage(Z)V

    .line 104
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    iget-object v6, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const v7, 0x7f0901e8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {p0, v5, v1}, Lcom/android/phone/IncomingCallEasyImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x55

    invoke-direct {v4, v9, v9, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 111
    .local v4, rightLP:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v5, Lcom/android/phone/IncomingCallImageHandle;

    iget-object v6, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Lcom/android/phone/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    .line 112
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v5, p0}, Lcom/android/phone/IncomingCallImageHandle;->setParent(Lcom/android/phone/IncomingCallImageWidget;)V

    .line 113
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    const v6, 0x7f020410

    invoke-virtual {v5, v6}, Lcom/android/phone/IncomingCallImageHandle;->setHandleImageResource(I)V

    .line 114
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    const v6, 0x7f02037d

    invoke-virtual {v5, v6}, Lcom/android/phone/IncomingCallImageHandle;->setTabImageResource(I)V

    .line 115
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v5, v10}, Lcom/android/phone/IncomingCallImageHandle;->setUseExternalArrowImage(Z)V

    .line 116
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    iget-object v6, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const v7, 0x7f0901e9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {p0, v5, v4}, Lcom/android/phone/IncomingCallEasyImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    const-string v5, "answering_call_in_external_screen"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallEasyImageWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e006b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 122
    .local v3, padding:I
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v5, v3, v8, v8, v8}, Lcom/android/phone/IncomingCallImageHandle;->addTouchArea(IIII)V

    .line 123
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v5, v8, v8, v3, v8}, Lcom/android/phone/IncomingCallImageHandle;->addTouchArea(IIII)V

    .line 126
    .end local v3           #padding:I
    :cond_0
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 127
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0x10

    div-int/lit16 v0, v5, 0x168

    .line 128
    .local v0, diameter:I
    invoke-direct {p0, v0}, Lcom/android/phone/IncomingCallEasyImageWidget;->makeArrowViews(I)V

    .line 129
    invoke-direct {p0}, Lcom/android/phone/IncomingCallEasyImageWidget;->makeHintView()V

    .line 130
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 387
    const-string v0, "IncomingCallEasyImageWidget"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void
.end method

.method public log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "string"
    .parameter "always"

    .prologue
    .line 391
    const-string v0, "IncomingCallEasyImageWidget"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 392
    return-void
.end method

.method protected setGrabbedState(I)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 367
    packed-switch p1, :pswitch_data_0

    .line 383
    :goto_0
    invoke-super {p0, p1}, Lcom/android/phone/IncomingCallImageWidget;->setGrabbedState(I)V

    .line 384
    return-void

    .line 369
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/IncomingCallEasyImageWidget;->hideRightArrow()V

    .line 370
    invoke-direct {p0}, Lcom/android/phone/IncomingCallEasyImageWidget;->hideRightHint()V

    goto :goto_0

    .line 373
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/IncomingCallEasyImageWidget;->hideLeftArrow()V

    .line 374
    invoke-direct {p0}, Lcom/android/phone/IncomingCallEasyImageWidget;->hideLeftHint()V

    goto :goto_0

    .line 377
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/IncomingCallEasyImageWidget;->showArrow()V

    .line 378
    invoke-direct {p0}, Lcom/android/phone/IncomingCallEasyImageWidget;->showHint()V

    goto :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected updateLayout()V
    .locals 25

    .prologue
    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/IncomingCallImageHandle;->getWidth()I

    move-result v22

    div-int/lit8 v14, v22, 0x4

    .line 135
    .local v14, margin:I
    const/4 v5, 0x0

    .line 136
    .local v5, adjust_value:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    .line 137
    .local v15, metrics:Landroid/util/DisplayMetrics;
    const-string v22, "hardkeyboardhidden_no"

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_0

    iget v0, v15, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v22, v0

    const/16 v23, 0xa0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    iget v0, v15, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v22, v0

    const/16 v23, 0xf0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 139
    :cond_0
    mul-int/lit8 v22, v14, 0x1

    div-int/lit8 v5, v22, 0x3

    .line 141
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/IncomingCallImageHandle;->getLeft()I

    move-result v22

    sub-int v10, v22, v14

    .line 142
    .local v10, leftHandleLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/IncomingCallImageHandle;->getTop()I

    move-result v22

    mul-int/lit8 v23, v14, 0x3

    div-int/lit8 v23, v23, 0x4

    sub-int v22, v22, v23

    add-int v11, v22, v5

    .line 144
    .local v11, leftHandleTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/IncomingCallImageHandle;->getWidth()I

    move-result v23

    add-int v23, v23, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/IncomingCallImageHandle;->getHeight()I

    move-result v24

    add-int v24, v24, v11

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v10, v11, v1, v2}, Lcom/android/phone/IncomingCallImageHandle;->layout(IIII)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/IncomingCallImageHandle;->getLeft()I

    move-result v22

    add-int v18, v22, v14

    .line 148
    .local v18, rightHandleLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/IncomingCallImageHandle;->getTop()I

    move-result v22

    mul-int/lit8 v23, v14, 0x3

    div-int/lit8 v23, v23, 0x4

    add-int v22, v22, v23

    add-int v19, v22, v5

    .line 150
    .local v19, rightHandleTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/IncomingCallImageHandle;->getWidth()I

    move-result v23

    add-int v23, v23, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/IncomingCallImageHandle;->getHeight()I

    move-result v24

    add-int v24, v24, v19

    move-object/from16 v0, v22

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/IncomingCallImageHandle;->layout(IIII)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/IncomingCallImageHandle;->getWidth()I

    move-result v22

    div-int/lit8 v6, v22, 0x4

    .line 155
    .local v6, arrowMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/IncomingCallImageHandle;->getHeight()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    sub-int v9, v22, v23

    .line 156
    .local v9, leftArrowTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/IncomingCallImageHandle;->getRight()I

    move-result v22

    sub-int v8, v22, v6

    .line 157
    .local v8, leftArrowLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v23

    add-int v23, v23, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v24

    add-int v24, v24, v9

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v9, v1, v2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/IncomingCallImageHandle;->getHeight()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightArrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    sub-int v17, v22, v23

    .line 164
    .local v17, rightArrowTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightArrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v22

    sub-int v22, v18, v22

    add-int v16, v22, v6

    .line 165
    .local v16, rightArrowLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightArrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightArrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v23

    add-int v23, v23, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightArrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v24

    add-int v24, v24, v17

    move-object/from16 v0, v22

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 172
    move v7, v6

    .line 173
    .local v7, hintMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/IncomingCallImageHandle;->getHeight()I

    move-result v22

    div-int/lit8 v22, v22, 0x3

    add-int v22, v22, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getHeight()I

    move-result v23

    div-int/lit8 v23, v23, 0x3

    sub-int v13, v22, v23

    .line 174
    .local v13, leftHintTop:I
    move v12, v8

    .line 175
    .local v12, leftHintLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightArrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v23

    add-int v23, v23, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getHeight()I

    move-result v24

    add-int v24, v24, v13

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v12, v13, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/IncomingCallImageHandle;->getHeight()I

    move-result v22

    div-int/lit8 v22, v22, 0x3

    add-int v22, v22, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getHeight()I

    move-result v23

    div-int/lit8 v23, v23, 0x3

    sub-int v21, v22, v23

    .line 182
    .local v21, rightHintTop:I
    add-int v22, v18, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v23

    sub-int v20, v22, v23

    .line 183
    .local v20, rightHintLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v23

    add-int v23, v23, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getHeight()I

    move-result v24

    add-int v24, v24, v21

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightArrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setWidth(I)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallEasyImageWidget;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setWidth(I)V

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/IncomingCallEasyImageWidget;->showArrow()V

    .line 192
    return-void
.end method
