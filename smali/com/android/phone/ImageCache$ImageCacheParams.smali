.class public Lcom/android/phone/ImageCache$ImageCacheParams;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCacheParams"
.end annotation


# instance fields
.field public memCacheSize:I

.field public memoryCacheEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 159
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/high16 v0, 0x50

    iput v0, p0, Lcom/android/phone/ImageCache$ImageCacheParams;->memCacheSize:I

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    return-void
.end method

.method private static getMemoryClass(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 184
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    return v0
.end method


# virtual methods
.method public setMemCacheSizePercent(Landroid/content/Context;F)V
    .locals 2
    .parameter "context"
    .parameter "percent"

    .prologue
    const/high16 v1, 0x4480

    .line 176
    const v0, 0x3d4ccccd

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const v0, 0x3f4ccccd

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setMemCacheSizePercent - percent must be between 0.05 and 0.8 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    invoke-static {p1}, Lcom/android/phone/ImageCache$ImageCacheParams;->getMemoryClass(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/phone/ImageCache$ImageCacheParams;->memCacheSize:I

    .line 181
    return-void
.end method
