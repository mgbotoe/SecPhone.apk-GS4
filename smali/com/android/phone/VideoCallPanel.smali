.class public Lcom/android/phone/VideoCallPanel;
.super Landroid/widget/RelativeLayout;
.source "VideoCallPanel.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/VideoCallPanel$10;,
        Lcom/android/phone/VideoCallPanel$CameraPreviewDragShadowBuilder;,
        Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;,
        Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;,
        Lcom/android/phone/VideoCallPanel$ZoomChangeListener;
    }
.end annotation


# static fields
.field private static mLongPressMenuEnabled:Z

.field private static mLongPressMoveCount:I

.field private static mXMoveStart:I

.field private static mYMoveStart:I

.field private static sMe:Lcom/android/phone/VideoCallPanel;


# instance fields
.field private INTENT_ACTION_MAIN:Ljava/lang/String;

.field private cameraEngine:Lcom/android/phone/CameraEngine;

.field private frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private isBigSurfacePressed:Z

.field private isBigSurfaceReleased:Z

.field private isSPenMoved:Z

.field private isSmallSurfacePressed:Z

.field private isSmallSurfaceReleased:Z

.field private isSurfaceSwaped:Z

.field private mBackCameraId:I

.field private mCameraId:I

.field private mCameraInitialized:Z

.field private mCameraPicker:Landroid/widget/ImageView;

.field private mCameraPreview:Landroid/view/TextureView;

.field private mCameraSurface:Landroid/graphics/SurfaceTexture;

