.class public Lcom/android/phone/FrameAnimationForVT;
.super Ljava/lang/Object;
.source "FrameAnimationForVT.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;
    }
.end annotation


# static fields
.field static preCachingTask:Landroid/os/AsyncTask;


# instance fields
.field private mAnimationFrames:[I

.field private mDelay:I

.field private mFrameIndex:I

.field private mHandler:Landroid/os/Handler;

.field private mImageCache:Lcom/android/phone/ImageCache;

.field private mImageCacheParams:Lcom/android/phone/ImageCache$ImageCacheParams;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsRunning:Z

.field private mRunnable:Ljava/lang/Runnable;

.field private mShouldRun:Z

.field private mSoftReferenceImageView:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field oldTask:Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;[II)V
    .locals 3
    .parameter "imageView"
    .parameter "frames"
    .parameter "fps"

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "FrameAnimationForVT"

    const-string v1, "FrameAnimationForVT..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object p2, p0, Lcom/android/phone/FrameAnimationForVT;->mAnimationFrames:[I

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/FrameAnimationForVT;->mFrameIndex:I

    .line 60
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mSoftReferenceImageView:Ljava/lang/ref/SoftReference;

    .line 61
    iput-boolean v2, p0, Lcom/android/phone/FrameAnimationForVT;->mShouldRun:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/phone/FrameAnimationForVT;->mIsRunning:Z

    .line 63
    const/16 v0, 0x3e8

    div-int/2addr v0, p3

    iput v0, p0, Lcom/android/phone/FrameAnimationForVT;->mDelay:I

    .line 64
    new-instance v0, Lcom/android/phone/ImageCache$ImageCacheParams;

    invoke-direct {v0}, Lcom/android/phone/ImageCache$ImageCacheParams;-><init>()V

    iput-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mImageCacheParams:Lcom/android/phone/ImageCache$ImageCacheParams;

    .line 65
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mImageCacheParams:Lcom/android/phone/ImageCache$ImageCacheParams;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x3ea8f5c3

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 66
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/FrameAnimationForVT;->mImageCacheParams:Lcom/android/phone/ImageCache$ImageCacheParams;

    invoke-static {v0, v1}, Lcom/android/phone/ImageCache;->findOrCreateCache(Landroid/app/FragmentManager;Lcom/android/phone/ImageCache$ImageCacheParams;)Lcom/android/phone/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mImageCache:Lcom/android/phone/ImageCache;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/FrameAnimationForVT;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/FrameAnimationForVT;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/phone/FrameAnimationForVT;->mImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/FrameAnimationForVT;)Ljava/lang/ref/SoftReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mSoftReferenceImageView:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/FrameAnimationForVT;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/phone/FrameAnimationForVT;->mShouldRun:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/FrameAnimationForVT;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/phone/FrameAnimationForVT;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/FrameAnimationForVT;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/FrameAnimationForVT;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/phone/FrameAnimationForVT;->getNext()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/FrameAnimationForVT;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/phone/FrameAnimationForVT;->mDelay:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/FrameAnimationForVT;)Lcom/android/phone/ImageCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mImageCache:Lcom/android/phone/ImageCache;

    return-object v0
.end method

