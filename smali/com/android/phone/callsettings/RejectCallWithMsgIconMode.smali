.class public Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "RejectCallWithMsgIconMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$RefreshDoneListener;,
        Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;
    }
.end annotation


# static fields
.field private static PROJECTION:[Ljava/lang/String;


# instance fields
.field mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

.field private mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field private mAnimationOn:Z

.field private mCheckedCount:I

.field mCheckedStatus:Landroid/util/SparseBooleanArray;

.field private mCurEditPosition:I

.field private mCurrState:I

.field private mDragImageView:Landroid/widget/ImageView;

.field private mDragItemView:Landroid/view/ViewGroup;

.field private mDragPosition:I

.field private mFragmentTitleHeight:I

.field mGridView:Landroid/widget/GridView;

.field private mInitLastXY:Z

.field private mIsDragViewDropped:Z

.field private mIsHeightGet:Z

.field private mIsMotionDownTouched:Z

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLandBottomMargin:I

.field private mLandColumnWidth:I

.field private mLandHorizonSpace:I

.field private mLandLeftMargin:I

.field private mLandRightMargin:I

.field private mLandTopMargin:I

.field private mLandVerticalSpace:I

.field private mLastAnimationId:Ljava/lang/String;

.field private mLastX:I

.field private mLastY:I

.field private mLeftLayoutWidth:I

.field private mMidWayStartPosition:I

.field private mOrigStartPosition:I

.field private mPortBottomMargin:I

.field private mPortColumnWidth:I

.field private mPortHorizonSpace:I

.field private mPortLeftMargin:I

.field private mPortRightMargin:I

.field private mPortTopMargin:I

.field private mPortVerticalSpace:I

.field private mRefreshDoneListener:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$RefreshDoneListener;

.field mSelectAllCheckBox:Landroid/view/View;

.field mSelectAllLayout:Landroid/widget/LinearLayout;

.field private mSinglePane:Z

.field private mStatusBarHeight:I

.field private mTitleHeight:I

.field mViewRoot:Landroid/view/View;

.field private mWinPosArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;",
            ">;"
        }
    .end annotation
.end field