.field private mCameraViewAlternativeImageItems:[Ljava/lang/String;

.field private mCameraViewDefaultImageItem:[Ljava/lang/String;

.field private mCameraViewItems:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mContextMenuStrArrayId:[Ljava/lang/String;

.field private mCurrPtX:F

.field private mCurrPtY:F

.field mCurrentOrientation:I

.field private mDensity:F

.field private mFarEndAnimator:Landroid/widget/ImageView;

.field private mFarEndSurface:Landroid/graphics/SurfaceTexture;

.field private mFarEndView:Landroid/view/TextureView;

.field mFarEndviewHeight:I

.field mFarEndviewMarginBottom:I

.field mFarEndviewQCIFHeight:I

.field mFarEndviewQCIFMarginLeft:I

.field mFarEndviewQCIFMarginTop:I

.field mFarEndviewQCIFWidth:I

.field mFarEndviewWidth:I

.field private mFrontCameraId:I

.field private mHandler:Landroid/os/Handler;

.field private mHideMeImage:Landroid/widget/ImageView;

.field mIncomingPreviewMarginTop:I

.field private mIsMediaLoopback:Z

.field private mIsPreparingDisplayAnim:Z

.field private mIsVtQcifDialerOpened:Z

.field private mMenuDialog:Landroid/app/AlertDialog;

.field private mNearEndAnimator:Landroid/widget/ImageView;

.field private mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreparingDisplayImageView:Landroid/widget/ImageView;

.field private mPreparingImageAnimator:Landroid/widget/RelativeLayout;

.field private mPrevPtX:F

.field private mPrevPtY:F

.field mPreviewHeight:I

.field mPreviewIncomingHeight:I

.field mPreviewIncomingWidth:I

.field mPreviewMarginBottom:I

.field mPreviewMarginLeft:I

.field mPreviewOutgoingHeight:I

.field mPreviewOutgoingWidth:I

.field mPreviewQCIFHeight:I

.field mPreviewQCIFMarginBottom:I

.field mPreviewQCIFMarginLeft:I

.field mPreviewQCIFWidth:I

.field mPreviewWidth:I

.field private mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

.field private mSwitchedViewAnimator:Landroid/view/ViewPropertyAnimator;

.field private mTextBitrate:Landroid/widget/TextView;

.field private mVideoCallManager:Lcom/android/phone/VideoCallManager;

.field private mVideoCallPanel:Landroid/view/ViewGroup;

.field private mVideoViewItems:[Ljava/lang/String;

.field private mZoomControl:Lcom/android/phone/ZoomControlBar;

.field private mZoomMax:I

.field private mZoomValue:I

.field private prepareVideoText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    sput v0, Lcom/android/phone/VideoCallPanel;->mLongPressMoveCount:I

    .line 151
    sput v0, Lcom/android/phone/VideoCallPanel;->mXMoveStart:I

    .line 152
    sput v0, Lcom/android/phone/VideoCallPanel;->mYMoveStart:I

    .line 153
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/VideoCallPanel;->mLongPressMenuEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const v4, 0x7f0e0021

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 408
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 118
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSurfaceSwaped:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraInitialized:Z

    .line 137
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfacePressed:Z

    .line 138
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfacePressed:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfaceReleased:Z

    .line 140
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfaceReleased:Z

    .line 142
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsVtQcifDialerOpened:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsPreparingDisplayAnim:Z

    .line 144
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSPenMoved:Z

    .line 145
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtX:F

    .line 146
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtY:F

    .line 147
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mPrevPtX:F

    .line 148
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mPrevPtY:F

    .line 155
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    .line 163
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    .line 164
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoViewItems:[Ljava/lang/String;

    .line 165
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewItems:[Ljava/lang/String;

    .line 166
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewAlternativeImageItems:[Ljava/lang/String;

    .line 167
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewDefaultImageItem:[Ljava/lang/String;

    .line 168
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewWidth:I

    .line 178
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewHeight:I

    .line 179
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginBottom:I

    .line 182
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginLeft:I

    .line 184
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingWidth:I

    .line 185
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingHeight:I

    .line 186
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingWidth:I

    .line 187
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingHeight:I

    .line 189
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFWidth:I

    .line 190
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFHeight:I

    .line 191
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginBottom:I

    .line 192
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginLeft:I

    .line 194
    iput v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    .line 195
    iput v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    .line 196
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewMarginBottom:I

    .line 198
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFWidth:I

    .line 199
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFHeight:I

    .line 200
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    .line 201
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginLeft:I

    .line 203
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mIncomingPreviewMarginTop:I

    .line 205
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->cameraEngine:Lcom/android/phone/CameraEngine;

    .line 208
    const-string v0, "com.lguplus.mediashare.action.main"

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->INTENT_ACTION_MAIN:Ljava/lang/String;

    .line 227
    new-instance v0, Lcom/android/phone/VideoCallPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/VideoCallPanel$1;-><init>(Lcom/android/phone/VideoCallPanel;)V

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    .line 2063
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSwitchedViewAnimator:Landroid/view/ViewPropertyAnimator;

    .line 409
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    .line 410
    sput-object p0, Lcom/android/phone/VideoCallPanel;->sMe:Lcom/android/phone/VideoCallPanel;

    .line 411
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v4, 0x7f0e0021

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 414
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSurfaceSwaped:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraInitialized:Z

    .line 137
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfacePressed:Z

    .line 138
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfacePressed:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfaceReleased:Z

    .line 140
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfaceReleased:Z

    .line 142
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsVtQcifDialerOpened:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsPreparingDisplayAnim:Z

    .line 144
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSPenMoved:Z

    .line 145
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtX:F

    .line 146
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtY:F

    .line 147
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mPrevPtX:F

    .line 148
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mPrevPtY:F

    .line 155
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    .line 163
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    .line 164
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoViewItems:[Ljava/lang/String;

    .line 165
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewItems:[Ljava/lang/String;

    .line 166
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewAlternativeImageItems:[Ljava/lang/String;

    .line 167
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewDefaultImageItem:[Ljava/lang/String;

    .line 168
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewWidth:I

    .line 178
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewHeight:I

    .line 179
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginBottom:I

    .line 182
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginLeft:I

    .line 184
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingWidth:I

    .line 185
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingHeight:I

    .line 186
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingWidth:I

    .line 187
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingHeight:I

    .line 189
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFWidth:I

    .line 190
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFHeight:I

    .line 191
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginBottom:I

    .line 192
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginLeft:I

    .line 194
    iput v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    .line 195
    iput v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    .line 196
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewMarginBottom:I

    .line 198
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFWidth:I

    .line 199
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFHeight:I

    .line 200
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    .line 201
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginLeft:I

    .line 203
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mIncomingPreviewMarginTop:I

    .line 205
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->cameraEngine:Lcom/android/phone/CameraEngine;

    .line 208
    const-string v0, "com.lguplus.mediashare.action.main"

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->INTENT_ACTION_MAIN:Ljava/lang/String;

    .line 227
    new-instance v0, Lcom/android/phone/VideoCallPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/VideoCallPanel$1;-><init>(Lcom/android/phone/VideoCallPanel;)V

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    .line 2063
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSwitchedViewAnimator:Landroid/view/ViewPropertyAnimator;

    .line 415
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    .line 416
    sput-object p0, Lcom/android/phone/VideoCallPanel;->sMe:Lcom/android/phone/VideoCallPanel;

    .line 417
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v4, 0x7f0e0021

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 420
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSurfaceSwaped:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraInitialized:Z

    .line 137
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfacePressed:Z

    .line 138
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfacePressed:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfaceReleased:Z

    .line 140
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfaceReleased:Z

    .line 142
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsVtQcifDialerOpened:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsPreparingDisplayAnim:Z

    .line 144
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSPenMoved:Z

    .line 145
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtX:F

    .line 146
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtY:F

    .line 147
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mPrevPtX:F

    .line 148
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mPrevPtY:F

    .line 155
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    .line 163
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    .line 164
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoViewItems:[Ljava/lang/String;

    .line 165
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewItems:[Ljava/lang/String;

    .line 166
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewAlternativeImageItems:[Ljava/lang/String;

    .line 167
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewDefaultImageItem:[Ljava/lang/String;

    .line 168
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewWidth:I

    .line 178
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewHeight:I

    .line 179
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginBottom:I

    .line 182
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginLeft:I

    .line 184
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingWidth:I

    .line 185
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingHeight:I

    .line 186
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingWidth:I

    .line 187
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingHeight:I

    .line 189
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFWidth:I

    .line 190
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFHeight:I

    .line 191
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginBottom:I

    .line 192
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginLeft:I

    .line 194
    iput v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    .line 195
    iput v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    .line 196
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewMarginBottom:I

    .line 198
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFWidth:I

    .line 199
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFHeight:I

    .line 200
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    .line 201
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginLeft:I

    .line 203
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mIncomingPreviewMarginTop:I

    .line 205
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->cameraEngine:Lcom/android/phone/CameraEngine;

    .line 208
    const-string v0, "com.lguplus.mediashare.action.main"

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->INTENT_ACTION_MAIN:Ljava/lang/String;

    .line 227
    new-instance v0, Lcom/android/phone/VideoCallPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/VideoCallPanel$1;-><init>(Lcom/android/phone/VideoCallPanel;)V

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    .line 2063
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSwitchedViewAnimator:Landroid/view/ViewPropertyAnimator;

    .line 421
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    .line 422
    sput-object p0, Lcom/android/phone/VideoCallPanel;->sMe:Lcom/android/phone/VideoCallPanel;

    .line 423
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/VideoCallPanel;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/VideoCallPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->swipeVideoSurfaces()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/VideoCallPanel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallPanel;->dialogMenuSelected(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/VideoCallPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->dismissMenuDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/VideoCallPanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mNearEndAnimator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/VideoCallPanel;Landroid/view/View;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/VideoCallPanel;->startViewAnimation(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/VideoCallPanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndAnimator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/VideoCallPanel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/VideoCallPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->hidePreparingDisplayAnim()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/VideoCallPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->updateVtIncallButton()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/VideoCallPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->handleCameraStartFail()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/VideoCallPanel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallPanel;->onZoomValueChanged(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    return-object v0
.end method

.method private checkStorageMemorySpace(Z)Z
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1838
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1839
    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1840
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1841
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    .line 1842
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v6, v2

    .line 1843
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    .line 1844
    mul-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    .line 1845
    const-string v4, "VideoCallPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Memory Size Avialable is in Kb : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    if-eqz p1, :cond_2

    .line 1847
    const-wide/16 v4, 0x3c

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1857
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1851
    goto :goto_0

    .line 1854
    :cond_2
    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    .line 1857
    goto :goto_0
.end method

.method private createTextureViews()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xb

    const/4 v6, 0x2

    const/16 v5, 0xa

    const/16 v4, 0x9

    .line 593
    const-string v2, "createTextureViews()"

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 595
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 597
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    .line 598
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    .line 603
    :cond_0
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    if-nez v2, :cond_1

    .line 604
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 605
    .local v1, farEndViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-ne v2, v6, :cond_4

    .line 606
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 607
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 608
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 609
    const/16 v2, 0xe

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 618
    :goto_0
    new-instance v2, Landroid/view/TextureView;

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    .line 619
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setVisibility(I)V

    .line 620
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 622
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 623
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    new-instance v3, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;

    invoke-direct {v3, p0, v8}, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;-><init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 625
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    .line 626
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 630
    .end local v1           #farEndViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    if-nez v2, :cond_2

    .line 631
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mPreviewWidth:I

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mPreviewHeight:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 632
    .local v0, cameraViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-ne v2, v6, :cond_5

    .line 633
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 634
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 639
    :goto_1
    new-instance v2, Landroid/view/TextureView;

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    .line 640
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 642
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 643
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    new-instance v3, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;

    invoke-direct {v3, p0, v8}, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;-><init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 645
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    .line 646
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 649
    .end local v0           #cameraViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    return-void

    .line 611
    .restart local v1       #farEndViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 612
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_0

    .line 615
    :cond_4
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 616
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_0

    .line 636
    .end local v1           #farEndViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v0       #cameraViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 637
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1
.end method

.method private destroyTextureViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 652
    const-string v0, "destroyTextureViews()"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 664
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 665
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 666
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 667
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    .line 670
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    if-eqz v0, :cond_3

    .line 671
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 672
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 673
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 674
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    .line 676
    :cond_3
    return-void
.end method

.method private dialogMenuSelected(I)V
    .locals 4
    .parameter

    .prologue
    .line 1810
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1811
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 1813
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialogMenuSelected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1815
    aget-object v2, v1, p1

    const v3, 0x7f0903e7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1816
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/VideoCallPanel;->captureSurfaceImage(Z)V

    .line 1827
    :cond_0
    :goto_0
    return-void

    .line 1817
    :cond_1
    aget-object v2, v1, p1

    const v3, 0x7f090441

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1818
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/VideoCallPanel;->captureSurfaceImage(Z)V

    goto :goto_0

    .line 1819
    :cond_2
    aget-object v2, v1, p1

    const v3, 0x7f0903f5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1820
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/InVTCallState;->mCapturedLocalFile:Ljava/lang/String;

    .line 1821
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->sendStillImage()V

    goto :goto_0

    .line 1822
    :cond_3
    aget-object v2, v1, p1

    const v3, 0x7f0903e9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1823
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->onClickSwitchCamera()V

    goto :goto_0

    .line 1824
    :cond_4
    aget-object v1, v1, p1

    const v2, 0x7f0903f0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1825
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->showAlternativeImageDialog()V

    goto :goto_0
.end method

.method private dismissMenuDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1740
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1741
    const-string v0, "dismissMenuDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1742
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1743
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1744
    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    .line 1746
    :cond_0
    return-void
.end method

.method private fillArrays()V
    .locals 7

    .prologue
    const v6, 0x7f0903f5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1720
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1721
    new-array v1, v4, [Ljava/lang/String;

    const v2, 0x7f0903e7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoViewItems:[Ljava/lang/String;

    .line 1722
    new-array v1, v5, [Ljava/lang/String;

    const v2, 0x7f0903e9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0903f0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewItems:[Ljava/lang/String;

    .line 1723
    new-array v1, v5, [Ljava/lang/String;

    const v2, 0x7f090441

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewAlternativeImageItems:[Ljava/lang/String;

    .line 1724
    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewDefaultImageItem:[Ljava/lang/String;

    .line 1725
    return-void
.end method

.method static getInstance()Lcom/android/phone/VideoCallPanel;
    .locals 1

    .prologue
    .line 426
    sget-object v0, Lcom/android/phone/VideoCallPanel;->sMe:Lcom/android/phone/VideoCallPanel;

    return-object v0
.end method

.method private handleCameraStartFail()V
    .locals 3

    .prologue
    .line 1830
    const-string v0, "handleCameraStartFail..."

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1831
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isCameraRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1832
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090523

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1834
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->sendStillImage()V

    .line 1835
    return-void
.end method

.method private hidePreparingDisplayAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 2111
    const-string v0, "hidePreparingDisplayAnim"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 2112
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 2113
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 2114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 2117
    :cond_0
    iput-boolean v2, p0, Lcom/android/phone/VideoCallPanel;->mIsPreparingDisplayAnim:Z

    .line 2118
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->prepareVideoText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2119
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mPreparingDisplayImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2120
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mPreparingImageAnimator:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2121
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mPreparingImageAnimator:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2122
    return-void
.end method

.method private initializeCameraParams()V
    .locals 3

    .prologue
    .line 1171
    :try_start_0
    iget-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    if-eqz v0, :cond_1

    .line 1174
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v1, 0xb0

    const/16 v2, 0x90

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1185
    :goto_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1192
    :cond_0
    :goto_1
    return-void

    .line 1176
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supported Preview Sizes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Preview Size directly with negotiated Height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getNegotiatedHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " negotiated width= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getNegotiatedWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1180
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getNegotiatedWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v2}, Lcom/android/phone/VideoCallManager;->getNegotiatedHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1182
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->setFpsRange()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1186
    :catch_0
    move-exception v0

    .line 1187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting Camera preview size/fps exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1188
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supported Preview sizes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private initializeZoom()V
    .locals 3

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1130
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 1131
    const-string v0, "initializeZoom, mParameters == null"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1146
    :goto_0
    return-void

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1135
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControlBar;->setVisibility(I)V

    goto :goto_0

    .line 1139
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControlBar;->setVisibility(I)V

    .line 1140
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomMax:I

    .line 1143
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControlBar;->setZoomMax(I)V

    .line 1144
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControlBar;->setZoomIndex(I)V

    .line 1145
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    new-instance v1, Lcom/android/phone/VideoCallPanel$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/VideoCallPanel$ZoomChangeListener;-><init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControlBar;->setOnZoomChangeListener(Lcom/android/phone/ZoomControl$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 2171
    const-string v0, "VideoCallPanel"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 2175
    const-string v0, "VideoCallPanel"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    return-void
.end method

.method private onZoomValueChanged(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1155
    iput p1, p0, Lcom/android/phone/VideoCallPanel;->mZoomValue:I

    .line 1158
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1160
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1162
    :cond_0
    return-void
.end method

.method private openCamera(I)Z
    .locals 4
    .parameter "cameraId"

    .prologue
    .line 840
    const/4 v1, 0x0

    .line 843
    .local v1, result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v2, p1}, Lcom/android/phone/VideoCallManager;->openCamera(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 846
    .end local v1           #result:Z
    :goto_0
    return v1

    .line 844
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 845
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open camera device, error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetArrays()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1728
    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoViewItems:[Ljava/lang/String;

    .line 1729
    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewItems:[Ljava/lang/String;

    .line 1730
    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewAlternativeImageItems:[Ljava/lang/String;

    .line 1731
    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewDefaultImageItem:[Ljava/lang/String;

    .line 1732
    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 1733
    return-void
.end method

.method private resetCameraDirection()V
    .locals 2

    .prologue
    .line 1581
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mFrontCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1582
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mFrontCameraId:I

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraId:I

    .line 1586
    :goto_0
    return-void

    .line 1584
    :cond_0
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mBackCameraId:I

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraId:I

    goto :goto_0
.end method

.method private resizeCameraPreview(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0xb

    const/16 v7, 0xa

    const/16 v4, 0x9

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 1243
    const-string v0, "resizeCameraPreview"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera view width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1247
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1248
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1249
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1250
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1251
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1254
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 1256
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1257
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1259
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1261
    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQVGAVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1262
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1263
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1269
    :goto_1
    iget-boolean v3, p0, Lcom/android/phone/VideoCallPanel;->isSurfaceSwaped:Z

    if-nez v3, :cond_f

    .line 1270
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-ne v3, v5, :cond_4

    .line 1271
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1272
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1277
    :goto_2
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1278
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_5

    .line 1279
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginBottom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1280
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginLeft:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1282
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-ne v1, v5, :cond_2

    .line 1283
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1284
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1353
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1354
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mNearEndAnimator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1265
    :cond_3
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1266
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 1274
    :cond_4
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1275
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 1287
    :cond_5
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewMarginBottom:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1288
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1290
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1291
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-ne v3, v5, :cond_9

    .line 1292
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1293
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1294
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1295
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    .line 1297
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1298
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    .line 1300
    :cond_7
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1301
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1302
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_3

    .line 1304
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1305
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_3

    .line 1308
    :cond_9
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1309
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1310
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1311
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_3

    .line 1313
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1314
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_3

    .line 1321
    :cond_b
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-ne v3, v5, :cond_e

    .line 1322
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1323
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1324
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_3

    .line 1326
    :cond_d
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1327
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginLeft:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_3

    .line 1330
    :cond_e
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginBottom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1331
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginLeft:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1332
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_3

    .line 1336
    :cond_f
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-ne v2, v5, :cond_10

    .line 1337
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1338
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1343
    :goto_4
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1344
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewMarginBottom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1345
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_3

    .line 1340
    :cond_10
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1341
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_4

    .line 1347
    :cond_11
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1348
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginLeft:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1349
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_3
.end method

.method private resizeFarEndView(II)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0xb

    const/16 v5, 0x9

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 1366
    const-string v0, "resizeFarEndView"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Videocall pandel width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1370
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1371
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1372
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1373
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1374
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1436
    :cond_0
    :goto_0
    return-void

    .line 1377
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 1379
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1381
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1382
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1383
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1385
    iget-boolean v2, p0, Lcom/android/phone/VideoCallPanel;->isSurfaceSwaped:Z

    if-nez v2, :cond_5

    .line 1386
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-ne v2, v3, :cond_3

    .line 1387
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1388
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1389
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1390
    const/16 v2, 0xe

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1399
    :goto_1
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1400
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1401
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewMarginBottom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1402
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1432
    :goto_2
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1433
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndAnimator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1434
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mPreparingImageAnimator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1392
    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1393
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 1396
    :cond_3
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1397
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_1

    .line 1404
    :cond_4
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1405
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginLeft:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1406
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_2

    .line 1409
    :cond_5
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-ne v2, v3, :cond_6

    .line 1410
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1411
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1416
    :goto_3
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1417
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginBottom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1418
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginLeft:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    .line 1413
    :cond_6
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1414
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3

    .line 1420
    :cond_7
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-ne v1, v3, :cond_8

    .line 1421
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1422
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginLeft:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1423
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_2

    .line 1425
    :cond_8
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginBottom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1426
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginLeft:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1427
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2
.end method

.method private setIncomingHideMeImageLayout(ZLjava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0201df

    const/4 v5, 0x0

    .line 1450
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1451
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1452
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1453
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1454
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1456
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 1457
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 1458
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 1460
    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1462
    if-eqz p1, :cond_0

    .line 1463
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 1480
    :goto_0
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1488
    :goto_1
    return-void

    .line 1465
    :cond_0
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    const v2, 0x7f020285

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1467
    :cond_1
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1468
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1470
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 1471
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 1472
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 1474
    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1475
    if-eqz p1, :cond_2

    .line 1476
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 1478
    :cond_2
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1483
    :cond_3
    if-eqz p1, :cond_4

    .line 1484
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_1

    .line 1486
    :cond_4
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private showMemoryFullDialog()V
    .locals 3

    .prologue
    .line 1780
    const-string v0, "showMemoryFullDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1782
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->dismissMenuDialog()V

    .line 1784
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09041a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090419

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1787
    const v1, 0x7f090416

    new-instance v2, Lcom/android/phone/VideoCallPanel$6;

    invoke-direct {v2, p0}, Lcom/android/phone/VideoCallPanel$6;-><init>(Lcom/android/phone/VideoCallPanel;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1794
    const v1, 0x7f0901d7

    new-instance v2, Lcom/android/phone/VideoCallPanel$7;

    invoke-direct {v2, p0}, Lcom/android/phone/VideoCallPanel$7;-><init>(Lcom/android/phone/VideoCallPanel;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1799
    new-instance v1, Lcom/android/phone/VideoCallPanel$8;

    invoke-direct {v1, p0}, Lcom/android/phone/VideoCallPanel$8;-><init>(Lcom/android/phone/VideoCallPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1805
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    .line 1806
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1807
    return-void
.end method

.method private showMenuDialog(I[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1749
    const-string v0, "showMenuDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1751
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->dismissMenuDialog()V

    .line 1753
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1755
    new-instance v1, Lcom/android/phone/VideoCallPanel$3;

    invoke-direct {v1, p0}, Lcom/android/phone/VideoCallPanel$3;-><init>(Lcom/android/phone/VideoCallPanel;)V

    invoke-virtual {v0, p2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1761
    const v1, 0x7f090024

    new-instance v2, Lcom/android/phone/VideoCallPanel$4;

    invoke-direct {v2, p0}, Lcom/android/phone/VideoCallPanel$4;-><init>(Lcom/android/phone/VideoCallPanel;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1766
    new-instance v1, Lcom/android/phone/VideoCallPanel$5;

    invoke-direct {v1, p0}, Lcom/android/phone/VideoCallPanel$5;-><init>(Lcom/android/phone/VideoCallPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1772
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    .line 1774
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1775
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1776
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1777
    return-void
.end method

.method private showPreparingDisplayAnim()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2098
    const-string v0, "showPreparingDisplayAnim"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 2099
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallState;->mIsFarFrameReady:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsPreparingDisplayAnim:Z

    if-nez v0, :cond_0

    .line 2100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsPreparingDisplayAnim:Z

    .line 2101
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mPreparingDisplayImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2102
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->prepareVideoText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2103
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mPreparingImageAnimator:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2104
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mPreparingImageAnimator:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2105
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mPreparingDisplayImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 2106
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 2108
    :cond_0
    return-void
.end method

.method private showVS(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1608
    const-string v0, "Show video share ui"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1610
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1612
    const-string v0, "Video Share type : CALL_TYPE_VS_TX"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1614
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1615
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v0

    sget-object v1, Lcom/samsung/commonimsinterface/imscommon/CameraState;->CAMERA_CLOSED:Lcom/samsung/commonimsinterface/imscommon/CameraState;

    if-eq v0, v1, :cond_1

    .line 1616
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraDirection()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1617
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mBackCameraId:I

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->switchCamera(I)V

    .line 1619
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1621
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1622
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v1, v0}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    .line 1633
    :cond_1
    :goto_0
    return-void

    .line 1624
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1626
    const-string v0, "Video Share type : CALL_TYPE_VS_RX"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1628
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1629
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 1630
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V

    .line 1631
    :cond_3
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showVT()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1637
    const-string v0, "Show video telephony ui"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1639
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallState;->mIsFarFrameReady:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1640
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->hidePreparingDisplayAnim()V

    .line 1644
    :goto_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1646
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1647
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 1648
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V

    .line 1651
    :cond_1
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1652
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->updateSurfaceViewLayout()V

    .line 1658
    :goto_1
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1659
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1661
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsVtQcifDialerOpened:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSurfaceSwaped:Z

    if-nez v0, :cond_6

    .line 1662
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->swipeVideoSurfaces()V

    .line 1663
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsVtQcifDialerOpened:Z

    .line 1672
    :cond_2
    :goto_2
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1673
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1674
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v0

    .line 1675
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->isDirectConfCall()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraInitialized:Z

    if-eqz v0, :cond_3

    .line 1676
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1687
    :cond_3
    :goto_3
    return-void

    .line 1642
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->showPreparingDisplayAnim()V

    goto/16 :goto_0

    .line 1654
    :cond_5
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    .line 1655
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    goto/16 :goto_1

    .line 1664
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsVtQcifDialerOpened:Z

    if-eqz v0, :cond_2

    .line 1665
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->swipeVideoSurfaces()V

    .line 1666
    iput-boolean v2, p0, Lcom/android/phone/VideoCallPanel;->mIsVtQcifDialerOpened:Z

    goto :goto_2

    .line 1669
    :cond_7
    iput-boolean v2, p0, Lcom/android/phone/VideoCallPanel;->mIsVtQcifDialerOpened:Z

    goto :goto_2

    .line 1680
    :cond_8
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1681
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setVisibility(I)V

    goto :goto_3

    .line 1685
    :cond_9
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    goto :goto_3
.end method

.method private startPreview()V
    .locals 3

    .prologue
    .line 855
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Lcom/android/phone/VideoCallManager;->startCameraPreview(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :goto_0
    return-void

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, re:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->closeCamera()V

    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while setting preview texture, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startViewAnimation(Landroid/view/View;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2066
    if-eqz p1, :cond_0

    .line 2067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startViewAnimation. alpha value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 2068
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSwitchedViewAnimator:Landroid/view/ViewPropertyAnimator;

    .line 2069
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSwitchedViewAnimator:Landroid/view/ViewPropertyAnimator;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2070
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSwitchedViewAnimator:Landroid/view/ViewPropertyAnimator;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 2071
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSwitchedViewAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2075
    :goto_0
    return-void

    .line 2073
    :cond_0
    const-string v0, "startViewAnimation..View is NULL"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private swapVideoSurface(Z)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x320

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, -0x100

    .line 1951
    const-string v0, "swapVideoSurface"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1952
    if-eqz p1, :cond_0

    .line 1953
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mNearEndAnimator:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1954
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndAnimator:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1955
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mNearEndAnimator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1956
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndAnimator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1957
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mNearEndAnimator:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4, v5}, Lcom/android/phone/VideoCallPanel;->startViewAnimation(Landroid/view/View;II)V

    .line 1958
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndAnimator:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4, v5}, Lcom/android/phone/VideoCallPanel;->startViewAnimation(Landroid/view/View;II)V

    .line 1960
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/phone/VideoCallPanel$9;

    invoke-direct {v1, p0}, Lcom/android/phone/VideoCallPanel$9;-><init>(Lcom/android/phone/VideoCallPanel;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1967
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1972
    :goto_0
    return-void

    .line 1970
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->swipeVideoSurfaces()V

    goto :goto_0
.end method

.method private swipeVideoSurfaces()V
    .locals 2

    .prologue
    .line 1975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "swipeVideoSurfaces...isSurfaceSwaped = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/VideoCallPanel;->isSurfaceSwaped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1977
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 1987
    :goto_0
    return-void

    .line 1980
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSurfaceSwaped:Z

    if-nez v0, :cond_1

    .line 1981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSurfaceSwaped:Z

    .line 1986
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->updateSurfaceViewLayout()V

    goto :goto_0

    .line 1983
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSurfaceSwaped:Z

    goto :goto_1
.end method

.method private switchCamera(I)V
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 1444
    iput p1, p0, Lcom/android/phone/VideoCallPanel;->mCameraId:I

    .line 1445
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/VtInCallButtonsView;->mIsSwitchCameraClicked:Z

    .line 1446
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->switchCamera()V

    .line 1447
    return-void
.end method

.method private updateSurfaceViewLayout()V
    .locals 2

    .prologue
    .line 1690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSurfaceViewLayout...isSurfaceSwaped = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/VideoCallPanel;->isSurfaceSwaped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1692
    iget-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSurfaceSwaped:Z

    if-nez v0, :cond_2

    .line 1693
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1694
    :cond_0
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    .line 1695
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    .line 1696
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 1713
    :goto_0
    return-void

    .line 1698
    :cond_1
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    .line 1699
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    .line 1700
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0

    .line 1703
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1704
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    .line 1705
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    .line 1706
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0

    .line 1708
    :cond_3
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    .line 1709
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    .line 1710
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateVtIncallButton()V
    .locals 2

    .prologue
    .line 1573
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1574
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 1575
    :cond_0
    return-void
.end method


# virtual methods
.method public MediashareStart()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2079
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 2080
    iget-object v2, v1, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v2, v2, Lcom/android/phone/InVTCallState;->isMediaShareEnabled:Z

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2081
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->INTENT_ACTION_MAIN:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2084
    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2085
    if-eqz v1, :cond_0

    .line 2086
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2088
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "*23#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 2089
    const-string v1, "*23#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2090
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 2091
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    .line 2092
    const-string v0, "participants"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2093
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2095
    :cond_2
    return-void
.end method

.method public callDismissMenuDialog()V
    .locals 0

    .prologue
    .line 1736
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->dismissMenuDialog()V

    .line 1737
    return-void
.end method

.method public captureSurfaceImage(Z)V
    .locals 4
    .parameter "isNearEnd"

    .prologue
    const/4 v1, 0x0

    .line 1547
    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->checkStorageMemorySpace(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1548
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1549
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iput-boolean v1, v0, Lcom/android/phone/InVTCallState;->isShowMe:Z

    .line 1550
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->updateVtIncallButton()V

    .line 1552
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0, p1}, Lcom/android/phone/VideoCallManager;->captureSurfaceImage(Z)V

    .line 1554
    if-nez p1, :cond_1

    .line 1555
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/phone/VideoCallPanel$2;

    invoke-direct {v1, p0}, Lcom/android/phone/VideoCallPanel$2;-><init>(Lcom/android/phone/VideoCallPanel;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1571
    :cond_1
    :goto_0
    return-void

    .line 1569
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->showMemoryFullDialog()V

    goto :goto_0
.end method

.method protected closeCamera()V
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->closeCamera()V

    .line 867
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x2

    const/high16 v6, 0x3f80

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 1990
    const-string v1, "common_volte_vt_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1991
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2060
    :goto_0
    return v0

    .line 1994
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1995
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1996
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1997
    invoke-virtual {p0, v2, v3}, Lcom/android/phone/VideoCallPanel;->getTouchedSurfaceArea(FF)I

    move-result v4

    .line 1999
    packed-switch v1, :pswitch_data_0

    .line 2055
    const-string v0, "VideoCallPanel"

    const-string v1, "Default Case!!Doing Nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 2001
    :pswitch_0
    if-ne v4, v5, :cond_2

    .line 2002
    const-string v0, "VideoCallPanel"

    const-string v1, "MotionEvent.ACTION_DOWN Small surface pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    iput-boolean v5, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfacePressed:Z

    goto :goto_1

    .line 2004
    :cond_2
    if-ne v4, v7, :cond_1

    .line 2005
    const-string v0, "VideoCallPanel"

    const-string v1, "MotionEvent.ACTION_DOWN Big surface pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    iput-boolean v5, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfacePressed:Z

    goto :goto_1

    .line 2012
    :pswitch_1
    iput-boolean v5, p0, Lcom/android/phone/VideoCallPanel;->isSPenMoved:Z

    .line 2013
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtX:F

    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mPrevPtX:F

    .line 2014
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtY:F

    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mPrevPtY:F

    .line 2015
    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtX:F

    .line 2016
    iput v3, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtY:F

    .line 2017
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mPrevPtX:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    .line 2018
    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtY:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mPrevPtY:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    .line 2019
    cmpg-float v1, v1, v6

    if-gez v1, :cond_3

    cmpg-float v1, v2, v6

    if-gez v1, :cond_3

    .line 2020
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSPenMoved:Z

    .line 2021
    :cond_3
    iget-boolean v1, p0, Lcom/android/phone/VideoCallPanel;->isSPenMoved:Z

    if-eqz v1, :cond_4

    .line 2022
    sget v1, Lcom/android/phone/VideoCallPanel;->mLongPressMoveCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/phone/VideoCallPanel;->mLongPressMoveCount:I

    .line 2023
    :cond_4
    sget v1, Lcom/android/phone/VideoCallPanel;->mLongPressMoveCount:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_1

    sget v1, Lcom/android/phone/VideoCallPanel;->mXMoveStart:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v8, :cond_1

    sget v1, Lcom/android/phone/VideoCallPanel;->mYMoveStart:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v8, :cond_1

    .line 2025
    sput-boolean v0, Lcom/android/phone/VideoCallPanel;->mLongPressMenuEnabled:Z

    goto :goto_1

    .line 2031
    :pswitch_2
    sput-boolean v5, Lcom/android/phone/VideoCallPanel;->mLongPressMenuEnabled:Z

    .line 2032
    sput v0, Lcom/android/phone/VideoCallPanel;->mLongPressMoveCount:I

    .line 2034
    if-ne v4, v5, :cond_9

    .line 2035
    const-string v1, "VideoCallPanel"

    const-string v2, "MotionEvent.ACTION_UP Small surface released"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    iput-boolean v5, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfaceReleased:Z

    .line 2041
    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/phone/VideoCallPanel;->mIsPreparingDisplayAnim:Z

    if-nez v1, :cond_8

    .line 2042
    iget-boolean v1, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfacePressed:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfaceReleased:Z

    if-nez v1, :cond_7

    :cond_6
    iget-boolean v1, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfacePressed:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfaceReleased:Z

    if-eqz v1, :cond_8

    .line 2044
    :cond_7
    invoke-direct {p0, v5}, Lcom/android/phone/VideoCallPanel;->swapVideoSurface(Z)V

    .line 2048
    :cond_8
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfacePressed:Z

    .line 2049
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfacePressed:Z

    .line 2050
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfaceReleased:Z

    .line 2051
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfaceReleased:Z

    goto/16 :goto_1

    .line 2037
    :cond_9
    if-ne v4, v7, :cond_5

    .line 2038
    const-string v1, "VideoCallPanel"

    const-string v2, "MotionEvent.ACTION_UP Big surface released"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    iput-boolean v5, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfaceReleased:Z

    goto :goto_2

    .line 1999
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public displayFpsAndBitrate()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v9, -0x1

    .line 2179
    const-string v0, "VideoCallPanel"

    const-string v1, "displayFpsAndBitrate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/sent_fps_rate.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2183
    new-instance v3, Ljava/io/File;

    const-string v1, "/sdcard/received_fps_rate.txt"

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2185
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2189
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 2191
    :try_start_1
    const-string v0, "VideoCallPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "displayFpsAndBitrate, finSentValue : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v0

    if-eq v0, v9, :cond_3

    .line 2194
    const-string v1, "VideoCallPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "displayFpsAndBitrate, ch : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    int-to-char v0, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2211
    :catch_0
    move-exception v0

    move-object v1, v5

    .line 2212
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2214
    if-eqz v2, :cond_0

    .line 2216
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 2222
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 2224
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 2231
    :cond_1
    :goto_3
    const-string v0, "VideoCallPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display fps and bitrate strContent= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2234
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 2235
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    const-string v1, ";"

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    move v0, v4

    .line 2237
    :goto_4
    array-length v2, v1

    if-ge v0, v2, :cond_8

    .line 2238
    aget-object v2, v1, v0

    const-string v6, "="

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 2239
    array-length v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 2240
    aget-object v6, v2, v4

    const/4 v7, 0x1

    aget-object v2, v2, v7

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2237
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2198
    :cond_3
    :try_start_5
    const-string v0, "VideoCallPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "displayFpsAndBitrate, strContent : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    const-string v0, ";"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2202
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 2204
    :try_start_6
    const-string v0, "VideoCallPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "displayFpsAndBitrate, finReceivedValue : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    :goto_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v0

    if-eq v0, v9, :cond_4

    .line 2207
    const-string v3, "VideoCallPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "displayFpsAndBitrate, ch : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    int-to-char v0, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 2211
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 2210
    :cond_4
    const-string v0, "VideoCallPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "displayFpsAndBitrate, strContent : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 2214
    if-eqz v2, :cond_5

    .line 2216
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 2222
    :cond_5
    :goto_6
    if-eqz v1, :cond_1

    .line 2224
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_3

    .line 2225
    :catch_2
    move-exception v0

    .line 2226
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 2217
    :catch_3
    move-exception v0

    .line 2218
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 2217
    :catch_4
    move-exception v0

    .line 2218
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 2225
    :catch_5
    move-exception v0

    .line 2226
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 2214
    :catchall_0
    move-exception v0

    move-object v2, v5

    :goto_7
    if-eqz v2, :cond_6

    .line 2216
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 2222
    :cond_6
    :goto_8
    if-eqz v5, :cond_7

    .line 2224
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 2227
    :cond_7
    :goto_9
    throw v0

    .line 2217
    :catch_6
    move-exception v1

    .line 2218
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 2225
    :catch_7
    move-exception v1

    .line 2226
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 2246
    :cond_8
    const-string v0, "receivedfps"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2247
    const-string v1, "receivedbitrate"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2248
    const-string v2, "sentfps"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2249
    const-string v6, "sentbitrate"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2252
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 2253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "fps/ "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Receive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "fps/ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2256
    :goto_a
    const-string v1, "VideoCallPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display fps and bitrate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mTextBitrate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_9

    .line 2259
    const-string v1, "VideoCallPanel"

    const-string v2, "set mTextBitrate VISIBLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mTextBitrate:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2263
    :cond_9
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mTextBitrate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2264
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2265
    return-void

    .line 2214
    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move-object v5, v1

    goto/16 :goto_7

    .line 2211
    :catch_8
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    goto/16 :goto_1

    :cond_a
    move-object v0, v5

    goto :goto_a
.end method

.method public getTouchedSurfaceArea(FF)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 1864
    const/4 v2, 0x0

    .line 1868
    const-string v3, "VideoCallPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTouchedSurface x["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] y["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    if-nez v3, :cond_1

    :cond_0
    move v0, v2

    .line 1946
    :goto_0
    return v0

    .line 1876
    :cond_1
    iget-boolean v3, p0, Lcom/android/phone/VideoCallPanel;->isSurfaceSwaped:Z

    if-eqz v3, :cond_6

    .line 1878
    const-string v3, "VideoCallPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is swiped :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/phone/VideoCallPanel;->isSurfaceSwaped:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-ne v3, v0, :cond_3

    .line 1880
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1881
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginLeft:I

    int-to-float v6, v3

    .line 1882
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    iget v4, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFHeight:I

    add-int/2addr v3, v4

    int-to-float v5, v3

    .line 1883
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginLeft:I

    int-to-float v3, v3

    .line 1884
    iget v4, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    int-to-float v4, v4

    .line 1898
    :goto_1
    cmpg-float v7, v6, p1

    if-gtz v7, :cond_4

    iget-object v7, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v7}, Landroid/view/TextureView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_4

    cmpg-float v6, v5, p2

    if-gtz v6, :cond_4

    iget-object v6, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v6}, Landroid/view/TextureView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_4

    .line 1900
    const-string v1, "VideoCallPanel"

    const-string v2, "getTouchedSurface BIG_SURFACE_AREA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1887
    :cond_2
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getY()F

    move-result v5

    .line 1889
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getY()F

    move-result v3

    move v6, v4

    move v8, v4

    move v4, v3

    move v3, v8

    goto :goto_1

    .line 1891
    :cond_3
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-ne v3, v1, :cond_c

    .line 1892
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getX()F

    move-result v6

    .line 1893
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getY()F

    move-result v5

    .line 1894
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getX()F

    move-result v3

    .line 1895
    iget-object v4, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getY()F

    move-result v4

    goto :goto_1

    .line 1902
    :cond_4
    cmpg-float v0, v3, p1

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_5

    cmpg-float v0, v4, p2

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v4

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_5

    .line 1904
    const-string v0, "VideoCallPanel"

    const-string v2, "getTouchedSurface SMALL_SURFACE_AREA"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1905
    goto/16 :goto_0

    .line 1908
    :cond_5
    const-string v0, "VideoCallPanel"

    const-string v1, "getTouchedSurface NO_SURFACE_AREA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_0

    .line 1912
    :cond_6
    const-string v3, "VideoCallPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is swiped else block :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/phone/VideoCallPanel;->isSurfaceSwaped:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-ne v3, v0, :cond_8

    .line 1914
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1915
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginLeft:I

    int-to-float v6, v3

    .line 1916
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    iget v4, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFHeight:I

    add-int/2addr v3, v4

    int-to-float v5, v3

    .line 1917
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginLeft:I

    int-to-float v4, v3

    .line 1918
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    int-to-float v3, v3

    .line 1932
    :goto_2
    cmpg-float v7, v6, p1

    if-gtz v7, :cond_9

    iget-object v7, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v7}, Landroid/view/TextureView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_9

    cmpg-float v6, v5, p2

    if-gtz v6, :cond_9

    iget-object v6, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v6}, Landroid/view/TextureView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_9

    .line 1934
    const-string v1, "VideoCallPanel"

    const-string v2, "getTouchedSurface SMALL_SURFACE_AREA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1921
    :cond_7
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getY()F

    move-result v5

    .line 1923
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getY()F

    move-result v3

    move v6, v4

    goto :goto_2

    .line 1925
    :cond_8
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-ne v3, v1, :cond_b

    .line 1926
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getX()F

    move-result v6

    .line 1927
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getY()F

    move-result v5

    .line 1928
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getX()F

    move-result v4

    .line 1929
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getY()F

    move-result v3

    goto :goto_2

    .line 1936
    :cond_9
    cmpg-float v0, v4, p1

    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v4

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_a

    cmpg-float v0, v3, p2

    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v3

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_a

    .line 1938
    const-string v0, "VideoCallPanel"

    const-string v2, "getTouchedSurface BIG_SURFACE_AREA"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1939
    goto/16 :goto_0

    .line 1942
    :cond_a
    const-string v0, "VideoCallPanel"

    const-string v1, "getTouchedSurface NO_SURFACE_AREA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_0

    :cond_b
    move v3, v4

    move v5, v4

    move v6, v4

    goto/16 :goto_2

    :cond_c
    move v3, v4

    move v5, v4

    move v6, v4

    goto/16 :goto_1
.end method

.method protected holdVideo()V
    .locals 1

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    if-eqz v0, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->holdVideo()V

    .line 1604
    :cond_0
    return-void
.end method

.method protected initializeCamera()V
    .locals 1

    .prologue
    .line 813
    const-string v0, "Initializing camera"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraId:I

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->openCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeZoom()V

    .line 825
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeCameraParams()V

    .line 827
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->setInitialCameraOrientation()V

    .line 829
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->startPreview()V

    .line 830
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraInitialized:Z

    goto :goto_0
.end method

.method protected isCameraPreviewVisible()Z
    .locals 1

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCallDisconnect()V
    .locals 7

    .prologue
    const/16 v6, 0x3f2

    const/16 v3, 0x64

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 712
    const-string v2, "onCallDisconnect"

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 713
    iput-boolean v4, p0, Lcom/android/phone/VideoCallPanel;->mIsPreparingDisplayAnim:Z

    .line 714
    iput-boolean v4, p0, Lcom/android/phone/VideoCallPanel;->mIsVtQcifDialerOpened:Z

    .line 715
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iput-boolean v4, v2, Lcom/android/phone/InVTCallState;->mIsFarFrameReady:Z

    .line 716
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->hidePreparingDisplayAnim()V

    .line 718
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 722
    :cond_0
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mTextBitrate:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 723
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 724
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 729
    :cond_1
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    if-eqz v2, :cond_2

    .line 730
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v2, v4}, Lcom/android/phone/VideoCallManager;->setIsMediaReadyToReceivePreview(Z)V

    .line 732
    :cond_2
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    if-eqz v2, :cond_3

    .line 733
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, v5}, Landroid/view/TextureView;->setTranslationX(F)V

    .line 734
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, v5}, Landroid/view/TextureView;->setTranslationY(F)V

    .line 737
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->dismissMenuDialog()V

    .line 738
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->resetArrays()V

    .line 740
    iget-boolean v2, p0, Lcom/android/phone/VideoCallPanel;->isSurfaceSwaped:Z

    if-eqz v2, :cond_6

    .line 741
    const/4 v1, 0x0

    .line 742
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 743
    .local v0, bigSurfaceParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    if-eqz v2, :cond_4

    .line 744
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v2, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 746
    :cond_4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mPreviewWidth:I

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mPreviewHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 747
    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 748
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 749
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 754
    :goto_0
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    if-eqz v2, :cond_5

    .line 755
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 758
    :cond_5
    iput-boolean v4, p0, Lcom/android/phone/VideoCallPanel;->isSurfaceSwaped:Z

    .line 761
    .end local v0           #bigSurfaceParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 762
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->destroyTextureViews()V

    .line 764
    :cond_7
    return-void

    .line 751
    .restart local v0       #bigSurfaceParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_8
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 752
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method public onCallInitiating()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 682
    const-string v0, "onCallInitiating"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 684
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->createTextureViews()V

    .line 689
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->resetCameraDirection()V

    .line 692
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 693
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 694
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    .line 695
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iput-boolean v2, v0, Lcom/android/phone/InVTCallState;->isShowMe:Z

    .line 696
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/InVTCallState;->mCapturedLocalFile:Ljava/lang/String;

    .line 703
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->fillArrays()V

    .line 704
    return-void

    .line 700
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iput-boolean v2, v0, Lcom/android/phone/InVTCallState;->isShowMe:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1028
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1031
    packed-switch v0, :pswitch_data_0

    .line 1038
    :goto_0
    return-void

    .line 1033
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->onClickSwitchCamera()V

    goto :goto_0

    .line 1031
    :pswitch_data_0
    .packed-switch 0x7f0a0215
        :pswitch_0
    .end packed-switch
.end method

.method protected onClickSwitchCamera()V
    .locals 2

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isCameraPreviewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1105
    :goto_0
    return-void

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraDirection()I

    move-result v0

    .line 1085
    const-string v1, "common_volte_vt_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1086
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraId:I

    .line 1091
    :cond_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1093
    :pswitch_0
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mFrontCameraId:I

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->switchCamera(I)V

    goto :goto_0

    .line 1096
    :pswitch_1
    const-string v0, "vt_camera_firmware_update_check_popup"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1097
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->cameraEngine:Lcom/android/phone/CameraEngine;

    iget-object v0, v0, Lcom/android/phone/CameraEngine;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1099
    :cond_2
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mBackCameraId:I

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->switchCamera(I)V

    goto :goto_0

    .line 1102
    :pswitch_2
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mFrontCameraId:I

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->switchCamera(I)V

    goto :goto_0

    .line 1091
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 434
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFinishInflate(this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 438
    const-string v4, "common_volte"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "common_volte_vt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 439
    :cond_0
    const-string v2, "This device not support volte"

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 519
    :goto_0
    return-void

    .line 444
    :cond_1
    const-string v4, "net.lte.VT_LOOPBACK_ENABLE"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 445
    .local v0, property:I
    if-ne v0, v2, :cond_6

    :goto_1
    iput-boolean v2, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Is Media running in loopback mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 449
    const v2, 0x7f0a0209

    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallPanel:Landroid/view/ViewGroup;

    .line 450
    const v2, 0x7f0a0216

    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/ZoomControlBar;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    .line 451
    const v2, 0x7f0a020b

    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    .line 452
    const v2, 0x7f0a020f

    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    .line 453
    const v2, 0x7f0a0215

    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    .line 454
    const v2, 0x7f0a020a

    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    .line 455
    const v2, 0x7f0a0213

    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mNearEndAnimator:Landroid/widget/ImageView;

    .line 456
    const v2, 0x7f0a0212

    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndAnimator:Landroid/widget/ImageView;

    .line 457
    const v2, 0x7f0a0211

    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    .line 458
    const v2, 0x7f0a020d

    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mPreparingDisplayImageView:Landroid/widget/ImageView;

    .line 459
    const v2, 0x7f0a020c

    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mPreparingImageAnimator:Landroid/widget/RelativeLayout;

    .line 460
    const v2, 0x7f0a020e

    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->prepareVideoText:Landroid/widget/TextView;

    .line 461
    const v2, 0x7f0a0210

    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mTextBitrate:Landroid/widget/TextView;

    .line 462
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mPreparingDisplayImageView:Landroid/widget/ImageView;

    const v4, 0x7f05000c

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 464
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 465
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 467
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 468
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e00a9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    .line 469
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e00aa

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    .line 471
    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginBottom:I

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewMarginBottom:I

    .line 474
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mDensity:F

    .line 477
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 478
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    :cond_3
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 482
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 483
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 484
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    new-instance v4, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;

    invoke-direct {v4, p0, v6}, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;-><init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V

    invoke-virtual {v2, v4}, Landroid/view/TextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 485
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    new-instance v4, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;

    invoke-direct {v4, p0, v6}, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;-><init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V

    invoke-virtual {v2, v4}, Landroid/view/TextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 492
    :goto_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->mIsDisplayBitrate:Z

    if-eqz v2, :cond_4

    .line 493
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mTextBitrate:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/VideoCallManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/VideoCallManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_3
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    if-eqz v2, :cond_5

    .line 504
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v2}, Lcom/android/phone/VideoCallManager;->getBackCameraId()I

    move-result v2

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mBackCameraId:I

    .line 505
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v2}, Lcom/android/phone/VideoCallManager;->getFrontCameraId()I

    move-result v2

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mFrontCameraId:I

    .line 506
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->resetCameraDirection()V

    .line 509
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v2}, Lcom/android/phone/VideoCallManager;->getNumberOfCameras()I

    move-result v2

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mNumberOfCameras:I

    .line 511
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 518
    :cond_5
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/CameraEngine;->init(Landroid/content/Context;)Lcom/android/phone/CameraEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->cameraEngine:Lcom/android/phone/CameraEngine;

    goto/16 :goto_0

    :cond_6
    move v2, v3

    .line 445
    goto/16 :goto_1

    .line 488
    :cond_7
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    new-instance v4, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;

    invoke-direct {v4, p0, v6}, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;-><init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V

    invoke-virtual {v2, v4}, Landroid/view/TextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 489
    new-instance v2, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;

    invoke-direct {v2, p0, v6}, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;-><init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V

    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallPanel;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    goto :goto_2

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, ve:Ljava/lang/VerifyError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch VerifyError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 501
    iput-object v6, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    goto :goto_3
.end method

.method protected onHideShowOperation()V
    .locals 2

    .prologue
    .line 1108
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isCameraRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    const-string v0, "onHideShowOperation...camera is not allowed, return"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0903e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->showToast(Ljava/lang/String;)V

    .line 1121
    :goto_0
    return-void

    .line 1116
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallState;->isShowMe:Z

    if-eqz v0, :cond_1

    .line 1117
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->sendStillImage()V

    goto :goto_0

    .line 1119
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->sendLiveVideo()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f090414

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1042
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 1043
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLongClick(View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1044
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLongPressMenuEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/phone/VideoCallPanel;->mLongPressMenuEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1046
    sget-boolean v3, Lcom/android/phone/VideoCallPanel;->mLongPressMenuEnabled:Z

    if-nez v3, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return v0

    .line 1048
    :cond_1
    const-string v3, "common_volte_vt_kor"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1051
    :cond_2
    const v3, 0x7f0a020b

    if-eq v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1052
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/phone/VideoCallPanel;->mIsPreparingDisplayAnim:Z

    if-nez v2, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoViewItems:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 1055
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    invoke-direct {p0, v5, v0}, Lcom/android/phone/VideoCallPanel;->showMenuDialog(I[Ljava/lang/String;)V

    move v0, v1

    .line 1056
    goto :goto_0

    .line 1060
    :cond_4
    const v3, 0x7f0a020f

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1061
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    const-string v2, "support_easy_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1063
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallState;->isShowMe:Z

    if-eqz v0, :cond_7

    .line 1064
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewItems:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 1065
    const v0, 0x7f090415

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/phone/VideoCallPanel;->showMenuDialog(I[Ljava/lang/String;)V

    :goto_1
    move v0, v1

    .line 1071
    goto/16 :goto_0

    .line 1068
    :cond_7
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewDefaultImageItem:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 1069
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    invoke-direct {p0, v5, v0}, Lcom/android/phone/VideoCallPanel;->showMenuDialog(I[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onNotify(I)V
    .locals 2
    .parameter

    .prologue
    .line 2130
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2131
    const-string v0, "onNotify : mHander is null"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 2168
    :goto_0
    return-void

    .line 2135
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotify : eventType - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 2137
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2139
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2142
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2145
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2148
    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2151
    :sswitch_4
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2154
    :sswitch_5
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2157
    :sswitch_6
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2160
    :sswitch_7
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2163
    :sswitch_8
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2137
    :sswitch_data_0
    .sparse-switch
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0xcb -> :sswitch_2
        0xcc -> :sswitch_3
        0xcd -> :sswitch_4
        0xce -> :sswitch_6
        0xcf -> :sswitch_7
        0xd0 -> :sswitch_5
        0x3f2 -> :sswitch_8
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 805
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 807
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "xNew"
    .parameter "yNew"
    .parameter "xOld"
    .parameter "yOld"

    .prologue
    .line 773
    const-string v0, "onSizeChanged"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video Panel width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 776
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 784
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 785
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    .line 791
    :goto_1
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    goto :goto_0

    .line 786
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 787
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    goto :goto_1

    .line 789
    :cond_3
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    goto :goto_1

    .line 794
    :cond_4
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    .line 795
    invoke-direct {p0, p1, p2}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 913
    const-string v0, "onSurfaceTextureAvailable..."

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 915
    const-string v0, "Camera surface texture created"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 916
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    .line 917
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v0

    sget-object v1, Lcom/samsung/commonimsinterface/imscommon/CameraState;->CAMERA_CLOSED:Lcom/samsung/commonimsinterface/imscommon/CameraState;

    if-ne v0, v1, :cond_4

    .line 918
    const-string v0, "onSurfaceTextureAvailable : CameraState.CAMERA_CLOSED"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->initializeCamera()V

    .line 920
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 932
    :cond_0
    :goto_0
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 935
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getIMSCallType(Lcom/android/internal/telephony/Call;)I

    move-result v0

    .line 936
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 937
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->showVS(I)V

    .line 944
    :cond_3
    :goto_1
    return-void

    .line 927
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setDisplay(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 928
    :catch_0
    move-exception v0

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while setting preview texture, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 939
    :cond_5
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 940
    const-string v0, "Video surface texture created"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 941
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    .line 942
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V

    goto :goto_1
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 948
    const-string v0, "onSurfaceTextureDestroyed..."

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 949
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 950
    const-string v0, "CameraPreview surface texture destroyed"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->stopPreview()V

    .line 952
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->closeCamera()V

    .line 953
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 954
    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    .line 961
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    const-string v0, "FarEndView surface texture destroyed"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 958
    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    .line 959
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 973
    const-string v0, "onSurfaceTextureSizeChanged..."

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 974
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter

    .prologue
    .line 967
    const-string v0, "onSurfaceTextureUpdated..."

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 968
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 981
    if-ne p1, p0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    if-nez v0, :cond_1

    .line 1024
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getIMSCallType(Lcom/android/internal/telephony/Call;)I

    move-result v0

    .line 986
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 1011
    :sswitch_0
    const-string v1, "VideoCallPanel View is VISIBLE"

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1012
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v1

    sget-object v2, Lcom/samsung/commonimsinterface/imscommon/CameraState;->CAMERA_CLOSED:Lcom/samsung/commonimsinterface/imscommon/CameraState;

    if-ne v1, v2, :cond_2

    if-eq v0, v4, :cond_2

    .line 1013
    const-string v1, "onVisibilityChanged : VISIBLE - CameraState.CAMERA_CLOSED"

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->initializeCamera()V

    .line 1016
    :cond_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-ne v0, v4, :cond_4

    .line 1017
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->showVS(I)V

    .line 1018
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 990
    :sswitch_1
    const-string v1, "VideoCallPanel View is GONE or INVISIBLE"

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 993
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iput-boolean v3, v1, Lcom/android/phone/InVTCallState;->mIsFarFrameReady:Z

    .line 994
    iput-boolean v3, p0, Lcom/android/phone/VideoCallPanel;->mIsPreparingDisplayAnim:Z

    .line 995
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->hidePreparingDisplayAnim()V

    .line 996
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v1

    sget-object v2, Lcom/samsung/commonimsinterface/imscommon/CameraState;->CAMERA_CLOSED:Lcom/samsung/commonimsinterface/imscommon/CameraState;

    if-eq v1, v2, :cond_5

    .line 997
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->stopPreview()V

    .line 998
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->closeCamera()V

    .line 1000
    :cond_5
    const-string v1, "common_volte_vt_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1001
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_7

    :cond_6
    if-nez v0, :cond_0

    .line 1004
    :cond_7
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1005
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1006
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->destroyTextureViews()V

    goto/16 :goto_0

    .line 986
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected resumeVideo()V
    .locals 1

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->resumeVideo()V

    .line 1595
    :cond_0
    return-void
.end method

.method public sendLiveVideo()V
    .locals 2

    .prologue
    .line 1520
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/InVTCallState;->isShowMe:Z

    .line 1521
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->updateVtIncallButton()V

    .line 1522
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 1523
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1524
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1529
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/InVTCallState;->mCapturedLocalFile:Ljava/lang/String;

    .line 1530
    return-void

    .line 1526
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->sendLiveVideo()V

    goto :goto_0
.end method

.method public sendStillImage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1491
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iput-boolean v3, v0, Lcom/android/phone/InVTCallState;->isShowMe:Z

    .line 1492
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->updateVtIncallButton()V

    .line 1493
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_2

    .line 1494
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1495
    const-string v0, "setting hideme image to preset image"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1496
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preset_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preset_Name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1498
    const-string v1, "photo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1499
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preset_path"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preset_path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1501
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/phone/VideoCallPanel;->setIncomingHideMeImageLayout(ZLjava/lang/String;)V

    .line 1505
    :goto_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1512
    :cond_0
    :goto_1
    return-void

    .line 1503
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/phone/VideoCallPanel;->setIncomingHideMeImageLayout(ZLjava/lang/String;)V

    goto :goto_0

    .line 1508
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1509
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1510
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->sendStillImage()V

    goto :goto_1
.end method

.method public sendStillImage(Z)V
    .locals 1
    .parameter "internalAnswerCall"

    .prologue
    .line 1515
    if-eqz p1, :cond_0

    .line 1516
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->sendStillImage()V

    .line 1518
    :cond_0
    return-void
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0, p1}, Lcom/android/phone/VideoCallManager;->setCameraDisplayOrientation(I)V

    .line 879
    return-void
.end method

.method public setCameraPreviewVisibility(I)V
    .locals 3
    .parameter

    .prologue
    .line 2125
    const-string v0, "VideoCallPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraPreviewVisibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 2127
    return-void
.end method

.method setFpsRange()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 1201
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getNegotiatedFPS()I

    move-result v0

    mul-int/lit16 v5, v0, 0x3e8

    .line 1202
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v6

    .line 1207
    if-eqz v6, :cond_1

    move v1, v2

    move v3, v2

    .line 1208
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1209
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v4, 0x1

    aget v4, v0, v4

    .line 1210
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v2

    .line 1212
    const-string v7, "VideoCallPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Supported FPS range = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    if-ne v4, v0, :cond_0

    if-gt v4, v5, :cond_0

    if-gt v3, v4, :cond_0

    move v3, v4

    .line 1208
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v3, v2

    .line 1223
    :cond_2
    if-eqz v3, :cond_3

    .line 1225
    const-string v0, "VideoCallPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Best FPS range for the negotiated FPS of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 1233
    :goto_1
    return-void

    .line 1230
    :cond_3
    const-string v0, "VideoCallPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Best FPS range for the negotiated FPS of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setInitialCameraOrientation()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 883
    .line 884
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 907
    :goto_0
    return-void

    .line 893
    :cond_0
    const/4 v1, 0x3

    .line 894
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 895
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 897
    const-string v1, "common_volte_vt_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_1

    .line 898
    const-string v1, "Incoming screen is not supported landscape mode. so camera orientation is portrait."

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 904
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/phone/VideoCallPanel;->setCameraDisplayOrientation(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public showAlternativeImageDialog()V
    .locals 2

    .prologue
    const v1, 0x7f090414

    .line 1533
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallState;->isShowMe:Z

    if-eqz v0, :cond_1

    .line 1534
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1535
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewDefaultImageItem:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 1538
    :goto_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/VideoCallPanel;->showMenuDialog(I[Ljava/lang/String;)V

    .line 1544
    :goto_1
    return-void

    .line 1537
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewAlternativeImageItems:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_0

    .line 1541
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewDefaultImageItem:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 1542
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/VideoCallPanel;->showMenuDialog(I[Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected stopPreview()V
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 874
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->stopCameraPreview()V

    .line 875
    return-void
.end method

.method updateScreen(Lcom/android/internal/telephony/Call$State;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - Videocall.state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    .line 526
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 527
    iget-boolean v2, p0, Lcom/android/phone/VideoCallPanel;->isSurfaceSwaped:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->swipeVideoSurfaces()V

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->createTextureViews()V

    .line 532
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 533
    .local v1, surfaceLp:Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v2, :cond_2

    .line 534
    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mIncomingPreviewMarginTop:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 540
    :goto_0
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    .end local v1           #surfaceLp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    sget-object v2, Lcom/android/phone/VideoCallPanel$10;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 590
    :goto_1
    :pswitch_0
    return-void

    .line 536
    .restart local v1       #surfaceLp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 537
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 538
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 547
    .end local v1           #surfaceLp:Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_1
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 548
    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingWidth:I

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingHeight:I

    invoke-direct {p0, v2, v3}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    goto :goto_1

    .line 550
    :cond_3
    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    invoke-direct {p0, v2, v3}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    goto :goto_1

    .line 553
    :pswitch_2
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 554
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 555
    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFWidth:I

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFHeight:I

    invoke-direct {p0, v2, v3}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    goto :goto_1

    .line 557
    :cond_4
    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingWidth:I

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingHeight:I

    invoke-direct {p0, v2, v3}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    goto :goto_1

    .line 560
    :cond_5
    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    invoke-direct {p0, v2, v3}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    goto :goto_1

    .line 563
    :pswitch_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v2, v2, Lcom/android/phone/InVTCallState;->isShowMe:Z

    if-nez v2, :cond_6

    .line 564
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->sendStillImage()V

    .line 567
    :cond_6
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isQVGAVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 568
    invoke-direct {p0, v4, v4}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    .line 571
    :cond_7
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFinishInflate, misdisplaybitrate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->mIsDisplayBitrate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 573
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->mIsDisplayBitrate:Z

    if-eqz v2, :cond_8

    .line 574
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 578
    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getIMSCallType(Lcom/android/internal/telephony/Call;)I

    move-result v0

    .line 579
    .local v0, callType:I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    .line 580
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->showVS(I)V

    goto/16 :goto_1

    .line 582
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->showVT()V

    goto/16 :goto_1

    .line 543
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
