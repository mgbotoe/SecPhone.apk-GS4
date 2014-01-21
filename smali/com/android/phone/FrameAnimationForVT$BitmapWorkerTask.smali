.class Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "FrameAnimationForVT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FrameAnimationForVT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private data:I

.field private delaySaveIndex:I

.field private final imageViewReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/phone/FrameAnimationForVT;


# direct methods
.method public constructor <init>(Lcom/android/phone/FrameAnimationForVT;Landroid/widget/ImageView;)V
    .locals 1
    .parameter
    .parameter "imageView"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->this$0:Lcom/android/phone/FrameAnimationForVT;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->data:I

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->delaySaveIndex:I

    .line 221
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/SoftReference;

    .line 222
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "params"

    .prologue
    .line 227
    const-string v3, "FrameAnimationForVT"

    const-string v4, "BitmapWorkerTask : doInBackground"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->data:I

    .line 229
    iget v3, p0, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->data:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, dataString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 232
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->this$0:Lcom/android/phone/FrameAnimationForVT;

    #getter for: Lcom/android/phone/FrameAnimationForVT;->mImageCache:Lcom/android/phone/ImageCache;
    invoke-static {v3}, Lcom/android/phone/FrameAnimationForVT;->access$700(Lcom/android/phone/FrameAnimationForVT;)Lcom/android/phone/ImageCache;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, p0, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->this$0:Lcom/android/phone/FrameAnimationForVT;

    #getter for: Lcom/android/phone/FrameAnimationForVT;->mImageCache:Lcom/android/phone/ImageCache;
    invoke-static {v3}, Lcom/android/phone/FrameAnimationForVT;->access$700(Lcom/android/phone/FrameAnimationForVT;)Lcom/android/phone/ImageCache;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->data:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 236
    :cond_0
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 249
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 239
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->data:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    iget v3, p0, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->delaySaveIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->delaySaveIndex:I

    .line 243
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->this$0:Lcom/android/phone/FrameAnimationForVT;

    #getter for: Lcom/android/phone/FrameAnimationForVT;->mImageCache:Lcom/android/phone/ImageCache;
    invoke-static {v3}, Lcom/android/phone/FrameAnimationForVT;->access$700(Lcom/android/phone/FrameAnimationForVT;)Lcom/android/phone/ImageCache;

    move-result-object v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->delaySaveIndex:I

    if-nez v3, :cond_2

    .line 244
    iget v3, p0, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->delaySaveIndex:I

    rem-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->delaySaveIndex:I

    .line 245
    iget-object v3, p0, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->this$0:Lcom/android/phone/FrameAnimationForVT;

    #getter for: Lcom/android/phone/FrameAnimationForVT;->mImageCache:Lcom/android/phone/ImageCache;
    invoke-static {v3}, Lcom/android/phone/FrameAnimationForVT;->access$700(Lcom/android/phone/FrameAnimationForVT;)Lcom/android/phone/ImageCache;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/phone/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_2
    move-object v1, v0

    .line 249
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 213
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 255
    const-string v1, "FrameAnimationForVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BitmapWorkerTask : onPostExecute, bitmap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v1, p0, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 258
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 259
    const-string v1, "FrameAnimationForVT"

    const-string v2, "BitmapWorkerTask : onPostExecute, imageView is not null"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 262
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheQuality(I)V

    .line 263
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    .end local v0           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 213
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/FrameAnimationForVT$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