.field private mWinPosArrayLand:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowMgrBitmap:Landroid/graphics/Bitmap;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 135
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "reject_message"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "edit_checked"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "remind_time"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "icon_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "position"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 68
    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowMgrBitmap:Landroid/graphics/Bitmap;

    .line 69
    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 70
    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowManager:Landroid/view/WindowManager;

    .line 71
    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    .line 72
    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    .line 73
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mOrigStartPosition:I

    .line 74
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMidWayStartPosition:I

    .line 75
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    .line 76
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastX:I

    .line 77
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastY:I

    .line 78
    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mInitLastXY:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsMotionDownTouched:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAnimationOn:Z

    .line 81
    iput-boolean v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsDragViewDropped:Z

    .line 82
    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastAnimationId:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWinPosArray:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWinPosArrayLand:Ljava/util/ArrayList;

    .line 99
    iput-boolean v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSinglePane:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsHeightGet:Z

    .line 101
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mStatusBarHeight:I

    .line 102
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mTitleHeight:I

    .line 103
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I

    .line 104
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurEditPosition:I

    .line 106
    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    .line 107
    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllLayout:Landroid/widget/LinearLayout;

    .line 110
    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/view/View;

    .line 111
    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    .line 112
    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    .line 113
    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mViewRoot:Landroid/view/View;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    .line 130
    iput v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    .line 150
    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 194
    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$RefreshDoneListener;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$RefreshDoneListener;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mRefreshDoneListener:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$RefreshDoneListener;

    .line 196
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortColumnWidth:I

    .line 197
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortHorizonSpace:I

    .line 198
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortVerticalSpace:I

    .line 199
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortLeftMargin:I

    .line 200
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortRightMargin:I

    .line 201
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortTopMargin:I

    .line 202
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortBottomMargin:I

    .line 204
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandColumnWidth:I

    .line 205
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandHorizonSpace:I

    .line 206
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandVerticalSpace:I

    .line 207
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandLeftMargin:I

    .line 208
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandRightMargin:I

    .line 209
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandTopMargin:I

    .line 210
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandBottomMargin:I

    .line 212
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLeftLayoutWidth:I

    .line 213
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mFragmentTitleHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastAnimationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Landroid/graphics/Bitmap;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->createDragView(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMidWayStartPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAnimationOn:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->onDrop()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowMgrBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private changeGridViewParams()V
    .locals 7

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->isLandscape()Z

    move-result v2

    .line 765
    .local v2, isLand:Z
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 766
    .local v0, dispMetrics:Landroid/util/DisplayMetrics;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", density: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", densityDpi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 768
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 769
    .local v1, gridParams:Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v2, :cond_0

    .line 770
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 771
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandColumnWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 772
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandHorizonSpace:I

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 773
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandVerticalSpace:I

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 774
    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandLeftMargin:I

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandTopMargin:I

    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandRightMargin:I

    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandBottomMargin:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 783
    :goto_0
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 784
    return-void

    .line 777
    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 778
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortColumnWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 779
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortHorizonSpace:I

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 780
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortVerticalSpace:I

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 781
    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortLeftMargin:I

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortTopMargin:I

    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortRightMargin:I

    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortBottomMargin:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private changeStatusIcon(Landroid/view/View;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1110
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1113
    const v0, 0x7f0a02c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1114
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1115
    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1116
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1123
    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    move v0, v2

    .line 1125
    :goto_1
    if-ge v1, v3, :cond_2

    .line 1126
    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1127
    add-int/lit8 v0, v0, 0x1

    .line 1125
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1119
    :cond_1
    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1120
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 1131
    :cond_2
    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I

    .line 1132
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getUserDataCount()I

    move-result v0

    .line 1133
    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I

    if-ne v1, v0, :cond_4

    .line 1134
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1139
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1144
    :cond_3
    return-void

    .line 1137
    :cond_4
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_2
.end method

.method private createDragView(Landroid/graphics/Bitmap;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v3, -0x2

    .line 840
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->stopDrag()V

    .line 841
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 842
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 844
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsMotionDownTouched:Z

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItemViewLeft(Landroid/view/ViewGroup;Z)I

    move-result v1

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLeftLayoutWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 845
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsMotionDownTouched:Z

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItemViewTop(Landroid/view/ViewGroup;Z)I

    move-result v1

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mFragmentTitleHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createDragView() x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 850
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 851
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 853
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 854
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 856
    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 861
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 862
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 863
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 864
    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    .line 865
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 866
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$2;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$2;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 882
    return-void
.end method

.method private deleteAllRejectMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 346
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_ICON_MODE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 347
    return-void
.end method

.method private deleteRejectMessage(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_ICON_MODE_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 352
    return-void
.end method

.method private findItem(I)Ljava/util/HashMap;
    .locals 4
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 627
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 628
    .local v1, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v1, :cond_1

    .line 629
    const-string v3, "findItem() ignore add icon!"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :cond_1
    const-string v3, "position"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 633
    .local v2, tempPos:I
    if-ne v2, p1, :cond_0

    .line 637
    .end local v1           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2           #tempPos:I
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getDragViewPos()Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, -0x1

    .line 1075
    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;)V

    .line 1078
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1081
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->x:I

    .line 1082
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->y:I

    .line 1084
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v5, :cond_0

    .line 1085
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->height:I

    .line 1095
    :goto_0
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v5, :cond_3

    .line 1096
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iput v0, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->width:I

    .line 1106
    :goto_1
    return-object v1

    .line 1087
    :cond_0
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v4, :cond_1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v4, :cond_2

    .line 1089
    :cond_1
    const-string v2, "RejectCallWithMsgIconMode"

    const-string v3, "ERROR: drag view width is wrong!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1092
    :cond_2
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->height:I

    goto :goto_0

    .line 1098
    :cond_3
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v4, :cond_4

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v4, :cond_5

    .line 1100
    :cond_4
    const-string v0, "RejectCallWithMsgIconMode"

    const-string v2, "ERROR: drag view width is wrong!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1103
    :cond_5
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->width:I

    goto :goto_1
.end method

.method private getItemViewLeft(Landroid/view/ViewGroup;Z)I
    .locals 3
    .parameter "viewGroup"
    .parameter "downTouched"

    .prologue
    .line 819
    const/4 v0, 0x0

    .line 820
    .local v0, left:I
    if-nez p2, :cond_0

    .line 821
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLeft()I

    move-result v2

    add-int v0, v1, v2

    .line 823
    :cond_0
    return v0
.end method

.method private getItemViewTop(Landroid/view/ViewGroup;Z)I
    .locals 4
    .parameter "viewGroup"
    .parameter "downTouched"

    .prologue
    .line 827
    const/4 v1, 0x0

    .line 828
    .local v1, top:I
    if-nez p2, :cond_0

    .line 829
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getTitleHeight()I

    move-result v3

    add-int v1, v2, v3

    .line 835
    :goto_0
    return v1

    .line 832
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getStatusBarHeight()I

    move-result v0

    .line 833
    .local v0, statusBarHeight:I
    neg-int v1, v0

    goto :goto_0
.end method

.method private getLayoutDimens()V
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 267
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0e012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortColumnWidth:I

    .line 268
    const v1, 0x7f0e012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortHorizonSpace:I

    .line 269
    const v1, 0x7f0e0130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortVerticalSpace:I

    .line 270
    const v1, 0x7f0e0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortLeftMargin:I

    .line 271
    const v1, 0x7f0e0133

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortRightMargin:I

    .line 272
    const v1, 0x7f0e0132

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortTopMargin:I

    .line 273
    const v1, 0x7f0e0134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortBottomMargin:I

    .line 275
    const v1, 0x7f0e0135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandColumnWidth:I

    .line 276
    const v1, 0x7f0e0137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandHorizonSpace:I

    .line 277
    const v1, 0x7f0e0138

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandVerticalSpace:I

    .line 278
    const v1, 0x7f0e0139

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandLeftMargin:I

    .line 279
    const v1, 0x7f0e013b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandRightMargin:I

    .line 280
    const v1, 0x7f0e013a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandTopMargin:I

    .line 281
    const v1, 0x7f0e013c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandBottomMargin:I

    .line 283
    return-void
.end method

.method private getPositions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 885
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->isLandscape()Z

    move-result v0

    .line 887
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 889
    if-nez v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWinPosArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 895
    if-ge v0, v1, :cond_1

    .line 896
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWinPosArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    .line 897
    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 898
    new-instance v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    invoke-direct {v3, p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;)V

    .line 899
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 900
    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItemViewLeft(Landroid/view/ViewGroup;Z)I

    move-result v4

    iput v4, v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->x:I

    .line 901
    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItemViewTop(Landroid/view/ViewGroup;Z)I

    move-result v4

    iput v4, v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->y:I

    .line 902
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    iput v4, v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->height:I

    .line 903
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->width:I

    .line 905
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWinPosArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Port Layout "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 897
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWinPosArrayLand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 912
    if-ge v0, v1, :cond_1

    .line 913
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWinPosArrayLand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    .line 914
    :goto_1
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 915
    new-instance v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    invoke-direct {v3, p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;)V

    .line 916
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 917
    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItemViewLeft(Landroid/view/ViewGroup;Z)I

    move-result v4

    iput v4, v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->x:I

    .line 918
    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItemViewTop(Landroid/view/ViewGroup;Z)I

    move-result v4

    iput v4, v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->y:I

    .line 919
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    iput v4, v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->height:I

    .line 920
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->width:I

    .line 922
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWinPosArrayLand:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Land Layout "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 914
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 927
    :cond_1
    return-void
.end method

.method private getRejectMessage()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 340
    const-string v5, "position asc"

    .line 341
    .local v5, sortOrder:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_ICON_MODE_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getStatusBarHeight()I
    .locals 1

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getStatusBarTitleHeight()V

    .line 292
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mStatusBarHeight:I

    return v0
.end method

.method private getStatusBarTitleHeight()V
    .locals 4

    .prologue
    .line 297
    iget-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsHeightGet:Z

    if-nez v2, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 301
    .local v0, contentView:Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 302
    .local v1, rectWithoutStatusBar:Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 303
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mStatusBarHeight:I

    .line 304
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mTitleHeight:I

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTitleHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mTitleHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mStatusBarHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mStatusBarHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 307
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsHeightGet:Z

    .line 309
    .end local v0           #contentView:Landroid/view/View;
    .end local v1           #rectWithoutStatusBar:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private getTitleHeight()I
    .locals 1

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getStatusBarTitleHeight()V

    .line 287
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mTitleHeight:I

    return v0
.end method

.method private getUserDataCount()I
    .locals 3

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, userDataCount:I
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 319
    :goto_0
    return v0

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private hasUserDataExceptAddIcon()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 571
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initContents()V
    .locals 12

    .prologue
    const/4 v11, 0x6

    .line 389
    iget-object v9, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 391
    const/4 v0, 0x0

    .line 393
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 396
    :cond_0
    const/4 v9, 0x6

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 397
    .local v7, position:I
    const/4 v9, 0x5

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 398
    .local v2, iconId:I
    const/4 v9, 0x1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 399
    .local v8, title:Ljava/lang/String;
    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 400
    .local v6, message:Ljava/lang/String;
    const/4 v9, 0x3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 401
    .local v4, isEdited:I
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 402
    .local v3, id:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", position: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", iconId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", title: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isEdited: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 405
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 406
    .local v5, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v9, "_id"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string v9, "position"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v9, "iconId"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v9, "edit"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    and-int/lit8 v9, v4, 0x1

    if-eqz v9, :cond_4

    .line 413
    const-string v9, "title"

    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :goto_0
    and-int/lit8 v9, v4, 0x2

    if-eqz v9, :cond_6

    .line 426
    const-string v9, "message"

    invoke-virtual {v5, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :goto_1
    iget-object v9, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_0

    .line 442
    .end local v2           #iconId:I
    .end local v3           #id:I
    .end local v4           #isEdited:I
    .end local v5           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v6           #message:Ljava/lang/String;
    .end local v7           #position:I
    .end local v8           #title:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 443
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 444
    const/4 v0, 0x0

    .line 448
    :cond_2
    iget-object v9, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v9, v11, :cond_3

    .line 449
    iget-object v9, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    const-string v9, "Add \'add\' icon!"

    invoke-direct {p0, v9}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 452
    :cond_3
    return-void

    .line 418
    .restart local v2       #iconId:I
    .restart local v3       #id:I
    .restart local v4       #isEdited:I
    .restart local v5       #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v6       #message:Ljava/lang/String;
    .restart local v7       #position:I
    .restart local v8       #title:Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v9, "title"

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v1

    .line 421
    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v9, "title"

    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 442
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #iconId:I
    .end local v3           #id:I
    .end local v4           #isEdited:I
    .end local v5           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v6           #message:Ljava/lang/String;
    .end local v7           #position:I
    .end local v8           #title:Ljava/lang/String;
    :catchall_0
    move-exception v9

    if-eqz v0, :cond_5

    .line 443
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 444
    const/4 v0, 0x0

    :cond_5
    throw v9

    .line 431
    .restart local v2       #iconId:I
    .restart local v3       #id:I
    .restart local v4       #isEdited:I
    .restart local v5       #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v6       #message:Ljava/lang/String;
    .restart local v7       #position:I
    .restart local v8       #title:Ljava/lang/String;
    :cond_6
    :try_start_3
    const-string v9, "message"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 433
    :catch_1
    move-exception v1

    .line 434
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v9, "message"

    invoke-virtual {v5, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private insertRejectMessage(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_ICON_MODE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 356
    return-void
.end method

.method private isAddViewTouched(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 1147
    const/4 v0, 0x0

    .line 1148
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1150
    const/4 v0, 0x1

    .line 1152
    :cond_0
    return v0
.end method

.method private isLandscape()Z
    .locals 3

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 577
    .local v0, isLand:Z
    :goto_0
    return v0

    .line 575
    .end local v0           #isLand:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTouchOnDragView(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "evt"

    .prologue
    .line 1060
    const/4 v1, 0x0

    .line 1062
    .local v1, result:Z
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getDragViewPos()Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    move-result-object v0

    .line 1063
    .local v0, pos:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v2, v4

    .line 1064
    .local v2, touchX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getStatusBarHeight()I

    move-result v5

    sub-int v3, v4, v5

    .line 1066
    .local v3, touchY:I
    iget v4, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->x:I

    if-lt v2, v4, :cond_0

    iget v4, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->x:I

    iget v5, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->width:I

    add-int/2addr v4, v5

    if-gt v2, v4, :cond_0

    iget v4, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->y:I

    if-lt v3, v4, :cond_0

    iget v4, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->y:I

    iget v5, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->height:I

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_0

    .line 1068
    const/4 v1, 0x1

    .line 1071
    :cond_0
    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1590
    const-string v0, "RejectCallWithMsgIconMode"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    return-void
.end method

.method private onDrop()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1383
    const-string v0, "onDrop()"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 1385
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->stopDrag()V

    .line 1387
    iput-boolean v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsDragViewDropped:Z

    .line 1389
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1390
    if-nez v0, :cond_1

    .line 1391
    const-string v0, "onDrop() ignore add icon!"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1394
    :cond_1
    const-string v1, "position"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1395
    const/16 v3, 0xff

    if-ne v1, v3, :cond_0

    .line 1396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP dropPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 1397
    const-string v1, "position"

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updatePositionsInDb()V

    .line 1405
    iput v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    .line 1406
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1407
    if-eqz v0, :cond_3

    .line 1408
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1411
    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAnimationOn:Z

    if-nez v0, :cond_4

    .line 1412
    const-string v0, "onDrop() notifyDataSetChanged()"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 1413
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->notifyDataSetChanged()V

    .line 1415
    :cond_4
    return-void
.end method

.method private onMove()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 942
    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAnimationOn:Z

    if-eqz v0, :cond_1

    .line 1057
    :cond_0
    return-void

    .line 948
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getDragViewPos()Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    move-result-object v0

    .line 949
    iget v1, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->x:I

    iget v4, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int v5, v1, v4

    .line 950
    iget v1, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->y:I

    iget v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->height:I

    div-int/lit8 v0, v0, 0x2

    add-int v6, v1, v0

    .line 952
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getUserDataCount()I

    move-result v7

    .line 954
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->isLandscape()Z

    move-result v0

    .line 956
    if-eqz v0, :cond_3

    .line 957
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWinPosArrayLand:Ljava/util/ArrayList;

    move-object v1, v0

    .line 963
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v3

    .line 965
    :goto_1
    if-ge v4, v8, :cond_5

    if-ge v4, v7, :cond_5

    .line 966
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMidWayStartPosition:I

    if-ne v4, v0, :cond_4

    .line 965
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 960
    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWinPosArray:Ljava/util/ArrayList;

    move-object v1, v0

    goto :goto_0

    .line 970
    :cond_4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    .line 971
    iget v9, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->x:I

    iget v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLeftLayoutWidth:I

    add-int/2addr v9, v10

    if-lt v5, v9, :cond_2

    iget v9, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->x:I

    iget v10, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->width:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLeftLayoutWidth:I

    add-int/2addr v9, v10

    if-gt v5, v9, :cond_2

    iget v9, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->y:I

    iget v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mFragmentTitleHeight:I

    add-int/2addr v9, v10

    if-lt v6, v9, :cond_2

    iget v9, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->y:I

    iget v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->height:I

    add-int/2addr v0, v9

    iget v9, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mFragmentTitleHeight:I

    add-int/2addr v0, v9

    if-gt v6, v0, :cond_2

    .line 973
    iput v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    .line 979
    :cond_5
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMidWayStartPosition:I

    if-eq v0, v4, :cond_0

    .line 985
    iput-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAnimationOn:Z

    .line 987
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMidWayStartPosition:I

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveCount is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 989
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMidWayStartPosition:I

    .line 990
    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    .line 991
    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMidWayStartPosition:I

    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    if-le v5, v6, :cond_7

    :goto_2
    move v6, v0

    move v0, v4

    .line 993
    :goto_3
    if-lez v0, :cond_0

    .line 995
    add-int/lit8 v7, v0, -0x1

    .line 1013
    if-eqz v2, :cond_8

    .line 1014
    add-int/lit8 v0, v6, -0x1

    move v5, v0

    .line 1021
    :goto_4
    if-ltz v5, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_9

    if-ltz v6, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_9

    .line 1023
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    iget v4, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->x:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    iget v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->x:I

    sub-int/2addr v4, v0

    .line 1024
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    iget v8, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->y:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    iget v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->y:I

    sub-int v0, v8, v0

    .line 1030
    :goto_5
    const-string v8, "RejectCallWithMsgIconMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ====> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->findItem(I)Ljava/util/HashMap;

    move-result-object v8

    .line 1033
    if-eqz v8, :cond_a

    .line 1034
    const-string v9, "position"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    :goto_6
    int-to-float v4, v4

    int-to-float v0, v0

    invoke-virtual {p0, v4, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getMoveAnimation(FF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1041
    if-nez v7, :cond_6

    .line 1042
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastAnimationId:Ljava/lang/String;

    .line 1044
    const-wide/16 v8, 0xfa

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1045
    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1048
    :cond_6
    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1050
    if-eqz v2, :cond_b

    .line 1051
    add-int/lit8 v0, v6, -0x1

    :goto_7
    move v6, v0

    move v0, v7

    .line 1056
    goto/16 :goto_3

    :cond_7
    move v2, v3

    .line 991
    goto/16 :goto_2

    .line 1017
    :cond_8
    add-int/lit8 v0, v6, 0x1

    move v5, v0

    goto/16 :goto_4

    .line 1027
    :cond_9
    const-string v0, "RejectCallWithMsgIconMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERROR: start pos: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", drag pos: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    move v4, v3

    goto :goto_5

    .line 1037
    :cond_a
    const-string v8, "RejectCallWithMsgIconMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ERROR, item not found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1054
    :cond_b
    add-int/lit8 v0, v6, 0x1

    goto :goto_7
.end method

.method private refreshScreen()V
    .locals 1

    .prologue
    .line 787
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->changeGridViewParams()V

    .line 788
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 789
    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsDragViewDropped:Z

    if-nez v0, :cond_0

    .line 790
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->onDrop()V

    .line 796
    :goto_0
    return-void

    .line 793
    :cond_0
    const-string v0, "refreshScreen() notifyDataSetChanged()"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private startNewActivite(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1441
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 1442
    const-class v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p0, v0, p2, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 1463
    :cond_0
    :goto_0
    return-void

    .line 1444
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1445
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->findItem(I)Ljava/util/HashMap;

    move-result-object v1

    .line 1446
    if-nez v1, :cond_2

    .line 1447
    const-string v0, "RejectCallWithMsgIconMode"

    const-string v1, "ERROR: No Item Found!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1451
    :cond_2
    const-string v0, "iconId"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " , iconIndex: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 1453
    const-string v0, "title"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1454
    const-string v3, "message"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1456
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1457
    const-string v4, "iconId"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1458
    const-string v2, "title"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    const-string v0, "msgBody"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    const-class v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, p2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method private stopDrag()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1371
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1373
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1374
    iput-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    .line 1377
    :cond_0
    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastX:I

    .line 1378
    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastY:I

    .line 1379
    iput-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mInitLastXY:Z

    .line 1380
    return-void
.end method

.method private updateItemsIndex()V
    .locals 8

    .prologue
    .line 641
    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 642
    .local v5, size:I
    const/4 v2, 0x0

    .line 644
    .local v2, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 645
    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    check-cast v2, Ljava/util/HashMap;

    .line 646
    .restart local v2       #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v2, :cond_0

    .line 647
    const-string v6, "position"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 648
    .local v3, oldPos:I
    const-string v6, "position"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    const-string v6, "_id"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 650
    .local v1, id:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 651
    .local v4, selection:Ljava/lang/String;
    invoke-direct {p0, v3, v0, v4}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updateRejectMessagePosition(IILjava/lang/String;)V

    .line 644
    .end local v1           #id:I
    .end local v3           #oldPos:I
    .end local v4           #selection:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    :cond_1
    return-void
.end method

.method private updatePositionsInDb()V
    .locals 7

    .prologue
    .line 1418
    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOrigStartPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mOrigStartPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDragPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 1423
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mOrigStartPosition:I

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    if-ne v0, v1, :cond_1

    .line 1438
    :cond_0
    return-void

    .line 1427
    :cond_1
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mOrigStartPosition:I

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mOrigStartPosition:I

    move v1, v0

    .line 1428
    :goto_0
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mOrigStartPosition:I

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    if-ge v0, v2, :cond_4

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    move v2, v0

    .line 1429
    :goto_1
    const/4 v0, 0x0

    move v3, v0

    :goto_2
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 1430
    if-lt v3, v1, :cond_2

    if-gt v3, v2, :cond_2

    .line 1431
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->findItem(I)Ljava/util/HashMap;

    move-result-object v0

    .line 1432
    const-string v4, "_id"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1434
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", new position: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 1435
    invoke-direct {p0, v3, v4}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updateRejectMessagePositionById(ILjava/lang/String;)V

    .line 1429
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 1427
    :cond_3
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    move v1, v0

    goto :goto_0

    .line 1428
    :cond_4
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mOrigStartPosition:I

    move v2, v0

    goto :goto_1
.end method

.method private updateRejectMessage(ILandroid/content/ContentValues;)V
    .locals 4
    .parameter "position"
    .parameter "values"

    .prologue
    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_ICON_MODE_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 361
    return-void
.end method

.method private updateRejectMessagePosition(IILjava/lang/String;)V
    .locals 5
    .parameter "oldPos"
    .parameter "newPos"
    .parameter "selection"

    .prologue
    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, newSelection:Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRejectMessagePosition() newSelection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 372
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 373
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "position"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_ICON_MODE_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 375
    return-void

    .line 369
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateRejectMessagePositionById(ILjava/lang/String;)V
    .locals 4
    .parameter "newPos"
    .parameter "selection"

    .prologue
    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRejectMessagePositionById() selection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newPos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 379
    if-nez p2, :cond_0

    .line 380
    const-string v1, "RejectCallWithMsgIconMode"

    const-string v2, "ERROR, updateRejectMessagePositionById() selection is null!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_0
    return-void

    .line 383
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 384
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "position"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_ICON_MODE_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateViews(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 323
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, titleStr:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getUserDataCount()I

    move-result v1

    .line 328
    .local v1, userDataCount:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090846

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 337
    .end local v0           #titleStr:Ljava/lang/String;
    .end local v1           #userDataCount:I
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 335
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 1275
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1277
    const-string v0, "RejectCallWithMsgIconMode"

    const-string v1, "dispatchKeyEvent() ignore long press OK key, cancel OnItemLongClickListener!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1281
    :cond_0
    const/4 v0, 0x1

    .line 1283
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1296
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1297
    const/4 v0, 0x1

    .line 1299
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCheckStatus()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method public getCurrState()I
    .locals 1

    .prologue
    .line 1581
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getMoveAnimation(FF)Landroid/view/animation/Animation;
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 931
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 935
    .local v0, translateanimation:Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 936
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 937
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1467
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1469
    packed-switch p1, :pswitch_data_0

    .line 1574
    :cond_0
    :goto_0
    return-void

    .line 1471
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 1472
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1473
    if-nez v3, :cond_1

    .line 1474
    const-string v0, "RejectCallWithMsgIconMode"

    const-string v1, "Has not changed message!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1479
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1480
    const-string v0, "remind_time"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1481
    const-string v0, "icon_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1483
    const-string v0, "title"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1484
    if-eqz v0, :cond_b

    .line 1486
    const-string v2, "title"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1489
    :goto_1
    const-string v1, "msgBody"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1490
    if-eqz v1, :cond_2

    .line 1491
    or-int/lit8 v0, v0, 0x2

    .line 1492
    const-string v2, "reject_message"

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    :cond_2
    const-string v1, "iconId"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1496
    if-eqz v1, :cond_3

    .line 1497
    const-string v2, "icon_id"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1500
    :cond_3
    const-string v1, "edit_checked"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1502
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getUserDataCount()I

    move-result v0

    .line 1503
    const/4 v1, 0x6

    if-ge v0, v1, :cond_4

    .line 1504
    const-string v1, "position"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1507
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->insertRejectMessage(Landroid/content/ContentValues;)V

    .line 1509
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->initContents()V

    .line 1510
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updateViews(I)V

    .line 1511
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1512
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1517
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 1518
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1520
    if-nez v3, :cond_5

    .line 1521
    const-string v0, "RejectCallWithMsgIconMode"

    const-string v1, "Has not changed message!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1525
    :cond_5
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurEditPosition:I

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->findItem(I)Ljava/util/HashMap;

    move-result-object v4

    .line 1526
    if-nez v4, :cond_6

    .line 1527
    const-string v0, "RejectCallWithMsgIconMode"

    const-string v1, "No Item Found !!!!!!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1531
    :cond_6
    const-string v0, "edit"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1532
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Edit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 1535
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1537
    const-string v6, "title"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1538
    if-eqz v6, :cond_7

    .line 1540
    or-int/lit8 v0, v0, 0x1

    .line 1541
    const-string v2, "title"

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    const-string v2, "title"

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new title:  "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", edit: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    move v2, v1

    .line 1546
    :cond_7
    const-string v6, "msgBody"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1547
    if-eqz v6, :cond_a

    .line 1549
    or-int/lit8 v0, v0, 0x2

    .line 1550
    const-string v2, "reject_message"

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    const-string v2, "message"

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new body:  "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", edit: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 1555
    :goto_2
    const-string v2, "iconId"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 1556
    if-eqz v2, :cond_8

    .line 1557
    const-string v2, "iconId"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1558
    const-string v3, "icon_id"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new iconId:  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 1560
    const-string v3, "iconId"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    :cond_8
    if-eqz v1, :cond_9

    .line 1564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "editChecked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 1565
    const-string v1, "edit_checked"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1566
    const-string v1, "edit"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    :cond_9
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurEditPosition:I

    invoke-direct {p0, v0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updateRejectMessage(ILandroid/content/ContentValues;)V

    .line 1570
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_a
    move v1, v2

    goto :goto_2

    :cond_b
    move v0, v2

    goto/16 :goto_1

    .line 1469
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 508
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllLayout:Landroid/widget/LinearLayout;

    if-ne p1, v3, :cond_1

    .line 509
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 510
    .local v2, size:I
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    .line 511
    .local v0, checked:Z
    if-nez v0, :cond_2

    .line 512
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 513
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    :cond_0
    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I

    .line 523
    :goto_1
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    if-nez v0, :cond_4

    :goto_2
    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 524
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 525
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->notifyDataSetChanged()V

    .line 527
    .end local v0           #checked:Z
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_1
    return-void

    .line 518
    .restart local v0       #checked:Z
    .restart local v2       #size:I
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v2, :cond_3

    .line 519
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 521
    :cond_3
    iput v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I

    goto :goto_1

    :cond_4
    move v4, v5

    .line 523
    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 800
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 801
    const-string v0, "onConfigurationChanged()"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 803
    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAnimationOn:Z

    if-eqz v0, :cond_1

    .line 804
    const-string v0, "Animation is on, wait for animation stop."

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 806
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAnimationOn:Z

    if-nez v0, :cond_0

    .line 807
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->refreshScreen()V

    .line 815
    :goto_0
    return-void

    .line 813
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->refreshScreen()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 217
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 219
    const-string v1, "onCreate()"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 221
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 222
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 224
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->setHasOptionsMenu(Z)V

    .line 225
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getLayoutDimens()V

    .line 226
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowManager:Landroid/view/WindowManager;

    .line 229
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSinglePane:Z

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSinglePane: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSinglePane:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 232
    return-void

    .line 229
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "menuInflater"

    .prologue
    const v5, 0x7f020003

    const v7, 0x7f0902bb

    const/4 v6, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 534
    invoke-interface {p1, v2, v3, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 538
    const/4 v4, 0x2

    invoke-interface {p1, v2, v4, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 543
    const-string v4, "order_neg_pos_buttons"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 544
    .local v0, cancelOrder:I
    :goto_0
    const-string v4, "order_neg_pos_buttons"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 547
    .local v1, saveOrder:I
    :goto_1
    const/4 v4, 0x3

    const v5, 0x7f0902b8

    invoke-interface {p1, v2, v4, v0, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 552
    const/4 v4, 0x4

    const v5, 0x7f0902b8

    invoke-interface {p1, v2, v4, v0, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const/high16 v5, 0x7f02

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 558
    const/4 v4, 0x5

    invoke-interface {p1, v2, v4, v1, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 562
    invoke-interface {p1, v2, v6, v1, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020001

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 567
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 568
    return-void

    .end local v0           #cancelOrder:I
    .end local v1           #saveOrder:I
    :cond_0
    move v0, v3

    .line 543
    goto :goto_0

    .restart local v0       #cancelOrder:I
    :cond_1
    move v1, v2

    .line 544
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 237
    const v1, 0x7f040099

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 238
    .local v0, root:Landroid/view/View;
    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mViewRoot:Landroid/view/View;

    .line 240
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->initContents()V

    .line 241
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    .line 243
    const v1, 0x7f0a02b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    .line 244
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->changeGridViewParams()V

    .line 245
    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;-><init>(Landroid/app/Fragment;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    .line 246
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mRefreshDoneListener:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$RefreshDoneListener;

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->setRefreshScreenDoneListener(Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$RefreshScreenDoneListener;)V

    .line 248
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 249
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 250
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 252
    const v1, 0x7f0a0233

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllLayout:Landroid/widget/LinearLayout;

    .line 253
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 254
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v1, 0x7f0a0235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/view/View;

    .line 260
    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updateViews(I)V

    .line 262
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 456
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    .line 457
    const-string v0, "onDestroy()"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemClick() position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 1158
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-ne v0, v2, :cond_0

    .line 1159
    invoke-direct {p0, p2, p3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->changeStatusIcon(Landroid/view/View;I)V

    .line 1171
    :goto_0
    return-void

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1164
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->startNewActivite(II)V

    goto :goto_0

    .line 1167
    :cond_1
    iput p3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurEditPosition:I

    .line 1168
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->startNewActivite(II)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/high16 v9, 0x3f80

    const/4 v6, 0x1

    const v4, 0x3f8ccccd

    const/4 v1, 0x0

    .line 1177
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return v1

    .line 1181
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->isAddViewTouched(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1185
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    .line 1186
    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    .line 1187
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getStatusBarTitleHeight()V

    .line 1189
    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSinglePane:Z

    if-eqz v0, :cond_5

    .line 1190
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLeftLayoutWidth:I

    .line 1191
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mFragmentTitleHeight:I

    .line 1206
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLeftLayoutWidth is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLeftLayoutWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mFragmentTitleHeight is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mFragmentTitleHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 1209
    iput p3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mOrigStartPosition:I

    .line 1210
    iput p3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMidWayStartPosition:I

    .line 1211
    iput p3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start position is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mOrigStartPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 1214
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mOrigStartPosition:I

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->findItem(I)Ljava/util/HashMap;

    move-result-object v0

    .line 1215
    const-string v2, "position"

    const/16 v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsMotionDownTouched:Z

    .line 1218
    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsDragViewDropped:Z

    .line 1219
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getPositions()V

    .line 1221
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 1222
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    .line 1223
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 1224
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDrawingCacheBackgroundColor()I

    move-result v7

    .line 1225
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDrawingCacheBackgroundColor(I)V

    .line 1226
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1229
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1230
    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1233
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v8, v9, v4, v9, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 1234
    const-wide/16 v2, 0x64

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1236
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowMgrBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowMgrBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1237
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowMgrBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1239
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowMgrBitmap:Landroid/graphics/Bitmap;

    .line 1240
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1241
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1244
    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1246
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 1247
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setDrawingCacheBackgroundColor(I)V

    .line 1248
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    .line 1250
    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$3;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$3;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)V

    invoke-virtual {v8, v0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_4
    move v1, v6

    .line 1266
    goto/16 :goto_0

    .line 1195
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x1020441

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1198
    if-eqz v0, :cond_6

    .line 1199
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLeftLayoutWidth:I

    .line 1204
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e013d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mFragmentTitleHeight:I

    goto/16 :goto_1

    .line 1202
    :cond_6
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLeftLayoutWidth:I

    goto :goto_2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 483
    packed-switch p1, :pswitch_data_0

    .line 503
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 486
    :pswitch_0
    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 487
    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    .line 489
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 491
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    :cond_1
    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updateViews(I)V

    .line 494
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 495
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 661
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 662
    .local v2, itemId:I
    sparse-switch v2, :sswitch_data_0

    .line 759
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    :goto_0
    return v5

    .line 664
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->finish()V

    move v5, v6

    .line 665
    goto :goto_0

    .line 669
    :sswitch_1
    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-ne v5, v6, :cond_2

    .line 670
    iput v9, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    .line 671
    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updateViews(I)V

    .line 672
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    if-nez v5, :cond_0

    .line 673
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    .line 675
    :cond_0
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 676
    iput v8, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I

    .line 677
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/view/View;

    check-cast v5, Landroid/widget/Checkable;

    invoke-interface {v5, v8}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 680
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 681
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 683
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 684
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->notifyDataSetChanged()V

    :cond_2
    move v5, v6

    .line 686
    goto :goto_0

    .line 690
    :sswitch_2
    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-ne v5, v9, :cond_4

    .line 691
    iput v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    .line 692
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v10, :cond_3

    .line 694
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    :cond_3
    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updateViews(I)V

    .line 697
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 698
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 699
    iput v8, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I

    .line 700
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->notifyDataSetChanged()V

    :cond_4
    move v5, v6

    .line 702
    goto :goto_0

    .line 706
    :sswitch_3
    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-ne v5, v9, :cond_9

    .line 707
    iput v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    .line 709
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 710
    .local v4, size:I
    const/4 v3, 0x0

    .line 713
    .local v3, selectedCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_6

    .line 714
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 715
    add-int/lit8 v3, v3, 0x1

    .line 713
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 719
    :cond_6
    if-ne v3, v4, :cond_a

    .line 720
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 721
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->deleteAllRejectMessage()V

    .line 741
    :cond_7
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 742
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v10, :cond_8

    .line 744
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updateItemsIndex()V

    .line 748
    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updateViews(I)V

    .line 750
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 751
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->notifyDataSetChanged()V

    .end local v1           #i:I
    .end local v3           #selectedCount:I
    .end local v4           #size:I
    :cond_9
    move v5, v6

    .line 753
    goto/16 :goto_0

    .line 724
    .restart local v1       #i:I
    .restart local v3       #selectedCount:I
    .restart local v4       #size:I
    :cond_a
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_7

    .line 725
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 727
    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->findItem(I)Ljava/util/HashMap;

    move-result-object v0

    .line 728
    .local v0, contentItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v0, :cond_b

    .line 729
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 732
    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->deleteRejectMessage(I)V

    .line 724
    .end local v0           #contentItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 662
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_3
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 462
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    .line 463
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 583
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->hasUserDataExceptAddIcon()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 584
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-eq v1, v5, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 586
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->hasUserDataExceptAddIcon()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 587
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-eq v1, v5, :cond_2

    move v1, v2

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 589
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->isLandscape()Z

    move-result v0

    .line 591
    .local v0, isLand:Z
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 592
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-ne v1, v5, :cond_3

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 593
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I

    if-lez v1, :cond_4

    move v1, v2

    :goto_3
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 594
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-ne v1, v5, :cond_5

    move v1, v2

    :goto_4
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 596
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 597
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 617
    :goto_5
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_e

    .line 618
    :cond_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 623
    :goto_6
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 624
    return-void

    .end local v0           #isLand:Z
    :cond_1
    move v1, v3

    .line 584
    goto :goto_0

    :cond_2
    move v1, v3

    .line 587
    goto :goto_1

    .restart local v0       #isLand:Z
    :cond_3
    move v1, v3

    .line 592
    goto :goto_2

    :cond_4
    move v1, v3

    .line 593
    goto :goto_3

    :cond_5
    move v1, v3

    .line 594
    goto :goto_4

    .line 599
    :cond_6
    if-eqz v0, :cond_a

    .line 600
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-ne v1, v5, :cond_7

    move v1, v2

    :goto_7
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 601
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 603
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-ne v1, v5, :cond_8

    move v1, v2

    :goto_8
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 604
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I

    if-lez v1, :cond_9

    move v1, v2

    :goto_9
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 605
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    :cond_7
    move v1, v3

    .line 600
    goto :goto_7

    :cond_8
    move v1, v3

    .line 603
    goto :goto_8

    :cond_9
    move v1, v3

    .line 604
    goto :goto_9

    .line 608
    :cond_a
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 609
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-ne v1, v5, :cond_b

    move v1, v2

    :goto_a
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 611
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-ne v1, v5, :cond_c

    move v1, v2

    :goto_b
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 612
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I

    if-lez v1, :cond_d

    move v1, v2

    :goto_c
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 613
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    :cond_b
    move v1, v3

    .line 609
    goto :goto_a

    :cond_c
    move v1, v3

    .line 611
    goto :goto_b

    :cond_d
    move v1, v3

    .line 612
    goto :goto_c

    .line 620
    :cond_e
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 467
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 468
    const-string v0, "onResume()"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 473
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStart()V

    .line 474
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 478
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStop()V

    .line 479
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x3f80

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1304
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1307
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 1308
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 1309
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    .line 1310
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    .line 1313
    if-eqz v2, :cond_0

    const/4 v7, 0x2

    if-ne v2, v7, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->isTouchOnDragView(Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1367
    :goto_0
    return v1

    .line 1320
    :cond_1
    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_1
    move v1, v0

    .line 1367
    goto :goto_0

    .line 1323
    :pswitch_0
    iput v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastX:I

    .line 1324
    iput v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastY:I

    .line 1325
    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mInitLastXY:Z

    .line 1326
    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsMotionDownTouched:Z

    .line 1327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_DOWN mLastX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 1328
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getDragViewPos()Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    goto :goto_1

    .line 1332
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mInitLastXY:Z

    if-nez v1, :cond_2

    .line 1333
    iput v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastX:I

    .line 1334
    iput v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastY:I

    .line 1335
    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mInitLastXY:Z

    .line 1337
    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1338
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastX:I

    sub-int v2, v5, v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    iget-boolean v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsMotionDownTouched:Z

    invoke-direct {p0, v3, v4}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItemViewLeft(Landroid/view/ViewGroup;Z)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLeftLayoutWidth:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1339
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastY:I

    sub-int v2, v6, v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    iget-boolean v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsMotionDownTouched:Z

    invoke-direct {p0, v3, v4}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItemViewTop(Landroid/view/ViewGroup;Z)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mFragmentTitleHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1340
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1342
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->onMove()V

    goto :goto_1

    .line 1348
    :pswitch_2
    const-string v2, "ACTION_UP"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    .line 1349
    iget-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mInitLastXY:Z

    if-nez v2, :cond_3

    .line 1350
    iput v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastX:I

    .line 1351
    iput v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastY:I

    .line 1352
    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mInitLastXY:Z

    .line 1354
    :cond_3
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1355
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastX:I

    sub-int v3, v5, v3

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    iget-boolean v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsMotionDownTouched:Z

    invoke-direct {p0, v4, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItemViewLeft(Landroid/view/ViewGroup;Z)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLeftLayoutWidth:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1356
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastY:I

    sub-int v3, v6, v3

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    iget-boolean v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsMotionDownTouched:Z

    invoke-direct {p0, v4, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItemViewTop(Landroid/view/ViewGroup;Z)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mFragmentTitleHeight:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1357
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1359
    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsMotionDownTouched:Z

    .line 1361
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->onDrop()V

    goto/16 :goto_1

    .line 1320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
