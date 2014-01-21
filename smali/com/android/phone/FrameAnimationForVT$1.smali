.class final Lcom/android/phone/FrameAnimationForVT$1;
.super Landroid/os/AsyncTask;
.source "FrameAnimationForVT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/FrameAnimationForVT;->preCaching([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[I",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([[I)Ljava/lang/Boolean;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x0

    .line 75
    new-instance v7, Lcom/android/phone/ImageCache$ImageCacheParams;

    invoke-direct {v7}, Lcom/android/phone/ImageCache$ImageCacheParams;-><init>()V

    .line 76
    .local v7, tempParams:Lcom/android/phone/ImageCache$ImageCacheParams;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x3ea8f5c3

    invoke-virtual {v7, v8, v9}, Lcom/android/phone/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 77
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InVTCallScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/phone/ImageCache;->findOrCreateCache(Landroid/app/FragmentManager;Lcom/android/phone/ImageCache$ImageCacheParams;)Lcom/android/phone/ImageCache;

    move-result-object v6

    .line 79
    .local v6, tempCache:Lcom/android/phone/ImageCache;
    if-nez v6, :cond_0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 96
    :goto_0
    return-object v8

    .line 82
    :cond_0
    aget-object v5, p1, v10

    .line 83
    .local v5, taskFrames:[I
    array-length v8, v5

    add-int/lit8 v2, v8, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 84
    aget v3, v5, v2

    .line 85
    .local v3, resId:I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, resIdString:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 88
    .local v1, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v6, v4, v0}, Lcom/android/phone/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 83
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 96
    .end local v1           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #resId:I
    .end local v4           #resIdString:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    check-cast p1, [[I

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/FrameAnimationForVT$1;->doInBackground([[I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 106
    const-string v0, "FrameAnimationForVT"

    const-string v1, "FrameAnimationForVT.PreCaching task cancelled"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/FrameAnimationForVT$1;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 101
    const-string v0, "FrameAnimationForVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FrameAnimationForVT.PreCaching task finish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/FrameAnimationForVT$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