.method static cancelAndClearPreCaching()V
    .locals 4

    .prologue
    .line 112
    const-string v2, "FrameAnimationForVT"

    const-string v3, "FrameAnimationForVT.cancelAndClearPreCaching"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v2, Lcom/android/phone/FrameAnimationForVT;->preCachingTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/phone/FrameAnimationForVT;->preCachingTask:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_0

    .line 114
    sget-object v2, Lcom/android/phone/FrameAnimationForVT;->preCachingTask:Landroid/os/AsyncTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 115
    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/android/phone/FrameAnimationForVT;->preCachingTask:Landroid/os/AsyncTask;

    .line 116
    new-instance v1, Lcom/android/phone/ImageCache$ImageCacheParams;

    invoke-direct {v1}, Lcom/android/phone/ImageCache$ImageCacheParams;-><init>()V

    .line 117
    .local v1, tempParams:Lcom/android/phone/ImageCache$ImageCacheParams;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x3ea8f5c3

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 122
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v2, :cond_1

    .line 123
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InVTCallScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/ImageCache;->findOrCreateCache(Landroid/app/FragmentManager;Lcom/android/phone/ImageCache$ImageCacheParams;)Lcom/android/phone/ImageCache;

    move-result-object v0

    .line 124
    .local v0, tempCache:Lcom/android/phone/ImageCache;
    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0}, Lcom/android/phone/ImageCache;->clearCache()V

    .line 128
    .end local v0           #tempCache:Lcom/android/phone/ImageCache;
    :cond_1
    return-void
.end method

.method private getNext()I
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcom/android/phone/FrameAnimationForVT;->mFrameIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/FrameAnimationForVT;->mFrameIndex:I

    .line 132
    iget v0, p0, Lcom/android/phone/FrameAnimationForVT;->mFrameIndex:I

    iget-object v1, p0, Lcom/android/phone/FrameAnimationForVT;->mAnimationFrames:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/FrameAnimationForVT;->mFrameIndex:I

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mAnimationFrames:[I

    iget v1, p0, Lcom/android/phone/FrameAnimationForVT;->mFrameIndex:I

    aget v0, v0, v1

    return v0
.end method

.method static preCaching([I)V
    .locals 3
    .parameter "frames"

    .prologue
    .line 70
    const-string v0, "FrameAnimationForVT"

    const-string v1, "FrameAnimationForVT.PreCaching"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Lcom/android/phone/FrameAnimationForVT$1;

    invoke-direct {v0}, Lcom/android/phone/FrameAnimationForVT$1;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [[I

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/phone/FrameAnimationForVT$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    sput-object v0, Lcom/android/phone/FrameAnimationForVT;->preCachingTask:Landroid/os/AsyncTask;

    .line 109
    return-void
.end method


# virtual methods
.method public loadBitmap(ILandroid/widget/ImageView;)Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;
    .locals 5
    .parameter "resId"
    .parameter "imageView"

    .prologue
    .line 199
    const-string v1, "FrameAnimationForVT"

    const-string v2, "loadBitmap"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;

    invoke-direct {v0, p0, p2}, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;-><init>(Lcom/android/phone/FrameAnimationForVT;Landroid/widget/ImageView;)V

    .line 201
    .local v0, task:Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 202
    return-object v0
.end method

.method public declared-synchronized start()V
    .locals 3

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    const-string v0, "FrameAnimationForVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/FrameAnimationForVT;->mSoftReferenceImageView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "start()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/FrameAnimationForVT;->mShouldRun:Z

    .line 150
    iget-boolean v0, p0, Lcom/android/phone/FrameAnimationForVT;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "FrameAnimationForVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/FrameAnimationForVT;->mSoftReferenceImageView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :goto_0
    monitor-exit p0

    return-void

    .line 155
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/phone/FrameAnimationForVT$2;

    invoke-direct {v0, p0}, Lcom/android/phone/FrameAnimationForVT$2;-><init>(Lcom/android/phone/FrameAnimationForVT;)V

    iput-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mRunnable:Ljava/lang/Runnable;

    .line 178
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/FrameAnimationForVT;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    const-string v0, "FrameAnimationForVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/FrameAnimationForVT;->mSoftReferenceImageView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "stop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/FrameAnimationForVT;->mShouldRun:Z

    .line 184
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/FrameAnimationForVT;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mHandler:Landroid/os/Handler;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mImageCache:Lcom/android/phone/ImageCache;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->mImageCache:Lcom/android/phone/ImageCache;

    invoke-virtual {v0}, Lcom/android/phone/ImageCache;->clearCache()V

    .line 194
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/FrameAnimationForVT;->mIsRunning:Z

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/FrameAnimationForVT;->oldTask:Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
